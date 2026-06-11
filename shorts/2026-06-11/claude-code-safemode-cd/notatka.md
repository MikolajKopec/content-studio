# Claude Code dodaje "safe mode" i komendę /cd — ratunek dla zawieszonych sesji

**Data:** 2026-06-11
**Temat:** Claude Code v2.1.169 wprowadza `--safe-mode` (clean session bez customizacji) i `/cd` (zmiana katalogu bez utraty prompt cache) — release skupiony na troubleshootingu i quality-of-life dla power-userów.

---

## Kluczowe fakty i liczby

- **Wersja: v2.1.169**, opublikowana **8–9 czerwca 2026** (data w GitHub Releases vs. wpis w changelog).
- Release zawiera **3 nowe funkcje**, **12 ulepszeń**, **12 fixów**, **2 security updates** i **1 performance improvement** — według podsumowania Releasebot.
- Nowy flag **`--safe-mode`** (i zmienna `CLAUDE_CODE_SAFE_MODE`) uruchamia Claude Code z WYŁĄCZONYMI: **CLAUDE.md**, **plugins**, **skills**, **hooks** oraz **MCP servers** — clean session do diagnostyki zepsutej konfiguracji.
- Nowa komenda **`/cd <ścieżka>`** zmienia working directory **bez breakowania prompt cache mid-session** — wcześniej trzeba było restartować sesję i tracić kontekst.
- Nowy setting **`disableBundledSkills`** (i `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS`) ukrywa **bundled skills, workflows i built-in slash commands** przed modelem — bez wyłączania własnych customizacji.
- Fix dla background agentów w git worktree: sesje, które weszły do worktree, **crash-loopowały z błędem "No conversation found"** przy ponownym otwarciu z `claude agents` — naprawione.
- Fix dwukrotnie wyświetlanego "thinking text" w **transcript view (Ctrl+O)** podczas streamingu odpowiedzi.
- `/terminal-setup` teraz automatycznie ustawia `terminal.integrated.gpuAcceleration` na `"off"` w **VS Code / Cursor / Windsurf** — żeby naprawić "garbled glyphs" w zintegrowanym terminalu (najczęściej zgłaszany render bug na macOS 26.2).
- Naprawiono ~**30–50 ms UI stall** na początku każdej tury dla użytkowników macOS zalogowanych przez claude.ai (vs. API key).
- Naprawiono `claude -p` zawieszający się na Windows przez skan slash-command/skill — **regresja z wersji 2.1.161**.
- Naprawiono enterprise managed MCP policies (`allowedMcpServers` / `deniedMcpServers`) nieenforce'owane na reconnect, w IDE-typed configs, w `--mcp-config` przy pierwszej sesji po instalacji.
- Domyślny **5-minutowy idle timeout** przywrócony na Vertex/Foundry żeby ubijać zawieszone streamy (opt-out: `API_FORCE_IDLE_TIMEOUT=0`).
- `claude agents --json` dostało nowy flag **`--all`** + pola `id` i `state` — wcześniej pomijał zablokowane i właśnie dispatchowane background sessions.

---

## Nowe komendy i flagi

| Komenda / flaga                  | Co robi                                                                                   |
| -------------------------------- | ----------------------------------------------------------------------------------------- |
| `claude --safe-mode`             | Start z wyłączonymi CLAUDE.md, plugins, skills, hooks, MCP                                |
| `CLAUDE_CODE_SAFE_MODE=1`        | To samo co `--safe-mode`, ale jako env var                                                |
| `/cd <ścieżka>`                  | Zmiana working directory **bez utraty prompt cache**                                      |
| `disableBundledSkills` (setting) | Ukrywa wbudowane skills/workflows/slash commands przed modelem                            |
| `claude agents --json --all`     | Włącza completed sessions w outputcie + nowe pola `id`, `state`                           |
| `post-session` hook              | Self-hosted runner: lifecycle hook po sesji, przed deletem workspace (snapshot, eksport)  |

---

## Naprawione bugi (cały blok 12 fixów)

- **Strzałki Up/Down** przeskakujące za historię przy wrappowanych wieloliniowych inputach — teraz przechodzą najpierw przez visual rows.
- **Enterprise MCP policies** nieenforce'owane w pięciu scenariuszach (reconnect, IDE-typed, `--mcp-config`, przed remote settings, slow cold start).
- **30–50 ms UI stall** na macOS dla użytkowników z claude.ai credentials.
- `claude -p` zawieszający się na Windows (regresja z 2.1.161).
- **Remote Control** zacinający się na "reconnecting" gdy OAuth refresh nakładał się na resume.
- "Connect to GitHub" popup z Git Credential Managera pojawiający się przy starcie na Windows.
- **Background agents w git worktree** crash-loop z "No conversation found".
- **Duplikowany "thinking text"** w transcripcie (Ctrl+O) podczas streamingu.
- `claude agents --json` pomijający blocked + just-dispatched sessions.
- Stale permission/dialog prompts wracające po reconnect do remote sessions.
- Background agenty ignorujące project-level `env` (np. `ANTHROPIC_MODEL`).
- **MCPB plugin cache** spuriously invalidowany na Windows.
- Plugin `.in_use` PID lock files akumulujące się bez limitu.
- Untrusted project settings mogły ustawić **OTEL client-certificate paths** bez trust confirmation.
- Auto-updater na Windows retry'ował w sesji gdy `claude.exe` był trzymany przez inny proces.

