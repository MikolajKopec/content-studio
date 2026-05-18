# Skrót dnia — 18 maja 2026

4 newsów researched (Quiet news day — weekend przed Google I/O 2026). Cherry-pick poniżej.

---

## 1. ChatGPT widzi twoje konto bankowe — OpenAI łączy Pro z Plaid

📂 [`chatgpt-plaid-banki/notatka.md`](./chatgpt-plaid-banki/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** OpenAI uruchomił 15 maja 2026 ChatGPT Personal Finance — preview wyłącznie dla użytkowników Pro w USA ($200/mc), przez Plaid integruje się z ponad 12 000 instytucji finansowych (Chase, Fidelity, Schwab, Robinhood, Amex, Capital One). Chatbot czyta salda, transakcje, portfele i zobowiązania, ale nie może ruszyć pieniędzy ani zobaczyć pełnych numerów rachunków — krytycy już krzyczą "brzmi jak malware".

**Top hooks:**
- „OpenAI dostało pozew za wyciek czatów. Tydzień później prosi o dostęp do twojego konta bankowego."
- „Płacisz 200 dolarów miesięcznie, żeby AI czytało twoje rachunki."
- „ChatGPT dostaje 82,5 na 100 z finansów. Czy zaufałbyś księgowemu, który ma 4 z plusem?"

---

## 2. Quick Share na Androidzie wreszcie wysyła pliki na iPhone'a

📂 [`quick-share-ios-qr/notatka.md`](./quick-share-ios-qr/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google odpalił 12 maja 2026 globalny rollout Quick Share QR-flow — Android generuje QR, iPhone skanuje aparatem, plik (do 10 GB, dostępny 24h) leci przez chmurę Google bez żadnej apki na iOS. Pierwsza realna dwukierunkowa alternatywa dla AirDropa działająca między systemami, dystrybuowana po cichu przez Google Play Services 26.18+.

**Top hooks:**
- „Apple wreszcie przegrało AirDropa — i to przez QR-kod na ekranie Samsunga"
- „Każdy, kto zobaczy ten QR-kod, dostaje twój plik. Nawet ten gość za tobą w kawiarni"
- „Wysyłasz 10 GB filmu na iPhone'a teścia bez kabla, bez apki, bez Wi-Fi — wystarczy zdjęcie ekranu telefonu"

---

## 3. Google Messages — pakiet majowych nowości rolluje teraz

📂 [`google-messages-maj-2026/notatka.md`](./google-messages-maj-2026/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google przesuwa na stable pakiet majowych funkcji w Messages — kosz na czaty (30 dni), live lokalizacja, @wzmianki w grupach RCS przebijające wyciszenie, plus E2E szyfrowanie RCS między Androidem a iPhone'em od iOS 26.5. Dla użytkowników Samsunga w PL trzy pierwsze działają od dziś, ale E2E z iPhone'em w Polsce nie zadziała, bo żaden krajowy operator (T-Mobile, Plus, Play, Orange) nie aktywował jeszcze RCS na iOS — Samsung Messages wygaszany tylko w USA, Polska pozostaje przy nim.

**Top hooks:**
- „Twój iPhone od dziś szyfruje SMS-y z Androidem. Ale nie w Polsce."
- „Samsung Messages zamykany w lipcu. Ale tylko w USA."
- „Pierwszy raz w historii iPhone i Android szyfrują się nawzajem."

---

## 4. Grafana Labs okradziono z kodu — odmówili 7-cyfrowego okupu

📂 [`grafana-hack-codebase/notatka.md`](./grafana-hack-codebase/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Atakujący wykorzystał błędną konfigurację GitHub Action (Pwn Request na `pull_request_target`) w Grafana Labs, ukradł token GitHub App i pobrał cały kod źródłowy z 4+ prywatnych repo. Włamanie wykrył canary token (AWS API key) — jeden z tysięcy pułapek rozsianych przez Grafanę. Firma odmówiła płacenia okupu grupie CoinbaseCartel, powołując się na wytyczne FBI.

**Top hooks:**
- „Okradli firmę, która monitoruje cudzą infrastrukturę — i nie zauważyła ataku, dopóki nie zadziałała pułapka."
- „Hakerzy wyciągnęli cały kod źródłowy Grafany przez JEDEN `curl` w pull requeście."
- „Grafana rozsiała tysiące fałszywych haseł po swojej infrastrukturze. Jedno z nich uratowało im tyłek."

---

## Notes from sub-agents (verify before scripting)

- **Quick Share QR**: „End of June" w newsy.md to estymacja mediów, nie oficjalny język Google (mówi tylko „within the next month" od 12 maja). Limit transferu: 10 GB/plik + 10 GB/dzień, pliki znikają po 24h. Direct AirDrop-compat już istnieje od XI/2025 (Pixel 10) i III/2026 (S26) — nowość 12 maja to QR-fallback przez chmurę dla telefonów bez native compat.
- **ChatGPT Plaid**: PL geo-blokowane (US only), Plaid ma ograniczone PSD2 w PL. Klasyczna jednoroczna dystans — gdy/jak dotrze tu, otwarte pytanie.
- **Grafana hack**: ransom amount „7-cyfrowy" w nagłówku newsy.md NIE jest potwierdzony przez 8 zweryfikowanych źródeł — żadne nie podaje dolarów. Data ujawnienia rozbieżna: większość źródeł 16 maja, The Hacker News + Hackread 17 maja. Grafana używa komercyjnych Thinkst Canary, nie własnych pułapek (uściślenie newsy.md). Kod NIE wyciekł publicznie.
- **Google Messages**: Samsung Messages phase-out US-ONLY (oficjalne stanowisko Samsunga). Żaden polski operator nie wspiera RCS na iPhone'ach — E2E iOS 26.5 ↔ Android w PL nie zadziała. Trash folder stable rollout zaczął się 10 kwietnia 2026, nie 16 maja — 16 maja to „official packaging" pakietu (trash + lokalizacja + @mentions + E2E).
