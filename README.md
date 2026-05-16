# content-studio — daily research pipeline dla content creators

Automatyczny dzienny research pipeline dla twórców content tech/AI. Codziennie o ustalonej porze:

1. **Scrape** newsów z ostatnich ~24h (WebSearch przez Claude)
2. **Deep-dive** per topic — sub-agent z WebFetch zbiera 5+ źródeł, pisze notatkę z liczbami, timeline, 5-7 kątów narracyjnych do shorta
3. **SUMMARY.md** — 1-page dashboard wszystkich topiców dnia (TL;DR + top 3 hooks per topic), sortowany po potencjale viralnym
4. **Commit + push** do GitHuba — gdy siadasz do nagrywki, robisz `git pull`, masz wszystko gotowe

Pipeline działa **lokalnie na headless serwerze** (Mac mini / mały Linux box). Cron via launchd (macOS) lub systemd (Linux). Używa Twojej subskrypcji Claude — **zero API billing**.

---

## Dla kogo to jest

Twórca short-form content (TikTok/Reels/Shorts) w niche tech/AI, który:
- Nie chce codziennie ręcznie scrolować 10 stron newsów
- Nie pracuje codziennie, ale chce dzienny archiwum newsów do późniejszego cherry-pick
- Ma serwer 24/7 (lub gotów dać PC podpiętemu do prądu)
- Ma subskrypcję Claude Pro lub Max (Opus 4.7 daily nie zmieści się w Free)

**Nie jest dla:** kogoś bez serwera 24/7 (PC sleep blokuje cron), kogoś bez subskrypcji Claude (API kosztuje), kogoś kto pracuje codziennie i woli ręcznie kontrolować selekcję każdego dnia.

---

## Architektura

```
┌─ Serwer 24/7 (Mac mini / Linux box) ──────────────────────────┐
│                                                                │
│  launchd (macOS) lub systemd (Linux) → 07:00 daily             │
│       ↓                                                        │
│  scripts/daily-research.sh                                     │
│       ├─ git pull origin main                                  │
│       └─ claude --print --model claude-opus-4-7                │
│              --permission-mode bypassPermissions               │
│              "/daily-research"                                 │
│                  ↓                                             │
│       ┌─ Stage 1: WebSearch ~24h ──┐                           │
│       │   → news/{date}/newsy.md   │  6-10 itemów              │
│       └──────────────────────────────┘                         │
│                  ↓                                             │
│       ┌─ Stage 2: Task dispatch per news ─┐                    │
│       │   sub-agent × 6-10 isolated       │  WebFetch deep dive│
│       │   → shorts/{date}/{slug}/         │  notatka.md        │
│       │   each returns RESULT block       │  (TL;DR + hooks)   │
│       └──────────────────────────────────┘                     │
│                  ↓                                             │
│       ┌─ Stage 2.5: aggregate ──┐                              │
│       │   → shorts/{date}/      │  SUMMARY.md (dashboard)      │
│       │     SUMMARY.md          │                              │
│       └──────────────────────────┘                             │
│                  ↓                                             │
│       Stage 3: git add + commit + push origin main             │
│                                                                │
└────────────────────────────────────────────────────────────────┘
       ↓
GitHub repo
       ↓
Local dev machine (`git pull` przed nagrywką)
       ↓
shorts/{date}/SUMMARY.md → wybór 1-3 topiców →
shorts/{date}/{slug}/notatka.md → osobna sesja Claude Code → script
```

---

## Komponenty

| Plik | Co robi |
|---|---|
| `scripts/daily-research.sh` | Bash wrapper odpalany przez launchd/systemd. `git pull` + `claude --print "/daily-research"` + logowanie |
| `scripts/com.user.daily-research.plist` | Template LaunchAgent dla macOS (07:00 daily) |
| `.claude/commands/daily-research.md` | Slash command entry-point — odpala pipeline |
| `skills/daily-research/SKILL.md` | **Główny dokument** — pełne instrukcje pipeline (verticals, selection criteria, output format, error handling). Edytuj pod swój content niche. |
| `skills/daily-research/subagent.md` | Template prompt dla sub-agentów (deep-dive per topic) |
| `news/{YYYY-MM-DD}/newsy.md` | **Stage 1 output** — curated headlines z source links |
| `shorts/{YYYY-MM-DD}/SUMMARY.md` | **Stage 2.5 output** — executive dashboard, 1 plik = cały dzień |
| `shorts/{YYYY-MM-DD}/{slug}/notatka.md` | **Stage 2 output** — full research per topic |

