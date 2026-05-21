# Antigravity 2.0 — Google buduje agentic IDE i zabija Gemini CLI

**Data:** 2026-05-21
**Temat:** Google na I/O 2026 zrelaunchował Antigravity jako pełną platformę agentic dev (desktop + CLI w Go + SDK + Managed Agents API) i ogłosił, że od **18 czerwca 2026** Gemini CLI dla konsumentów przestaje obsługiwać requesty.

---

## Kluczowe fakty i liczby

- Premiera **19 maja 2026** na Google I/O — Antigravity 2.0 to **5 powierzchni** w jednym brandzie: desktop app, CLI, SDK, Managed Agents API, Enterprise Agent Platform.
- **18 czerwca 2026** Gemini CLI i rozszerzenia Gemini Code Assist IDE **przestają serwować requesty** dla użytkowników Google AI Pro, Ultra i darmowych kont indywidualnych. Enterprise licencje (Standard/Enterprise/Cloud) dalej działają.
- Antigravity CLI przepisane **z Node.js na Go** — szybszy start, mniejszy memory footprint, lepsze wsparcie SSH i workflow keyboard-first.
- Google twierdzi, że Gemini 3.5 Flash w Antigravity działa **12× szybciej** niż w innych frontendach; sam model ma być **4× szybszy** od konkurencyjnych frontier models i bić Gemini 3.1 Pro na większości benchmarków.
- Nowy **AI Ultra za $100/mies** daje **5× wyższe limity** w Antigravity niż Pro; topowy plan obniżony z **$250 do $200/mies** z **20× wyższymi limitami** niż Pro. Bonus **$100 kredytów** dla nowych użytkowników do **25 maja 2026**.
- Pełne **dynamic subagents** w tle, **scheduled background tasks** (cron-like), **natywne voice commands**, integracje z **AI Studio, Firebase i Androidem**.
- Managed Agents w Gemini API — **jeden endpoint** zwraca w pełni zainicjalizowanego agenta z **izolowanym Linux sandboxem** i persistent state przez wiele tur.
- Migracja pluginów: `agy plugin import gemini` przenosi extensions z Gemini CLI; Skills, MCP servers i Hooks generalnie migrują czysto, custom themes nie portują się.
- **Brak 1:1 feature parity** na start — Google sam to przyznaje w blogu deweloperskim.

---

## Architektura: desktop, CLI, SDK

Antigravity 2.0 to nie jest jeden produkt, tylko **wspólny agent harness** opakowany w 5 powierzchni:

1. **Desktop app** — natywna aplikacja na macOS, Windows i Linux, redesign skupiony na orkiestracji wielu agentów w równoległych panelach.
2. **Antigravity CLI** — terminal-first, napisany w **Go**, dzieli ten sam silnik reasoningu co desktop (poprawki idą na obie powierzchnie jednocześnie). Konfiguracja MCP serverów przeszła do dedykowanego `mcp_config.json`, Skills przeniesione z `.gemini/` do `.agents/skills/`.
3. **Antigravity SDK** — programatyczny dostęp do agent harness; możesz hostować agentów na własnej infrze, Google Cloud klienci dostają natywne konektory.
4. **Managed Agents API** — endpoint w Gemini API, który zwraca agenta z remote sandboxem; wołasz go jak chat completions, ale w środku siedzi pełna agentic loop z trwałym stanem.
5. **Enterprise Agent Platform** — wersja dla firm z VPC, audytem i zarządzaniem flotą agentów.

## Co potrafi (dynamic subagents, scheduled tasks)

- **Dynamic subagents** — desktop pozwala definiować custom subagent workflows, które pracują równolegle w tle, bez blokowania głównego sesji terminala czy IDE.
- **Scheduled background tasks** — definiujesz task, który **automatycznie wywołuje agenta** o ustalonej porze (np. nightly refactor, daily security scan, hourly content scrape).
- **Hooks (JSON-defined)** — przechwytują zachowanie agenta na lifecycle eventach: pre-tool-call, post-edit, itd.
- **Voice commands** — natywne mówienie do desktopu, plus dedykowana **AI Studio Android app** do dyktowania pomysłów i sharowania apek.
- **Export z AI Studio** — projekt z AI Studio przenosisz jednym kliknięciem na lokalne Antigravity i kontynuujesz w desktopie.

