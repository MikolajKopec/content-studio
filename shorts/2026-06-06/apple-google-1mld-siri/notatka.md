# Apple płaci Google 1 mld dolarów rocznie za Gemini do Siri — WWDC startuje w poniedziałek

**Data:** 2026-06-06
**Temat:** Apple wynajmuje od Google customowy model Gemini **1,2 biliona parametrów**, żeby ratować Siri — na poniedziałkowym WWDC pokaże przebudowanego asystenta z systemowym pickerem AI (ChatGPT/Claude/Gemini).

---

## Kluczowe fakty i liczby

- Apple płaci Google **ok. 1 mld dolarów rocznie** za customowy model Gemini, który zasili nową Siri. Bloomberg potwierdził kwotę w preview WWDC z **28 maja 2026** (Mark Gurman) i ponownie w piątkowym przed-WWDC **5 czerwca 2026**.
- Model ma **1,2 biliona parametrów** w architekturze **Mixture-of-Experts (MoE)** — to **8x więcej** niż obecne chmurowe Apple Foundation Models (**150 mld parametrów**).
- Deal został oficjalnie ogłoszony wspólnym komunikatem Apple + Google **12 stycznia 2026**: *„The next generation of Apple Foundation Models will be based on Google's Gemini models and cloud technology"*.
- Architektura hybrydowa: lekkie zapytania zostają **on-device** (Apple Foundation Models), średnie idą do **Private Cloud Compute** na serwerach Apple, najcięższy reasoning obsługuje Gemini — **uruchamiany na sprzęcie Apple**, nie w Google Cloud. Trening modelu po stronie Google (TPU), inference po stronie Apple. **Żadne dane użytkownika nie trafiają do Google.**
- Według wczesnych benchmarków nowa Siri trafia w **92% złożonych zadań multi-step** (wzrost z **58%**) i odpowiada w **mniej niż 0,5 sekundy**.
- Keynote WWDC: **poniedziałek 8 czerwca 2026, 10:00 PT / 19:00 czasu polskiego**. Konferencja trwa do **12 czerwca**.
- Pakiet OS w wersji **27**: iOS 27, iPadOS 27, macOS 27, tvOS 27, watchOS 27, visionOS 27 — Apple ujednolica numerację. iOS 27 porzuca iPhone'a 11/11 Pro/11 Pro Max oraz iPhone SE 2. gen.
- Reakcja rynku po ogłoszeniu 12 stycznia: AAPL i GOOGL **wzrosły mniej niż 1%** w sesji, ale Google przekroczył **4 bln dolarów kapitalizacji** po raz pierwszy w intraday — jako **4. firma w historii** po Nvidii, Microsofcie i Apple.
- Wedbush (Dan Ives): *„This is what the Street has been waiting for with the elephant in the room for Cupertino revolving around its invisible AI strategy"*.
- Spór z OpenAI: w **maju 2026** OpenAI wynajęło zewnętrzną kancelarię i rozważa **breach-of-contract notice** wobec Apple — twierdzi, że integracja ChatGPT w Apple Intelligence została *„buried"*, a przychody nie zbliżyły się do prognoz.

## Architektura: jak to realnie działa

- **Warstwa 1 — on-device:** Apple Foundation Models (lokalne, **~3 mld parametrów**) obsługują autocomplete, podsumowania, prostą klasyfikację.
- **Warstwa 2 — Private Cloud Compute:** średnie zapytania trafiają na serwery Apple z hardware-isolated enclaves, end-to-end encryption.
- **Warstwa 3 — Gemini 1,2T:** najcięższy reasoning, multi-step planning, długi kontekst, generowanie obrazów. Model wgrany do **infrastruktury Apple**, dane nie wychodzą do Google.
- **Distillation:** Apple ma pełny dostęp do wag modelu w swoich centrach danych, dzięki czemu trenuje mniejsze on-device modele „z DNA Gemini" — wzmiankowane jako mechanizm transferu wiedzy do iPhone'a.
- **Ekonomika dealu (analiza Spyglass):** *„Apple may not have wanted to pay Anthropic $1.5B a year to use Claude but $1B a year to a partner that is paying you $20B+"* — Gemini to dyskonto względem opłat Google za default search w Safari (**~20 mld USD/rok**).

## Co dokładnie zostanie ogłoszone na WWDC 8 czerwca

- **Nowa Siri jako standalone aplikacja** z systemowym gestem **„Search or Ask"** — swipe w dół ze środka ekranu (gest podebrany ze Spotlight).
- **Integracja z Dynamic Island** — pulsująca pigułka pokazująca, że Siri przetwarza zapytanie.
- **Personal context layer** — Siri ma dostęp do maili, wiadomości, plików, zdjęć, kalendarza, kontaktów. Przykłady z dema: *„Find the email where Eric mentioned ice skating"*, *„What's my passport number?"*.
- **Picker silnika AI w „Extensions"** — użytkownik wybierze **ChatGPT, Claude albo Gemini** do dowolnego zapytania. Różne głosy mają odróżniać odpowiedzi third-party od natywnej Siri.
- **Cross-app actions** — Siri edytuje zdjęcie, potem je udostępnia, wszystko jednym promptem. Developerzy dostają nowe Intents.
- **Camera / Photos** — Visual Intelligence przemianowane na **„Siri mode"**, skanowanie etykiet odżywczych do Health, narzędzie **„Extend"** (generative fill) i **„Reframe"** dla spatial photos.
- **Shortcuts** — tworzenie skrótów językiem naturalnym przez Siri.
- **Wallet** — funkcja **„Create a Pass"** i AI bill-splitting w Apple Cash.
- **macOS 27** — koniec wsparcia dla Intel Maców, wygaszenie Rosetta 2.
- **Filozofia „Snow Leopard 2.0"** — stabilność, battery life, czystki w kodzie. Prawdziwy AI-push tylko w Siri.