---

## Setup — wdrożenie u siebie

### Wymagania

- **Serwer 24/7** — Mac mini lub Linux box (musi być włączony 7:00 lokalnie żeby cron odpalił)
- **Konto GitHub** + dedykowane repo dla outputu
- **Subskrypcja Claude** — Pro ($20/mies) minimum, Max recommend dla daily Opus 4.7
- **Node.js 18+** na serwerze (do Claude Code CLI)
- **git 2.30+** na serwerze

### Krok 1 — Repo dla outputu

```bash
# Lokalnie (Twój dev machine)
mkdir my-content-studio && cd my-content-studio
git init && git remote add origin git@github.com:YOUR_USER/YOUR_REPO.git
# Skopiuj zawartość tego repo (lub fork)
git push -u origin main
```

### Krok 2 — Claude Code CLI na serwerze

```bash
ssh user@server
# Sprawdź node
node --version  # >=18

# Install
npm install -g @anthropic-ai/claude-code

# Verify
which claude
claude --version  # 2.x
```

### Krok 3 — Dedykowany SSH key serwer→GitHub

Cron działa unattended, więc klucz **bez passphrase** (lub z agent forwarding, ale prostsze bez).

```bash
ssh user@server
ssh-keygen -t ed25519 -C "server-daily-research" -f ~/.ssh/id_ed25519_github -N ''
cat ~/.ssh/id_ed25519_github.pub
```

Skopiuj wyświetlony klucz. Otwórz https://github.com/settings/ssh/new:
- **Title:** `Server — daily-research`
- **Key type:** `Authentication Key` (NIE Signing Key — Signing odrzuca ed25519 jako "invalid")
- **Key:** wklej (cała linia, jedna linia)
- Add SSH key

**Skonfiguruj SSH config** żeby git automatycznie używał tego klucza dla GitHub:

```bash
ssh user@server
cat >> ~/.ssh/config <<'EOF'

Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_github
  IdentitiesOnly yes
EOF
chmod 600 ~/.ssh/config

# Test
ssh -T git@github.com
# Powinno: "Hi YOUR_USER! You've successfully authenticated..."
```

### Krok 4 — Clone repo na serwerze

```bash
ssh user@server
git clone git@github.com:YOUR_USER/YOUR_REPO.git ~/content-studio
cd ~/content-studio
git log --oneline -3  # verify
```

### Krok 5 — Login Claude (jednorazowo)

```bash
ssh user@server -t claude    # -t forwards TTY dla interactive
```

W Claude REPL:
1. Wpisz: `/login`
2. Otworzy się URL — skopiuj do przeglądarki na swoim komputerze
3. Zaloguj się subskrypcją Claude (OAuth)
4. Anthropic zwróci CODE — skopiuj
5. Wklej w terminal SSH
6. Czekaj na "Login successful"
7. `/exit`

**Weryfikacja:**
```bash
ssh user@server "echo 'Reply with PONG' | claude --print"
# Powinno: "PONG"
```

### Krok 6 — Dostosuj content niche

**To jest kluczowy krok customizacji.** Otwórz `skills/daily-research/SKILL.md` lokalnie (Twój dev machine) i dostosuj:

- **Verticals INCLUDE** — wymień tematy/firmy które Cię interesują (sekcja "Verticals — INCLUDE")
- **Verticals CONDITIONAL** — tematy które tylko z silnym hook'iem
- **Verticals EXCLUDE** — proven floppers w Twoim niche (przykład z meeko.tech: krypto, akademickie papery, tutoriale)
- **Search queries** — przykładowe queries (sekcja "Search strategy") pod Twoje verticals
- **Language** — domyślnie polski (PL audience). Zmień na swój język w "Language rules" + format daty w "DATE_PL"
- **Audience profile** — header SKILL.md, dostosuj statystyki swojego kanału
- **Hook examples** — sekcja "Examples of good hooks" w `subagent.md`, podaj swoje top-performing hooks jako wzorzec

