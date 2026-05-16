# Roboty humanoidalne — hype vs. rzeczywistość

## Kluczowe fakty z artykułu Bloomberg (8 maja 2026)

- Bloomberg opublikował materiał demaskujący przepaść między efektownymi demami a realnym deploymentem
- Na targach CES 2026 roboty parzły kawę, grały w ping-ponga, rozdawały karty i składały pranie — wszystko w odległości kilku kroków od siebie, w kontrolowanych warunkach
- Artykuł zadaje pytanie: jak szybko ta przepaść będzie się zmniejszać?
- Tłem są też inne materiały Bloomberg z maja 2026: analiza o dominacji eksportowej Chin w robotyce oraz relacja z pierwszego na żywo dema produkcyjnego Atlasa od Hyundai/Boston Dynamics (6 maja 2026)
- Bloomberg Primer wypuścił oddzielny film (YouTube) poświęcony tej samej przepaści
- Ekspercka Melonee Wise cytowana przez IEEE Spectrum: „Większym problemem jest popyt — nie sądzę, żeby ktokolwiek znalazł zastosowanie dla humanoidów, które wymagałoby kilku tysięcy robotów w jednym obiekcie"

## Problemy techniczne

### Bateria — największy bloker
- Agility Digit: 90 minut pracy, potem ładowanie; w praktyce pracuje w 30-minutowych interwałach w magazynach Amazon
- Figure 02: ok. 2–3 godziny aktywnej pracy
- Tesla Optimus Gen 2: szacunkowo 4–5 godzin (Tesla nie podała oficjalnych danych)
- Sanctuary AI Phoenix: ok. 4 godziny
- Ośmiogodzinna zmiana fabryczna wciąż poza zasięgiem; eksperci szacują, że osiągnięcie jej może zająć 10 lat lub więcej
- Chód dwunożny zużywa energię głównie na utrzymanie równowagi — mało zostaje na rzeczywistą pracę

### Dexterność dłoni
- Ludzka dłoń: 27 stopni swobody (DOF)
- Sanctuary AI Phoenix: 20+ DOF
- Figure 02: 16 DOF
- Tesla Optimus Gen 2: 11 DOF
- Chwytanie niepewnych, różnorodnych obiektów pozostaje nierozwiązane produkcyjnie

### Niezawodność i uptime
- Przemysł oczekuje 95–99% dostępności (ok. 5 godzin przestoju miesięcznie)
- Humanoidy osiągają znacznie mniej — żadna firma nie zademonstrowa publicznie miesięcy ciągłej niezawodnej pracy w fabryce
- Robot humanoidalny ma setki połączeń i czujników vs. 6 stawów klasycznego robota przemysłowego — każdy to potencjalny punkt awarii
- Standard bezpieczeństwa ISO 25785-1 dla humanoidów opublikowany dopiero w maju 2025 — branża przez lata deployowała roboty bez ustalonej normy bezpieczeństwa

### Autonomia i AI
- Większość robotów w pilotażach jest silnie zależna od ludzkiego nadzoru przy nawigacji, zmianie zadań i nowych środowiskach
- Teleoperacja (zdalne sterowanie przez człowieka) jest powszechna, ale rzadko ujawniana publicznie
- Tesla na evencie „We, Robot" prezentowała roboty w dużej mierze teleoperowane — tego nie komunikowała wprost
- 1X przyznaje otwarcie, że „eksperci zdalni kierują robotem przy nowych zadaniach"
- Demo Optimus w Miami: robot upadł w sposób sugerujący, że operator zdejmował gogle VR
- AI nie radzi sobie z nieprzewidywalnymi sytuacjami w nieustrukturyzowanym środowisku

### Równowaga i chód
- Roboty to „odwrócone wahadła" wymagające ciągłej korekcji balansu (pętle kontrolne 500–1000 Hz)
- Problemy z nierównymi podłożami, śliskimi powierzchniami, przeszkodami
- Gdy środowisko nie pasuje do danych treningowych, kontrola balansu staje się krucha

## Koszty — liczby

