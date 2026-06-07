# Apple wpuszcza pierwszego AI-agenta na iMessage for Business — Poke przejmuje rozmowy

**Data:** 2026-06-07
**Temat:** Apple zatwierdza Poke (od The Interaction Company of California) jako pierwszego samodzielnego AI-agenta w Messages for Business — w „niebieskich dymkach" iMessage, na 4 dni przed WWDC 2026.

---

## Kluczowe fakty i liczby

- **4 czerwca 2026** Apple oficjalnie zatwierdziło Poke jako pierwszego samodzielnego AI-agenta w Messages for Business — platformie, która do tej pory była zarezerwowana wyłącznie dla komunikacji firma–klient.
- Poke od publicznego startu w **marcu 2026** obsłużył już ok. **100 milionów wiadomości** (SMS, Telegram, WhatsApp).
- Twórca: **The Interaction Company of California** z Palo Alto — start-up założony przez **Marvina von Hagena (23 lata)** i **Felixa Schlegela (25 lat)**, byłych inżynierów Tesli i Apple, zwycięzców konkursu Elona Muska „Not-a-Boring Competition" z 2021 roku.
- Łączne finansowanie: **25 mln USD** (**15 mln USD** seed od General Catalyst we wrześniu 2025 + **10 mln USD** dorzucone przez Spark Capital), wycena post-money **300 mln USD**.
- Wśród aniołów inwestorów: **John i Patrick Collison** (Stripe), **Logan Kilpatrick** (DeepMind), **Joanne Jang** (OpenAI), założyciele Cognition, Vercel, PayPal, Dropbox i Hugging Face.
- Tylko w fazie beta na Poke przeszło ok. **6 000 specjalistów z Doliny Krzemowej** wysyłających **200 000 wiadomości miesięcznie**.
- Apple pobiera od Poke opłatę **per użytkownik**, nie per wiadomość — według von Hagena „znacznie poniżej tego, co liczy Meta" (Meta nalicza **0,0490–0,1323 EUR** za pojedynczą wiadomość non-template na WhatsApp).
- Proces zatwierdzenia w Apple trwał **ok. 2 miesiące** i obejmował weryfikację live-supportu, jasną identyfikację agenta jako AI oraz dopasowanie UI do wytycznych.
- Apple Messages for Business istnieje od **2018 roku** i obsługuje linie lotnicze, sieci hoteli i detalistów — bazą jest **ok. 1,5 mld użytkowników iPhone'a** na świecie (dane 2024).
- WWDC 2026 startuje **8 czerwca** — zaledwie **4 dni po** zielonym świetle dla Poke; Apple ma zapowiedzieć przebudowę Siri w stronę agenta konwersacyjnego.

---

## Co potrafi Poke (lista zdolności)

- **Planowanie dnia i kalendarz**: Google Calendar, Outlook, Notion, Linear.
- **Email**: czytanie, filtrowanie, drafty odpowiedzi w Gmailu i Outlooku.
- **Smart home**: sterowanie Philips Hue (światło) i Sonos (audio).
- **Zdrowie i fitness**: integracje ze Stravą, Withings, Oura, Fitbit.
- **Podróże**: check-in na loty krajowe, tropienie tanich biletów, integracja z Navan.
- **Media**: streszczenia transkryptów z YouTube, generowanie i edycja zdjęć, tworzenie kodów QR.
- **Dev tools**: integracje z GitHub, Vercel, PostHog, Sentry.
- **„Recipes"**: pre-built automaty, które użytkownik może budować w czystym tekście i dzielić się nimi z innymi.
- **Wybór modelu AI**: Poke nie jest przywiązany do jednego dostawcy — dobiera model (OpenAI, Anthropic, open-source) zależnie od zadania.

---

## Co to iMessage for Business