**Pro tip:** Jeśli masz historyczne dane content performance (views per video), wymień top performers i floppers w komentarzu na początku SKILL.md jako ground truth dla selection criteria. Robi olbrzymią różnicę.

```bash
# Po customizacji:
git add skills/daily-research/SKILL.md skills/daily-research/subagent.md
git commit -m "Customize for my niche"
git push
```

**WAŻNE:** Mac pulluje przy każdym 7:00 cron, więc edytujesz lokalnie + commit + push, **nigdy nie edytuj na serwerze** (zostanie nadpisane).

### Krok 7 — Install LaunchAgent (macOS)

> Linux? Skip do "Linux: systemd alternative" niżej.

**Edytuj plist** — zmień ścieżki na pasujące:

```bash
ssh user@server
nano ~/content-studio/scripts/com.user.daily-research.plist
# Zmień:
# - WorkingDirectory: /Users/YOUR_USER/content-studio
# - ProgramArguments: /Users/YOUR_USER/content-studio/scripts/daily-research.sh
# - StandardOutPath: /Users/YOUR_USER/Library/Logs/daily-research.launchd.out.log
# - StandardErrorPath: /Users/YOUR_USER/Library/Logs/daily-research.launchd.err.log
# - HOME env: /Users/YOUR_USER
# - Hour: 7 (lub jaka pora chcesz, w timezone lokalnym serwera)
```

**Edytuj script** jeśli inna ścieżka repo:

```bash
nano ~/content-studio/scripts/daily-research.sh
# REPO="$HOME/content-studio" — zostaw jeśli sklonowałeś do ~/content-studio
```

**Make script executable** (raz, jeśli nie z git):
```bash
chmod +x ~/content-studio/scripts/daily-research.sh
```

**Bootstrap launchd:**
```bash
cp ~/content-studio/scripts/com.user.daily-research.plist ~/Library/LaunchAgents/
launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/com.user.daily-research.plist
launchctl print gui/$(id -u)/com.user.daily-research | head -20
# Powinno pokazać "state = not running" (czeka na 7:00) i WorkingDirectory
```

### Krok 7-alt — Linux: systemd alternative

Zamiast launchd, użyj systemd timer:

**`~/.config/systemd/user/daily-research.service`:**
```ini
[Unit]
Description=Daily content research pipeline

[Service]
Type=oneshot
WorkingDirectory=%h/content-studio
Environment=PATH=/usr/local/bin:/usr/bin:/bin
ExecStart=/bin/bash %h/content-studio/scripts/daily-research.sh
```

**`~/.config/systemd/user/daily-research.timer`:**
```ini
[Unit]
Description=Daily content research at 07:00

[Timer]
OnCalendar=*-*-* 07:00:00
Persistent=true

[Install]
WantedBy=timers.target
```

**Enable:**
```bash
systemctl --user daemon-reload
systemctl --user enable --now daily-research.timer
systemctl --user list-timers daily-research
```

### Krok 8 — Test fire

```bash
# macOS:
ssh user@server "launchctl kickstart -k gui/\$(id -u)/com.user.daily-research"

# Linux:
ssh user@server "systemctl --user start daily-research.service"
```

Pipeline trwa ~10-20 min. Monitoruj:

```bash
# Tail log
ssh user@server "tail -f ~/Library/Logs/daily-research-\$(date +%Y-%m-%d).log"

# Co już zrobione?
ssh user@server "ls ~/content-studio/shorts/\$(date +%Y-%m-%d)/ 2>/dev/null"
```

### Krok 9 — Weryfikacja

Po skończeniu (~15 min):

```bash
# Local (Twój dev machine)
git pull origin main
ls news/$(date +%Y-%m-%d)/         # newsy.md
ls shorts/$(date +%Y-%m-%d)/       # SUMMARY.md + 6-10 folderów ze slug'ami
cat shorts/$(date +%Y-%m-%d)/SUMMARY.md  # twoja codzienna deska rozdzielcza
```

Jeśli `SUMMARY.md` istnieje i ma 6-10 topiców z TL;DR + hookami → **gotowe**. Codzienny cron 7:00 będzie odpalał automatycznie.

