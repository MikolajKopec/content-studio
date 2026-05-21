# Skrót dnia — 21 maja 2026

8 newsów researched. Dzień zdominowany przez Google I/O 2026 (19 maja) — pełna salwa: nowy model, nowe IDE, nowy cennik, nowe agenty. Plus jedna ciekawa decyzja Apple dla balansu.

Cherry-pick poniżej, kolejność wg potencjału.

---

## 1. Gemini 3.5 Flash wystartował — bije 3.1 Pro w benchmarkach, kosztuje 40% mniej

📂 [`gemini-35-flash-ga/notatka.md`](./gemini-35-flash-ga/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google wypuścił 19 maja 2026 Gemini 3.5 Flash — model GA z dnia premiery, kontekst 1M tokenów, 289 t/s (4× szybciej), $1.50/$9.00 za 1M tokenów (40% taniej niż 3.1 Pro), bijący własnego flagowca na Terminal-Bench 2.1 (76,2%), MCP Atlas (83,6%) i Finance Agent v2 (+14,9 pkt). Jednocześnie 3× droższy od 3 Flash Preview — Simon Willison i HN reagują na trend wzrostu cen we wszystkich 3 frontier labach.

**Top hooks:**
- "Gemini Flash kosztuje teraz **3× więcej** niż 3 miesiące temu — i Google twierdzi że to *taniej*."
- "Model za **$1.50/M** właśnie pokonał flagowca za **$2.50/M** od tego samego producenta. W tym samym tygodniu."
- "**12× szybszy** Claude Code? Google właśnie pokazał wewnętrzną wersję Gemini w Antigravity. **289 tokenów na sekundę** vs Opus przy 24 t/s."

---

## 2. Antigravity 2.0 — Google buduje agentic IDE i zabija Gemini CLI

📂 [`antigravity-2-ide/notatka.md`](./antigravity-2-ide/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google na I/O 2026 zrelaunchował Antigravity jako pełną platformę agentic dev (desktop + Go CLI + SDK + Managed Agents API) i ogłosił, że od 18 czerwca 2026 Gemini CLI dla konsumentów przestaje serwować requesty. Nowy AI Ultra za $100/mies, premium za $200, twardy atak na Cursor i Claude Code.

**Top hooks:**
- Google właśnie zabił własne open-source narzędzie po 8 miesiącach — 18 czerwca Gemini CLI przestaje serwować requesty, witaj closed-source Antigravity CLI.
- Gemini 3.5 Flash w Antigravity 12× szybciej niż w innych frontendach — Google mówi: nasz model w naszym IDE = przewaga, którą Cursor nie dogoni.
- Cursor $20, Claude $20, Antigravity $20. Ultra $100, Ultra $200 — Google właśnie ujednolicił ceny AI dev tools. Wojna o $200/mies za seat zaczęła się na serio.

---

## 3. Gemini Omni Flash — Google odpala generację video z dowolnego inputu, 10 sekund klipu

📂 [`gemini-omni-flash-video/notatka.md`](./gemini-omni-flash-video/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google wypuścił 19 maja 2026 multimodalny model video Gemini Omni Flash generujący 10-sekundowe klipy z synced audio z dowolnego inputu (tekst + obraz + audio + video), za darmo w YouTube Shorts i YouTube Create plus płatnie w aplikacji Gemini i Flow. Najbardziej ryzykowna funkcja — edycja mowy/audio — celowo wstrzymana ze względu na deepfake risk, a wszystkie klipy mają niewyłączalny SynthID watermark.

**Top hooks:**
- Twoja kopia w 10 sekund
- Darmowe AI video w YouTube Shorts od dziś
- Co Google ukrył w Omni Flash

---

## 4. Google ogłasza śmierć "Google jakim znamy" — Search to teraz AI Search, globalnie

📂 [`google-search-ai-search/notatka.md`](./google-search-ai-search/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google na I/O 2026 ogłosił, że Search to teraz AI Search — pierwszy redesign skrzynki od 25+ lat, multimodal input (text/obraz/plik/video/Chrome tabs), Gemini 3.5 Flash jako domyślny model, 1 miliard MAU w AI Mode rok po debiucie i agentic booking ruszający latem dla Pro/Ultra. Polska już objęta zasięgiem (od lutego 2026), ale agenty i booking dotrą do EU później.

**Top hooks:**
- 25 lat bez zmian, dziś koniec — Google przyznaje, że skrzynka z 2000 roku to inny produkt niż to, co rolluje 19 maja 2026
- 1 miliard ludzi co miesiąc w 12 miesięcy — AI Mode zdobył 1B MAU szybciej niż YouTube (6 lat) i Gmail (7 lat)
- Wrzuć video w Google — nowa skrzynka przyjmuje text, obraz, plik, video i karty Chrome jako równoprawny input

---

## 5. Google obniża cenę AI Ultra z $250 do $200 i dodaje nowy tier za $100

📂 [`google-ai-ultra-200/notatka.md`](./google-ai-ultra-200/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Google na I/O 2026 (19 maja) obniżył top-tier AI Ultra z $250 do $200/mc i wprowadził nowy AI Ultra entry za $100/mc (5× limity Antigravity vs Pro). Rynek skonsolidował się w trójkę $20/$100/$200 — Google pierwszy złamał $250 ceiling, dopełniając układ z ChatGPT Pro i Claude Max.

**Top hooks:**
- Google złamał $250 ceiling — top-tier AI Ultra spadł o $50. Pierwszy taki ruch w 2026.
- Trzy ceny rządzą AI w 2026: $20 / $100 / $200. Google domknął układ tym samym dniem, co OpenAI i Anthropic.
- AI Ultra entry $100 vs ChatGPT Pro $100 vs Claude Max 5× $100 — który daje więcej za tę samą stówę?

---

## 6. Daily Brief w aplikacji Gemini — AI robi Ci poranny przegląd Gmaila, kalendarza i zadań

📂 [`gemini-daily-brief/notatka.md`](./gemini-daily-brief/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Google na I/O 2026 (19 maja) wypuścił Daily Brief — proaktywny poranny digest w aplikacji Gemini, który scala Gmaila, Kalendarz i Tasks, priorytetyzuje i sugeruje next-stepy; to bezpośrednia kontra dla ChatGPT Pulse, ale od razu na tańszym tierze AI Plus ($19,99) i przy 900M MAU bazie. Wadą jest start tylko w USA i brak Polski.

**Top hooks:**
- "Twoja kawa staje się zbędna" — codziennie Gemini robi Ci streszczenie dnia zanim wstaniesz, a Ty śpisz
- "AI właśnie przeczytało Twojego Gmaila — i to legalnie, bo dałeś mu klucz"
- "Pulse vs Brief: OpenAI zrobił to pierwszy za $200, Google odpowiada za $20 — ale tylko w USA"

---

## 7. Universal Cart — Google chce być Twoim agentowym koszykiem online

📂 [`universal-cart-google/notatka.md`](./universal-cart-google/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Google ogłosił Universal Cart — jeden wspólny koszyk między Nike, Sephora, Target, Walmart, Wayfair i Shopify, działający w Search, Gemini, YouTube i Gmail, z protokołem AP2 dla agentowych płatności. Rollout USA latem 2026, EU/Polska bez daty — Allegro nie ma zaproszenia.

**Top hooks:**
- Google chce robić Twoje zakupy ZA Ciebie
- Amazon Rufus umarł 6 dni temu, a Google już przejmuje grę
- Pepper i RetailMeNot mogą szukać nowej pracy

---

## 8. Apple zamknął furtkę — iOS 26.5 nie pozwala już cofnąć się do starszej wersji

📂 [`ios-265-no-downgrade/notatka.md`](./ios-265-no-downgrade/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Apple ok. 18 maja 2026 przestało podpisywać iOS 26.4.2 — zaledwie 7 dni po wypuszczeniu iOS 26.5 (11 maja), zamykając klasyczne ~2-tygodniowe okno downgrade'u. Update łata 68 CVE (w tym remote kernel use-after-free w mDNSResponder i sandbox escape w App Intents), wprowadza pierwsze cross-platform E2EE RCS iPhone↔Android (oparte na MLS w RCS UP 3.0), Pride Luminance wallpaper i Maps Suggested Places — wszystko niecałe 3 tygodnie przed WWDC 2026 (8 czerwca) i premierą iOS 27.

**Top hooks:**
- Apple wymusza upgrade — nie wrócisz już do 26.4.2
- 68 dziur bezpieczeństwa w jednej aktualizacji — czy twój iPhone jest bezpieczny?
- Pierwsze E2EE między iPhonem a Androidem — koniec niebieskich i zielonych dymków?

---