### Ceny zakupu (2026)
| Model | Producent | Cena |
|-------|-----------|------|
| Unitree G1 | Unitree Robotics | ~16 000 USD |
| EngineAI T800 | EngineAI | ~25 000 USD |
| Tesla Optimus | Tesla | 20 000–30 000 USD (cel docelowy) |
| Sanctuary AI Phoenix | Sanctuary AI | ~40 000 USD |
| Agility Digit | Agility Robotics | ~250 000 USD (w aktywnych pilotach) |
| Boston Dynamics Atlas | Boston Dynamics/Hyundai | poniżej 320 000 USD |

### Całkowity koszt posiadania (TCO)
- Dla robota za 13 500 USD: TCO przez 5 lat to 32 000–40 000 USD (doliczając wdrożenie, serwis, części)
- Ukryte koszty wdrożenia: certyfikacja bezpieczeństwa (5 000–15 000 USD), infrastruktura Wi-Fi (2 000–5 000 USD), stacje ładowania (500–2 000 USD/szt.), integracja z systemami MES/WMS (10 000–50 000 USD), szkolenia operatorów (1 000–5 000 USD/osoba)
- Razem koszty ukryte: 18 500–80 000 USD per wdrożenie
- Nikt nie operował humanoidami na wystarczającą skalę i przez wystarczający czas, żeby dysponować wiarygodnymi danymi TCO

### Robot-as-a-Service (RaaS)
- 1X NEO: 499 USD/miesiąc + depozyt 12 000+ USD + opłata wdrożeniowa 10 000 USD
- Modele przemysłowe: 1 900–5 000 USD/miesiąc

## Przykłady hype'u vs. rzeczywistości

### Tesla Optimus — kronika obietnic
| Data | Twierdzenie |
|------|-------------|
| Czerwiec 2024 | Tesla: „2 roboty Optimus wykonują zadania autonomicznie w fabryce" |
| Czerwiec 2024 | Musk: „tysiące robotów" do końca 2025 |
| Styczeń 2025 | Musk: plan budowy „ok. 10 000 robotów Optimus w tym roku" |
| Styczeń 2025 | Musk: „kilka tysięcy robotów będzie wykonywać pożyteczną pracę do końca roku" |
| Styczeń 2026 | Musk przyznaje: żaden Optimus nie wykonuje „pożytecznej pracy" w fabryce |
| Kwiecień 2026 | Tesla przesuwa prezentację Optimus V3 „na później w tym roku" (kolejny raz) |
| Maj 2026 | Produkcja ma ruszyć w lipcu–sierpniu 2026 w Fremont — „bardzo wolno" |

Źródło: Electrek, styczeń i kwiecień 2026. Musk sam przyznał to na rozmowie wynikowej Q4 2025.

### Figure AI — „24/7 autonomicznie"
- CEO Figure mówił o robotach pracujących 24/7 autonomicznie
- W tle wideo marketingowego widoczny był personel sprzątający (ludzki) — podkreślając przepaść między deklaracjami a stanem faktycznym

### Robot AIDOL (Rosja, listopad 2025)
- Prezentowany jako „pierwszy humanoidalny robot napędzany AI"
- Publiczny debiut: wyszedł na scenę do muzyki z Rocky'ego, próbował pomachać — i upadł twarzą w dół

### CES 2026 (styczeń 2026)
- AgiBot A2: część wykonań była sterowana zdalnie przez człowieka „ze względów bezpieczeństwa", mimo że robot ma autonomiczną nawigację
- Roboty demonstrowały coffee pouring, ping-pong, karty, pranie — wszystko w odległości kilku kroków, w przygotowanym środowisku

### Aldebaran (NAO, Pepper)
- SoftBank zainwestował, sprzedano dziesiątki tysięcy urządzeń
- Firma zbankrutowała — „większość ludzi nie rozumiała, do czego te maszyny służą" i szybko się nudziły ich ograniczeniami

### Sanctuary Robotics
- Inwestorzy wymusili odejście CEO Geordie Rose'a, gdy firma nie wykazywała ROI
- Program ucichł

## Głosy sceptyczne

**Melonee Wise** (eksperta robotyki, cytowana w IEEE Spectrum):
- „Bigger problem is demand — I don't think anyone has found an application for humanoids that would require several thousand robots per facility"
- „AI is not robust enough to meet the requirements of the market"

