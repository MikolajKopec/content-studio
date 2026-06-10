# Claude Code v2.1.169 — safe mode i komenda /cd bez gubienia cache'u

**Data:** 2026-06-10
**Temat:** Anthropic dorzuca do CLI trzy ficzery "developer ergonomics" — czysty start dla debugowania konfiguracji, zmiana katalogu w trakcie sesji bez zerwania prompt cache'u i wyłącznik bundled skills — wszystko w jednym releasie obok 27 mniejszych fixów.

---

## Kluczowe fakty i liczby

- Release **v2.1.169 z 8 czerwca 2026**, łącznie **30 zmian**: **3 nowe ficzery**, **12 improvements**, **15 bug fixów** (w tym 2 security), **1 perf**, **0 breaking changes**.
- **`--safe-mode`** wyłącza **5 warstw customizacji jednocześnie**: CLAUDE.md, plugins, skills, hooks, MCP servers. Alternatywnie env `CLAUDE_CODE_SAFE_MODE=1`.
- **`/cd`** zmienia working directory **bez zrywania prompt cache'u** — pierwsza komenda CLI Claude Code, która eliminuje koszt restartu sesji (re-feed kontekstu to typowo **~$0.30–0.50** na średniej sesji).
- **`disableBundledSkills`** (plus env `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS`) — ukrywa **wbudowane skille, workflows i slash commands** przed modelem; pluginy i user-defined nadal działają.
- **Background agents** trzymają teraz flagi `--ide`, `--chrome`, `--bare`, `--remote-control` **przez cykl retire→wake** — wcześniej traciły je przy reanimacji.
- Naprawiono **~30–50 ms UI stall** na początku każdego turn na macOS dla użytkowników z loginem `claude.ai`.
- Wcześniejszy release **v2.1.166** wprowadził fallback models i hardening cross-session messaging; **v2.1.165** był pure-stabilizacją; **v2.1.160** zmienił nazwę triggera workflow → `ultracode`. Czyli **169 jest stabilizacyjnym domknięciem** cyklu 160-168.
- Aktualizacja: **native installs auto-updateują się w tle**, brew → `brew upgrade claude-code`, WinGet → `winget upgrade Anthropic.ClaudeCode`, npm → `claude update` (npm global **nie ma auto-update** od czasu v2.1.153).

## Co dokładnie robi `--safe-mode`

Tryb startuje Claude Code z **wyłączonymi wszystkimi punktami rozszerzeń**, jakie agent może załadować z dysku lub z sieci:

- `CLAUDE.md` (project + user level)
- pluginy z `.claude/plugins` i marketplace
- skille (zarówno user-defined w `~/.claude/skills`, jak i bundled — chyba że masz osobno wyłączone)
- hooks z `settings.json` (pre/post tool, on-stop, on-error)
- MCP servers (z `mcp.json`, IDE config, `--mcp-config`)

W praktyce to "bisect dla AI agenta": gdy agent zaczyna się dziwnie zachowywać po dodaniu nowego pluginu/skilla/hooka, odpalasz `claude --safe-mode` i widzisz baseline. Releasenotes nie precyzują, czy `--safe-mode` wyłącza też **user-level `settings.json`** (`permissions`, `env`, `model`) — sugerowane jest jedynie wyłączenie "wszystkich customizacji", więc do potwierdzenia w docs lub przez `/doctor`.

## `/cd` — co konkretnie zachowuje

- **Prompt cache** — kluczowa wartość ficzera; cache w Anthropic API jest powiązany z prefiksem promptu, a restart sesji unieważniał go w całości.
- **Conversation history** — sesja się nie kończy, więc historia turnów leci dalej.
- **Tool state** — agent kontynuuje w tym samym procesie, więc otwarte uchwyty/zmienne sesji są zachowane.