---

## Operacje

### Manual fire (test, lub catch-up po wyłączeniu serwera)

```bash
# macOS
ssh user@server "launchctl kickstart -k gui/\$(id -u)/com.user.daily-research"

# Linux
ssh user@server "systemctl --user start daily-research.service"
```

### Live monitoring

```bash
ssh user@server "tail -f ~/Library/Logs/daily-research-\$(date +%Y-%m-%d).log"
```

### Status

```bash
# macOS
ssh user@server "launchctl print gui/\$(id -u)/com.user.daily-research | grep -E 'state|last exit'"

# Linux
ssh user@server "systemctl --user status daily-research.timer"
```

### Update logiki pipeline

```bash
# Lokalnie (dev machine)
cd path/to/repo
nano skills/daily-research/SKILL.md   # zmień verticals, criteria, format
git add skills/daily-research/SKILL.md
git commit -m "Adjust verticals: add gaming hardware"
git push
# Mac przy następnym 7:00 sam pulluje, używa nowej wersji. Zero akcji na serwerze.
```

### Disable temporarily

```bash
# macOS
ssh user@server "launchctl bootout gui/\$(id -u) ~/Library/LaunchAgents/com.user.daily-research.plist"

# Linux
ssh user@server "systemctl --user stop daily-research.timer"
```

### Re-enable

```bash
# macOS
ssh user@server "launchctl bootstrap gui/\$(id -u) ~/Library/LaunchAgents/com.user.daily-research.plist"

# Linux
ssh user@server "systemctl --user start daily-research.timer"
```

### Change schedule

**macOS:** Edytuj plist (lokalnie w repo), zmień `<key>Hour</key><integer>7</integer>`, commit+push, na serwerze:
```bash
ssh user@server "launchctl bootout gui/\$(id -u) ~/Library/LaunchAgents/com.user.daily-research.plist; cp ~/content-studio/scripts/com.user.daily-research.plist ~/Library/LaunchAgents/; launchctl bootstrap gui/\$(id -u) ~/Library/LaunchAgents/com.user.daily-research.plist"
```

**Linux:** Edytuj `~/.config/systemd/user/daily-research.timer`, `OnCalendar=*-*-* HH:MM:00`, potem `systemctl --user daemon-reload && systemctl --user restart daily-research.timer`.

---

## Customization

### Zmiana modelu (np. Sonnet zamiast Opus)

Edytuj `scripts/daily-research.sh`:
```bash
MODEL="claude-sonnet-4-6"   # zamiast claude-opus-4-7
```

**Trade-off:** Sonnet jest szybszy i taniej (mniejszy budget z subskrypcji), ale dla autonomous task z 6-10 sub-agentami Opus radzi sobie lepiej z context management i edge cases. Rekomendowany: Opus 4.7.

### Zmiana czasu

Edytuj `scripts/com.user.daily-research.plist` (macOS) lub `daily-research.timer` (Linux). Pora w **timezone lokalnym serwera** (sprawdź `date` na serwerze). launchd auto-handles DST.

### Dodatkowe verticals

Edytuj `skills/daily-research/SKILL.md` sekcja "Verticals — INCLUDE". Każdy vertical = lista marek/tematów + 1-2 search queries w sekcji "Search strategy".

### Dłuższe / krótsze notatki

W `skills/daily-research/subagent.md` zmień "Minimum 5 independent sources" lub "min 5 bullets" — mniej źródeł = szybsze + krótsze notatki, więcej = głębsze ale dłużej.

### Inny zakres dnia (np. ostatnie 12h zamiast 24h)

W `skills/daily-research/SKILL.md` sekcja "Time anchor" — zmień window definition.

---

## Troubleshooting

### "Not logged in · Please run /login"

Claude session expired (zwykle ~30 dni). Zaloguj ponownie:
```bash
ssh user@server -t claude
# /login → browser → paste code → /exit
```

### `git push` fails na serwerze

Sprawdź SSH key:
```bash
ssh user@server "ssh -T git@github.com"
# Powinno: "Hi YOUR_USER!"
```

Jeśli "Permission denied (publickey)": SSH key nie został dodany do GitHub. Wróć do Kroku 3.

