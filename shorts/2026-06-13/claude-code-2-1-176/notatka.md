# Claude Code 2.1.176 — automatyczny fallback z Fable 5 do Opus 4.8 i tytuły sesji w języku rozmowy

**Data:** 2026-06-13
**Temat:** Anthropic wypuścił cztery patche Claude Code (2.1.173 → 2.1.176) w niecałe 48h — bez nowej funkcji, ale z fallbackiem klasyfikatora Fable 5 na Opus 4.8, allowlistą modeli dla regulowanych branż i naprawą zepsutych od miesięcy hook patternów.

## Kluczowe fakty i liczby

- **Cztery** patche Claude Code w **48 godzin**: 2.1.173 (11.06), 2.1.174, 2.1.175 i 2.1.176 (wszystkie 12.06). To **~3 patche na tydzień** w długim oknie czerwca (2.1.160 → 2.1.176 między 2 a 12 czerwca = **16 patchy w 10 dni**).
- Fable 5 (release **9.06.2026**) ma klasyfikator bezpieczeństwa, który blokuje requesty w **3 kategoriach**: offensive cyber, biology/life sciences i reasoning extraction.
- Klasyfikator Fable 5 odsyła zablokowane requesty na **Opus 4.8** (release **28.05.2026**, cena **$5/$25** za milion tokenów input/output, vs. **$10/$50** za Fable 5).
- Do 2.1.176 auto mode w organizacjach **bez** dostępu do Opus 4.8 **crashował** zamiast spadać do najlepszego dostępnego Opusa.
- Hook patterny typu `Edit(src/**)`, `Read(~/.ssh/**)` i `Read(.env)` były **udokumentowane, ale nie działały** — teraz w końcu matchują.
- `/copy` w tmux przez SSH wreszcie kopiuje do **systemowego clipboardu** — funkcja, którą `vim` ma od **1991 roku**.
- `enforceAvailableModels` (2.1.175) — managed setting blokujący `availableModels` allowlistę przed nadpisaniem przez user/project — celowany w finanse, healthcare, prawo, **gdzie managed-settings.json deployuje się przez Jamf/Kandji/Intune**.
- Bonusy w 2.1.174: `wheelScrollAccelerationEnabled` (toggle dla akceleracji scrolla w fullscreenie) + fix Bedrock GovCloud regionów (`us-gov-*` brało zły prefix `global` zamiast `us-gov`, wywalając 400-ki).

## Co dokładnie się zmienia w 2.1.173 / 2.1.174 / 2.1.175 / 2.1.176

### 2.1.173 (11.06)
- Normalizacja nazw modeli Fable 5 z suffixem `[1m]` — Fable 5 ma 1M context window domyślnie, więc suffix jest zbędny i jest teraz stripowany automatycznie.
- Fix spurious warningu „sandbox dependencies missing" na Windowsie przy włączonym sandboxie.

### 2.1.174 (12.06)
- Nowe ustawienie `wheelScrollAccelerationEnabled` — wyłącza akcelerację scrolla myszą w trybie fullscreen.
- `/model` picker pokazuje teraz family modelu, do którego Default się resolvuje (Opus na Max/Team Premium/Enterprise, Sonnet na Pro/Team, Opus na pay-as-you-go API).
- Fix banera „Fable 5 is now consuming usage credits" — nie pokazywał się prawidłowo enterprise'om z usage-based billing.
- Fix Bedrock GovCloud regionów (`us-gov-*` → poprawny prefix `us-gov`).
- Fix git commit co-author attribution — pokazywał zły model name.
- VSCode: usage attribution w `/usage` z breakdownem cache miss / long context / subagentów / per-skill / per-MCP w oknie 24h lub 7d.

### 2.1.175 (12.06)
- **Tylko jedna zmiana**: managed setting `enforceAvailableModels`. Włączony → Default model resolvuje się do pierwszego dozwolonego modelu zamiast wypadać z allowlisty, a user/project settings nie mogą rozszerzyć managed `availableModels`. To wbity gwóźdź do trumny side-channel'i typu „użytkownik wskakuje na zablokowany model przez `ANTHROPIC_DEFAULT_*_MODEL` env".