## Reakcje branży

- **Wall Street:** Wedbush, Morgan Stanley i Bernstein czytają deal jako *„defensive win for Google"* (utrzymanie dystrybucji Gemini) oraz *„incremental positive for Apple"* (wreszcie jest AI story). Kapitalizacja Google: **4 bln USD** intraday 12 stycznia.
- **OpenAI:** rozważa pozew, wynajęło kancelarię. Sam Altman skarży się, że ChatGPT w Apple Intelligence ma „pogrzebaną" widoczność i nie generuje obiecanych subskrypcji.
- **Anthropic:** wg Spyglass walczyło o ten kontrakt i prosiło o **1,5 mld USD/rok**. Apple wybrało tańszą i bardziej zintegrowaną z Search ofertę Google.
- **Google Cloud (Thomas Kurian, kwiecień 2026, Cloud Next 26):** *„Earlier this year, we announced a monumental partnership with one of the most iconic brands"*.
- **Komentarz Spyglass:** *„the current ChatGPT partnership isn't changing with this news"* — Apple oficjalnie nie zrywa z OpenAI, tylko degraduje go do roli jednej z opcji w pickerze.

## Implikacje dla użytkownika

- **Pierwsza realnie inteligentna Siri od 15 lat** — multi-step reasoning, persistent conversation, kontekst osobisty (mail/zdjęcia/pliki), web search.
- **Wybór modelu jak wybór silnika wyszukiwania** — pierwszy raz w iOS użytkownik realnie wybiera, do kogo wysyła swoje zapytania.
- **Prywatność jako kontrowersja:** marketingowo Apple sprzedaje *„żadne dane do Google"*, ale technicznie zapytania przelatują przez model wytrenowany na Google TPU. Bezpieczniki: PCC + hardware enclaves.
- **Dla devów:** Extensions API otwiera nowy ekosystem — appki mogą wystawiać Intents trzem silnikom AI naraz.
- **Hardware refresh:** Apple TV 4K i HomePod mini czekają na update kompatybilny z nową Siri.

## Potencjalne kąty narracyjne do shorta

1. **„Apple płaci konkurentowi miliard dolarów, żeby Siri w końcu działała."**
2. **„1,2 biliona parametrów. Osiem razy więcej niż wszystko, co Apple ma w chmurze."**
3. **„Apple przegrało wyścig AI o tyle, że wynajmuje silnik od Google — za miliard rocznie."**
4. **„W poniedziałek o 19:00 Apple pokaże Siri, która wreszcie rozumie, o co ją pytasz."**
5. **„Pierwszy raz w historii iPhone'a wybierzesz, czy gada do ciebie Claude, Gemini czy ChatGPT."**
6. **„OpenAI szykuje pozew przeciwko Apple, bo Apple wybrało Google."**
7. **„Anthropic chciało 1,5 mld dolarów. Google wziął miliard. Tak Apple zdecydowało, kto napędza Siri."**

---

## Źródła

- [CNBC — Apple picks Google's Gemini to run AI-powered Siri (12.01.2026)](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)
- [Google Blog — Joint statement from Google and Apple](https://blog.google/company-news/inside-google/company-announcements/joint-statement-google-apple/)
- [MacRumors — What to Expect From WWDC 2026: Gemini-Powered Siri, iOS 27, macOS 27 and More](https://www.macrumors.com/guide/wwdc-2026-what-to-expect/)
- [TechCrunch — Google's Gemini to power Apple's AI features like Siri](https://techcrunch.com/2026/01/12/googles-gemini-to-power-apples-ai-features-like-siri/)
- [RedShark News — Apple's WWDC 2026: the Siri rebuild, the Google deal, and more](https://www.redsharknews.com/apple-wwdc-2026-siri-gemini-ios-27)
- [AppleInsider — Google confirms context-aware Siri built from Gemini will debut in 2026](https://appleinsider.com/articles/26/04/22/google-confirms-context-aware-siri-built-from-gemini-will-debut-in-2026)
- [Spyglass — And the Winner of Apple's Great AI Bakeoff is... Google](https://spyglass.org/apple-google-siri-ai/)
- [CNBC — In Google earnings, analysts want answers on Apple's Siri-Gemini deal (3.02.2026)](https://www.cnbc.com/2026/02/03/in-google-earnings-analysts-want-answers-on-apples-siri-gemini-deal.html)
- [TechCrunch — OpenAI is reportedly preparing legal action against Apple (14.05.2026)](https://techcrunch.com/2026/05/14/openai-is-reportedly-preparing-legal-action-against-apple-it-wouldnt-be-the-first-partner-to-feel-burned/)
- [Tech-Insider — Apple's $1B Gemini Deal: Google AI Replaces Siri](https://tech-insider.org/apple-google-gemini-siri-deal-1-billion-2026/)
