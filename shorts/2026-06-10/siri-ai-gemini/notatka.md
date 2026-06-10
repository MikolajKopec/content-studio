# Apple odda mózg Siri Google'owi — Gemini napędzi Apple Intelligence

**Data:** 2026-06-10
**Temat:** Apple płaci Google ok. 1 mld USD rocznie za dostęp do customowego modelu Gemini 1.2T, który stoi za nową "Siri AI" — ale iPhone'y w UE (i w Polsce) nie dostaną tego na start z powodu DMA.

---

## Kluczowe fakty i liczby

- Apple płaci Google ok. **1 miliard USD rocznie** za wielo­letni dostęp do customowego modelu Gemini stworzonego pod Siri i Apple Intelligence (deal ogłoszony 12 stycznia 2026, potwierdzony na WWDC 8 czerwca 2026).
- Customowy Gemini ma **1,2 biliona parametrów** — to **8x więcej** niż 150-miliardowy model chmurowy, którego Apple używał wcześniej.
- Apple twierdzi, że jego nowy **AFM 3 Cloud Pro** to *własny* model, ale **destylowany z Gemini** — Gemini pełni rolę "nauczyciela" w post-trainingu, nie modelu runtime.
- Na urządzeniu (iPhone, iPad, Mac) działa lokalny model Apple Foundation Model o ok. **20 mld parametrów**, w chmurze leci AFM 3 Cloud Pro.
- AFM 3 Cloud Pro vs poprzedni AFM 3 Cloud: **+10% jakości odpowiedzi tekstowych**, **+14% rozumienia obrazu**, **+14% w zadaniach matematycznych**.
- AFM 3 Cloud Pro jest zoptymalizowany pod **NVIDIA Blackwell GPU** — Apple wraz z Google rozszerzył Private Cloud Compute na NVIDIA GPU w Google Cloud (po raz pierwszy poza Apple Silicon).
- Apple obsłuży Siri AI dla **ok. 1,5 mld aktywnych iPhone'ów dziennie** (głównych odbiorców upgrade'u).
- Siri AI startuje jako **beta jesienią 2026** (publiczna beta w lipcu, GM we wrześniu), tylko po **angielsku** — wszystkie dialekty, ale tylko EN na start.
- **Brak Chin** (regulacje) i **brak iPhone'a/iPada w UE** (DMA) na start — w UE działa tylko na Macu i Vision Pro.
- iOS 27 wprowadza **Siri Extensions** — użytkownik może wybrać **Claude (Anthropic), Gemini lub ChatGPT** jako alternatywny "mózg" Siri (Apple porzuca dotychczasowy wyłączny deal z OpenAI z iOS 18.2).

## Architektura trójwarstwowa

1. **Warstwa modeli** — rodzina 5 modeli AFM (trzecia generacja): lokalny ~20B na Apple Silicon + chmurowy AFM 3 Cloud Pro (1,2T, destylowany z Gemini) + Private Cloud Compute na NVIDIA Blackwell w Google Cloud.
2. **Warstwa Personal Context** — indeks Spotlight + App Toolbox, działa **w całości on-device**, dane osobiste nie wychodzą poza enklawę.
3. **Warstwa Siri i App Actions** — system orchestrator decyduje, czy zapytanie da się obsłużyć lokalnie, czy trzeba lecieć do chmury Apple, czy do Gemini-powered AFM Cloud Pro.

Apple sprzedaje to jako "prywatność bez kompromisu" — wrażliwe dane (zdjęcia, wiadomości, kalendarz) nigdy nie trafiają do Google. Gemini dostaje tylko *anonimowe* zapytania o wiedzę o świecie.

## Co umie Siri AI

- **Pamięć rozmów** — można wrócić do poprzedniej konwersacji w dedykowanej aplikacji "Siri" (nowość na iOS).
- **On-screen awareness** — Siri "widzi", co jest na ekranie, i potrafi na tym działać ("podsumuj ten artykuł", "odpowiedz na ten mail w stylu poprzedniej rozmowy").
- **Personal Context** — używa indeksu kalendarza, kontaktów, maili, zdjęć, lokalizacji, by odpowiadać kontekstowo.
- **App Actions** — wykonuje akcje w aplikacjach trzecich (rezerwacja Ubera, zamówienie jedzenia, edycja zdjęcia w app trzeciej).
- **Tryb Siri w aparacie** — wskaż coś w realnym świecie, Siri rozpozna i wyjaśni (rozszerzona Visual Intelligence).
- **Integrated Writing Tools** — przepisuje, podsumowuje, tłumaczy w każdej aplikacji.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| 12 stycznia 2026 | Apple i Google ogłaszają wielo­letni deal Gemini ~1 mld USD/rok |
| 8 czerwca 2026 | WWDC 2026 — premiera "Siri AI" i AFM 3 Cloud Pro |
| 9 czerwca 2026 | Apple potwierdza brak Siri AI w UE (DMA) i Chinach |
| Lipiec 2026 | Publiczna beta iOS 27 (z Siri AI poza UE) |
| Wrzesień 2026 | GM iOS 27 — Siri AI startuje w wersji "beta", tylko EN |
| 2027 (TBD) | Rozszerzenie języków, otwarcie Siri Extensions dla wszystkich kwalifikujących się dostawców |
| Brak daty | Siri AI na iPhone w UE (Apple nie podaje terminu) |

