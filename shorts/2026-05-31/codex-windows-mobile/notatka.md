# OpenAI Codex steruje Windowsem — z poziomu telefonu w ChatGPT

**Data:** 2026-05-31
**Temat:** Codex 26.527 dodaje Computer Use na Windows oraz remote continuation z ChatGPT mobile — możesz wystartować pracę na PC i sterować nią z autobusu.

---

## Kluczowe fakty i liczby

- **Codex 26.527** wydany **29 maja 2026** — wprowadza Computer Use na Windows i remote continuation z telefonu (źródło: oficjalny changelog Codex / Neowin / Thurrott).
- Computer Use działa **tylko na aktywnym pulpicie** — Codex przejmuje kursor, klika i pisze w foregroundzie. Na macOS Codex potrafi działać w tle (locked use po zablokowaniu ekranu), na Windowsie **musi widzieć pulpit**.
- Aktywacja przez **`@Computer`** lub konkretną apkę: **`@Paint`**, **`@Chrome`**, **`@VSCode`** w promptcie — przed dostępem do każdej apki Codex prosi o zgodę (jednorazową lub stałą).
- Computer Use **niedostępne w EEA, UK i Szwajcarii** na starcie (potwierdzone w oficjalnej dokumentacji `developers.openai.com/codex/app/computer-use`).
- Remote continuation z **ChatGPT mobile (iOS/Android)** rolluje się na **wszystkie plany**: Free, Go, Plus, Pro, Business, Edu i Enterprise — łącznie z darmowymi tier-ami (preview).
- Połączenie telefon ↔ PC po skanie **kodu QR** w sekcji „Codex mobile" w aplikacji desktopowej; przez WebSocket do chmury OpenAI, z tokenami sesji wygasającymi po bezczynności.
- Z telefonu można: startować nowe wątki, dawać follow-upy, akceptować akcje, oglądać **diffy, terminal output i screenshoty** — bez wracania do biurka.
- Nowe **Codex Profiles** w aplikacji pokazują profil, **usage statistics i token activity** — to konsekwencja zmiany z **2 kwietnia 2026** z per-message pricing na rozliczanie per API token.
- Codex **nie może** automatyzować terminala, samego siebie ani autoryzować jako administrator — to twarde zabezpieczenie wpisane w produkt.
- Update dorzuca też **thread coordination** dla worktree-ów Gita oraz wyszukiwanie w starych wątkach po treści rozmowy i nazwach branchy.

## Możliwości — co konkretnie potrafi Codex na Windowsie

- Widzi pulpit (screen capture + vision), klika, pisze, używa skrótów klawiszowych.
- Testuje aplikacje desktopowe na żywo — uruchamia, klika przez UI, weryfikuje zachowanie wizualnie.
- Reprodukuje bugi UI-specific (na żywym Windowsie, nie w mockupie).
- Modyfikuje ustawienia aplikacji, inspektuje źródła danych bez API.
- Pętla percepcja-akcja ma latency ok. **1–2 sekundy na akcję** (screenshot → vision → klik → weryfikacja).

## Plany i dostępność

- Computer Use: **macOS i Windows**, BEZ **EEA, UK, Szwajcarii** na starcie.
- Mobile remote w ChatGPT: **iOS i Android, wszystkie plany w preview** — w tym Free i Go.
- Promo do **31 maja 2026**: Codex Free + Go, podwojone rate limity na Plus/Pro/Business/Enterprise/Edu.
- Pro $200 ma **20x Plus** na stałe + **25x** limit 5-godzinny dla Codex do 31 maja (zamiast standardowych 20x).
- Wymagane uprawnienia systemowe: Screen Recording + Accessibility (na macOS); na Windowsie analogiczne uprawnienia automatyzacji.

## Porównanie z konkurencją (stan na maj 2026)

- **Claude Code**: terminal-first, działa lokalnie, multi-surface (VS Code, JetBrains, Desktop, Web, iOS, Chrome, Slack). Ma mobile, ale **nie steruje pulpitem** w stylu Computer Use. Tradycyjnie używany do delegacji z aprobatą edycji.
- **Cursor**: standalone IDE od v3, foreground-first. Background Agents na cloud VM z własnym desktopem i przeglądarką — **do 8 równoległych jobów**. Brak mobile.
- **Antigravity 2.0**: relaunch na I/O 2026 (**19 maja**) jako pięć powierzchni (desktop app, CLI, SDK, Managed Agents API, Enterprise Agent Platform) na **Gemini 3.5 Flash**. Browser agent steruje dedykowanym Chrome, sprawdza UI. Desktop-only (Windows 10+, macOS 12+, Linux).
- **Windsurf**: w 2026 nadal IDE-centric, bez sterowania pulpitem.
- **Codex** jako jedyny łączy: **Windows desktop control + mobile remote + chmurowy background**. To unikalny stack — Cursor ma background+desktop ale tylko cloud VM, Claude Code ma mobile ale bez desktop control.