- Platforma Apple uruchomiona pod nazwą **Business Chat** w **2018 roku**, w **iOS 13** uzupełniona o „Message Suggest" (automatyczne podpowiadanie biznesowego kontaktu w Mapach, Safari i Spotlight).
- Pozwala firmom rozmawiać z klientami przez natywną aplikację Wiadomości na iPhonie — interakcja wygląda identycznie jak zwykła konwersacja iMessage („niebieski dymek").
- Wszystkie wiadomości muszą iść przez **akredytowanych Messaging Service Providers** (MSP) Apple, przez serwer-do-serwera REST API.
- Firma nigdy nie dostaje numeru telefonu ani e-maila klienta — Apple przekazuje **opaque ID** (anonimowy identyfikator).
- Obsługuje boty, ale dotąd tylko jako narzędzia konkretnej firmy do obsługi własnych klientów (np. linia lotnicza pomagająca z bagażem), nie samodzielnych asystentów.
- Główni użytkownicy biznesowi: linie lotnicze, sieci hotelarskie, retail, banki.

---

## Dlaczego to ważne (Apple's pivot na agentów)

- Pierwszy raz Apple wpuszcza do natywnego iMessage **agenta od strony trzeciej**, który nie jest powiązany z konkretną marką-klientem, tylko działa jako uniwersalny asystent użytkownika.
- Timing nie jest przypadkowy: **4 dni przed WWDC**, gdzie Apple ma pokazać Siri jako bardziej konwersacyjnego agenta. Poke staje się **kontrolowanym poligonem doświadczalnym** — Apple uczy się, jak zachowują się zewnętrzni agenci w iMessage.
- Cytat założyciela: *„I think Apple is just noticing this is the best way to offer AI"* — von Hagen sugeruje, że Apple zmienia kurs wobec agentów AI.
- Model rozliczeń **per użytkownik** (a nie per wiadomość) jest sygnałem dla całego rynku: Apple celowo robi swoją platformę tańszą niż WhatsApp Business, żeby przyciągnąć developerów AI.
- Komisja Europejska określiła ceny Meta w WhatsApp Business jako mające „efekty równoważne całkowitemu zakazowi" agentów AI — Apple wykorzystuje tę lukę regulacyjną.

---

## Porównanie z WhatsApp Business AI / inni

| Platforma | Model rozliczeń | Stawka | Otwartość na agentów zewnętrznych |
|---|---|---|---|
| **Apple Messages for Business** (Poke) | per użytkownik | „znacznie poniżej Meta" (kwoty nie ujawnione) | TAK — od 4 czerwca 2026, ale tylko po zatwierdzeniu |
| **WhatsApp Business** (Meta) | per wiadomość | **0,0490–0,1323 EUR** za non-template msg | Ograniczona — Meta blokuje uniwersalne chatboty AI |
| **Telegram Bot API** | brak opłat platformy | 0 USD od platformy | TAK — pełna swoboda dla deweloperów |
| **Google RCS Business Messaging** | per wiadomość | zmienna | Częściowo otwarta |

- Poke obsługuje wszystkie cztery kanały jednocześnie dzięki technologii **Linq** — dzięki temu ten sam wątek użytkownika może wracać z różnych komunikatorów.
- Apple wymaga od Poke jasnego oznaczenia: „rozmawiasz z AI", live-supportu i ścisłej zgody z guidelines UI — czego Meta na WhatsApp **nie egzekwuje** tak twardo.

---

## Implikacje dla użytkownika i firm

- **Dla firmy**: można 24/7 odpowiadać klientom w iMessage przez agenta AI — bez dedykowanej aplikacji, w natywnym UI Apple, z „niebieskim dymkiem", który użytkownicy iPhone'a postrzegają jako „lepszy" niż SMS.
- **Dla użytkownika**: pierwszy raz prawdziwy asystent AI dostępny tam, gdzie i tak pisze codziennie — bez przełączania apek, bez konta, bez nowego interfejsu.
- **Prywatność**: Apple anonimizuje użytkownika (opaque ID), ale konwersacja przechodzi przez serwery MSP i Poke. Poke deklaruje **SOC 2** i **CASA Tier 2**, pen-testy oraz ścisły limit dostępu pracowników.
- **Ryzyko zmęczenia AI**: w dniu uruchomienia 9to5Mac raportował, że Poke „doświadcza problemów" — opóźnione lub brakujące odpowiedzi.
- **Ryzyko dla Siri**: jeśli Poke (lub kolejny agent) przejmie rolę „pierwszego komunikatu" użytkownika, Siri przestaje być potrzebna. Apple może świadomie wybierać kontrolowaną kanibalizację.
- **Sygnał dla regulatorów**: per-user pricing kontra per-message Meta to argument w sprawie DMA — Apple może pokazywać, że jest „dobrym aktorem" w ekosystemie agentów.

---

## Potencjalne kąty narracyjne do shorta

1. **„Apple wpuszcza pierwszego obcego agenta AI do niebieskich dymków"** — kontrast: zamknięty ekosystem otwiera się dla AI, którego Apple nie zbudowało.
2. **„100 milionów wiadomości w 3 miesiące — i Apple powiedział 'wejdź do iMessage'"** — konkretna liczba pokazuje skalę, która zmusiła Apple do reakcji.
3. **„23-latek, który zbudował tunelownik dla Muska, właśnie wcisnął AI do iPhone'a"** — historia założyciela (Marvin von Hagen), niespodziewany backstory.
4. **„Meta liczy 13 groszy za wiadomość. Apple — kilka groszy za użytkownika"** — twardy kontrast cenowy między WhatsApp Business a Messages for Business.
5. **„Twój sklep odpowiada Ci o 3 w nocy — i nie wiesz, że to AI"** — implikacja dla zwykłego użytkownika iMessage, lekko niepokojąca.
6. **„4 dni przed WWDC Apple wpuścił konkurenta Siri do iMessage"** — paradoks: dlaczego Apple sam zaprasza rywala tuż przed pokazem własnej AI.
7. **„Pierwszy AI-agent w iMessage padł w dniu premiery"** — dramat: Poke ma opóźnione odpowiedzi już pierwszego dnia, mimo zatwierdzenia od Apple.

---

## Źródła

- [Apple approves Poke as the first AI agent on its Messages for Business platform — TechCrunch (4.06.2026)](https://techcrunch.com/2026/06/04/apple-approves-poke-as-the-first-ai-agent-on-its-messages-for-business-platform/)
- [Apple's Messages app on iPhone now has a third-party AI agent — 9to5Mac (4.06.2026)](https://9to5mac.com/2026/06/04/apples-messages-app-on-iphone-now-has-a-third-party-ai-agent/)
- [First AI agent for Messages Business Chat approved by Apple — AppleInsider (4.06.2026)](https://appleinsider.com/articles/26/06/04/first-ai-agent-for-messages-business-chat-approved-by-apple)
- [Apple Approves Poke as First iMessage AI Agent, Charging Per User Before WWDC — TechTimes (5.06.2026)](https://www.techtimes.com/articles/317863/20260605/apple-approves-poke-first-imessage-ai-agent-charging-per-user-before-wwdc.htm)
- [Poke makes using AI agents as easy as sending a text — TechCrunch (8.04.2026)](https://techcrunch.com/2026/04/08/poke-makes-ai-agents-as-easy-as-sending-a-text/)
- [Poke.com launches iMessage AI assistant with $15M seed funding at $100M valuation — Tech Startups (8.09.2025)](https://techstartups.com/2025/09/08/poke-com-launches-imessage-ai-assistant-with-15m-seed-funding-at-100m-valuation-now-used-by-6000-vc-insiders/)
- [iMessage Chatbot: How to Automate Apple Business Messages — Botscrew (kontekst platformy Messages for Business)](https://botscrew.com/blog/imessage-%D1%81hatbot-how-to-automate-apple-business-messages/)
