# BMW roboty humanoidalne — notatka badawcza

## Kluczowe fakty

- Czerwiec 2025 — Hexagon Robotics debiutuje AEON na konferencji Hexagon LIVE 2025
- Grudzień 2025 — AEON trafia na halę produkcyjną w Lipsku (pierwsze testy)
- Kwiecień 2026 — rozszerzone testy w Lipsku (aktualnie trwają)
- Lato 2026 — planowany pełny pilot z 2 jednostkami AEON jednocześnie
- BMW to pierwszy producent samochodów, który testuje roboty humanoidalne w Europie
- Spartanburg (USA): Figure 02 przez 11 miesięcy wspierał produkcję ponad 30 000 BMW X3
- Figure 02 przeniósł ponad 90 000 części blaszanych w 1 250 godzinach pracy
- Dokładność rozmieszczenia części: ponad 99% sukcesu na zmianę, zero interwencji na zmianę
- Robot pracował 10-godzinne zmiany, poniedziałek-piątek, pokonał ~1,2 mln kroków (~320 km)
- BMW powołało "Centre of Competence for Physical AI in Production" w Monachium
- Goldman Sachs prognozuje rynek robotów humanoidalnych na 38 mld USD do 2035 r.
- Koszt jednostki zachodniego robota humanoidalnego: 90 000–100 000 USD (2026)
- Prognozowany ROI przy obecnych cenach: 12–18 miesięcy

## AEON — Hexagon Robotics

- **Producent:** Hexagon AB (szwedzka firma, znana z pomiarów i oprogramowania przemysłowego)
- **Oddział:** Hexagon Robotics (wcześniej Manufacturing Intelligence division)
- **Partnerzy technologiczni:** NVIDIA (platforma Jetson Orin / IGX Thor)
- **Wzrost:** 165 cm, waga 60 kg
- **Prędkość:** do 8,6 km/h (2,5 m/s)
- **Ładowność:** 15 kg
- **Stawy:** 34 aktywowane (5-palczaste dłonie)
- **Sensory:** 22 sensory (fusion RGB, depth, LiDAR, force/torque)
- **Komputer pokładowy:** NVIDIA Jetson Orin (planowany upgrade do IGX Thor z certyfikatem safety)
- **Bateria:** hot-swap (wymiana w 23 sekundy), czas pracy ~4 godziny
- **Poruszanie się:** na kółkach (nie chodzi — lepsza wydajność energetyczna i prędkość na halach)
- **AI:** 4 warstwy physical AI + imitation learning — wystarczy 20 demonstracji, żeby nauczyć robota nowego zadania
- **Cyfrowe bliźniaki:** centrymetrowa dokładność skanowania przestrzeni
- Hexagon testował AEON też w Schaeffler i Pilatus: 40% szybsze skanowania QC, 99,9% dokładności
- Cytat Arnaud Robert (prezes Hexagon Robotics): "We're not in the dancing business – we're in the working business."

## Co robi robot w fabryce

**BMW Lipsk (AEON, 2026):**
- Montaż akumulatorów wysokonapięciowych (baterie do EV)
- Produkcja komponentów (elementy zewnętrzne nadwozia)
- Transport materiałów do linii produkcyjnej
- Autonomiczne nawigowanie między stacjami, omijanie pracowników i przeszkód
- Adaptacja gdy części nie leżą w dokładnie tym samym miejscu (brak sztywnych jigów)

**BMW Spartanburg (Figure 02, 2025):**
- Pick-and-place blach — pobieranie z pojemników, układanie na urządzeniu spawalniczym
- Tolerancja: 5 mm w 2 sekundy (czas cyklu całości: 84 sek., faza załadunku: 37 sek.)
- Robot działał na czynnej linii produkcyjnej, nie w warunkach laboratoryjnych

## Skala programu

**Spartanburg (zakończony, 2025):**
- 11 miesięcy działania (Figure 02)
- 30 000+ wyprodukowanych BMW X3 wspieranych przez robota
- 90 000+ przeniesionych części
- 1 250+ godzin pracy operacyjnej
- Dokładność: >99% na zmianę
- Wniosek: punkt awarii to przedramię → Figure 03 przeprojektował nadgarstek

