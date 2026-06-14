# 3. Claude Code dostaje /fork i nowy CLI — git-style branching dla sesji AI

**Data:** 2026-06-14
**Temat:** Anthropic dorzucił do Claude Code komendę `/fork` (rozgałęzianie sesji z pełnym kontekstem), nested sub-agents do 5 poziomów w głąb i nowy CLI — wszystko w jednym tygodniu, w trakcie awarii dostępu do Fable 5.

---

## Kluczowe fakty i liczby

- `/fork` (alias do `/branch`) tworzy **niezależną kopię sesji z pełnym kontekstem**, kodem i historią — od punktu rozgałęzienia obie sesje są niezależne, original nie ginie nawet jeśli fork się wywali.
- Działa też z CLI: `claude --continue --fork-session` (rozgałęzia ostatnią sesję), `claude --resume <id> --fork-session` (wybiera konkretną), a `claude --list-sessions` pokazuje ID do wyboru.
- Nested sub-agents wylądowały **10 czerwca 2026** w wersji **2.1.172** — sub-agent może spawnować własne sub-agenty do **5 poziomów w głąb** (recursion stack limit).
- TechTimes opublikował artykuł **13 czerwca 2026**, ale features dropowały stopniowo wcześniej — `/fork` istnieje w dokumentacji już od **lutego/marca 2026**, nested sub-agents od 10 czerwca, a `/btw` dostał shortcut "c to copy" w wersji **2.1.174 (12 czerwca)**.
- "Context hygiene toolkit" = trio `/btw` (przerwij i zadaj pytanie boczne bez psucia kontekstu) + `/fork` (rozgałęź, próbuj wariantów) + `/rewind` (cofnij do wcześniejszego stanu, z opcją "Summarize up to here" od wersji 2.1.152, 27 maja 2026).
- Każdy poziom nested sub-agentów daje **+30–60% overhead** tokenów per level — strategia kontroli kosztów: Opus na root, Sonnet w środku, Haiku na liściach (mniej więcej **rząd wielkości** taniej między tierami).
- Update dropuje w tym samym tygodniu co globalna awaria dostępu do **Fable 5 / Mythos 5** — ale Claude Code działa, bo wpina się też w stare modele i fallbacki.

## Co dokładnie robi `/fork` — analogia do git

W gicie `git branch` tworzy nową gałąź od bieżącego commita — pracujesz dalej na boku, master zostaje nietknięty. `/fork` w Claude Code działa identycznie, tylko dla sesji konwersacji z AI:

- bierze całą historię, kod, narzędzia, decyzje, kontekst plików
- robi kopię z nowym session ID
- od tego punktu obie sesje żyją własnym życiem (zmiany się nie synchronizują)
- jeśli fork nie zadziała — `git checkout master`, czyli wracasz do originalu

Przykład use-case'u z dokumentacji: debugujesz buga, Claude proponuje fix, ale chcesz spróbować zupełnie innej architektury (GraphQL zamiast REST). `/fork`, próbujesz wariantu B, porównujesz wyniki, wybierasz lepszy. Bez `/fork` musiałbyś albo stracić oryginalny tok rozumowania, albo otwierać drugą sesję od zera bez kontekstu.

**Caveat:** session-scoped permissions (pozwolenia dla tooli) **nie przechodzą** do forka — trzeba je re-approve'ować.

## Context hygiene toolkit — jak `/fork`, `/rewind` i `/btw` grają razem

| Komenda | Co robi | Analogia |
|---|---|---|
| `/btw` | Przerwij i zadaj boczne pytanie (np. "a tak BTW, co to za biblioteka?") bez zaśmiecania głównego wątku zadania | Stack push/pop dla pytań |
| `/fork` | Rozgałęź sesję od tu, próbuj wariantu, original żyje dalej | `git branch` |
| `/rewind` | Cofnij sesję do wcześniejszego stanu, ewentualnie z "Summarize up to here" (skompresuj stary kontekst, zachowaj ostatnie tury) | `git reset` + squash |

Razem rozwiązują główny ból długich sesji z AI: **context rot** — gdy model zaczyna gubić wątek, halucynować, albo po prostu kończy mu się okno kontekstu. Zamiast restartować od zera, devs mogą chirurgicznie czyścić sesję.

## Nested sub-agents — co to znaczy w Claude Code

Sub-agent w Claude Code to osobny proces z **świeżym oknem kontekstu** i własnym system promptem. Nesting (od **2.1.172, 10 czerwca 2026**) oznacza, że sub-agent może wywołać kolejnego sub-agenta — do **5 poziomów w głąb**.

Po co? Bo każdy nowy sub-agent dostaje czysty kontekst — można offloadować robotę zanim własne okno się zapcha. Parent czyta tylko **summary z liścia**, wszystko po drodze konsumuje tokeny i znika.

Pitfalls (z analizy ofox.ai):
- Allowlist `Agent(name1, name2)` w definicji sub-agenta jest cicho ignorowany przy nested calls — działa tylko na top-levelu
- Bez limitów może być **runaway recursion** — liście powinny mieć Agent tool wyrzucony
- Default na Opus wszędzie = spalanie kasy; zmienna `CLAUDE_CODE_SUBAGENT_MODEL=haiku` ratuje budżet

## Nowy CLI — co się zmieniło

Z analizy releasebot.io za czerwiec 2026:

- `--safe-mode` flag (wersja 2.1.169, 8 czerwca) — startuje Claude Code z wyłączonymi wszystkimi customizacjami (clean room debugging)
- `/cd` command (2.1.169) — zmień working directory sesji **bez psucia prompt cache**
- `--fork-session` flag łączy się z `--continue` i `--resume` dla CLI-driven forking
- `claude agents` — można typować `! <command>` żeby odpalić shell command jako background sesję (2.1.154)
- Plugin search bar w `/plugin` przy przeglądaniu marketplace'a
- Fixed: model picker rendering bugs, "memory recall not finding mounted team memory stores" w remote sesjach
- Fallback models dla edge case'ów (2.1.166)

