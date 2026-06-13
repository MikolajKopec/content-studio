# xAI uruchamia Grok Build Plugin Marketplace — MongoDB, Vercel, Sentry w komplecie

**Data:** 2026-06-13
**Temat:** xAI 11 czerwca 2026 odpalił wbudowany katalog pluginów dla swojego terminalowego agenta Grok Build, kopiując format pluginów Claude Code (łącznie z nazwą folderu) i zgarniając do startowego katalogu Superpowers — najpopularniejszy open-source'owy framework Anthropic Claude Code z ~226 tys. gwiazdkami na GitHubie.

## Kluczowe fakty i liczby

- Marketplace wszedł w **public beta 11 czerwca 2026**, **30 dni** po samym Grok Build CLI (25 maja 2026).
- Katalog startowy liczy **6 pluginów first-party**: **MongoDB, Vercel, Sentry, Chrome DevTools, Cloudflare, Superpowers**.
- Superpowers (autor: Jesse Vincent / Prime Radiant) ma **~226 000 gwiazdek na GitHubie** (Medium podaje konkretne **224 691**) — to ten sam plugin, który Anthropic wystawił w swoim oficjalnym marketplace dla Claude Code.
- Plugin = paczka, która łączy w jeden pakiet: **skille (SKILL.md), slash commands, subagentów, hooki (hooks.json), serwery MCP i serwery LSP** — opcjonalnie z `plugin.json` jako manifestem.
- Każdy zdalny plugin ma **40-znakowy lowercase commit SHA pinning** — Grok Build weryfikuje SHA po każdym klonie, żeby zablokować podmianę kodu przez force-push.
- Dostęp do Grok Build (a więc i marketplace'a) **wymaga płatnej subskrypcji**: **SuperGrok ($30/mc)**, **SuperGrok Heavy ($300/mc)** albo **X Premium Plus ($40/mc)**.
- Sam silnik to model **grok-build-0.1** z oknem kontekstu **256 000 tokenów**, API w cenie **$1/$2 za milion tokenów** input/output.
- Format manifestu marketplace'a — `.grok-plugin/marketplace.json` — to **literalna kopia** formatu Anthropic z października 2025 (`.claude-plugin/marketplace.json`), z przemianowanym folderem.
- Anthropic uruchomił własny plugin system dla Claude Code w public beta **9 października 2025** — xAI dogonił **~8 miesięcy później**.

## Specyfikacja techniczna / Co potrafią pluginy

**MongoDB** — eksploracja danych, zarządzanie kolekcjami, optymalizacja zapytań bez wychodzenia z terminala. Agent dostaje skille do query planningu i poruszania się po schematach.

**Vercel** — zarządzanie deploymentami, sprawdzanie statusu buildów, konfiguracja domen. Real-time activity (edycje plików, terminal commands) dynamicznie wstrzykuje do kontekstu wiedzę o aktualnych API Vercela.

**Sentry** — analiza stack trace'ów, debug błędów produkcyjnych, triage alertów. Klasyczny on-call use case: "agencie, znajdź i napraw co się sypie".

**Chrome DevTools** — sterowanie żywą przeglądarką, nagrywanie performance trace'ów, inspekcja network requestów. To w praktyce wbudowany Playwright/Puppeteer dla agenta.

**Cloudflare** — skille pod Workers, Durable Objects, edge compute. Deploy i debug funkcji serverless z poziomu CLI.

**Superpowers** — agentowy framework Jesse Vincenta, który wymusza dyscyplinę **clarify → design → plan → code → verify**. Wstrzykuje 14 skilli (TDD, systematic-debugging, brainstorming, writing-plans, dispatching-parallel-agents, requesting-code-review, using-git-worktrees, writing-skills i in.). Powstał dla Claude Code — Grok Build natywnie czyta foldery `~/.claude/skills/` i pliki `CLAUDE.md`, więc plugin działa "zero config".

**Instalacja**: dwa tryby — z poziomu agenta (`/marketplace`) lub z CLI (`grok plugin install <name> --trust`). Flaga `--trust` to świadoma akceptacja, że plugin uruchamia kod z dostępem do systemu. CI w repo `xai-org/plugin-marketplace` waliduje świeżość indeksu skryptem `python3 scripts/generate-plugin-index.py --check`.

**Submitowanie własnych**: edytujesz `.grok-plugin/marketplace.json`, robisz PR do `xai-org/plugin-marketplace`. xAI weryfikuje SHA pin, ale **nie** zachowanie kodu — odpowiedzialność za bezpieczeństwo trzeciej strony spada na użytkownika (flaga `--trust`).

## Porównanie z konkurencją

| Cecha | xAI Grok Build Marketplace | Claude Code (Anthropic) | Cursor |
|---|---|---|---|
| Data startu marketplace'a | 11.06.2026 (beta) | 09.10.2025 (beta) | wcześniej, jako Extensions |
| Format pluginu | skille + slash commands + agenty + hooki + MCP + LSP | skille + slash commands + agenty + hooki + MCP | rozszerzenia VS Code-like |
| Manifest | `.grok-plugin/marketplace.json` | `.claude-plugin/marketplace.json` (ten sam format) | `package.json` w stylu VS Code |
| SHA pinning | Tak (40-znakowy commit SHA, weryfikacja po klonie) | Częściowo (poprzez git refs) | Wersjonowanie semver |
| Liczba pluginów na start | 6 first-party | ~36 w oficjalnym katalogu (do końca 2025) | setki rozszerzeń |
| Kompatybilność krzyżowa | Czyta `~/.claude/skills/` i `CLAUDE.md` | Natywne | Brak |
| Wymagana subskrypcja | SuperGrok ($30) / Heavy ($300) / X Premium Plus ($40) | Plan Pro $20 lub Max | Pro $20 |
| Otwartość katalogu | Open, PR-based do `xai-org/plugin-marketplace` | Open, PR-based | Zamknięty, oficjalny rejestr |

Najmocniejszy punkt: format jest **field-for-field identyczny** z Anthropic, więc developerzy nie muszą pisać dwóch wersji pluginu — wystarczy zmienić nazwę folderu z `.claude-plugin/` na `.grok-plugin/`.

## Model biznesowy / cena

Marketplace sam w sobie jest darmowy, ale **dostęp do Grok Build sit za paywallem**:

- **SuperGrok Lite** — $10/mc (limity)
- **SuperGrok** — $30/mc (główny plan)
- **SuperGrok Heavy** — $300/mc (max throughput)
- **X Premium Plus** — $40/mc (bundle z X, Grok 4 w aplikacji, niebieski znacznik)
- **Rabaty**: X Premium+ użytkownicy płacący z góry — **50% off** SuperGrok; X Premium — 25% off.
- **API model `grok-build-0.1`**: $1/M input, $2/M output (osobny rachunek, headless mode wymaga `GROK_CODE_XAI_API_KEY`).

Dla porównania: Claude Code działa w planie **Pro ($20/mc)** lub Max, OpenAI Codex CLI też wymaga ChatGPT Plus/Pro. xAI ma **najwyższy próg wejścia** w kategorii agentowych CLI.

## Implikacje dla użytkownika / rynku

1. **Standard de facto wygrywa Anthropic, nie xAI** — kopiując format manifestu jeden do jednego, xAI uznał formalnie format `.claude-plugin/marketplace.json` za branżowy standard, nawet jeśli rebrandują folder.
2. **Programiści piszą jeden plugin, działa w dwóch agentach** — to ogromne pozytywne nawet dla małych autorów (Superpowers Jesse'go Vincenta nie wymagał żadnej pracy, żeby trafić do Grok Build).
3. **MCP nie jest jedynym sposobem rozszerzania agentów** — pluginy to "MCP + 5 innych rzeczy w jednym pakiecie". To kierunek, w którym format pluginu staje się ważniejszy niż samo MCP jako wąsko rozumiany protokół.
4. **SHA pinning jako odpowiedź na npm-style supply chain** — coraz częściej w 2026 widać presję na deterministyczne źródła kodu agentowego, bo agent z dostępem do produkcji ma realnie root-level uprawnienia.
5. **xAI ma problem z dystrybucją, nie z technologią** — paywall SuperGrok + X Premium Plus drastycznie zwęża grupę docelową w porównaniu z Claude Pro ($20). Cały marketplace działa, ale dla wąskiej elity zapłaconych użytkowników.
6. **Wraz z Superpowers, Grok dostaje 14 skilli TDD/debug/planowania za darmo** — efektywnie xAI nie musi szkolić agenta na własnym corpusie metodologii, bo ściąga gotowy framework z konkurencji.

## Potencjalne kąty narracyjne do shorta

1. "**226 tysięcy gwiazdek na GitHubie — i xAI po prostu wziął ten plugin do swojego marketplace'a Grok Build**." (kontrast: open source + komercyjny gracz)
2. "**xAI nie umiał pokonać Claude Code'a, więc go skopiował — field for field — i zmienił tylko nazwę folderu z `.claude-plugin` na `.grok-plugin`**."
3. "**Plugin marketplace dla agenta CLI? Spoko — tylko płacisz 30 dolarów miesięcznie zanim w ogóle go zobaczysz**." (paywall hook)
4. "**8 miesięcy spóźnienia, 6 pluginów na start, format manifestu skopiowany 1:1 — i to xAI nazywa premierą Grok Build Plugin Marketplace**."
5. "**Anthropic właśnie został standardem branżowym — i nawet o to nie walczył, xAI zrobił to za nich**."
6. "**Jeden plugin: MongoDB, Vercel, Sentry, Chrome DevTools, Cloudflare albo Superpowers — instalujesz w terminalu jednym `/marketplace` i agent ogarnia ci stack od bazy do prod-debugu**." (positive framing)
7. "**40-znakowy SHA pin przy każdym pluginie — bo xAI wie, że agent z dostępem do shella to praktycznie root i jedna podmiana w repo kończy się produkcją w gruzach**."

## Źródła

1. **xAI / x.ai/news** — *Grok Build Plugin Marketplace* (11.06.2026): https://x.ai/news/grok-plugin-marketplace
2. **xAI / x.ai/news** — *Introducing Grok Build* (CLI, 25.05.2026): https://x.ai/news/grok-build-cli
3. **GitHub — obra/superpowers** — repo Jesse Vincenta, ~226k gwiazdek: https://github.com/obra/superpowers
4. **MarkTechPost** — *xAI Ships Grok Build Plugin Marketplace…* (11.06.2026): https://www.marktechpost.com/2026/06/11/xai-ships-grok-build-plugin-marketplace-with-mongodb-vercel-sentry-chrome-devtools-cloudflare-and-superpowers-plugins-at-launch/
5. **CryptoBriefing** — *MongoDB plugin goes live in Grok Build Plugin Marketplace* (11.06.2026): https://cryptobriefing.com/mongodb-plugin-grok-build-marketplace/
6. **Vercel changelog** — *Vercel plugin is now available in Grok Build* (Melkey Moksyakov, 11.06.2026): https://vercel.com/changelog/vercel-plugin-is-now-available-in-grok-build
7. **Basenor** — *Grok Gets Sentry Plugin for Error Analysis and Debugging*: https://www.basenor.com/blogs/news/grok-gets-sentry-plugin-for-error-analysis-and-debugging
8. **Medium / Chew Loong Nian** — *xAI Couldn't Beat Claude Code's Plugins, So Grok Swallowed Them — 224,691-Star Superpowers Included*: https://medium.com/@chewloongnian/xai-couldnt-beat-claude-code-s-plugins-so-grok-swallowed-them-224-691-star-superpowers-included-cc5ffc91b2a7
9. **Felloai** — *Grok Pricing 2026: SuperGrok, X Premium+, Heavy & API Costs*: https://felloai.com/grok-pricing/
10. **Mervin Praison** — *Grok Build CLI: xAI Terminal Coding Agent with Plan Mode, Subagents, and Headless CI*: https://mer.vin/2026/05/grok-build-cli-xai-terminal-coding-agent-with-plan-mode-subagents-and-headless-ci/
