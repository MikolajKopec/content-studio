# 1X NEO — robot do domu — notatka researchu

Data researchu: 2026-05-10

---

## Co wiadomo na pewno

- **30 kwietnia 2026** — 1X oficjalnie otworzyło fabrykę NEO w Hayward, Kalifornia. Pierwsze w historii pełnoskalowe, zintegrowane pionowo zakład produkcji humanoidalnych robotów konsumenckich w USA.
- **Przedsprzedaż otwarta od 28 października 2025** — pierwsze 10 000 jednostek wyprzedane w ciągu 5 dni.
- **Cena Early Access: $20 000** (kaucja $200 przy zamówieniu) lub **subskrypcja $499/miesiąc** (min. 6 miesięcy).
- **Dostawy do klientów: 2026**, głównie USA. Ekspansja na inne rynki od 2027.
- **Cel produkcji:** 10 000 NEO w pierwszym roku, 100 000+ do końca 2027.
- NEO zaprojektowany wyłącznie do użytku w domu — nie do przemysłu. Jedyny humanoid konsumencki z otwartymi przedsprzedażami i potwierdzonym terminem dostaw.

---

## Kontekst i tło

### Kim jest 1X Technologies

- Założona w **2014** w Norwegii przez **Bernt Øyvind Børnich** (CEO) jako **Halodi Robotics**.
- Do 2022 roku fokus na roboty przemysłowe i medyczne (robot EVE — kołowy humanoid do logistyki, ochrony, opieki zdrowotnej, 2018).
- **Rebranding na 1X Technologies w 2022** + przestawienie na roboty domowe.
- Siedziba: Oslo (Norwegia) + główna działalność operacyjna w USA (Sunnyvale + Hayward, CA).

### Finansowanie

| Runda | Data | Kwota | Inwestorzy |
|---|---|---|---|
| Series A2 | marzec 2023 | $23,5 mln | OpenAI Startup Fund (lead), Tiger Global, Sandwater, Alliance Ventures, Skagerak Capital |
| Series B | styczeń 2024 | $100 mln | EQT Ventures (lead), Samsung NEXT, Nistad Group |
| Poszukiwania rundy C | wrzesień 2025 | do $1 mld | wycena docelowa $10 mld (vs $820 mln wycena styczeń 2025) |

- OpenAI był pierwszym zewnętrznym inwestorem — firma zacieśniała współpracę z OpenAI od 2022.
- CEO Børnich powiedział wprost: "If we don't have your data, we can't make the product better." — tłumaczy to strategię zbierania danych od pierwszych użytkowników.

### Kamienie milowe produktu

- **Sierpień 2024** — NEO Beta
- **Luty 2025** — NEO Gamma
- **Październik 2025** — otwarte zamówienia konsumenckie
- **Styczeń 2026** — premiera World Model (AI uczące się z nagrań wideo)
- **Kwiecień 2026** — fabryka Hayward, start pełnoskalowej produkcji

---

## Szczegóły techniczne i możliwości

### Specyfikacje fizyczne