## Porównanie: Antigravity vs Cursor vs Claude Code

| Cecha | Antigravity 2.0 | Cursor (Composer 2.5) | Claude Code |
|---|---|---|---|
| Multi-agent orchestration | Tak, dynamic subagents w równoległych panelach | Częściowe, mniej parallel | Tak, headless subagents |
| CLI | **Tak, Go**, shared harness z desktopem | Brak natywnego CLI klasy headless | Tak, dojrzały headless CLI |
| SDK do hostowania własnych agentów | Tak | Nie | Nie (Claude Agent SDK osobno) |
| Managed Agents API | Tak, **jeden endpoint** = agent + sandbox | Brak | Brak |
| Scheduled tasks (cron) | **Natywnie** | Brak | Brak |
| Voice | **Natywne**, plus mobile | Brak | Brak |
| Domyślny model | **Gemini 3.5 Flash**, deklarowane 12× przyspieszenie | GPT-5, Claude Sonnet, Gemini | Claude (Sonnet/Opus) |
| Open source CLI | **Nie** (closed source) | Nie | Nie |
| Code completion klasy IDE | Słabsza | **Najlepsza** | Średnia |

Cursor wciąż wygrywa **pure code-completion experience**, Claude Code ma najbardziej dojrzały headless CLI agent. Antigravity nadrabia **pełnym stackiem** (CLI + SDK + Managed) i tym, że Google wpina go w **AI Studio, Firebase, Android, Gemini API** — czyli ma dystrybucję, której Cursor i Anthropic nie mają.

## Migracja z Gemini CLI

- **Do 18 czerwca 2026** — Gemini CLI działa normalnie dla wszystkich.
- **Po 18 czerwca 2026** — darmowi, AI Pro i AI Ultra **nie wywołają** już Gemini CLI ani rozszerzeń Gemini Code Assist IDE. Enterprise zostaje na Gemini CLI z update'ami.
- **Komenda migracji:** `agy plugin import gemini` przenosi extensions; Skills, MCP servers i Hooks migrują, **custom themes nie**.
- **Config drift:** MCP servers wymagają teraz `serverUrl` zamiast `url`, Skills z `.gemini/` lecą do `.agents/skills/`.
- Google publikuje docs + video walkthroughs; Apache 2.0 repo Gemini CLI **zostaje publicznie dostępne dla community** — ale bez wsparcia ani aktualizacji ze strony Google.

## Cena / limity (AI Pro, AI Ultra)

| Plan | Cena | Limity w Antigravity |
|---|---|---|
| **AI Pro** | $20/mies | baseline |
| **AI Ultra (nowy)** | **$100/mies** | **5× Pro** |
| **AI Ultra Premium** | **$200/mies** (z $250) | **20× Pro** |
| **I/O promo** | — | **$100 kredytów bonus** do 25 maja 2026 |
| **Enterprise** | per seat | bez zmian, dalej Gemini CLI dostępne |

Ceny mocno mirrorują strukturę Anthropic ($20/$100/$200) i OpenAI ($20/$200) — **Google ujednolica industry pricing** zamiast podcinać.

## Reakcje dev community

- **The Register** odnotowuje "significant frustration" na GitHubie — devsi narzekają, że **Gemini CLI był Apache 2.0**, a Antigravity CLI jest **closed source**.
- Wielu raportuje, że **trafiają w tygodniowe limity** po kilku requestach — co Google de facto rozwiązuje pushując na płatne tiery.
- Dmitry Lyalin (lead Gemini CLI) studzi nastroje: open source repo zostaje, ale **update'y i fix'y idą tylko do Enterprise** — czytaj między wierszami: community = płać albo forkuj.
- Część devów chwali **Go rewrite** (szybkość, SSH-first) i **shared harness** (jeden bugfix = dwa frontendy naprawione), ale brak 1:1 parity boli early adopterów z heavily customized .gemini setupami.
- Tech-Twitter rozkręca narrację "**Google nareszcie kontratakuje Cursor i Claude Code**" — z drugiej strony "Google zabija open source CLI, na którym zbudowali community".

