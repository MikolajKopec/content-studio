# Newsy technologiczne — 13 czerwca 2026

> **Quiet news day** — okno 2026-06-11 do 2026-06-13 05:00 UTC po dwóch hucznych tygodniach (WWDC 8.06, Claude Fable 5 9.06, Google AI Plus 8.06) wypadło bardzo spokojnie. 4 świeże, narzędziowe newsy zamiast forsowania starszych wiadomości.

---

## 1. xAI uruchamia Grok Build Plugin Marketplace — MongoDB, Vercel, Sentry w komplecie

**Źródło:** xAI / x.ai/news (11.06.2026), MarkTechPost (11.06.2026), CryptoBriefing (11.06.2026)

xAI 11 czerwca uruchomiło wbudowany sklep z pluginami dla swojego terminalowego agenta Grok Build. W katalogu startowym sześć pluginów: **MongoDB, Vercel, Sentry, Chrome DevTools, Cloudflare oraz Superpowers** (ten ostatni — agentowy framework z **224 691 gwiazdkami na GitHub**, według Medium). Każdy plugin pakuje skille, slash commands, hooki, MCP servery i LSP w jeden instalowalny pakiet z **SHA pinning** (bezpieczeństwo łańcucha dostaw).

Marketplace jest **w wersji beta**, otwarty katalog — własne pluginy submitujesz przez PR do `xai-org/plugin-marketplace`. Grok Build wciąż wymaga płatnej subskrypcji **SuperGrok** lub **X Premium Plus**.

Sytuacyjnie: Claude Code wystartowało z własnym ekosystemem pluginów już wcześniej, a xAI wchodzi z bardzo podobnym formatem, zamiast walczyć o własny standard MCP.

> **Potencjał contentowy:** średni — dev tools wars są bardzo ulubione, ale to news bardziej "też mamy plugin store" niż "rewolucja". Hook: "xAI zwinął plugin Claude Code'a z 224k gwiazdek do swojego marketplace'u".

---

## 2. Meta Edits z desktopową aplikacją, AI asystentem i zakładką Beta — startuje rywal CapCuta dla Windows/Mac

**Źródło:** TechCrunch (11.06.2026), Meta blog, TheNextWeb (11.06.2026)

Na zamkniętym evencie dla twórców w Los Angeles 11 czerwca Meta zapowiedziała **desktopową wersję aplikacji Edits** (do tej pory tylko mobile) z synchronizacją projektów między telefonem a komputerem oraz **asystenta AI** który analizuje statystyki z Instagrama (views, retention) i podpowiada pomysły na treści oraz trending audio.

Dostępne **już dziś** w aplikacji mobilnej: zakładka **"Beta"** z dostępem do eksperymentalnych funkcji, rozszerzone audience insights (demografia, godziny szczytu), wyszukiwanie inspiracji po tematach, możliwość **A/B testów** wielu wersji jednego materiału przed publikacją.

Liczby z eventu: content stworzony w Edits ma **10% wyższy save rate** i **2% wyższy reshare rate** niż reszta — a "ponad połowa osób oglądających Reelsy na Instagramie codziennie widzi materiały zrobione w Edits". Asystent AI i wersja desktopowa — "coming soon", na razie w testach z uczestnikami eventu.

> **Potencjał contentowy:** wysoki — bardzo dotyka twórców (a meeko.tech to twórcy treści), zabija CapCut w jednym ruchu (drama), ma konkretne liczby (10%, 2%, "połowa Reelsów").

---

## 3. Windows 11 testuje "jeden restart na miesiąc" i wyszukiwarkę odporną na literówki

**Źródło:** Windows Insider Blog (12.06.2026), Pureinfotech, BleepingComputer

Microsoft 12 czerwca wypuścił buildy dla wszystkich kanałów Insider: **Beta 26220.8680, Release Preview 26100.8728/26200.8728** i Experimental 26300.8687. Najważniejsza zmiana to **Unified Update Experience** — driver, .NET i firmware update'y koordynowane z monthly update'em tak, żeby było **tylko jedno wymuszone uruchomienie ponowne w miesiącu** zamiast trzech-czterech.

Druga zmiana użytkowa: search **odporny na literówki**. Wpiszesz `utlook` — znajdzie Outlooka. Działa też dla pominiętych liter (`crom` → Chrome), nadmiarowych liter, częściowych słów. Settings results też ranked lepiej.

Trzecia: dedykowane strony z release notes dla **siedmiu inbox apps** (Calculator, Camera, Clock, Media Player, Paint, Photos, Sound Recorder) — przestajesz zgadywać co Microsoft zmienił w Paint między aktualizacjami.

> **Potencjał contentowy:** średni — "Windows w końcu robi rzecz oczywistą" zawsze działa. Hook: "Microsoft 4 lata reklamował 'nowoczesny Windows', a podstawową rzecz robi dopiero teraz".

---

## 4. Claude Code 2.1.176 — automatyczny fallback z Fable 5 do Opus 4.8 i tytuły sesji w języku rozmowy

**Źródło:** Claude Code changelog (code.claude.com), Anthropic Release Notes

Anthropic 11–12 czerwca wypuścił trzy patche Claude Code w 48h: **2.1.173** (11.06), **2.1.175 i 2.1.176** (12.06). Najważniejsze zmiany:

- **Auto mode fallback dla Fable 5**: jeśli organizacja nie ma dostępu do Opus 4.8, klasyfikator Fable 5 (który normalnie routuje wrażliwe zapytania do słabszego modelu) automatycznie cofa się do najlepszego dostępnego Opusa zamiast crashować.
- **Session titles w języku rozmowy** — gadasz po polsku, dostajesz polski tytuł sesji. Można też przypiąć język ustawieniem.
- **`enforceAvailableModels`** managed setting — admin może zablokować `availableModels` allowlistę przed nadpisaniem z user/project settings (dla regulowanych organizacji).
- **Hook patterns** w stylu `Edit(src/**)`, `Read(~/.ssh/**)`, `Read(.env)` w końcu **działają jak udokumentowane**.
- **Fix `/copy` w tmux przez SSH** — wreszcie kopiuje do clipboardu systemowego.

Nic spektakularnego — ale to dokładnie pokazuje cykl wydawniczy Claude Code (3 patche w 48h to typowy tydzień).

> **Potencjał contentowy:** niski-średni — czysty dev content. Hook: "Anthropic wypuścił 3 patche Claude Code w 48 godzin — żaden nie zawiera nowej funkcji, którą ktokolwiek zauważy".