Releasenotes **nie potwierdzają wprost interakcji z worktrees** — Claude Code ma osobne `EnterWorktree`/`ExitWorktree`, a v2.1.169 dorzuca improvement, że "background sessions are told that shared-checkout edits are blocked until they enter a worktree". Sugeruje to, że `/cd` jest niezależnym, mniej restrykcyjnym mechanizmem niż worktree switching — przydatny do skakania między submodules, monorepo packages, czy luźnymi katalogami obok repo.

## Pełna lista 30 zmian

### Features (3)
1. `--safe-mode` + `CLAUDE_CODE_SAFE_MODE`
2. `/cd` (zmiana CWD bez utraty prompt cache)
3. `disableBundledSkills` + `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS`

### Improvements (12)
1. `/workflows` otwiera się natychmiast nawet w trakcie aktywnego turn
2. Lepszy error message, gdy organizacja wyłączyła API key auth
3. **Redukcja CPU** podczas streamingu odpowiedzi i animacji spinnera
4. Przywrócony **5-minutowy idle timeout** na Vertex/Foundry (opt-out: `API_FORCE_IDLE_TIMEOUT=0`)
5. Remote-managed settings z błędnym wpisem aplikują pozostałe polityki zamiast cicho odrzucić cały payload
6. Background sessions **trzymają flagi `--ide`, `--chrome`, `--bare`, `--remote-control`** przez retire→wake
7. Background sessions wiedzą o blokadzie edycji shared-checkout do czasu `EnterWorktree`
8. Próg "CLAUDE.md is too long" **skaluje się z context window modelu**
9. Auto-updater na Windows nie retryuje, gdy `claude.exe` jest trzymany przez inny proces
10. Lepszy kontrast kolorów dla tagów skilli w slash-command menu
11. Promo credit dla Apple/Google-billed subskrybentów bez payment method — jasny komunikat, gdzie dodać metodę płatności
12. Tip sugerujący `claude agents` przy wielu równoległych sesjach

### Fixes (13, w tym 2 security)
1. **[SEC]** Untrusted project settings nie mogą już ustawiać **OTEL client-certificate paths** bez trust confirmation
2. **[SEC]** Enterprise managed MCP policies (`allowedMcpServers`/`deniedMcpServers`) są teraz egzekwowane przy reconnect, IDE-typed configs, `--mcp-config` servers, pierwszej sesji po install i przy cold start
3. Strzałki Up/Down w długim inpucie poruszają się po wrapped rows przed wejściem w historię
4. ~30–50 ms UI stall na macOS przy starcie turn (claude.ai credentials)
5. `claude -p` wolne/zawieszone na Windows (regresja z 2.1.161)
6. Remote Control utykał w "reconnecting" gdy OAuth token refresh trafiał równolegle
7. Git Credential Manager popup na Windows startup (background git commands bez cached credentials)
8. Footer hints (np. "esc to interrupt") nie pokazywały się dla custom statusline
9. Stale permission/dialog prompts odradzały się przy reattach do remote session z padłym workerem
10. `claude agents --json` pomijał blocked i just-dispatched background sessions; dodane `--all`, `id` i `state`
11. Agents view zostawiał stale frame na WSL w Windows Terminal po wyjściu z agenta
12. Background agents ignorowały project-level `env` (np. `ANTHROPIC_MODEL`) przy pre-warmed workerze
13. MCPB plugin cache invalidated bez powodu na Windows
14. Plugin `.in_use` PID lock files akumulowały się — teraz sweep raz dziennie
15. Malformed `TaskCreate` inputs naprawiane automatycznie + lepsze validation errors

### Perf (1)
- Redukcja CPU podczas streamingu i animacji (bez podanego procentu)

## Kontekst: co konkurencja ma, a Claude Code nadrabia (i odwrotnie)

