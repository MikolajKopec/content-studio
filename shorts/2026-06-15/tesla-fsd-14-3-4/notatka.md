# Tesla rolluje FSD v14.3.4 — Cybertruck dostaje "unified model" wspólny z Robotaxi

**Data:** 2026-06-15
**Temat:** Tesla rozpoczyna rollout FSD v14.3.4 (firmware 2026.14.6.10) z dwoma kluczowymi nowościami — Cybertruck pierwszy raz dostaje "Actually Smart Summon" oraz wchodzi do "unified model", który dotąd łączył tylko FSD klientów i flotę Robotaxi w Austin.

---

## Kluczowe fakty i liczby

- **13 czerwca 2026** Tesla rozpoczęła rollout FSD v14.3.4 (firmware **2026.14.6.10**); Elon Musk osobiście ogłosił release'a na X tego samego dnia, w którym SpaceX zadebiutował na NASDAQ.
- Po **20 miesiącach** czekania Cybertruck wreszcie dostaje Actually Smart Summon (ASS) — funkcja debiutowała we wrześniu **2024** dla pozostałych modeli.
- Cybertruck startuje z limitem prędkości ASS **6 mph (≈10 km/h)** — pozostała flota jeździ już z limitem **8 mph (≈13 km/h)**, zwiększonym o **33%** w v14.3.3.
- Rollout na start: **1,6% floty** (ok. **207 aut**, **50 instalacji** pierwszego dnia) wg notateslaapp; Tesla Oracle mówi o **0,1%** floty.
- "Unified model" łączy w jeden end-to-end neural network trzy systemy: Actually Smart Summon, FSD (Supervised) i Robotaxi — wcześniej każdy miał osobny model i osobny pipeline treningowy.
- Unified model debiutował w **v14.3.2** (**23 kwietnia 2026**) dla aut nie-Cybertruckowych; v14.3.4 dokłada Cybertrucka — różnica **51 dni**.
- Bazowy boost wydajności z v14.3 utrzymany: rewrite kompilatora AI na **MLIR** (LLVM Foundation, projekt Chrisa Lattnera) daje **20% szybszą reakcję** sieci neuronowej — od kamery do steeringu/hamulca.
- Flota Robotaxi w Austin, z której uczy się "unified model": ok. **20 samochodów** w trybie unsupervised.
- Tesla dostarczyła w **Q1 2026** **358 023** auta globalnie (vs. konsensus **365 645**), wyprodukowała **408 386** — przyrost stocku o **50 000+** w jeden kwartał.
- Cybertruck w USA w **Q1 2026**: **3 519** sztuk (najniższy kwartał od listopada 2023, spadek **−45,1% r/r** z **6 406** w Q1 2025). Niektóre źródła (ad-hoc-news) mówią o **38 500** Cybertrucków globalnie w Q1 2026 — rozbieżność prawdopodobnie wynika z metodologii (Tesla raportuje S/X/Cybertruck zbiorczo).
- Tesla w Polsce: ok. **23 258 aut** zarejestrowanych (kwiecień **2026**), w styczniu było **21 775** — Model Y to bestseller EV w PL w 2025.
- FSD (Supervised) w Polsce: **nie jest dostępne** — Polska wciąż czeka na aprobatę regulatora; dopuszczone w EU mają tylko Holandia, Litwa, Estonia, Dania i Belgia (stan na **11 czerwca 2026**).
- Od **22 maja 2026** w Europie (w tym PL) FSD można wykupić **wyłącznie w abonamencie** — opcja one-time została wycofana.
- Pełna decyzja unijna nt. FSD najwcześniej **jesień 2026** (kolejne posiedzenie komitetu UE: **30 czerwca 2026**).

---

## Pełne release notes FSD v14.3.4 (verbatim)

### Główne ulepszenia neuralnetu (utrzymane z v14.3)
- "Upgraded the Reinforcement Learning (RL) stage of training the FSD neural network, resulting in improvements in a wide variety of driving scenarios"
- Vision encoder ulepszony pod kątem rzadkich i niskowidocznych scenariuszy, lepszej geometrii 3D i rozszerzonego rozumienia znaków drogowych
- "Rewrote the AI compiler and runtime from the ground up with MLIR, resulting in 20% faster reaction time" (+ szybsza iteracja modelu)