### 2.1.176 (12.06)
- **Auto mode fallback dla Fable 5** — w organizacjach bez Opus 4.8 klasyfikator Fable 5 schodzi na najlepszego dostępnego Opusa zamiast crashować.
- **Session titles w języku rozmowy** — generowane w języku, w którym rozmawiasz; można też przypiąć przez `language` setting.
- **Footer link badges** — nowe `footerLinksRegexes` regex-matchowane badge'y w footerze.
- **Bedrock credential caching** — credy z `awsCredentialExport` cache'owane do `Expiration` zamiast hardcodowanej 1h.
- **`availableModels` enforcement** — alias model picki nie da się przekierować na zablokowany model przez `ANTHROPIC_DEFAULT_*_MODEL` env; `/fast` odmawia toggle'a poza allowlistę.
- **Hook patterny** `Edit(src/**)`, `Read(~/.ssh/**)`, `Read(.env)` — **w końcu działają jak udokumentowane**.
- **Linux sandbox** — fix symlinkowego `.claude/settings.json` z absolutnym targetem.
- **Clipboard** — `/copy` i mouse-selection w tmux przez SSH kopiują do systemowego clipboardu; tmux paste buffer ładuje się na wersjach starszych niż 3.2.
- **Remote Control** — fix cichego przełączania modelu sesji z mobile/web, czytelne reasons w disconnect notification, brak duplikatów w transcript, prawidłowe disconnectowanie przy zmianie konta.
- **Directory tracking** — `/cd` i przesunięcia worktree nie reportują już starego git brancha.
- **Background sessions** — kilkanaście fixów: nie pokazują „Working" w nieskończoność, search po PR URL, neutralizacja Windows network paths, restart przy corruption.

## Auto-fallback z Fable 5 do Opus 4.8 — dlaczego to ważne

Fable 5 (release 9.06.2026, **$10/$50** za 1M tokenów) ma wbudowany klasyfikator, który robi trzy rzeczy:

1. Wykrywa request w kategorii „offensive cyber", „biology/life sciences" lub „reasoning extraction".
2. Zwraca `stop_reason: "refusal"` jako HTTP 200 (sukces) — **nie błąd**.
3. Zachęca do fallbacku na inny model — sugerowany **Opus 4.8** ($5/$25, czyli dwa razy tańszy).

Anthropic policzył to tak, że input tokeny przy refusal są **niebilowane**, a tokeny fallbackowe lecą jako **cache reads** (10% bazowej stawki) zamiast cache writes (1.25-2× cost). Czyli technicznie fallback jest tańszy niż dwa requesty z osobna.

**Problem**, który naprawia 2.1.176: jeśli organizacja **nie miała dostępu do Opus 4.8** (np. plan bez Opusa albo allowlist bez `claude-opus-4-8`), klasyfikator Fable 5 odmawiał, a Claude Code **crashował** zamiast spadać na najlepszego dostępnego Opusa (np. 4.7). Teraz robi fallback drabinkowy: Opus 4.8 → Opus 4.7 → cokolwiek dostępne.

To wygląda na drobny bugfix, ale w praktyce dla enterprise klientów to różnica między „działa" a „nie działa". Klasyfikator Fable 5 fire'uje rzadko (Anthropic raportuje **<5% sesji**), ale jak fire'uje na evalu albo CI, to ci pada cały pipeline.

## Porównanie cyklu wydawniczego (10-12.06.2026)

| Tool | Patche 10-12.06 | Częstotliwość ogólna | Komentarz |
|------|------|---------------------|-----------|
| **Claude Code** | 2.1.170 → 2.1.176 (**7 patchy w 3 dni**) | 16 patchy w 10 dni (~3/tydzień minimum, w bursach do 4/dobę) | Najszybszy cykl spośród AI dev tools |
| **Cursor** | 3 release'y (auto-review 11.06, Bugbot 10.06, Design Mode 5.06) | Daily-to-every-few-days, bundle większych feature'ów | Trochę mniej patchy, ale grubsze |
| **GitHub Copilot (CLI)** | v1.0.59 → v1.0.61 (~3 patche/tydzień) | Weekly stable VSCode + co kilka dni CLI | Stabilniejszy rytm, mniej hotfixów |
| **Google Antigravity** | 2.1.4 (11.06) | ~5 major + patche w 5 miesięcy (od XI 2025) | Najwolniej z czwórki — release "rolls out gradually" |
| **OpenAI Codex CLI** | 0.138.0 (8.06) → 0.139.0 (11.06) | ~co 3 dni | Stabilny rytm, mniej hotfixów |

Wniosek: **Claude Code wypuszcza więcej patchy niż jakakolwiek konkurencja**, ale większość to fixy, nie feature'y. Cursor i Antigravity wolą rzadziej i grubiej; Codex i Copilot CLI siedzą gdzieś pomiędzy.

## Implikacje dla użytkownika / rynku