| Ficzer | Claude Code v2.1.169 | Cursor | OpenAI Codex | Google Antigravity 2.0 |
|---|---|---|---|---|
| **Safe mode (czysty start CLI)** | TAK (nowość) | nie ma odpowiednika | nie ma | nie ma |
| **Zmiana CWD bez restartu sesji** | TAK (nowość, `/cd`) | n/d (IDE) | nie | nie |
| **Background agents z flagami trzymanymi przez retire→wake** | TAK | brak | tylko scheduled tasks | scheduled background tasks |
| **Enterprise MCP allow/deny enforced cold-start** | TAK (fix) | częściowo | n/a | n/a |
| **Bundled skills toggle** | TAK (`disableBundledSkills`) | n/a | n/a | n/a |
| **Default model** | Opus 4.8 (SWE-bench 88.6%) | Gemini 3.5 / GPT-5.5 | GPT-5.5 (Terminal-Bench 82.7%) | Gemini 3.5 Flash |
| **Form factor** | terminal + IDE bridge | IDE | terminal + ChatGPT | desktop app + CLI + SDK |

Wzorzec użycia w czerwcu 2026 wg The New Stack: większość zespołów odpala **dwa narzędzia równolegle** — jedno w terminalu (Claude Code) do refaktorów i architektury, jedno w edytorze do codziennych edycji.

## Implikacje dla developerów

- **Mniej spalonego cache'u** — `/cd` to ficzer "groszowy" (oszczędza ~$0.30–0.50 na sesję), ale przy 10–20 sesjach dziennie x 22 dni pracujących = realne kilkadziesiąt dolarów miesięcznie.
- **Debug ergonomics** — `--safe-mode` to pierwszy mainstream "bisect dla agenta". Wcześniej trzeba było ręcznie komentować wpisy w `CLAUDE.md` i przenosić pluginy.
- **Enterprise compliance** — fix MCP policy enforcement na cold start zamyka realną lukę: organizacje z `deniedMcpServers` mogły mieć pierwszą sesję po install bez egzekwowania polityki.
- **Polityka platform** — `disableBundledSkills` to ukłon w stronę firm, które chcą "tylko nasze skille" i ścisłą kontrolę nad tym, co model widzi w menu.

---

## Potencjalne kąty narracyjne do shorta

- "Anthropic właśnie wymyślił **bisect dla AI agenta** — jedna flaga wyłącza 5 warstw customizacji"
- "**Pół dolara za każdą zmianę katalogu** — Claude Code w końcu zlikwidował ten podatek"
- "30 zmian w jeden dzień — i wszystkie **dla developerów, którzy debugują własną konfigurację**"
- "Twoja firma myślała, że blokuje MCP servers — przez 5 wersji **pierwsza sesja po instalacji omijała politykę**"
- "Claude Code dorzuca ficzer, którego **nie ma ani Cursor, ani Codex, ani Antigravity** — safe mode w CLI"
- "Background agent na Windows odpalał Ci popup logowania do GitHuba przy każdym starcie. Już nie."
- "Wpisujesz `/cd` zamiast restartować — i **prompt cache zostaje na miejscu**"

---

## Źródła

- [Release v2.1.169 — anthropics/claude-code (GitHub)](https://github.com/anthropics/claude-code/releases/tag/v2.1.169)
- [CHANGELOG.md — anthropics/claude-code](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)
- [Claude Code v2.1.169 Major Updates — DevelopersIO (Classmethod)](https://dev.classmethod.jp/en/articles/20260609-cc-updates-v2-1-169/)
- [Claude Code changelog — official docs](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates by Anthropic — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Latest Version v2.1.169 Update Guide — ClaudeUpdates](https://www.claudeupdates.dev/update)
- [Claude Code vs Cursor vs Codex vs Antigravity — six months in (The New Stack, czerwiec 2026)](https://thenewstack.io/claude-code-vs-cursor-vs-codex-vs-antigravity-2026/)
- [AI dev tool power rankings — LogRocket, czerwiec 2026](https://blog.logrocket.com/ai-dev-tool-power-rankings/)