## DMA, UE i Polska — co to znaczy dla widza meeko.tech

- **Polak z iPhonem dostaje iOS 27, ale BEZ Siri AI.** Działa stara Siri, działają niektóre funkcje Apple Intelligence z poprzedniej generacji.
- Apple zaproponował UE pośrednika "Trusted System Agent" oraz 18-miesięczny rollout — **regulatorzy odrzucili obie propozycje.**
- Komisja Europejska odpiera: "to decyzja Apple, nie nasza, że Siri AI nie wystartuje w UE" — twierdzą, że Apple chce uniknąć dania konkurencji (ChatGPT, Claude, Gemini) równego dostępu do API.
- **Działa w UE:** Siri AI na Macu (macOS 27) i Vision Pro (visionOS 27) — bo te platformy nie są "gatekeeper" w rozumieniu DMA.
- **Nie działa w UE:** iPhone, iPad, Apple Watch (bo Watch wymaga sparowanego iPhone'a).
- Workaround dla zdeterminowanego Polaka: konto Apple ID w USA + iPhone z ustawieniami regionu USA — ale Apple ostrzega, że może to wyłączyć inne funkcje regionalne.

Cytat Craiga Federighiego: *"Jesteśmy głęboko zawiedzeni, że nasi użytkownicy w UE nie dostaną Siri AI na iPhonie i iPadzie wraz z premierą software'u jesienią."*

## Siri Extensions — otwarcie na konkurencję

Po raz pierwszy w historii iOS, Apple pozwala wybrać **innego dostawcę AI** jako "mózg" Siri:

- **Claude (Anthropic)** — premiera z iOS 27
- **Google Gemini** — standalone (poza dealem z AFM)
- **ChatGPT** — kontynuacja integracji z iOS 18.2
- W przyszłości każdy "kwalifikujący się" dostawca przez App Store

Wybór jest **system-wide** — raz w Ustawieniach, działa w writing tools, podsumowaniach i pytaniach konwersacyjnych. Strategicznie: Siri staje się **switchboardem** — interfejsem rozpoznawanym przez 1,5 mld użytkowników, który routuje zapytania do dowolnego LLM-a.

## Porównanie z konkurencją

| Asystent | Model bazowy | Tryb lokalny | Otwartość na inne LLM | Dostępny w Polsce |
|---|---|---|---|---|
| **Siri AI** (Apple) | AFM 3 Cloud Pro (1,2T, destylowany z Gemini) | Tak, ~20B na Apple Silicon | Tak — Claude, Gemini, ChatGPT przez Extensions | NIE na iPhone (DMA), TAK na Mac |
| **Galaxy AI / Bixby 2** (Samsung S26) | Gemini + Perplexity + własny Bixby LLM | Tak (Bixby on-device) | Wybór per task (agent / search / on-device) | TAK |
| **Alexa+** (Amazon) | Claude (Anthropic) + własne modele | Częściowo | Nie | TAK (po angielsku, EN-US) |
| **Gemini** (Google, Pixel) | Gemini 2.5/3 Pro | Tak, Gemini Nano | Nie (Google-only) | TAK |

Wniosek: Apple **najpóźniej** wystartowało z generatywną Siri, ale jako jedyny daje **wybór silnika** systemowo i prywatność na poziomie enklawy. W Polsce na iPhonie — paradoksalnie — przegrywa z każdym (Samsung, Pixel, Echo z Alexa+ działają normalnie).

## Reakcje branży

- **Ming-Chi Kuo (analityk TF International):** "Siri AI musi *przebić* Gemini, nie tylko go dogonić — po latach opóźnień Apple nie ma już marży na bycie 'wystarczająco dobrym'."
- **Wall Street:** akcje AAPL +3,2% po WWDC, GOOGL +1,8%. Analitycy widzą deal jako win-win — Google dostaje 1 mld/rok i dystrybucję na 1,5 mld iPhone'ów, Apple dostaje gotowy model bez kosztu treningu od zera (oszacowanego na 5-10 mld USD).
- **CNBC:** "To paradoks — Apple, firma od prywatności, oddaje mózg swojego asystenta firmie od reklamy."
- **Komisja Europejska:** krytykuje decyzję jako "celową strategię negocjacyjną Apple", nie wynik DMA.
- **AppleInsider:** "własne AFM nie zawierają ani kropli Gemini" — Apple oficjalnie odcina się od bezpośredniej zależności, podkreślając rolę destylacji jako "uczenia się od nauczyciela", nie kopii wag.

## Implikacje dla widza

- **Jeśli masz iPhone'a w Polsce:** Siri AI **nie dotrze do Ciebie jesienią 2026**. Wszystkie pokazane na keynote funkcje (pamięć rozmów, on-screen awareness, app actions) będą zablokowane na iOS 27 w UE.
- **Jeśli masz Maca lub Vision Pro:** Siri AI działa po angielsku jesienią — przełącz Mac na English (US) i włącz Apple Intelligence.
- **Workaround przez VPN/region USA** możliwy, ale Apple ostrzega o ryzyku dla innych funkcji.
- **Realistyczny scenariusz dla Polski:** pełne Siri AI po polsku na iPhone — najwcześniej **późny 2027 lub 2028**, zakładając rozwiązanie sporu z KE i dodanie języków.
- **Cena wejścia:** żadnej dodatkowej opłaty — Siri AI jest za darmo z iOS 27, bo Apple płaci Google z własnej kieszeni. Ale: użytkownik, który chce Claude lub Gemini jako "Siri Extension", będzie potrzebować subskrypcji u dostawcy (Claude Pro 20 USD/mc, Gemini Advanced 20 USD/mc).

---

## Potencjalne kąty narracyjne do shorta

- **"Apple płaci Google'owi miliard dolarów rocznie, żeby Siri w końcu działała."**
- **"Nowa Siri ma 1,2 biliona parametrów — ale nie odpali się na Twoim iPhonie w Polsce."**
- **"Apple zbudowało AI z konkurentem od reklam. I oddaje mu mózg 1,5 miliarda iPhone'ów."**
- **"Twój Mac dostanie nową Siri. Twój iPhone w Polsce — nie. Tej samej jesieni."**
- **"Apple chciało dać UE rozwiązanie. UE odmówiła. Polak zostaje ze starą Siri."**
- **"Po raz pierwszy możesz wybrać, kto myśli za Twoją Siri — Claude, Gemini albo ChatGPT."**
- **"Apple destyluje Gemini jak whisky — Google jest 'nauczycielem', Siri AI ma być uczniem."**

---

## Źródła

- [Apple Newsroom — Apple introduces Siri AI, a profoundly more capable and personal assistant](https://www.apple.com/newsroom/2026/06/apple-introduces-siri-ai-a-profoundly-more-capable-and-personal-assistant/)
- [Apple Newsroom — Due to DMA, Siri AI delayed in EU for iOS 27 and iPadOS 27](https://www.apple.com/newsroom/2026/06/due-to-dma-siri-ai-delayed-in-eu-for-ios-27-and-ipados-27/)
- [Apple Newsroom — Apple unveils next generation of Apple Intelligence, Siri AI, and more](https://www.apple.com/newsroom/2026/06/apple-unveils-next-generation-of-apple-intelligence-siri-ai-and-more/)
- [TechCrunch — WWDC 2026: Everything announced on Siri AI, iOS 27, Apple Intelligence](https://techcrunch.com/2026/06/09/wwdc-2026-everything-announced-on-siri-ai-os-27-apple-intelligence-and-more/)
- [CNBC — WWDC 2026: Apple makes its big Siri AI reveal](https://www.cnbc.com/2026/06/08/apple-wwdc-2026-live-updates.html)
- [MacRumors — Apple Reveals New AI Architecture Built Around Google Gemini Models](https://www.macrumors.com/2026/06/08/apple-reveals-new-ai-architecture/)
- [9to5Mac — The new Siri won't be available on iPhones in the EU](https://9to5mac.com/2026/06/08/new-siri-not-available-in-eu-iphone/)
- [MacRumors — EU Says Decision Not to Launch Siri AI in Europe Is Apple's Alone](https://www.macrumors.com/2026/06/09/eu-says-decision-not-to-launch-siri-ai-in-europe-is-apples/)
- [MLQ News — Apple Rebuilds Siri on Google Gemini Models and Nvidia Blackwell GPUs](https://mlq.ai/news/apple-rebuilds-siri-on-google-gemini-models-and-nvidia-blackwell-gpus-in-landmark-wwdc-partnership/)
- [AppleInsider — Apple's new foundation models don't contain a drop of Gemini](https://appleinsider.com/articles/26/06/08/apples-new-foundation-models-dont-contain-a-drop-of-gemini-as-we-said-they-wouldnt)
- [eMarketer — Apple to bet $1 billion a year on Google Gemini](https://www.emarketer.com/content/apple-1-billion-google-gemini-power-next-siri)
- [TrendingTopics — Apple Has 5 New AI Models, Distilled from Google's Gemini](https://www.trendingtopics.eu/apple-foundation-models-google-gemini/)
- [MacStories — The Third Generation of Apple's Foundation Models and AFM Core Advanced](https://www.macstories.net/linked/the-third-generation-of-apples-foundation-models-and-afm-core-advanced/)
- [wccftech — Ming-Chi Kuo Warns Apple's Siri Must Outclass Google Gemini](https://wccftech.com/ming-chi-kuo-warns-apples-siri-must-outclass-google-gemini-at-wwdc-2026-not-just-catch-up-after-years-of-delay/)
- [DigitalApplied — Apple Siri iOS 27 Extensions: Claude, Gemini & ChatGPT](https://www.digitalapplied.com/blog/apple-siri-ios-27-extensions-claude-gemini-chatgpt-guide)
