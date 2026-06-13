# Skrót dnia — 13 czerwca 2026

4 newsy researched (quiet day po WWDC/Fable 5 — okno 11–13 czerwca). Cherry-pick poniżej.

---

## 1. Meta Edits z desktopową aplikacją, AI asystentem i zakładką Beta — startuje rywal CapCuta dla Windows/Mac

📂 [`meta-edits-desktop-ai/notatka.md`](./meta-edits-desktop-ai/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Meta na zamkniętym evencie w Los Angeles 11 czerwca 2026 zapowiedziała desktopową wersję aplikacji Edits (Windows/Mac), AI asystenta opartego o dane z Instagrama (views/retention) i zakładkę Beta — celując wprost w CapCuta, który od 19 stycznia 2025 jest zbanowany w USA. Materiały tworzone w Edits mają wg Mety 10% wyższy save rate i 2% wyższy reshare rate niż reszta, a "ponad połowa" widzów Reelsów codziennie widzi content z tej apki.

**Top hooks:**
- "Połowa Reelsów na Instagramie jest robiona w Edits — a większość polskich twórców nawet nie zainstalowała tej apki."
- "Meta właśnie dała twórcom A/B testy do shortów. CapCut tego nie ma. TikTok tego nie ma. I jest za darmo."
- "CapCut ma 800 mln userów. Edits ma desktop, A/B testy i jest legalny w USA. To jest moment, w którym ten rynek zaczyna się przewracać."

---

## 2. xAI uruchamia Grok Build Plugin Marketplace — MongoDB, Vercel, Sentry w komplecie

📂 [`xai-grok-plugin-marketplace/notatka.md`](./xai-grok-plugin-marketplace/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** xAI 11 czerwca 2026 odpaliło wbudowany marketplace pluginów dla terminalowego agenta Grok Build z sześcioma startowymi pakietami (MongoDB, Vercel, Sentry, Chrome DevTools, Cloudflare, Superpowers), kopiując format manifestu Claude Code 1:1 i dziedzicząc Superpowers z ~226 tys. gwiazdek. Cały marketplace siedzi za paywallem SuperGrok ($30/mc) albo X Premium Plus ($40/mc), a SHA pinning ma chronić agenta z dostępem do shella przed supply-chain podmianą.

**Top hooks:**
- "226 tysięcy gwiazdek na GitHubie — i xAI po prostu wziął ten plugin do swojego marketplace'a Grok Build."
- "xAI nie umiał pokonać Claude Code'a, więc go skopiował — field for field — i zmienił tylko nazwę folderu z `.claude-plugin` na `.grok-plugin`."
- "Anthropic właśnie został standardem branżowym — i nawet o to nie walczył, xAI zrobił to za nich."

---

## 3. Windows 11 testuje "jeden restart na miesiąc" i wyszukiwarkę odporną na literówki

📂 [`win11-insider-unified/notatka.md`](./win11-insider-unified/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Microsoft wydał rekordowe 7 buildów Insider 12.06.2026, w których najważniejsze są trzy zmiany: Unified Update Experience (jeden wymuszony restart miesięcznie zamiast 3-4, koordynacja driver/.NET/firmware), search odporny na literówki (utlook → Outlook, crom → Chrome) i dedykowane release notes dla 7 inbox-appów (Calculator, Camera, Clock, Media Player, Paint, Photos, Sound Recorder). Trafia do stable Windows 11 25H2/24H2 jako KB5095093 w lipcowym Patch Tuesday (14.07.2026).

**Top hooks:**
- "Microsoft 4 lata reklamował 'nowoczesny Windows', a basic search dopiero teraz radzi sobie z literówką `utlook` → Outlook. Algolia to ma od 2012."
- "Twój Windows restartował się 3-4 razy w miesiącu przez driver/.NET/firmware updates. Microsoft mówi że teraz wystarczy raz — pod warunkiem że nie wyjdzie zero-day."
- "Jeden restart na miesiąc trafia do stable Windows 11 dokładnie 14 lipca 2026 z KB5095093. Zegar tyka."

---

## 4. Claude Code 2.1.176 — automatyczny fallback z Fable 5 do Opus 4.8 i tytuły sesji w języku rozmowy

📂 [`claude-code-2-1-176/notatka.md`](./claude-code-2-1-176/notatka.md)
**Potencjał:** 💧 niski

**TL;DR:** Anthropic wypuścił cztery patche Claude Code (2.1.173 → 2.1.176) w mniej niż 48 godzin — bez żadnej nowej funkcji, ale z auto-fallbackiem klasyfikatora Fable 5 na Opus 4.8, managed settingiem `enforceAvailableModels` dla regulowanych branż i naprawą hook patternów (`Edit(src/**)`, `Read(.env)`), które były udokumentowane, ale nie działały. Pokazuje to ekstremalnie szybki cykl wydawniczy Claude Code (~3 patche tygodniowo, w bursach do 4 na dobę) — szybszy niż Cursor, Antigravity, Copilot CLI i Codex.

**Top hooks:**
- "Anthropic wypuścił 4 patche Claude Code w 48h. Antigravity wypuszcza 1 patch na 2 tygodnie. To nie jest konkurencja, to jest inna gra."
- "Claude Code wreszcie kopiuje do clipboardu w tmux przez SSH. Funkcja, którą vim ma od 1991. Ile lat zajmie Cursorowi nadgonić podstawy terminala?"
- "Anthropic przyznał, że Fable 5 crashuje na 5% sesji. Patch nie naprawia tego — patch tylko spada na tańszy model. $10 → $5 za milion tokenów."