---

## Implikacje dla devów

- **`/cd` to game-changer dla monorepo** — prompt cache w Claude Code potrafi być wart **kilkanaście minut warmingu**, restart sesji to twardy reset kontekstu. Teraz przełączasz się między `apps/web` a `apps/api` bez kary.
- **`--safe-mode` to "Windows safe mode" dla AI agenta** — gdy własny hook/skill/MCP rozwala sesję, masz wreszcie ścieżkę diagnostyczną bez kasowania configu.
- Fix `claude -p` na Windows = znów używalne **headless / scriptowane wywołania** w pipeline'ach CI.
- Fix worktree crash loop = znów bezpieczne **parallel background agents** w izolowanych worktreach (popularny pattern z `backgroundclaude.com`).
- `disableBundledSkills` to ukłon w stronę użytkowników skarżących się na **"controllability problem"** wbudowanych skills (paddo.dev) — można zostawić własne customizacje, a ukryć wbudowane.
- `/terminal-setup` w VS Code / Cursor / Windsurf — jeden komenda zamiast ręcznego grzebania w `settings.json` w trzech edytorach.

---

## Porównanie z Cursor CLI i Codex CLI

| Feature                          | Claude Code v2.1.169       | Cursor CLI (1.x, 2026)       | Codex CLI v0.135           |
| -------------------------------- | -------------------------- | ---------------------------- | -------------------------- |
| "Safe mode" / clean session      | **`--safe-mode`** (full)   | brak dedykowanego flagu      | `--no-config` (częściowy)  |
| Zmiana cwd bez utraty cache      | **`/cd <path>`**           | tylko restart sesji          | `cd` w shell + nowa sesja  |
| Diagnostyka konfiguracji         | safe-mode + `disableBundledSkills` | brak                  | `codex doctor`             |
| Worktree-aware background agents | tak, fix loop w 2.1.169    | tak (sesje izolowane)        | brak natywnego wsparcia    |
| MCP enterprise policies          | enforce'owane na reconnect | brak MCP                     | brak MCP                   |

Claude Code wyprzedza konkurencję w jednej rzeczy: **zarządzanie długo żyjącą sesją z prompt cache** — `/cd` jest unikalny w klasie CLI agentów.

---

## Potencjalne kąty narracyjne do shorta

- **"Safe mode dla AI — jak w Windowsie, ale Twojego asystenta kodu"** — analogia natychmiast czytelna, hook dla każdego kto kiedyś bootował F8.
- **"Jedna komenda oszczędza Ci 20 minut warmingu cache"** — `/cd` ratuje sesję, konkretna liczba w hooku.
- **"Anthropic w jednym update'cie naprawił 12 bugów i dał Ci tryb awaryjny"** — skala release'u, fakt liczbowy.
- **"Twój background agent crashował w pętli? Nie Twoja wina — Anthropic to przyznał"** — emocjonalny hook dla power userów git worktree.
- **"Cursor i Codex tego nie mają — Claude Code dostał safe mode i /cd"** — porównanie konkurencyjne, dramatyczne.
- **"Klikasz Ctrl+O i widzisz dwa razy ten sam thinking? Wreszcie naprawione"** — dla daily userów, mikro-irytacja każdy rozpozna.
- **"VS Code, Cursor, Windsurf — jedna komenda /terminal-setup naprawia trzy edytory naraz"** — practical tip, szeroka publiczność devów.

---

## Źródła

- [Claude Code Changelog — code.claude.com/docs/en/changelog](https://code.claude.com/docs/en/changelog)
- [Release v2.1.169 · anthropics/claude-code (GitHub)](https://github.com/anthropics/claude-code/releases/tag/v2.1.169)
- [Claude Code Updates by Anthropic — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code v2.1.169 Major Updates — DevelopersIO (classmethod)](https://dev.classmethod.jp/en/articles/20260609-cc-updates-v2-1-169/)
- [Claude Code Changelog: All Release Notes 2026 — claudefa.st](https://claudefa.st/blog/guide/changelog)
- [Configure your terminal for Claude Code — code.claude.com/docs/en/terminal-config](https://code.claude.com/docs/en/terminal-config)
- [git worktree for Claude Code — backgroundclaude.com](https://backgroundclaude.com/blog/git-worktree)
- [Claude Skills: The Controllability Problem — paddo.dev](https://paddo.dev/blog/claude-skills-controllability-problem/)
- [Claude Code vs Cursor vs Codex CLI — codeagentswarm.com](https://www.codeagentswarm.com/en/guides/claude-code-vs-cursor-vs-codex)