## Porównanie z konkurencją — czerwiec 2026

| Tool | Model parallelizmu | Max parallel/depth | Branching |
|---|---|---|---|
| **Claude Code** | Nested sub-agents + `/fork` sesji | **5 levels deep**, nieograniczone forks | Tak — pełen kontekst, git-style |
| **Cursor 2.0** | Parallel agent sessions | **8 parallel sessions** | Tak, ale flat (bez nesting) |
| **Google Antigravity 2.0** | Manager View, multi-agent jako default UX | **5 parallel agents** (Manager View); demo: 93 sub-agentów zbudowało OS w 12h za <$1000 | Specialized subagents per task |
| **Devin Desktop** (ex-Windsurf, rebrand 2 czerwca 2026) | Bundled Devin jako autonomous agent | n/a (full autonomous) | Brak explicit session fork |

Claude Code jest jedynym, który robi to "git-style" — **named branches z pełnym kontekstem**, plus nested sub-agents. Antigravity 2.0 stawia na **parallelizm z założenia** (Manager View jako default), Cursor na **liczbę równoległych sesji** (8 vs 5).

## Oś czasu (kluczowe wersje)

| Wersja | Data | Co dropuje |
|---|---|---|
| 2.1.0 | 7 stycznia 2026 | Pierwsze 2.1, 1096 commitów, skills, hooks |
| 2.1.152 | 27 maja 2026 | `/rewind` z "Summarize up to here" |
| 2.1.169 | 8 czerwca 2026 | `--safe-mode`, `/cd`, post-session hooks |
| 2.1.170 | 9 czerwca 2026 | Wprowadzono Claude Fable 5 |
| **2.1.172** | **10 czerwca 2026** | **Nested sub-agents (do 5 levels)** |
| 2.1.173 | 11 czerwca 2026 | Bugfixy Fable 5 model names |
| 2.1.174 | 12 czerwca 2026 | `/btw` shortcut "c to copy" |
| TechTimes news | **13 czerwca 2026** | Artykuł sumujący update |

**Wniosek:** TechTimes spakował kilka różnych dropów (rozłożone w czasie maj-czerwiec) w jeden wielki "release" w narracji. Faktyczny ship dat features jest rozsmarowany.

## Implikacje dla użytkownika

- **Dla devów**: można testować równolegle 5+ podejść architektonicznych bez kasowania pierwotnej sesji — mniej regretu, więcej eksperymentów.
- **Dla budżetów**: nested sub-agents to **+30–60% tokenów per level**, więc bez tieringu modeli można szybko spalić kasę.
- **Konkurencja**: Cursor (8 parallel), Antigravity (5 agentów default), Devin Desktop — Claude Code wyróżnia się **git-style mental model** zamiast brutalnego parallelizmu.
- **Awaria Fable 5/Mythos 5** w tle: Claude Code dalej działa, bo wpina się w fallbacki — ale ironia jest, że największy update przychodzi w tygodniu największej awarii Anthropic.

---

## Potencjalne kąty narracyjne do shorta

- "Claude Code dostaje `/fork` — git branch dla rozmów z AI"
- "Sub-agent może odpalić sub-agenta — i tak **5 razy w głąb**"
- "Anthropic dropuje update w tygodniu, w którym ich własny model się rozsypał"
- "Cursor ma **8 sesji**, Antigravity **5 agentów**, Claude Code — **5 poziomów w głąb**"
- "Antigravity zbudował OS w 12 godzin za mniej niż **1000 dolarów** — Claude Code odpowiada git-style branchingiem"
- "TechTimes napisał o tym 13 czerwca, ale features dropowały po cichu **od marca**"
- "Trzy komendy ratują twoją sesję AI przed `context rot`: `/btw`, `/fork`, `/rewind`"

---

## Źródła

- [Anthropic Claude Code Updates – Releasebot June 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Adds a '/fork' Command – TechTimes (13.06.2026)](https://www.techtimes.com/articles/318344/20260613/claude-code-adds--fork-command-anthropic-brings-git-style-branching-ai-coding-sessions.htm)
- [Mastering Claude Code's /btw, /fork, and /rewind – Towards AI](https://pub.towardsai.net/mastering-claude-codes-btw-fork-and-rewind-the-context-hygiene-toolkit-5ceefa59623d)
- [Claude Code Nested Sub-Agents: 5 Levels Deep – ofox.ai](https://ofox.ai/blog/claude-code-nested-subagents-2026/)
- [How to Fork a Claude Code Session – BSWEN docs](https://docs.bswen.com/blog/2026-03-30-claude-code-fork-session/)
- [Branch Your Claude Code Conversations – wmedia.es](https://wmedia.es/en/tips/claude-code-fork-session-branch-conversations)
- [Claude Code changelog – code.claude.com (oficjalny)](https://code.claude.com/docs/en/changelog)
- [Google Antigravity 2.0 launches with CLI, SDK, and AI agents – TheNextWeb](https://thenextweb.com/news/google-antigravity-2-desktop-cli-sdk-io-2026)
- [Antigravity 2.0 Builds a Working OS in 12 Hours – AI2Work](https://ai2.work/blog/antigravity-2-0-builds-a-working-os-in-12-hours-as-google-takes-on-cursor-and)
- [AI Coding Agents 2026: Claude Code vs Antigravity 2.0 vs Cursor – Lushbinary](https://lushbinary.com/blog/ai-coding-agents-comparison-cursor-windsurf-claude-copilot-kiro-2026/)