### Konkretnie nowe w v14.3.4
- Cybertruck: pierwsza wersja z **Actually Smart Summon** i **Dumb Summon** (max **6 mph**)
- "Unified the model between Actually Smart Summon, FSD, and Robotaxi for more capable and reliable behavior" — teraz aktywne także na Cybertrucku
- Lepsze radzenie sobie ze **złożonymi skrzyżowaniami z zespołami sygnalizacyjnymi** (compound lights, łukowate drogi)
- Kreatywne zatrzymywanie na żółtym świetle — wytrenowane na "hard RL examples z floty Tesli"
- Lepsze omijanie nietypowych obiektów wystających na drogę (gałęzie, źle zaparkowane przyczepy)
- Automatyczne odzyskiwanie po "tymczasowych degradacjach systemu" bez disengagementu kierowcy
- Lepsze reagowanie na **emergency vehicles** i **school buses**
- Lepsze obchodzenie się z małymi zwierzętami (RL training na trudniejszych przykładach + nagrody za proaktywne bezpieczeństwo)
- Mniej niepotrzebnego lane-biasing i tailgatingu
- Decyzyjność przy wyborze miejsca parkingowego + predykcja lokalizacji parkingu z ikoną **P** na mapie

### Driver/UX
- Wybór powodu interwencji po przejęciu kontroli (dla Cybertrucka po raz pierwszy)
- Lepszy monitoring kierowcy z **eye-gaze tracking**
- Licznik **dystansu bez interwencji** i **najdłuższego streaka bez interwencji**
- Opcje parkowania pokazywane na mapie po dotarciu do celu
- Nowa opcja **"Pull Over"** (zastępuje "Curbside") — wybiera fizyczne wejście do celu, parkingowe apron, drop-off loops
- Pop-up "Approaching Destination, Will park at X / Will pull over"
- Przycisk **Pin+** na karcie trasy — dodawanie postoju w trakcie jazdy bez wchodzenia w menu
- "FSD celebrations" z konfetti za osiągnięcia

### Wizualizacja
- Wreszcie poprawione **ciężarówki "cab-over-engine"** (kabina nad silnikiem, popularne w Europie) — wcześniej rysowane jako abstrakcyjne pudełka
- Amber brake lights — lepsza wizualizacja
- Animowane badge'y modeli

### Undocumented changes
- Zaktualizowane menu disengagementu (dodane Parking i Other; usunięte Preference, Discomfort)
- Ikona cloud profile
- Track Mode pod Parental Controls
- Alert ostrzegający o ograniczonej widoczności kamer
- Grok dismissuje się automatycznie po **15 sekundach** bezczynności + dostęp do ulubionych
- Chromium browser zaktualizowany do **v140**
- Nowa funkcja zapisywania ostatnich nagrań dashcam
- Ikona "All Apps" w docku przerobiona na styl iOS folder (4 apki w środku)
- Większe ikony w docku
- Sekcja "Creations" łącząca Photobooth + Sketchpad
- Grok settings przeniesione do sekcji Audio w Controls

### Service Mode
- QR code authentication dla niezależnych warsztatów
- DTC indicator w banner Service Mode
- ANC microphone recording (do **3 minut**)
- Nowy panel Vehicle Functions dla Modelu 3/Y
- Nowy panel diagnostyczny Bluetooth

---

## Co to znaczy "unified model" — kontekst techniczny

**Przed v14.3.2 (kwiecień 2026):**
- Actually Smart Summon — osobny model trenowany pod manewrowanie po parkingach
- FSD (Supervised) — osobny model do jazdy publicznymi drogami
- Robotaxi (Austin) — osobny model dla floty unsupervised
- Każdy wymagał osobnego maintenance, osobnych danych treningowych, osobnych release'ów

**Od v14.3.2 (non-Cybertruck) / v14.3.4 (Cybertruck):**
- Jeden wspólny end-to-end neural network dla wszystkich trzech zastosowań
- "Training data cross-pollinates in real time" — gdy 20 unsupervised Robotaxi w Austin spotka edge case (częściowo zablokowane skrzyżowanie, niespodziewany pieszy), nauka natychmiast trafia do wag modelu, który obsługuje ASS u klientów
- Mniej kodu do utrzymywania, szybsze iteracje, spójne zachowanie między trybami

**Dlaczego Cybertruck dostał to ostatni:**
- Cybertruck ma **steer-by-wire** ze zmiennym przełożeniem + **active rear-wheel steering** (tył skręca w przeciwną stronę przy niskich prędkościach, w tę samą przy wysokich)
- 4 osobno sterowane koła vs. klasyczna dwuosiowa kinematyka w S/3/X/Y
- Integracja kamery na zderzaku przednim (unikalna dla Cybertrucka)
- Tesla potrzebowała dłużej, żeby unified model nauczył się obsługiwać tę inną geometrię

---

## Porównanie v14.3.3 → v14.3.4 (first impressions)

