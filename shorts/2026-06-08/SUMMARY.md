# Skrót dnia — 8 czerwca 2026

3 newsów researched (quiet weekend day — sobota/niedziela bez większych premier produktów, dwa wątki WWDC + jeden security w ChatGPT). Cherry-pick poniżej.

---

## 1. WWDC 2026 startuje dziś wieczorem — ostatni keynote Tima Cooka

📂 [`wwdc-2026-cook-keynote/notatka.md`](./wwdc-2026-cook-keynote/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Dziś o 19:00 CEST Tim Cook po raz 15. i ostatni jako CEO otwiera WWDC — Apple pokaże 6 nowych systemów (iOS 27, macOS 27, iPadOS 27, watchOS 27, tvOS 27, visionOS 27) z przebudowanym Siri na silniku Gemini od Google (kontrakt ~1 mld USD/rok). 1 września 2026 firmę przejmie John Ternus, dotychczasowy szef inżynierii sprzętu.

**Top hooks:**
- "Za 4 godziny Tim Cook po raz ostatni wyjdzie na scenę WWDC jako CEO."
- "15 lat, 4 biliony dolarów, jeden keynote. Dziś wieczorem Cook kończy erę Apple."
- "Apple płaci Google miliard dolarów rocznie, żeby Siri w końcu zaczęła działać."

---

## 2. Apple płaci Google 1 mld USD rocznie — nowy Siri zasilany Gemini

📂 [`apple-gemini-siri-1mld/notatka.md`](./apple-gemini-siri-1mld/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Apple licencjonuje od Google customowy model Gemini z 1,2 biliona parametrów (8x większy niż własne modele Apple) za ok. 1 mld USD rocznie, żeby zasilić przebudowanego Siri w iOS 27, prezentowanego na WWDC 8 czerwca 2026. Wcześniej Apple rozważał Claude od Anthropic, ale odrzucił z powodu żądań kilku miliardów rocznie — paradoks polega na tym, że Google nadal płaci Apple 20 mld USD rocznie za bycie domyślną wyszukiwarką w Safari.

**Top hooks:**
- "Apple zapłaci Google 1 miliard dolarów rocznie za to, żeby ich Siri w ogóle działał"
- "Google płaci Apple 20 miliardów rocznie. Teraz Apple płaci Google miliard. Wiecie, za co?"
- "Nowy Siri to Gemini. 1,2 biliona parametrów. W twoim iPhonie."

---

## 3. ChatGPT dostaje "Lockdown Mode" — tryb sejfu chroniący przed prompt injection

📂 [`chatgpt-lockdown-mode/notatka.md`](./chatgpt-lockdown-mode/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** OpenAI 6 czerwca 2026 wypuściło Lockdown Mode — opcjonalny przełącznik, który deterministycznie wyłącza 7 ścieżek wyjścia danych z ChatGPT (live web, Deep Research, Agent Mode, Canvas networking, konektory, downloady, obrazy z sieci), żeby zablokować ostatni etap ataków prompt injection. Tryb nie wykrywa samego injection, ale zamyka "lethal trifecta" Willisona — tnie kanał exfiltracji, którym ataki typu ShadowLeak wyciągały Gmail przez Deep Research.

**Top hooks:**
- "Twoje maile mogą wyciec z ChatGPT — bez kliknięcia"
- "OpenAI właśnie przyznało, że domyślny ChatGPT nie chroni twoich danych"
- "7 funkcji ChatGPT, które musisz wyłączyć, żeby być bezpiecznym"

---
