# Skrót dnia — 16 czerwca 2026

4 newsów researched. Cherry-pick poniżej.

---

## 1. Anthropic odpina Claude Code od planu Pro/Max — od wczoraj devsi płacą osobno

📂 [`anthropic-billing-split/notatka.md`](./anthropic-billing-split/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic od 15 czerwca rozdzielił billing — Agent SDK, `claude -p`, GitHub Actions i third-party agenci (Zed, Conductor, OpenClaw, Jean) wyjechały z planu Pro/Max do osobnej puli kredytów ($20/$100/$200) liczonej po pełnych stawkach API, bez rollover i bez refundu. Tego samego dnia o 9:00 PT padł retirement modeli `claude-sonnet-4-20250514` i `claude-opus-4-20250514` — calls do nich od wczoraj failują bez okresu przejściowego.

**Top hooks:**
- Wczoraj o 9 rano Anthropic odpiął Claude Code od planu Pro i Max — i pół internetu devów obudziło się dziś z padniętym cronem.
- $20 Pro, $100 Max 5x, $200 Max 20x — to nie cena planu, to nowy osobny portfel na Agent SDK który Anthropic dorzucił od wczoraj. Bez rollover, bez refundu.
- Anthropic zabił wczoraj dwa modele Claude 4 bez okresu przejściowego. Jeśli twój skrypt ma w sobie "claude-opus-4-20250514", to od wczoraj zwraca błąd zamiast odpowiedzi.

---

## 2. Meta zdjęła Horizon Worlds z Questów — VR-metaversum oficjalnie umarło

📂 [`meta-horizon-worlds-quest/notatka.md`](./meta-horizon-worlds-quest/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Po pięciu latach i $83,6 mld strat Reality Labs Meta cicho odinstalowała Horizon Worlds z Questów — VR-metaversum, pod które Zuckerberg zmienił nazwę firmy w 2021, padło z peakiem ~300k MAU vs celem 1 mld. Twórcy stracili swoje światy bez backupu, Quest 4 w klasycznej formie został anulowany, a Meta pivotuje na smart glasses i AI.

**Top hooks:**
- $83,6 mld za $1,1 mln przychodu od graczy — Reality Labs spalił 83 600 000 000 dolarów. Cały lifetime consumer spending w VR-Horizon to 1 100 000 dolarów. 75 000 razy mniej.
- Horizon Worlds miał 1 mld użytkowników — miał. Skończył na <200 tysiącach. Cel Zuckerberga z 2021 vs realny peak 300k MAU w lutym 2022, potem spadek.
- Bosworth zrobił reverse w Instagram Stories. 3 miesiące później i tak zabili VR. 17 marca: zamykamy. 19 marca: jednak nie. 15 czerwca: jednak tak.

---

## 3. Apple szykuje iOS 27 — wczoraj 9to5mac wysypał trzy świeże fishe

📂 [`ios27-feature-wave/notatka.md`](./ios27-feature-wave/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Apple drip-feeduje funkcje iOS 27 z bety 1 — Find My pozwala teraz schować się na 12h przed konkretnym kontaktem bez powiadomienia, Apple Pay dostał swipe między kartami w checkoucie, a iPhone Mirroring wreszcie ma resize, Control Center (CMD+4) i działający DRM. Plus w kodzie znaleziono ślady foldable iPhone Ultra.

**Top hooks:**
- Apple właśnie dał Ci tryb 'schowaj się przed byłą' — Find My 12h hide bez powiadomienia
- 3 funkcje, których Apple nie zdążył pokazać na WWDC — wszystkie są o tym, że ktoś Cię śledzi
- iPhone Mirroring wreszcie nie jest beta-quality — rok po premierze dostaje Control Center, resize i Netflixa

---

## 4. Samsung Galaxy Z Fold 8 leak — wczoraj wycieka "Wide Fold" tydzień przed Unpacked

📂 [`galaxy-z-fold8-wide-leak/notatka.md`](./galaxy-z-fold8-wide-leak/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Samsung dropuje TRZECI typ Folda — krótszy i szerszy "Wide" w formacie 4:3, najlżejszy Fold w historii (201 g), w cenie podobnej do iPhone'a 17 Pro Max. Unpacked 22 lipca w Londynie, dokładnie 7 tygodni przed iPhone Fold od Apple.

**Top hooks:**
- Samsung dropuje TRZECIEGO Folda — w cenie iPhone'a 17 Pro Max (Wide Fold za ~$1 799 to pierwszy "tani" składak Samsunga, zbliżony do 7 500 zł iPhone'a)
- Pizza Fold się skończyła — wreszcie składak, który po złożeniu wygląda jak normalny telefon (82 mm szerokości vs ~73 mm w Ultra, format 4:3 jak iPad mini)
- Samsung wie, że iPhone Fold idzie we wrześniu — Unpacked 22 lipca, identyczne ceny $1 999/2 199/2 399, identyczna przekątna 7,8". To NIE przypadek

---