**Lipsk (w toku, 2026):**
- Grudzień 2025 — pierwsze testy
- Kwiecień 2026 — rozszerzone testy
- Lato 2026 — pełny pilot z 2 jednostkami AEON
- Fokus: akumulatory HV + komponenty zewnętrzne

**Strategia BMW:**
- Centre of Competence for Physical AI in Production (Monachium) ocenia partnerów technologicznych
- Standaryzacja przez BMW Smart Robotics ecosystem
- Transparentna komunikacja z pracownikami — roboty jako wsparcie, nie zastępstwo

**Cytaty:**
- Milan Nedeljković (Board Member BMW): "Digitalisation improves the competitiveness of our production – here in Europe and worldwide."
- Michael Nikolaides (SVP Production): "Our aim is to be a technology leader and to integrate new technologies into production at an early stage."

## Konkurencja w robotach humanoidalnych w auto

| Firma | Robot | Status (2026) | Klient motoryzacyjny |
|---|---|---|---|
| Figure AI | Figure 02 / 03 | Figure 02 zakończył pilota u BMW (11 mies.), Figure 03 w ewaluacji | BMW Spartanburg |
| Hexagon Robotics | AEON | Aktywny pilot BMW Lipsk | BMW Leipzig |
| Boston Dynamics | Atlas (nowy) | Produkcja rusza 2026, wszystkie jednostki zarezerwowane | Hyundai (RMAC) |
| Tesla | Optimus Gen 3 | Brak "useful work" w fabrykach (Q4 2025 earnings), Musk przyznał | Docelowo Tesla (wewnętrznie) |
| Agility Robotics | Digit | Logistyka, nie automotive wprost | Amazon (magazyny) |
| 1X Technologies | NEO | Consumer/home, pre-orders od Q4 2025, dostawa Q3 2026 | Brak automotive |
| Unitree Robotics | R1 | 5 900 USD/szt. (lipiec 2025), chiński producent | Brak automotive |

**Kluczowe obserwacje o konkurencji:**
- Tesla Optimus: Elon Musk twierdził o 1 000+ wdrożonych jednostkach, ale w Q4 2025 przyznał, że żaden nie robi "useful work" — duże pytanie o wiarygodność
- Boston Dynamics Atlas: całkowite przeprojektowanie (z hydrauliki na elektrykę), szykuje się do Hyundai, partnerstwo z Google DeepMind na AI
- Figure: odszedł od BMW, Figure 03 jest przeprojektowanym modelem na bazie lekcji ze Spartanburga
- Koszty chińskie vs zachodnie: Unitree R1 za 5 900 USD to game-changer, ale brak certyfikacji safety

## Zmiana filozofii vs tradycyjna robotyka

**Tradycyjne ramiona robotyczne:**
- Przykute do jednego miejsca (fixed station)
- Wymagają klatek/ogrodzeń dla bezpieczeństwa
- Ściśle kontrolowane warunki (jig, pozycja każdej części dokładnie określona)
- Zaprogramowane na jeden powtarzalny ruch
- Nie adaptują się do zmian środowiska
- Droga rekonfiguracja przy zmianie modelu pojazdu

**Roboty humanoidalne (nowa filozofia):**
- Poruszają się po całej hali — nie są przykute do miejsca
- Działają w przestrzeniach zaprojektowanych dla ludzi (brak kosztownych przeróbek)
- Adaptują się gdy część leży 5 cm dalej niż powinna
- Omijają pracowników i przeszkody autonomicznie
- 360-stopniowa świadomość przestrzenna
- Można je nauczyć nowego zadania przez 20 demonstracji (imitation learning)
- Mogą przechodzić między stacjami zależnie od potrzeb
- Wykonują zadania ergonomicznie trudne dla ludzi (praca w pozycji pochylonej, ciężkie powtarzalne ruchy)
- ROI szacowany na 12–18 miesięcy przy obecnych cenach

**Filozofia BMW:**
Humanoid nie zastępuje ramion robotycznych przy spawaniu czy klejeniu (tam tradycyjne roboty są niezastąpione). Humanoid wypełnia lukę między robotem stacjonarnym a człowiekiem — przejęcie powtarzalnych, ergonomicznie trudnych zadań transportu i załadunku.

## Potencjalne haki do shorta

