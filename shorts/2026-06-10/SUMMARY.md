# Skrót dnia — 10 czerwca 2026

8 newsów researched. Cherry-pick poniżej (posortowane: wysoki → średni potencjał).

---

## 1. Apple odda mózg Siri Google'owi — Gemini napędzi Apple Intelligence

📂 [`siri-ai-gemini/notatka.md`](./siri-ai-gemini/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Apple płaci Google ok. 1 mld USD rocznie za customowy model Gemini 1,2T parametrów, z którego destyluje nową "Siri AI" — ale iPhone'y w Polsce i całej UE nie dostaną tego na start z powodu DMA, działa tylko na Macu i Vision Pro.

**Top hooks:**
- "Apple płaci Google'owi miliard dolarów rocznie, żeby Siri w końcu działała."
- "Twój Mac dostanie nową Siri. Twój iPhone w Polsce — nie. Tej samej jesieni."
- "Apple zbudowało AI z konkurentem od reklam. I oddaje mu mózg 1,5 miliarda iPhone'ów."

---

## 2. iOS 27, iPadOS 27 i macOS Golden Gate — bety deweloperskie dostępne dziś

📂 [`ios27-macos-golden-gate-beta/notatka.md`](./ios27-macos-golden-gate-beta/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Apple wypuściło pierwsze bety deweloperskie iOS 27, iPadOS 27, watchOS 27, visionOS 27 i macOS 27 "Golden Gate" tuż po keynote WWDC 2026 — z obietnicą 30% szybszego uruchamiania aplikacji, ale i z najtwardszym cięciem wsparcia od lat: koniec Intel Maców i tylko 5 modeli Apple Watcha pozostaje w grze. Bety są darmowe dla każdego Apple ID, ale Beta 1 już zdążyła ubić część iPhone'ów 15 Pro do DFU restore.

**Top hooks:**
- "Twój Apple Watch może się dziś zestarzeć — zostało tylko 5 modeli"
- "Apple właśnie pochował każdego Intel Maca — nawet ten za 6000 dolarów"
- "Twoja apka uruchomi się 30% szybciej — i to nawet na iPhonie z 2019"

---

## 3. Cursor wprowadza Premium Seat za $96/mc — 5× więcej usage za 3× cenę

📂 [`cursor-premium-seat/notatka.md`](./cursor-premium-seat/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Cursor restrukturyzuje pricing Teams — wprowadza Premium Seat za $96/mc (annual) lub $120/mc (monthly), z 5× większą pulą usage niż Standard ($32/40), w odpowiedzi na power userów palących quoty całego zespołu. Zmiana wchodzi od 1 lipca 2026 dla istniejących klientów; tego samego dnia Google ubija Gemini CLI i pcha userów na Antigravity.

**Top hooks:**
- "Cursor podniósł cenę o 200% — i developerzy się cieszą"
- "Google zabija Gemini CLI 18 czerwca — Cursor podnosi ceny tego samego dnia"
- "Cursor każe płacić $0.25 za milion tokenów, nawet jeśli przynosisz własny klucz Anthropic"

---

## 4. Nintendo Direct 9 czerwca — Ocarina of Time remake na Switch 2

📂 [`nintendo-direct-ocarina/notatka.md`](./nintendo-direct-ocarina/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Niespodziewany Nintendo Direct 9 czerwca 2026 zakończył się reveal'em pełnego remake'u Ocarina of Time na Switch 2 — pierwszego od 28 lat. Trailer bez gameplay, premiera "later in 2026", Switch 2 już 19,86 mln sprzedanych sztuk i status najszybciej sprzedającej się konsoli Nintendo.

**Top hooks:**
- "28 lat czekania na remake. Nintendo wreszcie pęka."
- "Nintendo zatrudniło fana z YouTube'a. Tak wygląda nowa Zelda."
- "Switch 2 sprzedał 20 milionów w rok. Nintendo właśnie odpaliło swoją broń atomową."

---

## 5. Apple cofa się z Liquid Glass — wprowadza suwak "od przezroczystego do matowego"

📂 [`liquid-glass-slider/notatka.md`](./liquid-glass-slider/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Rok po debiucie kontrowersyjnego Liquid Glass na WWDC 2025 Apple oficjalnie dodaje w iOS 27 i macOS Golden Gate suwak intensywności efektu (Settings > Appearance > Liquid Glass, NIE w Accessibility) — to najszybsze publiczne cofnięcie designerskie Apple w historii, szybsze niż butterfly keyboard (4 lata) czy Touch Bar (5 lat).

**Top hooks:**
- "Apple właśnie przyznało, że spieprzyło design swojego flagowego systemu"
- "Rok i jeden dzień — tyle wytrzymał najnowszy design Apple"
- "Butterfly keyboard cofnęli po 4 latach. Liquid Glass — po jednym"

---

## 6. Apple wprowadza "Child Account" z Ask to Browse — rodzic zatwierdza strony przez iMessage

📂 [`apple-child-account/notatka.md`](./apple-child-account/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Apple ogłosiło na WWDC 2026 systemową kontrolę rodzicielską — jedno konto Child Account z domyślnymi presetami wiekowymi, Ask to Browse (rodzic akceptuje strony przez iMessage) i 3 nowe API dla deweloperów. Wszystko spada jesienią z iOS 27, dokładnie wtedy, gdy UK, USA (KOSA) i Polska (weryfikacja wieku 18+) wprowadzają twarde regulacje ochrony dzieci.

**Top hooks:**
- "Twoje dziecko klika link, a TY dostajesz SMS z prośbą o zatwierdzenie"
- "Rząd UK dał Apple 3 miesiące na blokady, Apple odpowiedział tego samego dnia"
- "Polski rząd każe blokować porno, Apple każe pytać o każdą stronę — to się składa w jedną pułapkę"

---

## 7. Claude Code v2.1.169 — safe mode i komenda /cd bez gubienia cache'u

📂 [`claude-code-v2-1-169/notatka.md`](./claude-code-v2-1-169/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Anthropic wydał Claude Code v2.1.169 z 30 zmianami — trzy nowości dla developer ergonomics: --safe-mode (czysty start CLI bez CLAUDE.md, pluginów, skilli, hooków i MCP), /cd (zmiana katalogu w trakcie sesji bez utraty prompt cache'u) i disableBundledSkills (ukrycie wbudowanych skilli przed modelem). Plus 12 fixów, 2 security (OTEL cert paths, enterprise MCP allow/deny enforced on cold start) i redukcja CPU podczas streamingu.

**Top hooks:**
- Anthropic właśnie wymyślił **bisect dla AI agenta** — jedna flaga wyłącza 5 warstw customizacji
- **Pół dolara za każdą zmianę katalogu** — Claude Code w końcu zlikwidował ten podatek
- Twoja firma myślała, że blokuje MCP servers — przez 5 wersji **pierwsza sesja po instalacji omijała politykę**

---

## 8. Ollama v0.30.7 — Hermes Desktop i Gemma 4 z optymalizacją QAT

📂 [`ollama-v0-30-7/notatka.md`](./ollama-v0-30-7/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Ollama w 24h wypuściła v0.30.6 i v0.30.7 — dorzuca natywny Hermes Desktop od NousResearch (konkurent LM Studio z głosem, MCP i pluginami) i pełną rodzinę Gemma 4 QAT, która tnie wymagania VRAM o ~72%: model klasy MMLU 87% mieści się na RTX 4090, a wariant E2B w mobilnym formacie waży 1 GB RAM.

**Top hooks:**
- "Model AI za 30 tysięcy dolarów odpalisz teraz na karcie do gier"
- "Google zmniejszył model AI z 9,6 GB do 1 GB — bez utraty jakości"
- "Telefon z gigabajtem RAM-u potrafi teraz odpalić model AI"