---

## Potencjalne kąty narracyjne do shorta

1. "**Google właśnie zabił własne open-source narzędzie po 8 miesiącach** — 18 czerwca Gemini CLI przestaje serwować requesty, witaj closed-source Antigravity CLI."
2. "**Gemini 3.5 Flash w Antigravity 12× szybciej niż w innych frontendach** — Google mówi: nasz model w naszym IDE = przewaga, którą Cursor nie dogoni."
3. "**Jeden endpoint, jeden agent z sandboxem** — Managed Agents w Gemini API to moment, w którym agentic dev przestaje być DIY, a staje się serverless."
4. "**Cursor $20, Claude $20, Antigravity $20. Ultra $100, Ultra $200** — Google właśnie ujednolicił ceny AI dev tools. Wojna o $200/mies za seat zaczęła się na serio."
5. "**Dynamic subagents + scheduled background tasks** w desktopie — w nocy Antigravity ci refaktoryzuje codebase, a rano dostajesz PR. To nie jest IDE, to jest cron z mózgiem."
6. "**Go zamiast Node.js, SSH first-class** — Antigravity CLI to pierwszy agent harness zaprojektowany pod remote dev i headless CI/CD, a nie pod lokalnego macbooka."
7. "**Apache 2.0 → closed source.** Google właśnie pokazał, jak naprawdę wygląda 'open AI' w 2026 — community dostaje archive na GitHubie, Enterprise dostaje update'y."

**Drama Google vs Cursor vs Anthropic:** Cursor obroni IDE code-completion, ale Google ma **dystrybucję** (Android, Firebase, AI Studio). Anthropic ma **najbardziej dojrzały CLI agent**, ale Google ma **SDK + Managed API** w jednym pakiecie. Następne 6 miesięcy = bitwa o to, kto stanie się "AWS dla agentów" — i Google właśnie zagrał najmocniejszą kartę.

---

## Źródła

- [Google Developers Blog — Transitioning Gemini CLI to Antigravity CLI](https://developers.googleblog.com/an-important-update-transitioning-gemini-cli-to-antigravity-cli/) (19 maja 2026, primary)
- [MarkTechPost — Google Launches Antigravity 2.0 at I/O 2026](https://www.marktechpost.com/2026/05/19/google-launches-antigravity-2-0-at-i-o-2026-a-standalone-agent-first-platform-with-cli-sdk-managed-execution-and-enterprise-support/) (19 maja 2026)
- [TechCrunch — Google launches Antigravity 2.0 with an updated desktop app and CLI tool at IO 2026](https://techcrunch.com/2026/05/19/google-launches-antigravity-2-0-with-an-updated-desktop-app-and-cli-tool-at-io-2026/) (19 maja 2026)
- [9to5Google — Google Antigravity 2.0 becoming full agentic developer suite](https://9to5google.com/2026/05/19/google-antigravity-agentic-developer-suite/) (19 maja 2026)
- [The Register — Bye-bye, Gemini CLI; Google nudges devs toward Antigravity](https://www.theregister.com/ai-ml/2026/05/20/bye-bye-gemini-cli-google-nudges-devs-toward-antigravity/5243605) (20 maja 2026)
- [Apidog — Google Antigravity 2.0: Agent-First Dev Platform](https://apidog.com/blog/google-antigravity-2/) (porównanie z Cursor/Claude Code)
- [Agentpedia — Antigravity CLI Deep Dive: Google's Go-Based Terminal Agent](https://agentpedia.codes/blog/antigravity-cli-deep-dive) (architektura Go, migracja)