## Implikacje dla developerów

- **Bug hunting na żywych Windows apkach** — testowanie regresji desktop, które wcześniej wymagało własnoręcznego klikania, można delegować.
- Workflow: startujesz „przejdź flow checkout, zrób screenshoty błędów" na PC, **wychodzisz na lunch**, na telefonie akceptujesz akcje i oglądasz diffy.
- Trade-off: **kursor będzie się sam ruszał** — nie można jednocześnie używać Windowsa do innej pracy w tej samej sesji. Praktycznie wymaga drugiej maszyny albo wirtualki.
- Screenshoty lecą na serwery OpenAI — **nie używać z danymi regulowanymi** (HIPAA, PCI-DSS, dane klientów objęte NDA, kod proprietary z polityką no-cloud).
- Codex Profiles + token activity = w końcu da się policzyć koszt sesji per task, co przy nowym tokenowym pricingu z kwietnia jest niezbędne.

## Reakcje branży

- Neowin i Thurrott opublikowały tego samego dnia (29 maja) — branża traktuje to jako kamień milowy: pierwszy „mainstream" agent z mobile control nad Windowsem.
- Narracja konkurencyjna: OpenAI dogania Cursor w background, dogania Claude w mobile, i wyprzedza obu w sterowaniu Windowsem — wszystko w jednym release.
- Krytyka: foreground-only na Windowsie to ograniczenie, ale jednocześnie warstwa bezpieczeństwa (widzisz, co Codex robi). Komentatorzy zwracają uwagę, że to świadomy trade-off OpenAI po incydentach prompt injection w konkurencyjnych narzędziach (CVSS 10/10 desktop extension exploit zgłaszany w innych produktach w 2026).

---

## Potencjalne kąty narracyjne do shorta

1. „Twój kursor zacznie ruszać się sam — Codex właśnie dostał ręce na Windowsie." (pokaz: kursor klika w Paint bez dotykania myszki)
2. „Wychodzisz z domu, Codex koduje, ty na telefonie klikasz **„approve"** w autobusie — to nie demo, to release **26.527** z 29 maja."
3. „**20 minut zamiast 2 godzin** — Codex sam przeklikuje regression suite na żywym Windowsie, ty oglądasz diffy na iPhonie."
4. „**Free i Go też dostają mobile remote** — nie musisz mieć Pro za $200, żeby sterować Codexem z telefonu."
5. „**EEA, UK i Szwajcaria w plecy** — Computer Use Windows zablokowane na starcie. Jeśli jesteś w Polsce, jesteś poza UE compliance window… ale jesteś w EEA. Sprawdź dwa razy, zanim zapłacisz za Pro."
6. „Codex vs Claude Code vs Cursor vs Antigravity — kto pierwszy łączy **Windows desktop + mobile**? Spoiler: tylko jeden. I to nie ten, który myślałeś."
7. „Codex Profiles pokazuje token activity — w końcu zobaczysz, **ile kosztował Cię prompt o przerefaktorowanie auth**. Po kwietniowej zmianie na token billing to nie luksus, to konieczność."

---

## Źródła
- [Changelog – Codex | OpenAI Developers](https://developers.openai.com/codex/changelog) — oficjalny changelog 26.527
- [Computer Use – Codex app | OpenAI Developers](https://developers.openai.com/codex/app/computer-use) — dokumentacja techniczna i regionalne restrykcje
- [OpenAI rolls out major Codex for Windows update with computer use and mobile access — Neowin](https://www.neowin.net/news/openai-rolls-out-major-codex-for-windows-update-with-computer-use-and-mobile-access/)
- [OpenAI Brings Computer Use to Codex App on Windows — Thurrott.com](https://www.thurrott.com/a-i/openai-a-i/336754/openai-brings-computer-use-to-codex-app-on-windows)
- [Work with Codex from anywhere — OpenAI](https://openai.com/index/work-with-codex-from-anywhere/) — pierwotne ogłoszenie mobile (14 maja)
- [OpenAI says Codex is coming to your phone — TechCrunch](https://techcrunch.com/2026/05/14/openai-says-codex-is-coming-to-your-phone/)
- [Using Codex with your ChatGPT plan — OpenAI Help Center](https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan) — dostępność per plan
- [OpenAI Brings Full Computer Control to Codex on Windows — explainx.ai](https://explainx.ai/blog/openai-codex-computer-use-windows-mobile-control-2026) — analiza techniczna i bezpieczeństwo
- [Claude Code vs Cursor vs OpenAI Codex vs Google Antigravity (2026) — bdtechjobs](https://www.bdtechjobs.com/blog/claude-code-vs-cursor-vs-codex-vs-antigravity)
- [Agentic Coding in 2026: Claude Code vs Codex CLI vs Gemini CLI vs Cursor Agent — ofox.ai](https://ofox.ai/blog/agentic-coding-claude-codex-gemini-cursor-2026/)
