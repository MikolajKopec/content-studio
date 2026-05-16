# Apple Siri + Google Gemini — notatka badawcza

## Kluczowe fakty

- **12 stycznia 2026** — Apple ogłasza wieloletnią umowę z Google na integrację modelu Gemini jako silnika nowej Siri
- **Kwota:** ~**1 miliard dolarów rocznie** za dostęp do dedykowanego modelu Gemini (raportowany parametr: 1,2 biliona parametrów)
- **Skala:** Gemini będzie dostępna na ~**2 miliardach urządzeń Apple**
- **Faza 1 (wiosna 2026, iOS 26.4):** Siri zaczyna korzystać z Gemini dla lepszej świadomości kontekstu i rozpoznawania ekranu
- **Faza 2 (wrzesień 2026, iOS 27 + iPhone 18):** "Full Conversational Siri" — wieloetapowe dialogi (20+ wymian), złożone zadania, pełna personalizacja
- Apple oficjalnie potwierdziło, że **własne modele AI były o 25% mniej dokładne od ChatGPT** na większości zapytań (dane wewnętrzne Bloomberg)
- Google Cloud chief Thomas Kurian potwierdził partnerstwo na konferencji Google Cloud Next 2026 (Las Vegas, kwiecień 2026)
- OpenAI **odmówiło** zawarcia umowy z Apple jesienią 2025 r. — skupia się na własnym sprzęcie (projekt z Jony Ive'm)
- Rozmowy z **Anthropic** upadły — firma żądała kilku miliardów dolarów rocznie przez wiele lat
- Apple zatrudniło nowego szefa AI w obliczu kryzysu Siri

## Jak to technicznie działa

### Architektura systemu

Integracja działa przez **Apple Private Cloud Compute (PCC)** — własną infrastrukturę chmurową Apple z izolowanymi sprzętowo enklaw i szyfrowaniem end-to-end. Zapytania do Gemini są routowane przez PCC, a nie bezpośrednio do serwerów Google.

**Jednak — ważny niuans:** Apple zapytało Google o zbadanie możliwości uruchomienia serwerów bezpośrednio w centrach danych Apple (raport MacRumors, marzec 2026). To oznacza, że model ostatecznej architektury **nie jest w pełni znany publicznie**.

### Możliwości nowej Siri z Gemini

- Rozumienie kontekstu z różnych aplikacji (np. wyciąganie danych o locie z Maila)
- Wieloetapowe rozumowanie i retencja kontekstu w rozmowie
- Personalizacja na podstawie historii użytkownika
- Znikają odpowiedzi "Sorry, I can't do that" przy złożonych zadaniach
- Łańcuchowanie zapytań

### Podział ról

- **Apple:** prywatność, UX, integracja z ekosystemem, on-device modele dla prostszych zadań
- **Google Gemini:** złożone rozumowanie, wielomodalne zapytania, duże zadania językowe

## Historia: Apple Intelligence dotychczas

### Timeline

- **Czerwiec 2024 (WWDC):** Apple ogłasza "Apple Intelligence" i partnerstwo z OpenAI / ChatGPT
- **Grudzień 2024:** Apple oficjalnie uruchamia integrację ChatGPT z Siri (bez opłat od Apple — wartość dla OpenAI = dystrybucja)
- **Luty 2025:** Bloomberg ujawnia poważne problemy inżynieryjne i bugi w nowej Siri
- **Marzec 2025:** Apple oficjalnie **opóźnia rewizję Siri bezterminowo**; szef Siri przyznaje, że opóźnienia były "ugly and embarrassing" i że decyzja o reklamowaniu niegotowej technologii była błędem
- **Maj 2025:** Bloomberg publikuje głęboki raport "How Apple Intelligence and Siri AI Went So Wrong"
- **Czerwiec 2025:** Apple wyznacza wewnętrzny target — wiosna 2026 dla nowej Siri
- **Jesień 2025:** Negocjacje z OpenAI (odmowa), Anthropic (zbyt drogie), finalizacja umowy z Google
- **12 stycznia 2026:** Ogłoszenie Apple-Google
- **Kwiecień 2026 (iOS 26.4):** Pierwsze wdrożenie Gemini w Siri
- **Wrzesień 2026 (iOS 27):** Pełna "Full Conversational Siri"

### Dlaczego własne modele Apple zawiodły

- Wewnętrzna dokładność modeli Apple 25% niższa niż ChatGPT
- Problemy z inżynierią oprogramowania i bugami przy złożonych zadaniach
- Apple zbyt wcześnie reklamowało funkcje, które nie działały
- Firma nie zbudowała wystarczającego potencjału badawczego LLM na poziomie frontier

## Implikacje dla prywatności

### Oficjalne zapewnienia Apple i Google

- Google **nie otrzymuje danych użytkowników Apple** — potwierdzone przez obie firmy
- Umowa **zakazuje Google używania interakcji Siri do trenowania modeli Gemini**
- Dane przetwarzane przez PCC z szyfrowaniem end-to-end i izolacją sprzętową
- "No user data shared with Google and Apple stating that data is not stored after processing"

### Zastrzeżenia i ryzyka

- **"Loss of behavioral sovereignty"** — nawet jeśli surowe dane nie trafiają do Google, Apple deleguje logikę decyzyjną do zewnętrznego systemu (eksperci cytowani przez TheStreet)
- Niejasne, które dokładnie dane są wysyłane do serwerów Google przy przetwarzaniu
- Nierozstrzygnięte: czy nowa Siri korzysta wyłącznie z PCC, czy też z serwerów Google
- Brak szczegółowych informacji technicznych w oficjalnym joint statement
- Apple może chcieć hostować Gemini we własnych centrach danych — nadal niejasne

### Kontekst historyczny prywatności Apple

Apple od lat buduje markę na prywatności ("What happens on your iPhone, stays on your iPhone"). Oddanie kluczowej logiki AI zewnętrznemu dostawcy — i to Google, który żyje z danych — jest fundamentalną zmianą w tej narracji, nawet jeśli technicznie dane są izolowane.

## Reakcje ekspertów i użytkowników

### Eksperci

- **Eksperci prywatności** (TheStreet): "The single biggest risk is loss of behavioral sovereignty" — nawet bez transferu danych, Apple oddaje kontrolę nad logiką decyzyjną
- **Analitycy prawni** (Vanderbilt Law School, Mogin Law LLP): Umowa może być sprzeczna z wyrokami antytrustowymi DOJ przeciwko Google
- **Bloomberg/Mark Gurman:** Kryzys Apple AI był głęboki i wewnętrznie przyznawany — "ugly and embarrassing"
- Część analityków ocenia ruch pozytywnie: Apple wybiera pragmatyzm zamiast dumy ("capability over pride")

### Użytkownicy / media społecznościowe

- Sceptycyzm na X (Twitter): przypominanie historycznych porażek Siri, obawy o bugi w wersji beta
- Pytania o sens kupowania iPhone'a jeśli i tak korzysta z Google AI
- Ironiczne komentarze: "iPhone płaci za Google AI, a Google płaci Apple za wyszukiwarkę"
- Wątpliwości dotyczące HomePod i wsparcia starszych urządzeń

### Branżowa ocena

Business Standard pyta: "Can Apple catch up to Android AI?" — sugerując, że nawet z Gemini Apple ma dużo do nadrobienia wobec Google Pixel i Samsung Galaxy AI.

## Biznesowy kontekst

### Co zyska Apple

- Skokowy wzrost możliwości Siri bez wieloletnich inwestycji R&D w frontier modele
- Utrzymanie premii cenowej iPhone'a przez argument "lepsza AI"
- Czas na zbudowanie własnych długoterminowych kompetencji AI "pod spodem"
- Szybsze wyjście z kryzysu PR (opóźnienia, "embarrassing" zapowiedzi)

### Co zyska Google

- **1 miliard dolarów rocznie** w gotówce
- Gemini dostarczone na 2 miliardy urządzeń — masowe wdrożenie, które przyspiesza adopcję
- Dane o zapytaniach (pośrednie): nawet bez danych użytkowników, Apple potwierdza Gemini jako standard rynkowy
- Wzmocnienie pozycji Google Cloud jako dostawcy AI dla Big Tech

### Co traci OpenAI

- Utrata potencjalnego kontraktu wart miliardy dolarów rocznie
- Strategicznie: Google umacnia się jako dominujący dostawca AI dla ekosystemu Apple kosztem OpenAI
- OpenAI nadal dostępne w Siri jako opcjonalne (użytkownik musi wyrazić zgodę), ale Gemini jest domyślne
- Decyzja OpenAI o odmowie może okazać się błędem strategicznym, jeśli Apple AI stanie się mainstream

### Kontekst antytrustowy (ryzyko)

- Nowa umowa AI nakłada się na aktywny proces DOJ przeciwko Google o monopol w wyszukiwaniu
- W 2024 sędzia Mehta orzekł, że Google nielegalnie utrzymywał monopol (m.in. przez płatności Apple za domyślną wyszukiwarkę — ~38 mld USD w 2021-22)
- Wyroki z września 2025 zakazują Google ekskluzywnych umów dla wyszukiwarki, Chrome, Google Assistant i Gemini
- Prawnicy oceniają: nowa umowa AI "deepens commercial entanglement at the precise moment regulators are trying to reduce it"
- DOJ może powołać się na umowę Gemini w apelacji antytrustowej (apelacja przewidywana na koniec 2026 / 2027)

## Potencjalne haki do shorta

1. **"Apple zapłaci Google miliard dolarów rocznie za to, co samo miało zrobić"** — zestawienie: Apple Intelligence zapowiadane od 2024, własne modele 25% gorsze od ChatGPT, finał: miliard dla bezpośredniego konkurenta

2. **"Twoja Siri to teraz Google Gemini — i Apple nie chce, żebyś o tym wiedział"** — kąt prywatności i transparentności: co naprawdę dzieje się z danymi, gdy firma budująca się na haśle "privacy" oddaje serce asystenta Google'owi

3. **"OpenAI odmówiło Apple. Google wzięło miliard."** — historia negocjacji: OpenAI powiedziało "nie" (bo buduje własny sprzęt z Jony Ive'm), Anthropic chciało za dużo, zostało Google

4. **"Apple robi z Siri to samo, co Twoja firma robi z ChatGPT — zatrudnia AI, bo samemu nie wychodzi"** — analogia do adopcji AI w korporacjach: nie każda firma zbuduje własny model, Apple też nie

5. **"Żelazna ironia technologii: Google płaci Apple za bycie domyślną wyszukiwarką, Apple płaci Google za bycie domyślnym AI"** — obydwie firmy są nawzajem swoim największym klientem i rywalem jednocześnie

## Źródła

- [Apple picks Google's Gemini to run AI-powered Siri — CNBC (12.01.2026)](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)
- [Joint statement from Google and Apple — Google Blog](https://blog.google/company-news/inside-google/company-announcements/joint-statement-google-apple/)
- [Apple Explains How Gemini-Powered Siri Will Work — MacRumors (30.01.2026)](https://www.macrumors.com/2026/01/30/apple-explains-how-gemini-powered-siri-will-work/)
- [Apple confirms Gemini-powered Siri will use Private Cloud Compute — 9to5Mac (29.01.2026)](https://9to5mac.com/2026/01/29/apple-confirms-gemini-powered-siri-will-use-private-cloud-compute/)
- [Google Confirms Gemini-Powered Siri Coming Later This Year — MacRumors (22.04.2026)](https://www.macrumors.com/2026/04/22/google-gemini-powered-siri-2026/)
- [Google confirms context-aware Siri built from Gemini will debut in 2026 — AppleInsider (22.04.2026)](https://appleinsider.com/articles/26/04/22/google-confirms-context-aware-siri-built-from-gemini-will-debut-in-2026)
- [Apple's $1B Gemini Deal: Google AI Replaces Siri — Tech Insider](https://tech-insider.org/apple-google-gemini-siri-deal-1-billion-2026/)
- [Google's Gemini to power Apple's AI features like Siri — TechCrunch (12.01.2026)](https://techcrunch.com/2026/01/12/googles-gemini-to-power-apples-ai-features-like-siri/)
- [Apple will pay billions for Gemini after OpenAI declined — 9to5Mac (15.01.2026)](https://9to5mac.com/2026/01/15/apple-will-pay-billions-for-gemini-openai-decided-against-siri-deal-ft/)
- [OpenAI Declines Apple Siri Deal: Google Gemini Gets Billions Instead — Everyday AI](https://everydayaiblog.com/openai-declines-apple-siri-gemini-deal/)
- [Report: Apple Asks Google to Run Siri on Its Servers — MacRumors (02.03.2026)](https://www.macrumors.com/2026/03/02/apple-asks-google-to-run-siri/)
- [Apple's new Siri runs on Gemini, and there's an invisible catch — TheStreet](https://www.thestreet.com/technology/apples-new-siri-runs-on-gemini-and-theres-an-invisible-catch)
- [Google confirms that it won't get Apple user data in new Siri deal — AppleInsider (12.01.2026)](https://appleinsider.com/articles/26/01/12/google-confirms-that-it-wont-get-apple-user-data-in-new-siri-deal)
- [How Apple Intelligence and Siri AI Went So Wrong — Bloomberg (18.05.2025)](https://www.bloomberg.com/news/features/2025-05-18/how-apple-intelligence-and-siri-ai-went-so-wrong)
- [Apple Delays Siri Upgrade Indefinitely — Bloomberg (07.03.2025)](https://www.bloomberg.com/news/articles/2025-03-07/apple-confirms-delay-of-ai-infused-personalized-siri-assistant)
- [Apple's Siri Chief Calls AI Delays Ugly and Embarrassing — Bloomberg (14.03.2025)](https://www.bloomberg.com/news/articles/2025-03-14/apple-s-siri-chief-calls-ai-delays-ugly-and-embarrassing-promises-fixes)
- [Would Exclusive Agreements to Integrate Google's Gemini into iPhones Conflict with Recent Antitrust Rulings? — Vanderbilt Law School](https://law.vanderbilt.edu/would-exclusive-agreements-to-integrate-googles-gemini-into-iphones-conflict-with-recent-antitrust-rulings/)
- [Hey, Siri. Isn't the Apple–Google Deal Exactly What Judge Mehta's Antitrust Opinion Was About? — Mogin Law LLP](https://moginlawllp.com/apple-iphone-google-gemini-deal-search-monopoly-antitrust-judge-mehta/)
- [Google–Apple Gemini Deal Underscores Tech's Antitrust Catch-22 — Bloomberg Law](https://news.bloomberglaw.com/legal-exchange-insights-and-commentary/google-apple-gemini-deal-underscores-techs-antitrust-catch-22)
- [Gemini-powered Siri arrives in 2026: Can Apple catch up to Android AI? — Business Standard (23.04.2026)](https://www.business-standard.com/technology/tech-news/gemini-powered-siri-apple-vs-android-ai-gap-126042300850_1.html)
- [Apple's search deal with Google could face renewed scrutiny as DOJ appeals — 9to5Mac (03.02.2026)](https://9to5mac.com/2026/02/03/apple-search-deal-with-google-could-face-renewed-scrutiny-as-doj-appeals-antitrust-ruling/)
- [OpenAI and Apple announce partnership (2024) — OpenAI](https://openai.com/index/openai-and-apple-announce-partnership/)
- [Apple launches its ChatGPT integration with Siri — CNBC (11.12.2024)](https://www.cnbc.com/2024/12/11/apple-launches-its-chatgpt-integration-with-siri.html)