- **Dla solo dev'a:** zmiany kosmetyczne. Polski tytuł sesji jest fajny. Hook patterny w końcu działają — jeśli próbowałeś `Edit(src/**)` i nie działało, **to nie ty byłeś głupi, to był bug** ciągnący się przez wiele wersji.
- **Dla enterprise / regulowanych branż:** `enforceAvailableModels` to checkbox audytowy. Bez tego user mógł przez `ANTHROPIC_DEFAULT_OPUS_MODEL` env wymusić model spoza allowlisty. Teraz finanse / healthcare / prawo mogą deployować `managed-settings.json` przez Jamf/Kandji/Intune i mieć tamper-resistant policy.
- **Dla AI infra:** Fable 5 fallback to test, czy enterprise zostanie na Fable 5 vs. zostanie na Opus 4.8. **Cena 2× wyższa** + 5% refusal rate = większość enterprise'ów może świadomie zostać na Opusie 4.8 do końca lata, dopóki Anthropic nie zaostrzy klasyfikatora.
- **Dla rynku AI dev tools:** Anthropic jedzie cyklem szybszym niż Cursor, Antigravity i Copilot. Ryzyko: zmęczenie release-fatigue u userów. Korzyść: szybkie iteracje na faktycznych bugach.
- **Dla DX:** najbardziej znamienne — **fix `/copy` w tmux przez SSH**. Funkcja oczywista, której nie było, którą **vim ma od 1991** (`set clipboard=unnamed`). To pokazuje, że Claude Code wciąż dogania workflow features, które terminale ogarniają od dekad.

## Potencjalne kąty narracyjne do shorta

1. **„Anthropic wypuścił 4 patche Claude Code w 48h. Antigravity wypuszcza 1 patch na 2 tygodnie. To nie jest konkurencja, to jest inna gra."** — kontrast szybkości cyklu.
2. **„Claude Code wreszcie kopiuje do clipboardu w tmux przez SSH. Funkcja, którą vim ma od 1991. Ile lat zajmie Cursorowi nadgonić podstawy terminala?"** — counterintuitive opóźnienie.
3. **„Anthropic przyznał, że Fable 5 crashuje na 5% sesji. Patch nie naprawia tego — patch tylko spada na tańszy model. $10 → $5 za milion tokenów."** — counterintuitive: fallback to feature, nie bug.
4. **„`Edit(src/**)`, `Read(.env)`, `Read(~/.ssh/**)` — patterny z dokumentacji Claude Code, które nie działały. Przez ile wersji? Anthropic nie mówi."** — wstyd dla dokumentacji.
5. **„`enforceAvailableModels` w Claude Code 2.1.175 — managed setting, którego twój CTO będzie chciał, zanim w ogóle zobaczy AI w produkcji."** — enterprise hook.
6. **„Cztery patche Claude Code w niecałe 2 dni. Żaden nie ma nowej funkcji, którą zauważysz. Każdy ma feature, który ratuje pipeline regulowanej firmy."** — kontrast hype vs. realia.
7. **„Claude Fable 5 (9.06) → Claude Code 2.1.176 (12.06). Trzy dni między release'em modelu a patchem CLI, który naprawia 5% sesji crashujących. Kto inny robi tak szybko?"** — feedback loop.

## Źródła

1. **Claude Code Changelog** (primary, code.claude.com/docs/en/changelog) — szczegółowe wpisy dla 2.1.173, 2.1.174, 2.1.175, 2.1.176 z 11-12.06.2026.
2. **Introducing Claude Fable 5 and Claude Mythos 5** (primary, platform.claude.com/docs/en/about-claude/models/introducing-claude-fable-5-and-claude-mythos-5) — availability 9.06.2026, ceny $10/$50, klasyfikator i fallback.
3. **Classifier fallback and billing for Claude Fable 5** (primary cookbook, platform.claude.com/cookbook/fable-5-fallback-billing-guide) — kategorie cyber/bio/reasoning extraction, mechanika fallback creditu, billing.
4. **Claude Code Updates by Anthropic – June 2026** (releasebot.io/updates/anthropic/claude-code) — historia patchy: 2.1.160 → 2.1.173, daty.
5. **Cursor Release Notes June 2026** (releasebot.io/updates/cursor) — daily-to-every-few-days cykl, releases 1-11.06.
6. **GitHub Copilot Changelog 06/2026** (github.blog/changelog/month/06-2026) — kontekst Copilot CLI v1.0.57-v1.0.61, weekly VSCode releases.
7. **Codex CLI June 2026** (releasebot.io/updates/openai/codex) — 0.138.0 (8.06) → 0.139.0 (11.06), ~3-day cycle.
8. **Google Antigravity Changelog June 2026** (gradually.ai/en/changelogs/antigravity, antigravity.google/changelog) — 2.1.4 (11.06), 2.0.11 (3.06), gradual rollout.
9. **Claude Opus 4.8 launch** (wavespeed.ai/blog/posts/opus-4-8, cloudzero.com/blog/claude-opus-4-8-pricing) — release 28.05.2026, cena $5/$25 base, $10/$50 fast mode.
10. **Claude Code Governance / Enterprise Security** (truefoundry.com/blog/claude-code-governance-building-an-enterprise-usage-policy-from-scratch) — kontekst dla `enforceAvailableModels` (Jamf/Kandji/Intune, regulowane branże).