**Peggy Johnson, CEO Agility Robotics:**
- „Hype i wprowadzające w błąd filmiki marketingowe nie są dobre dla branży" — jedna z czołowych postaci branży wprost krytykowała fałszywy marketing konkurencji

**Ken Goldberg, badacz UC Berkeley:**
- Mówi o „100 000-letniej przepaści danych między językiem a rzeczywistą manipulacją fizyczną"

**Boston Dynamics** (szef robotyki):
- Przyznaje, że „niesamowity stopień niezawodności niezbędny do deploymentu na liniach fabrycznych" to wciąż niezrealizowane wyzwanie

**Chris Middleton / Diginomica:**
- „Hype plus niecierpliwi kapitaliści to zagrożenie dla sektora" — robotyka to „gra długoterminowa, nie szybki zysk"
- Bez wyraźnego ROI, humanoidy pozostają „rozwiązaniem szukającym problemu"

**Goldman Sachs** (rewidując prognozy w dół):
- Szacuje zaledwie 1,38 mln sztuk do 2035 r. — znacznie poniżej bardziej optymistycznych projekcji rynkowych

**IEEE Humanoid Study Group** (raport):
- „ROI dla robotów humanoidalnych pozostaje niejasny"
- Istniejące standardy bezpieczeństwa nie są dostosowane do tych maszyn

## Co jest realnie możliwe teraz

**Faktycznie działające deploymencie (małe skale, kontrolowane warunki):**
- Agility Digit w magazynie GXO/Spanx w Georgii (logistyka, przenoszenie tac) — pierwsza komercyjna rewenu-generująca instalacja
- Digit przeniósł ponad 100 000 tacek w pilotażu z GXO (Flowery Branch facility)
- Amazon testuje Digit w centrach fulfillment — bardzo wąski zakres zadań (przenoszenie pustych tackek)
- UBTECH Walker S2: ponad 600–800 mln juanów zamówień, rzeczywiście wdrożony w Chinach
- Apptronik Apollo: pilotaż w Mercedes-Benz

**Zadania, które roboty faktycznie wykonują (2025–2026):**
- Przenoszenie tac, pojemników i paczek (intralogistyka)
- Rozładunek kontenerów
- Powtarzalne zadania na liniach montażowych przy ścisłym nadzorze ludzkim

**Co wciąż nie działa:**
- Niezawodna praca przez 8-godzinną zmianę (bateria)
- Autonomiczna praca w nieustrukturyzowanym środowisku
- Szybka adaptacja do nowych zadań bez teleoperacji i nowego treningu
- Precyzyjne chwytanie różnorodnych, nieznanych obiektów
- Praca w pobliżu ludzi bez ograniczeń strefowych

**Realistyczny timeline wg ekspertów:**
- Faktyczne wdrożenie przemysłowe na większą skalę: 2027–2028
- Baterie solid-state i standardy bezpieczeństwa: 2028–2032
- Prawdziwa wielozadaniowość: 2032+

## Potencjalne haki narracyjne

1. **Elon Musk się przyznał** — przez 2 lata mówił, że tysiące robotów pracują w jego fabryce. Okazało się, że żaden nie robi nic pożytecznego. To nie jest spekulacja — sam to przyznał w raporcie wynikowym w styczniu 2026.

2. **Robot upadł na twarzy na własnym debiucie** — rosyjski AIDOL, promowany jako przełom AI, upadł przy próbie pomachania do publiczności.

3. **Bateria: 90 minut roboty vs. 8-godzinna zmiana** — robot za 250 000 dolarów, który musi się ładować po 30 minutach pracy, nie zastąpi pracownika.

4. **Ktoś z tyłu trzyma pilota** — wiele efektownych demówek jest po cichu sterowanych zdalnie przez człowieka. Tesla na wielkim evencie to robiła. 1X przyznaje to wprost dla „nowych zadań".

5. **Demo na parkiecie CES ≠ fabryka** — roboty na targach działają w środowisku idealnie skrojonym pod ich możliwości: znane podłoże, znane obiekty, brak chaosu.

