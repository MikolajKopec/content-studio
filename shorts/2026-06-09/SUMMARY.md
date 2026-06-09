# Skrót dnia — 9 czerwca 2026

6 newsów researched. Cherry-pick poniżej.

---

## 1. iOS 27 Extensions — Claude i Gemini mogą zastąpić Siri na iPhone

📂 [`ios27-extensions-ai/notatka.md`](./ios27-extensions-ai/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Apple na WWDC 2026 (8 czerwca) otworzył Siri, Writing Tools i Image Playground na zewnętrzne modele AI — użytkownik wybiera w Ustawieniach Claude, ChatGPT, Gemini albo Grok jako domyślny mózg Apple Intelligence. Jednocześnie Apple płaci Google ok. 1 mld USD rocznie za customowy Gemini z 1,2 bln parametrów, który napędza samą Siri.

**Top hooks:**
- „Apple płaci Google miliard dolarów rocznie, żeby Siri działała."
- „Od dziś Claude i Gemini mogą zastąpić Siri na 2 miliardach iPhone'ów."
- „Tim Cook na scenie WWDC: 'nie dostarczyliśmy tego, co obiecaliśmy'."

---

## 2. iOS 27, iPadOS 27, macOS Golden Gate — dev beta od wczoraj, +30% szybsze apki

📂 [`ios27-macos-golden-gate/notatka.md`](./ios27-macos-golden-gate/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Apple wczoraj na WWDC 2026 wypuścił dev bety wszystkich systemów 27 z hasłem „wydajność" (+30% szybsze apki, +70% ładowanie zdjęć, +80% AirDrop), samodzielną apką Siri AI z synchronizacją iCloud i poprawkami Liquid Glass. Cena: koniec wsparcia Intel Maców, największa w historii rzeź Apple Watch (Series 8, Ultra 1, SE 2 wylatują) i bezterminowe wstrzymanie Siri AI na iPhone'ach w Unii Europejskiej przez DMA.

**Top hooks:**
- „Apple właśnie zabił Intel Maca. Definitywnie."
- „Apple wyrzucił 3 lata zegarków jednym aktualizacją"
- „Twój iPhone w UE będzie miał wycięte AI — przez Brukselę"

---

## 3. ChatGPT „superapp" — największa przebudowa od premiery rusza w tygodniach

📂 [`chatgpt-superapp-overhaul/notatka.md`](./chatgpt-superapp-overhaul/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** OpenAI w najbliższych tygodniach wypuszcza największą przebudowę ChatGPT od premiery — superapp w stylu WeChata z natywnymi aplikacjami Canva, Booking.com i Spotify, Codexem, agentem i checkoutem Stripe — wszystko tuż przed IPO planowanym na Q4 2026. W tle senior OpenAI rzuca w FT: „Chat is dead".

**Top hooks:**
- „OpenAI właśnie zabiło chatbota — w cytacie FT: »Chat is dead«."
- „OpenAI kopiuje WeChata — ten sam dzień, w którym złożyli papiery na IPO."
- „900 milionów ludzi za kilka tygodni otworzy zupełnie inny ChatGPT."

---

## 4. Gemini CLI umiera 18 czerwca — devsi mają 9 dni na migrację do Antigravity CLI

📂 [`gemini-cli-shutdown/notatka.md`](./gemini-cli-shutdown/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Google wyłącza open-source'owe Gemini CLI 18 czerwca 2026 (HTTP 410 Gone) i pcha indywidualnych devów na zamknięte Antigravity CLI (`agy`) — Enterprise zostaje, reszta dostaje 9 dni na migrację i sporą dawkę dramy o tym, że ich wkład w open-source poszedł do closed-source produktu.

**Top hooks:**
- „Google zabija swoje narzędzie za 9 dni" — twardy deadline, konkretna liczba, urgency: 18 czerwca komenda `gemini` przestaje działać i zwraca HTTP 410 Gone.
- „Twój open-source kod właśnie zamknęli na klucz" — Gemini CLI był Apache 2.0, Antigravity CLI nie jest. Repo Antigravity na GitHubie zawiera „a change log, readme i jeden GIF". Reszta to czarna skrzynka.
- „306. produkt w cmentarzu Google'a" — killedbygoogle.com dostaje nowy wpis, a devsi cytują „Fool me 305+1 times, shame on me".

---

## 5. visionOS 27 — twoje panoramy w 3D, zakrzywione okna, Wi-Fi 3× szybsze

📂 [`visionos27-panoramy-3d/notatka.md`](./visionos27-panoramy-3d/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Apple na WWDC 2026 pokazał visionOS 27 — zwykła panorama z iPhone'a zamienia się przez ML w przestrzenne otoczenie 3D, okna aplikacji są zakrzywione jak monitor curved, a Wi-Fi łączy się do 3× szybciej. To software-driven próba uratowania platformy, która sprzedała w święta 2025 tylko 45 000 sztuk.

**Top hooks:**
- „Apple sprzedał tylko 45 000 Vision Pro w święta — i właśnie pokazał system, który ma to uratować"
- „Twoja panorama z Tatr staje się otoczeniem 3D — bez Vision Pro nie zobaczysz, ale iPhone już to robi"
- „Apple wkleił Google Gemini do Siri w Vision Pro"

---

## 6. Anthropic Claude Managed Agents — agent działa w twoim sandboxie z prywatnymi MCP

📂 [`claude-managed-agents-mcp/notatka.md`](./claude-managed-agents-mcp/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Anthropic pozwala teraz Claude Managed Agents wykonywać narzędzia w sandboxie kontrolowanym przez klienta (Cloudflare/Daytona/Modal/Vercel) i łączyć się z prywatnymi serwerami MCP bez wystawiania ich do publicznego internetu — agent gada wyłącznie z wewnętrznym CRM, hurtownią i CI. Równolegle Project Glasswing rośnie o 150 organizacji w 15+ krajach (NATO, Okta, Samsung, ENISA), a początkowa kohorta znalazła ponad 10 000 krytycznych luk modelem Claude Mythos.

**Top hooks:**
- „Twój agent AI nie wyjdzie z biura" — koncept agenta zamkniętego w firmowym sandboxie, bez dostępu do publicznego internetu, gada tylko z wewnętrznym CRM-em.
- „150 firm dostało AI, która znajduje dziury w kodzie — w tym NATO" — konkretny roster (NATO, Okta, Samsung, ENISA) + skala 15+ krajów.
- „10 000 krytycznych luk w 2 miesiące" — początkowa kohorta 50 firm znalazła 10k+ podatności używając Mythos; jeden model bezpieczeństwa skanujący firmowy kod.