### Pipeline odpala się ale brak commitów

Sprawdź log:
```bash
ssh user@server "tail -100 ~/Library/Logs/daily-research-\$(date +%Y-%m-%d).log"
```

Najczęstsze przyczyny:
- **Dirty working tree** — uncommitted changes na serwerze blokują pull. Fix: nigdy nie edytuj na serwerze. Jeśli zdarzy się: `ssh user@server "cd ~/content-studio && git stash"`.
- **WebSearch zwrócił 0 wyników** — możliwe gdy szukasz po niszowych queries. Sprawdź `news/{today}/newsy.md` czy istnieje.
- **Sub-agenty padły wszystkie** — pewnie problem z WebFetch limitami. Manual rerun, idempotency zrobi resztę.

### LaunchAgent się nie odpala o 7:00

```bash
ssh user@server "launchctl print gui/\$(id -u)/com.user.daily-research | grep -E 'state|next fire'"
```

Jeśli "state = not running" ale "next fire" pokazuje przeszłą datę: launchd nie wystartował jobu. Fix: bootout + bootstrap.

Jeśli serwer śpi o 7:00: ustaw `sudo pmset -a sleep 0 disksleep 0` (macOS) żeby się nie usypiał.

### Routine pojawia się ale "exit code 1"

Claude wewnątrz pipeline padł. Sprawdź ostatnie 50 linii logu — pokaże gdzie. Najczęściej: timeout na WebFetch, lub model limit subskrypcji wyczerpany.

### Limit subskrypcji wyczerpany

Anthropic ma soft caps na heavy Opus usage. Daily pipeline z 6-10 sub-agentami × ~8KB outputu może wyczerpać dzienny limit Pro plan'a. Opcje:
- Upgrade do Max plan
- Zmień model na Sonnet 4.6 (`MODEL="claude-sonnet-4-6"` w `daily-research.sh`)
- Zmniejsz liczbę topiców do analizy (edytuj `Target: 6-10 items` w SKILL.md na `Target: 4-6 items`)

---

## Koszt

- **Anthropic API:** $0 — używa Twojej subskrypcji Claude Pro/Max przez Claude Code CLI
- **GitHub:** $0 — repo, ssh push
- **Serwer:** koszt prądu Mac mini ~5W idle (~$5/mies prądu) lub VPS Hetzner ~$5/mies
- **Subskrypcja Claude:** $20 Pro lub $100 Max (Max recommend dla daily Opus 4.7 z 6-10 sub-agentami)

**Łącznie: ~$25-105/mies** w zależności od planu Claude i tego czy masz już serwer.

---

## Bezpieczeństwo

- **SSH key bez passphrase** — wymagany dla unattended cron. Trzymaj klucz tylko na serwerze, nie commituj.
- **GitHub key scope** — używaj klucza dedykowanego (nie głównego), z Authentication scope. Jeśli serwer zostanie skompromitowany, revoke key bez wpływu na inne integracje.
- **Subskrypcja Claude** — session token zapisany w `~/.claude/sessions/` na serwerze. Jeśli serwer kompromitowany, ktoś może użyć Twojego planu. Mitigation: trzymaj serwer w prywatnej sieci (Tailscale / VPN).
- **Git push to main** — automatyczny, ale wyłącznie do `news/{date}/` i `shorts/{date}/`. Twój kod (skills, scripts) nigdy nie zostanie zmodyfikowany przez routine.

---

## License

Dostosuj wg uznania. Sam projekt nie wymaga licencji — pipeline operuje na Twoim repo, Twoich danych, Twojej subskrypcji.

---

## Credits

Projekt postawiony w jeden dzień (2026-05-16) jako automation dla [@meeko.tech](https://www.tiktok.com/@meeko.tech) — Polish TikTok/YouTube tech channel. Pełna historia projektowania i decyzji architektonicznych w [brain vault notatka](https://github.com/MikolajKopec/content-studio/blob/main/.claude/commands/daily-research.md) (private, ale architektura na README jest pełna).

Wersjonowanie skill: edytuj lokalnie, commit+push, serwer auto-pulluje przy następnym cron. Zero restartów infrastruktury. Edytowanie SKILL.md to **całe API** tego pipeline'u.