6. **Inwestorzy kontra fizyka** — $7 mld zainwestowanych w Chinach samych tylko w 9 miesiącach 2025 r. vs. nikt nie wie, kiedy robot będzie opłacalny i do czego go naprawdę użyć.

7. **Pytanie dla widza:** „Ile by kosztował robot, który pracuje 30 minut, a potem trzeba go ładować 9 minut? I ile takich potrzeba żeby zastąpić jedną zmianę?"

## Źródła

- [Bloomberg: Humanoid Robots Aren't as Advanced as the AI Hype Cycle Suggests (8 maja 2026)](https://www.bloomberg.com/news/articles/2026-05-08/humanoid-robots-aren-t-as-advanced-as-the-ai-hype-cycle-suggests)
- [Bloomberg: CES 2026 Shows Where Humanoid Robots Work and Where They Don't](https://www.bloomberg.com/news/articles/2026-01-07/best-humanoid-robots-at-ces-2026)
- [Bloomberg: Hyundai Unveils Production-Ready Atlas (6 maja 2026)](https://www.bloomberg.com/news/articles/2026-05-06/hyundai-s-production-ready-humanoid-debuts-in-first-live-demo)
- [Bloomberg YouTube Primer: Humanoid Robots and the Gap Between Hype and Reality](https://www.youtube.com/watch?v=UQZooauU-FQ)
- [Electrek: Musk admits no Optimus robots are doing 'useful work' at Tesla (styczeń 2026)](https://electrek.co/2026/01/28/musk-admits-no-optimus-robots-are-doing-useful-work-at-tesla-after-claiming-otherwise/)
- [Electrek: Tesla pushes Optimus V3 reveal later this year — again (kwiecień 2026)](https://electrek.co/2026/04/22/tesla-optimus-production-fremont-model-sx-line/)
- [IEEE Spectrum: Reality Is Ruining the Humanoid Robot Hype](https://spectrum.ieee.org/humanoid-robot-scaling)
- [Automate.org: Teleoperation is a Powerful Tool for Humanoid Robots, but Transparency is Key](https://www.automate.org/robotics/industry-insights/teleoperation-is-a-powerful-tool-for-humanoid-robots-but-transparency-is-key)
- [Automate.org: Boston Dynamics Atlas' Product Manager on Humanoid Market Fit](https://www.automate.org/robotics/industry-insights/balancing-work-and-play-with-boston-dynamics-atlas)
- [Bain & Company: Humanoid Robots — From Demos to Deployment (2025)](https://www.bain.com/insights/humanoid-robots-from-demos-to-deployment-technology-report-2025/)
- [Robozaps: Humanoid Robotics Challenges 2026](https://blog.robozaps.com/b/challenges-in-humanoid-robotics)
- [WINS Solutions: Innovative Humanoid Robots in 2025–2026 — Reality or Hype?](https://www.winssolutions.org/humanoid-robots-2025-2026-reality-hype/)
- [Frank's World of Data Science & AI: Unveiling the Future — Humanoid Robots Beyond the Hype](https://www.franksworld.com/2026/05/02/unveiling-the-future-humanoid-robots-beyond-the-hype/)
- [There's a Robot for That: Humanoid Robot Cost 2026 — Complete Price & ROI Breakdown](https://www.theresarobotforthat.com/blog/humanoid-robot-cost-roi-breakdown/)
- [Diginomica: Humanoid robotics, part two — the robot reports are coming! Warning! Warning!](https://diginomica.com/humanoid-robotics-part-two-robot-reports-are-coming-warning-warning)
- [Medium / Dora Gu: From Demos to Deployment — The Real Bottleneck in Humanoid Robotics](https://medium.com/@wuxigudeyu/from-demos-to-deployment-the-real-bottleneck-in-humanoid-robotics-e1852575f416)
- [Agility Robotics: Digit Moves Over 100,000 Totes in Commercial Deployment](https://www.agilityrobotics.com/content/digit-moves-over-100k-totes)
- [Standard Bots: Humanoid robots in 2026 — Types, prices, and what's next](https://standardbots.com/blog/humanoid-robot)