| Aspekt | v14.3.3 | v14.3.4 |
|--------|---------|---------|
| Cybertruck Smart Summon | brak | jest (6 mph) |
| Unified model na Cybertruck | nie | tak |
| Low-speed indecisiveness | częsty jitter kierownicy | znacząco zredukowany |
| Strefy budowy z migającymi światłami | "wahanie" | "zdecydowane przejście" |
| Mad Max profile | przytłumiony w ostatnich wersjach | przywrócona asertywność |
| Pull Over option | brak (była "Curbside") | nowa, działa lepiej |
| Highway exits | OK | regressions raportowane (pomijanie zjazdów) |
| Pin+ button (mid-trip stops) | nie | tak |
| FSD confetti celebrations | nie | tak |

**Cytaty testerów:**
- **Devin Olsen (@DevinOlsenn):** "14.3.4 seems to be way better around flashing lights at construction zones"
- **Zack (@BLKMDL3):** "Mad Max is better around city traffic — will test parking now but first drive was great, **35 min zero interventions**"
- **@rhensing (regression):** "It's not making turns. Caught it on video" — FSD pomija skręty na zjazdach z autostrady

---

## Implikacje dla użytkownika i rynku

**Dla amerykańskich właścicieli Cybertrucka (~50 000+ sprzedanych łącznie):**
- Pierwsza autonomiczna funkcja na parkingu — dotąd musieli sterować ręcznie z aplikacji
- Wchodzą do wspólnego "data flywheel" z flotą Robotaxi — będą dostawać szybsze update'y

**Dla Tesli jako firmy:**
- Konsolidacja stacku AI: jeden model dla trzech produktów to mniej kosztów inżynieryjnych
- Każdy nowy klient FSD trenuje też Robotaxi (i odwrotnie) — "self-reinforcing loop"
- NHTSA zamknęła **3 kwietnia 2026** śledztwo dot. ASS (objęło **2,6 mln pojazdów**, **159 incydentów**, **0 ofiar/obrażeń**) — droga wolna do skalowania funkcji

**Dla Polski:**
- **23 258** Tesli na drogach, ale FSD (Supervised) **niedostępne** — regulator nie wydał zgody
- Polscy właściciele Modeli Y/3 dostaną updateowy firmware (auto, mapy, UX), ale aktywnego FSD nie odpalą
- Od **22 maja 2026** w EU tylko subskrypcja FSD (one-time wycofany)
- Cybertrucków w PL praktycznie brak (brak homologacji)
- "Unified model" oznacza, że gdy Polska wreszcie dostanie aprobatę, FSD od dnia 1 będzie korzystał z danych Robotaxi z Austin

---

## Oś czasu — od osobnych modeli do unified

| Data | Wydarzenie |
|------|-----------|
| wrzesień 2024 | Actually Smart Summon debiutuje na Modelach S/3/X/Y (osobny model) |
| listopad 2023 | Pierwsze dostawy Cybertrucka — bez Smart Summon |
| kwiecień 2024 | Tesla uruchamia Austin Robotaxi (osobny model FSD unsupervised) |
| **8 kwietnia 2026** | FSD v14.3 — rewrite kompilatora na MLIR, **+20%** szybsza reakcja |
| **23 kwietnia 2026** | FSD v14.3.2 — **unified model** dla S/3/X/Y (łączy ASS + FSD + Robotaxi) |
| **3 kwietnia 2026** | NHTSA zamyka śledztwo ws. ASS (2,6 mln aut, 159 incydentów, 0 ofiar) |
| **22 maja 2026** | EU: FSD wyłącznie w abonamencie (koniec one-time) |
| **11 czerwca 2026** | FSD v14.3.3 — boost ASS z 6 → 8 mph dla floty |
| **12-13 czerwca 2026** | FSD v14.3.4 — Cybertruck dołącza do unified model + dostaje ASS (6 mph) |
| **30 czerwca 2026** | Posiedzenie komitetu UE ws. FSD |
| **jesień 2026 (plan)** | Możliwa aprobata FSD w PL i innych krajach EU |

---

## Reakcje branży

- **Chris Lattner (twórca MLIR, LLVM, krótko szef Autopilota Tesli w 2017):** publicznie pochwalił adopcję MLIR — "It is quite likely that a modern compiler and runtime implementation is the breakthrough that Robotaxi and FSD have been waiting for"
- **Elon Musk** ogłosił rollout na X — tego samego dnia SpaceX wszedł na NASDAQ (był to jeden z jego najbardziej intensywnych dni)
- **@wholemars** (jeden z najpopularniejszych testerów FSD) potwierdził rollout
- **Testerzy w terenie** raportują 30+ minutowe sesje bez interwencji w mieście, ale wytykają regresję ze zjazdami z autostrady

---

## Potencjalne kąty narracyjne do shorta