1. **Liczba robi robotę:** "Robot przez rok pomógł zbudować 30 tysięcy samochodów. Przeniósł 90 tysięcy części. Teraz jedzie do Niemiec." — sam wynik mówi więcej niż obietnica.

2. **Odwrócenie oczekiwań:** "BMW testuje robota humanoidalnego. Nie chodzi. Jeździ na kółkach. Celowo." — kontrast z sci-fi wizją humanoidów.

3. **Koszt vs wartość:** "Robot kosztuje 100 tys. dolarów. Zwraca się w półtora roku. Goldman Sachs mówi, że do 2030 zejdzie do 17 tys." — liczby konkretne, zrozumiałe.

4. **Tesla vs BMW:** "Tesla ogłosiła tysiąc robotów w fabryce. Elon Musk sam przyznał — żaden nie robi nic użytecznego. BMW nie ogłaszało. Cicho testowało przez rok." — gotowy kontrast bez oceniania.

5. **Zmiana zasad gry:** "Przez 40 lat robot w fabryce stał w jednym miejscu za klatką. Teraz chodzi po hali. Omija ludzi. Sam decyduje co zrobić gdy coś nie gra." — zmiana fundamentalnego założenia przemysłu.

## Źródła

- [BMW Group Press: BMW Group to deploy humanoid robots in production in Germany for the first time](https://www.press.bmwgroup.com/global/article/detail/T0455864EN/bmw-group-to-deploy-humanoid-robots-in-production-in-germany-for-the-first-time?language=en)
- [BMW Group: First humanoid robot introduced in Plant Leipzig](https://www.bmwgroup.com/en/news/general/2026/humanoid-robot-in-leipzig.html)
- [Figure AI: F.02 Contributed to the Production of 30,000 Cars at BMW](https://www.figure.ai/news/production-at-bmw)
- [Hexagon Robotics: BMW deploys AEON in production sites](https://robotics.hexagon.com/bmw-deploys-aeon-hexagon-robotics-humanoid/)
- [Hexagon Robotics: AEON humanoid robot brings AI-powered automation to factories](https://robotics.hexagon.com/hexagons-aeon-humanoid-robot-brings-ai-powered-automation-to-factories/)
- [NVIDIA Blog: Hexagon Taps NVIDIA Robotics and AI Software to Build and Deploy AEON](https://blogs.nvidia.com/blog/hexagon-robotics-ai-software-aeon-humanoid/)
- [BMWBlog: BMW Deploys Humanoid Robots in Europe for the First Time](https://www.bmwblog.com/2026/02/27/bmw-humanoid-robots-leipzig-europe-pilot/)
- [BMWBlog: Inside BMW's Humanoid Robot Reveal at Talent Campus Munich](https://www.bmwblog.com/2026/03/03/bmw-hexagon-aeon-humanoid-robot-leipzig-pilot/)
- [AI News: BMW puts humanoid robots to work in Germany – Europe's factories are watching](https://www.artificialintelligence-news.com/news/bmw-humanoid-robots-manufacturing-europe-leipzig/)
- [Automotive Manufacturing Solutions: BMW brings humanoid robots and physical AI to European car production](https://www.automotivemanufacturingsolutions.com/smart-factory/bmw-brings-humanoid-robots-to-european-production/2616584)
- [iIoT World: Physical AI Deployment ROI: BMW's 30,000-Car Proof](https://www.iiot-world.com/artificial-intelligence-ml/robotics/physical-ai-deployment-roi-humanoid-robots/)
- [Interesting Engineering: Figure humanoid robots retire after 11 months at BMW](https://interestingengineering.com/ai-robotics/figure-humanoid-robots-retires-bmw)
- [Automate.org: Boston Dynamics Set to Ship First Atlas Humanoids in 2026](https://www.automate.org/robotics/industry-insights/boston-dynamics-to-begin-production-on-redesigned-atlas-humanoid-in-2026)
- [Goldman Sachs: The global market for humanoid robots could reach $38 billion by 2035](https://www.goldmansachs.com/insights/articles/the-global-market-for-robots-could-reach-38-billion-by-2035)
- [Humanoid guide: AEON specs](https://humanoid.guide/product/aeon/)
- [AEON by Hexagon — full specs](https://humanoid.press/database/humanoid-press-database-aeon/)