| Parametr | Wartość |
|---|---|
| Wysokość | 170 cm (5'7") |
| Waga | 30 kg (66 lbs) |
| Max udźwig | 70 kg (154 lbs) |
| Przenoszony ciężar | 25 kg (55 lbs) |
| Stopnie swobody (DoF) | 75 łącznie |
| DoF dłoni | 22 per ręka (44 łącznie), 5 palców |

### Napęd i mechanika

- Autorski **Tendon Drive** (napęd ścięgnowy) — patentowane przez 1X, "najwyższa gęstość momentu obrotowego na Ziemi".
- Miękkie pokrycie ciała: custom 3D-lattice polymer — tłumi uderzenia, bezpieczny przy kontakcie z ludźmi.
- HIC < 250, pinch-proof joints, low-inertia design (wskaźniki bezpieczeństwa).
- Ubranie (nylon suit i buty) — można prać w pralce.

### Mobilność

| Parametr | Wartość |
|---|---|
| Typowa prędkość chodzenia | 5 km/h (1,4 m/s) |
| Max prędkość biegu | 22 km/h (6,2 m/s) |
| Możliwości | chodzenie po schodach, wstawanie po upadku, kucanie, klękanie |

### Zasilanie

| Parametr | Wartość |
|---|---|
| Pojemność baterii | 842 Wh |
| Czas pracy | ~4 godziny |
| Szybkie ładowanie | 6 min = 1h działania |
| Ładowanie autonomiczne | tak (robot sam podłącza się do stacji) |

### Sensory i AI

- Kamery: **dual 8,85 MP stereo fisheye** @ 90 Hz
- Vision model: **Redwood AI** (vision-language model)
- Procesor główny: **1X NEO Cortex** (NVIDIA Jetson Thor)
- Wbudowany LLM z integracją audio + wizualną + pamięcią
- Łączność: Wi-Fi, Bluetooth, 5G
- Głośność: 22 dB (cichy jak lodówka)
- IP68 dłonie (wodoodporne), IP44 ciało (odporność na zachlapania)

### Co robot potrafi TERAZ (autonomicznie)

- Otwieranie i zamykanie drzwi
- Pobieranie przedmiotów na żądanie głosowe
- Gaszenie/włączanie świateł
- Witanie gości przy drzwiach
- Rozpoznawanie składników w kuchni i sugerowanie przepisów
- Zamiatanie, wycieranie powierzchni
- Podlewanie roślin
- Poruszanie się po domu (w tym schody)
- Autonomiczne ładowanie się (powrót do stacji)
- Rozpoznawanie twarzy domowników, zapamiętywanie kontekstu rozmów

### Co wymaga teleoperatora (tzw. "Expert Mode")

- Złożone zadania kuchenne (mycie naczyń, gotowanie)
- Sprzątanie łazienki
- Odkurzanie
- Zadania wieloetapowe (pranie od A do Z)
- Nowe, nieznane robotowi zadania

**Stosunek autonomii:** Szacunkowo 60–70% zadań autonomicznie na starcie, cel 80–90% do 2027 i 95%+ do 2028.

### World Model (styczeń 2026)

Przełomowa aktualizacja AI: robot uczy się **z nagrań wideo**, nie tylko z teleoperation.

- Trenowany na 900 godzinach video egocentric (z perspektywy pierwszej osoby) + 70 godzin danych robotycznych.
- Potrafi wykonywać zadania, których **nigdy wcześniej nie widział** na żywo (np. operowanie klapką sedesową, prasowanie koszuli, szczotkowanie włosów człowieka).
- Użytkownik daje komendę głosową → robot generuje wizualizację przyszłych ruchów → inverse dynamics model tłumaczy to na konkretne ruchy fizyczne.

### Co widać w filmach demo

- Film **"NEO Factory"** (YouTube, kwiecień 2026): NEO asystuje w fabryce — przenosi części, pomaga przy montażu. Roboty budują roboty — dosłownie.
- Film **"NEO The Home Robot"**: chodzenie po domu, otwieranie drzwi, pobieranie przedmiotów, interakcja głosowa.
- Kolaboracja z **NVIDIA**: nauka mycia naczyń.
- Cooking challenge z szefem kuchni **Nick DiGiovanni**: obsługa kosza do air fryer.
- Demo packing luncha z **nieznajomymi obiektami** (generalizacja poza dane treningowe).
- Krytyczna obserwacja z **Wall Street Journal**: nie wszystkie zadania w teście były autonomiczne. Robot "sometimes falls over" i nadal potrzebuje dużo ludzkiej pomocy.

---

## Biznes i dostępność

### Opcje zakupu

| Opcja | Cena | Warunki |
|---|---|---|
| Early Access (zakup) | $20 000 | Kaucja $200, dostawa 2026, pierwszeństwo |
| Subskrypcja | $499/miesiąc | Min. 6 miesięcy |

- Kolory: tan, gray, dark brown.
- Tylko USA w pierwszej fali (2026). Inne kraje od 2027.
- Zamówienie przez 1x.tech/order.

### Fabryka

- Lokalizacja: **Hayward, Kalifornia**
- Powierzchnia: **58 000 sq ft** (~5 400 m²)
- Pracownicy: **200+** (z planami ekspansji)
- Charakterystyka: pełna integracja pionowa — 1X produkuje in-house: silniki, baterie, struktury, systemy transmisji, miękkie pokrycia, sensory, uzwojenia cewek miedzianych.
- Pierwsze w historii high-volume humanoid robot factory w USA.
- NEO asystuje w produkcji własnych następców (logistics wewnętrzne, transport części).
- Cytat CEO Bernt Børnich: *"Production is happening now, and American consumers will be among the first in the world to welcome NEO into their homes."*
- Cytat VP Manufacturing Vikram Kothari: *"We're building the world's safest, most reliable humanoid robots—right here in Hayward, California."*

---

## Konkurencja i porównania

### Przegląd rynku humanoidów 2026

| Firma / Robot | Fokus | Status rynkowy | Cena / model |
|---|---|---|---|
| **1X NEO** | Dom, konsument | Przedsprzedaż otwarta, dostawy 2026 | $20 000 lub $499/mies. |
| **Figure 03** | Dom + praca, enterprise | Demo, brak consumer pre-order | bd (enterprise) |
| **Agility Digit** | Logistyka/magazyny | Jedyny robot humanoidalny generujący przychody (GXO, Toyota, Mercado Libre) | Leasing enterprise |
| **Boston Dynamics Atlas** | Przemysł (Hyundai) | CES 2026, wszystkie 2026 dla Hyundai + Google DeepMind | Enterprise, 2027+ |
| **Tesla Optimus** | Fabryki Tesla | Praca w fabrykach Tesla, brak zewnętrznej sprzedaży | bd |

### Kluczowe różnice 1X vs reszta

- **1X NEO to jedyny humanoid z otwartymi zamówieniami konsumenckimi** i potwierdzonym terminem dostawy do domu (nie do zakładu pracy).
- Figure 03 ma lepsze czujniki dotykowe (3 gramy wykrycia siły), lepszy home-readiness design wg benchmarków — ale brak sprzedaży konsumenckiej.
- Agility Digit jest jedynym humanoidem, który aktywnie zarabia (przeniesione 100 000 pojemników w magazynach GXO) — ale w logistyce, nie w domach.
- Atlas (Boston Dynamics) + Gemini Robotics (Google DeepMind) — enterprise, nie konsument.
- Wycena rynkowa kontekst: Figure AI zamknął rundę $1 mld przy wycenie $39 mld; 1X szuka $1 mld przy $10 mld (wrzesień 2025).

---

## Obawy i kontrowersje

### 1. Prywatność w domu — największy problem

- Teleoperatorzy 1X mają dostęp wzrokowy i operacyjny do prywatnego wnętrza domu.
- Kamera i mikrofony zbierają dane od "gdzie stoi mydło do naczyń" po "nagrania wideo dzieci i domowników w czasie rzeczywistym".
- Dane mogą podlegać wezwaniom sądowym, nakazom przeszukania, lub wyciekowi przy ataku hakerskim.
- **Mitygacja 1X:** zgoda użytkownika wymagana przed każdą teleoperacją, wskaźniki świetlne (pierścienie przy uszach) gdy operator jest aktywny, blur twarzy, "no-go zones" (wyłączone pomieszczenia i godziny), background check + NDA dla wszystkich operatorów.
- Szczegóły techniczne dotyczące przechowywania i przetwarzania danych pozostają niejasne.

### 2. Bezpieczeństwo fizyczne

- Robot waży 30 kg, porusza się z prędkością do 22 km/h — przy upadku lub awarii może skrzywdzić człowieka.
- 1X projektuje pod kątem bezpieczeństwa (miękkie ciało, low-inertia, HIC<250), ale weryfikacja realna dopiero przy masowym użytkowaniu.
- Co jeśli robot "utknie" lub "przewróci się" — WSJ potwierdził, że to się zdarza.

### 3. Model teleoperacji — pytanie o prawdziwą autonomię

- 30–40% zadań nadal wymaga człowieka. Czy to robot "autonomiczny" czy "zdalnie sterowany marionetka"?
- CEO przyznał: dane od użytkowników są niezbędne do ulepszenia produktu. Czyli kupujesz robot i jednocześnie **pracujesz jako tester/dostarczyciel danych treningowych**.
- Subskrypcja teleoperatorów: dodatkowy koszt nieujęty w cenie $20k.

### 4. Historia nieudanych robotów domowych

Wzorzec powtarza się od dekad:

- **Jibo (2017)** — "robot społeczny", świetny PR, wąska użyteczność, serwery wyłączone 2019, firma zamknięta.
- **Kuri (Mayfield Robotics, 2018)** — robot-niania z kamerą, świetne demo, produkcja zatrzymana przed szeroką dystrybucją.
- **Aibo (Sony)** — komercyjna klęska przy pierwszym wydaniu, powrót ograniczony (170 000 sztuk łącznie po wszystkich edycjach).
- **Roomba** — jedyny prawdziwy sukces robotyki domowej, bo: jeden problem, jedno rozwiązanie, niska cena.
- Żaden robot domowy nie był w stanie konkurować ze smart speakerami (Alexa, Google Home) — tańszymi, prostszymi, bardziej niezawodnymi.

**Dlaczego NEO ma być inne tym razem?**
- AI (LLM + world model) daje zdolności generalizacji, których poprzednie generacje nie miały.
- Finansowanie ($100M+ z OpenAI, EQT, Samsung) + fabryka = realny produkt, nie render.
- Teleoperacja jako bridge do autonomii — nie "robot nie umie", ale "robot się uczy przez ludzi".
- NVIDIA Jetson Thor + własny model Redwood AI — klasa przetwarzania nieporównywalna z 2017-2019.

**Ale:** benchmark 12,4% sukcesu na realistycznych zadaniach domowych (1000 zadań, top team) pokazuje, że gap między PR a rzeczywistością jest nadal ogromny.

---

## Potencjał contentowy — haki i kąty

### Mocne haki do shorta

1. **"Roboty budują roboty"** — w fabryce Hayward NEO asystuje przy produkcji własnych następców. Dosłownie science fiction staje się faktem.

2. **60–70% autonomii vs 30–40% człowiek w VR w twoim domu** — kupiłeś robot za $20 000 i obcy człowiek widzi twój salon przez kamerę robota. Czy to akceptowalne?

3. **10 000 sztuk sprzedane w 5 dni** — żadna firma nie sprzedała tyle humanoidów konsumenckich w historii. Punkt zero.

4. **Wyprzedaż zanim fabryka ruszyła** — zamówiono 10k sztuk w październiku 2025, fabryka otwarła w kwietniu 2026. Popyt wyprzedził podaż o 6 miesięcy.

5. **$20 000 czy $499/miesiąc?** — co to oznacza dla masowego rynku? iPhone kosztował $499 w 2007. Robot domowy to "nowy iPhone"?

6. **CEO: "potrzebuję twoich danych, żeby poprawić produkt"** — czy to uczciwe wobec klientów płacących $20k?

### Pytania naturalne do komentarzy (organiczne haki)

- "Czy wpuściłbyś obcego człowieka z kamerą do swojego domu? Bo to dokładnie kupujesz."
- "Jibo, Kuri, Aibo — wszystkie skończyły tak samo. Czemu NEO ma być inne?"
- "Gdyby NEO kosztował $499/miesiąc i sprzątał — kupiłbyś?"
- "Co będzie, jak robot przewróci się na dziecko? Kto odpowiada — 1X czy właściciel?"

### Kąty do eksploracji w dłuższym formacie

- Porównanie: **$20 000 na robota vs $20 000 na 3 lata sprzątaczki** — co się opłaca?
- Deep dive: **model teleoperacji** — czy to etyczna "praca ukryta" teleoperatorów?
- Historia: **wszystkie roboty domowe które umarły** — i dlaczego tym razem AI zmienia reguły gry.
- Techniczne: **World Model 1X** — jak robot uczy się z YouTube bez teleoperation.

---

## Źródła

- [The Robot Report — 1X NEO pre-order launch](https://www.therobotreport.com/1x-announces-pre-order-launch-neo-humanoid-robot/)
- [GlobeNewswire — 1X Opens NEO Factory Hayward CA (oficjalny PR)](https://www.globenewswire.com/news-release/2026/04/30/3285118/0/en/1x-opens-neo-factory-in-hayward-ca-americas-first-vertically-integrated-humanoid-robot-factory-with-consumer-shipments-planned-for-2026.html)
- [Bloomberg — 1X Opens US Factory, Plans 10,000 Robots](https://www.bloomberg.com/news/articles/2026-04-30/humanoid-maker-1x-opens-us-factory-plans-to-make-10-000-home-robots-this-year)
- [Engadget — 1X Neo $20K home robot teleoperation](https://www.engadget.com/ai/1x-neo-is-a-20000-home-robot-that-will-learn-chores-via-teleoperation-040252200.html)
- [Fortune — robot do obowiązków domowych, test WSJ](https://fortune.com/2026/02/26/humanoid-robot-that-will-do-chores-for-you-robotics-company-1x/)
- [The Robot Report — Teleop not autonomy, the path for 1X NEO](https://www.therobotreport.com/teleop-not-autonomy-the-path-for-1x-neo-humanoid/)
- [The Robot Report — 1X World Model](https://www.therobotreport.com/1x-launches-world-model-enabling-neo-robot-to-learn-tasks-by-watching-videos/)
- [GlobeNewswire — 1X World Model (oficjalny PR)](https://www.globenewswire.com/news-release/2026/01/12/3217155/0/en/1x-unveils-paradigm-shift-in-humanoid-ai-neo-s-starting-to-learn-on-its-own.html)
- [Wikipedia — 1X Technologies](https://en.wikipedia.org/wiki/1X_Technologies)
- [Humanoid.guide — NEO specs](https://humanoid.guide/product/neo/)
- [Tech Startups — 1X raising $1B at $10B valuation](https://techstartups.com/2025/09/24/norways-1x-raising-1b-at-10b-valuation-to-bring-humanoid-robot-neo-into-homes/)
- [TechRadar — roboty budują roboty w fabryce](https://www.techradar.com/ai-platforms-assistants/theyre-building-each-other-new-x1-neo-robot-video-shows-the-humanoids-assisting-in-the-robot-production-process-just-as-all-science-fiction-foretold)
- [Security Boulevard — prywatność i inwigilacja NEO](https://securityboulevard.com/2025/11/meet-neo-1x-the-robot-that-does-chores-and-spies-on-you/)
- [Captain Compliance — privacy risks NEO](https://captaincompliance.com/education/privacy-and-security-risks-of-the-1x-neo-robot/)
- [Interesting Engineering — fabryka 100,000 NEO by 2027](https://interestingengineering.com/ai-robotics/1x-humanoid-robot-neo-factory-california)
- [eWeek — 88% household task fail rate humanoid robots](https://www.eweek.com/news/humanoid-robots-fail-88-percent-household-tasks/)
- [Humanoid Specs — 1X NEO](https://humanoidspecs.com/robots/1x-neo)
- [1X Technologies — oficjalna strona NEO](https://www.1x.tech/neo)
- [1X Technologies — order page](https://www.1x.tech/order)
- [1X Technologies — neo factory page](https://www.1x.tech/discover/neo-factory)
- [YouTube — NEO Factory Hayward](https://www.youtube.com/watch?v=ag_rFhvSNmE)
- [YouTube — NEO The Home Robot](https://www.youtube.com/watch?v=LTYMWadOW7c)
- [VentureBeat — 1X $100M Series B funding](https://venturebeat.com/ai/1x-robotic-startup-backed-by-openai-receives-100m-in-funding/)
- [botinfo.ai — humanoid robot comparison 2026](https://botinfo.ai/humanoid-robot-comparison)