- **"Cybertruck czekał 20 miesięcy na funkcję, którą zwykła Tesla ma od września 2024"** — kontrast czasu, "rolls-royce wśród flagowców czeka za zwykłymi modelami"
- **"Twój Robotaxi z Austin uczy się od mojej Tesli z Berlina — i odwrotnie"** — wytłumaczenie unified modelu w 8 sekund: jeden mózg, trzy zastosowania
- **"23 tysiące Tesli w Polsce. Zero z aktywnym FSD"** — twarda liczba + paradoks regulacyjny, perfect dla PL audience
- **"Tesla przepisała kompilator AI od zera. Reakcja sieci szybsza o 20%. To różnica między uderzeniem a uniknięciem"** — konkretny techniczny zysk z safety implication
- **"Cybertruck Summon limit: 10 km/h. Reszta floty: 13. Bo Cybertruck skręca tylnymi kołami w drugą stronę"** — counterintuitive techniczna ciekawostka o steer-by-wire
- **"Tesla skasowała 'Curbside'. Dodała 'Pull Over'. Brzmi jak nic — to różnica między 'parkuj 50 m dalej' a 'podjedź pod wejście'"** — drobiazg, który zmienia user experience
- **"NHTSA badała 2,6 miliona Tesli pod kątem Smart Summon. Wyrok: 159 incydentów, zero rannych. Sprawa zamknięta"** — twarda liczba + dramatyczny zwrot akcji

---

## Źródła

- [Tesla FSD v14.3.4 (2026.14.6.10) Official Release Notes — Not a Tesla App](https://www.notateslaapp.com/software-updates/version/2026.14.6.10/release-notes)
- [Tesla Releases 'Actually Smart Summon' for Cybertruck With FSD V14.3.4 — Not a Tesla App](https://www.notateslaapp.com/news/4289/tesla-releases-actually-smart-summon-on-cybertruck)
- [Tesla starts the rollout of FSD v14.3.4 — Tesla Oracle](https://www.teslaoracle.com/2026/06/13/tesla-starts-the-rollout-of-fsd-v14-3-4-2026-14-6-10-official-release-notes-rollout-status/)
- [FSD v14.3.4: Cybertruck gets Actually Smart Summon, Tesla adds new destination parking options — Tesla Oracle](https://www.teslaoracle.com/2026/06/13/fsd-v14-3-6-2026-14-6-10-cybertruck-gets-actually-smart-summon-tesla-adds-new-destination-parking-options-more/)
- [Tesla Cybertruck Finally Gets Actually Smart Summon: v14.3.4 Ships With MLIR-Powered Speed Gain — TechTimes](https://www.techtimes.com/articles/318299/20260612/tesla-cybertruck-finally-gets-actually-smart-summon-v1434-ships-mlir-powered-speed-gain.htm)
- [First Impressions of Tesla FSD V14.3.4: Improvements and Regressions — Not a Tesla App](https://www.notateslaapp.com/news/4294/first-impressions-of-tesla-fsd-v1434-improvements-and-regressions)
- [Tesla Introduces New UI Features in FSD V14.3.4 — Not a Tesla App](https://www.notateslaapp.com/news/4288/tesla-introduces-new-ui-features-in-fsd-v1434)
- [Tesla FSD V14.3.2 Unifies FSD Models Across Robotaxi and Customer Vehicles — Not a Tesla App](https://www.notateslaapp.com/news/4033/tesla-fsd-v1432-unifies-fsd-models-across-robotaxi-and-customer-vehicles-improves-summon-and-adds-new-menu)
- [Tesla FSD v14.3 rolls out with MLIR rewrite, 20% faster reactions — Electrek](https://electrek.co/2026/04/07/tesla-fsd-14-3-rolling-out-mlir-lattner/)
- [Chris Lattner on X: MLIR adoption by Tesla FSD](https://x.com/clattner_llvm/status/2041614853870112845)
- [Tesla (TSLA) Q1 2026 deliveries miss expectations at 358,000 — Electrek](https://electrek.co/2026/04/02/tesla-tsla-q1-2026-delivery-results-misses-expectations/)
- [Tesla Reveals Full List of Countries Pending FSD Approval — Not a Tesla App](https://www.notateslaapp.com/news/4249/tesla-reveals-full-list-of-countries-pending-fsd-approval)
- [Tesla bada poziom wyczekiwania na FSD (Supervised) w Europie. Nawet w Polsce od 22 maja 2026 tylko abonament — Elektrowoz.pl](https://elektrowoz.pl/porady/tesla-bada-poziom-wyczekiwania-na-fsd-supervised-w-europie-nawet-w-polsce-od-22-maja-2026-tylko-abonament/)
- [Tesla w Polsce: 23 258 aut (kwiecień 2026) — Samar.pl](https://www.samar.pl/rynek-w-liczbach/park-samochodow-elektrycznych-2026-2026)
- [Cybertruck Q1 2026 sales hit new low — Drive Tesla Canada](https://driveteslacanada.ca/news/cybertruck-q1-2026-sales-hit-new-low-as-buyers-await-cheaper-awd-variant/)
