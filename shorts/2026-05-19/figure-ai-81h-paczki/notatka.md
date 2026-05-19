# Figure AI: 101 391 paczek w 81 godzin bez przerwy — „nie zatrzymamy się, dopóki robot się nie zepsuje"

**Data:** 2026-05-19
**Temat:** Humanoidalny robot „Jim" Figure AI przekroczył 81 godzin nieprzerwanej autonomicznej pracy w magazynie, sortując ponad 100 tysięcy paczek bez ingerencji człowieka — pierwszy publiczny test wykonalności „dark factories" w wykonaniu humanoida.

---

## Kluczowe fakty i liczby

- **101 391 paczek** posortowanych w **81 godzin** bez ingerencji człowieka (dane na 17 maja, godz. 11:00 lokalnego czasu) — robot „Jim" w magazynie logistycznym Figure AI.
- Livestream wystartował **13 maja 2026** jako planowany **8-godzinny pokaz**; po pierwszych 8 godzinach bez błędu Brett Adcock (CEO) ogłosił, że transmisja będzie trwać, „dopóki robot się nie zepsuje".
- **Zero błędów w pierwszych 24 godzinach** ciągłej pracy — według Adcocka „uncharted territory" (nieznany dotąd poziom autonomii).
- Tempo: **jedna paczka co 3-4 sekundy**, czyli na poziomie ludzkiego pracownika (Adcock: „F.03 is now around human parity").
- **3 roboty F.03** w rotacji (viewerzy nazwali je „Bob, Frank i Gary"), bateria starcza na **~3-4 godziny pracy**, robot sam prosi kolegę o zmianę.
- Oryginalny stream osiągnął ok. **10 milionów wyświetleń** na YouTube; w 4. dobie streamu wciąż oglądało go ~6400 osób na żywo.
- System: **Helix-02** — wszystkie decyzje podejmowane lokalnie (onboard), bez teleoperacji, bez chmury.
- W poprzednich pokazach Figure AI zaliczył już **10-godzinną zmianę w fabryce BMW** (90 000 części) i 17-godzinny sort 22 000 paczek — 81 godzin to skok rzędu wielkości.

---

## Specyfikacja techniczna / Architektura Helix-02

Helix-02 to drugie pokolenie własnego stosu Figure AI, ogłoszone wiosną 2026. Kluczowa zmiana wobec Helix-01: pełna kontrola **całego ciała** (Helix-01 sterował tylko górną częścią).

**Architektura trójwarstwowa (hierarchiczny system):**

- **System 0 (S0)** — sieć neuronowa **10 mln parametrów**, działa z częstotliwością **1 kHz**, odpowiada za balans i koordynację całego ciała. Zastąpiła **ponad 109 000 linii ręcznie pisanego kodu C++**.
- **System 1 (S1)** — transformer działający z częstotliwością **200 Hz**, przekłada percepcję na cele dla stawów.
- **System 2 (S2)** — moduł rozumowania: rozumienie sceny, planowanie, interpretacja języka.

**Sensory:**
- kamery w głowie (główna percepcja)
- **kamery w dłoniach** (nowość w Helix-02 — kluczowe, gdy obiekt jest zasłonięty)
- czujniki dotyku w opuszkach palców, wyczuwające siły rzędu **3 gramów**
- pełna propriocepcja (wiedza o pozycji każdej osi)

**Dane treningowe:**
- ponad **1000 godzin** retargetowanych danych ruchu człowieka (mocap mapowany na kinematykę robota)
- trening w symulacji z **200 000+ równoległych środowisk** (domain randomization)

Adcock powtarza w wywiadach, że Helix-02 „nie jest zeskryptowany — rozumuje i steruje bezpośrednio z pikseli kamery". Ten szczegół jest istotny dla narracji: chodzi o end-to-end neural control, a nie o klasyczny pipeline percepcja → planowanie → ruch.

---

## Możliwości / Co potrafi

Co konkretnie pokazał stream (zweryfikowane przez Seoul Economic Daily i Interesting Engineering):

- **Rozpoznaje paczkę po kodzie kreskowym** wyłącznie z kamery, decyduje o orientacji etykiety (musi wylądować kodem w dół na taśmie).
- **Adaptuje strategię chwytu**: jedna lub dwie ręce, pochylenie się, wyciągnięcie ręki dalej. Wszystko decyzja modelu, nie skrypt.
- **Autonomiczna rotacja zmian**: gdy bateria spada poniżej progu, robot odsuwa się od stanowiska i sygnalizuje innemu robotowi w zespole, żeby zajął jego miejsce — bez przestoju na taśmie.
- **Self-healing**: jeśli robot „utknie" (np. zacięcie chwytu), Helix-02 sam wyzwala reset zachowania, bez ingerencji człowieka.
- Robot, który ma problem hardware/software, sam schodzi z pola roboczego do strefy serwisowej.

Wcześniejsze pokazy Helix-02 obejmowały też: 4-minutowe ciągłe ładowanie zmywarki, odkręcanie zakrętek, wyciąganie pigułek z opakowania, manipulację strzykawką, oraz **61 sekwencyjnych akcji loco-manipulacji** wykonanych bez cięcia.

---

## Implikacje dla rynku pracy — teza „dark factories"

81 godzin to nie jest „lepszy demo" — to **przekroczenie progu wykonalności** modelu lights-out. Dlaczego to ważne:

- W amerykańskich magazynach Amazon, FedEx i UPS sortowanie paczek to praca minimum-wage z **rotacją ~150% rocznie** i ogromnym kosztem rekrutacji.
- Robot na poziomie ludzkiej prędkości (3 sek./paczka), pracujący 24/7 z 15-minutową „przerwą" na zmianę partnera, generuje równowartość **~3 etatów human ludzkich** na jednym stanowisku — bez urlopów, L4, BHP.
- Gartner: do końca 2026 r. **60% producentów** wdroży jakąś formę lights-out manufacturing. Figure właśnie pokazał, że humanoid mieści się w tej puli — nie tylko klasyczny robot na szynie.
- Branża logistyczna ma najwięcej do stracenia: w USA pracuje **~1,2 mln** osób w fulfillment centers. To pierwszy konkretny humanoid, który mógłby ich zastąpić w skali.
- Kontrnarracja: robotyk **Ayanna Howard** (Ohio State) skomentowała demo jako „bliższe science project niż w pełni komercyjnej usługi" — placement precision i exception handling wciąż są problemem.

---

## Porównanie z konkurencją (humanoid race 2026)

| Firma | Robot | Stan na maj 2026 | Cena | Najlepszy demo |
|---|---|---|---|---|
| **Figure AI** | F.03 + Helix-02 | **81h autonomii**, BMW (90k części), 100k+ paczek | b.d. (B2B) | Ten livestream |
| **Tesla** | Optimus Gen 3 | „R&D and learning phase" (Q1 2026) — brak produktywnych zadań w fabrykach | target $20-30k | Dema z teleoperacją (zarzuty) |
| **Boston Dynamics** | Atlas (electric) | Wersja produkcyjna CES 2026, deployment u Hyundai + Google DeepMind | enterprise | 56 DoF, 50 kg lift |
| **Unitree** | G1 | **5500+ jednostek** sprzedanych w 2025, listing na Amazon US | **$17 990** | Wolumen — najwięcej sztuk w terenie |
| **Agility Robotics** | Digit | Deploymenty w GXO, Spanx — fokus na logistykę | b.d. | Praca z półkami i wózkami |
| **Apptronik** | Apollo | Współpraca z Mercedes-Benz | b.d. | Manipulacja w fabryce aut |

**Co odróżnia ten demo Figure:** żaden konkurent nie pokazał publicznie kilkudziesięciogodzinnej autonomii z liczbami w real time. Tesla Optimus wciąż łapie zarzuty o teleoperację, Atlas robi krótkie cięte clipy, Unitree wygrywa wolumenem ale nie autonomią poznawczą.

---

## Reakcje branży

**Pozytywne / neutralne:**
- Interesting Engineering: „uncharted territory" — pierwszy publiczny test długoterminowej autonomii humanoida.
- BigGo Finance (38h checkpoint): „signal industrialization push" — wycena Figure AI prawdopodobnie skoczy w kolejnej rundzie.
- Silicon Valley dnyuz.com: stream stał się „latest binge-watch" w środowisku VC.

**Sceptyczne:**
- TechRadar (tytuł mówi sam za siebie: „not everyone is convinced it was fully real") — pytania o to, ile naprawdę jest end-to-end neural, a ile fallbacków.
- knightli.com obserwuje na streamie konkretne błędy: „inaccurate grasp judgments, shifted package positions, or even pushing packages off the conveyor" — niepubliczna error rate.
- humanoid.guide: Figure **nie podał** detalicznych throughput numbers, error rates, breakdown po taskach. Komunikat marketingowy > raport techniczny.
- Ayanna Howard (cyt. wyżej) — „science project not commercial service".

**Kluczowe pytanie, na które Figure nie odpowiada:** ile interwencji człowieka na 1000 paczek? Ile paczek spadło z taśmy? Jaki jest naprawdę MTBF (mean time between failures) w godzinach pracy?

---

## Potencjalne kąty narracyjne do shorta

1. **„Robot pracował 81 godzin, dopóki sam nie poprosił o zmianę"** — paradoks autonomii + emocjonalny anthropomorfizm. Najmocniejszy hook.
2. **„100 000 paczek bez jednej kawy"** — kontrast z ludzkim pracownikiem, viralowy, każdy zrozumie.
3. **„Bateria padła, więc robot zawołał kolegę"** — pokazujemy fragment streamu, gdzie dwa F.03 robią handoff. Czysta sci-fi w realu.
4. **„109 000 linii kodu wyrzuconych do kosza — zastąpiła je sieć 10 milionów parametrów"** — counterintuitive, geek-friendly, świetny dla audience meeko.tech.
5. **„CEO obiecał: nie wyłączymy streamu, dopóki robot się nie zepsuje. Czwartego dnia wciąż chodzi"** — drama, sportowy framing, „heroizacja" maszyny.
6. **„Robot sortuje paczkę co 3 sekundy. Człowiek też. Różnica: robot nie idzie do domu"** — uderza w lęk o pracę, bardzo dyskusyjny w komentarzach (= zasięgi).
7. **„Tesla wciąż uczy Optimusa chodzić. Figure AI właśnie skończył 81-godzinną zmianę"** — pojedynek tytanów, łatwy clickbait pod „Musk vs. reszta świata".

---

## Źródła

- [Figure AI Robot Sorts 100,000 Packages in 81 Hours Without Human Help — Seoul Economic Daily](https://en.sedaily.com/international/2026/05/17/figure-ai-robot-sorts-100000-packages-in-81-hours-without)
- [Introducing Helix 02: Full-Body Autonomy — Figure AI (oficjalne)](https://www.figure.ai/news/helix-02)
- [Figure AI humanoids sort 28,000 packages in 24-hour autonomous test — Interesting Engineering](https://interestingengineering.com/ai-robotics/figure-ai-humanoids-24-hour-autonomous-run)
- [Figure AI's Humanoid Robots Sort Packages Nonstop: What the Livestream Proves — Knightli](https://www.knightli.com/en/2026/05/18/figure-ai-f03-livestream-package-sorting/)
- [Figure AI streamed humanoid robots sorting packages for 8 hours straight — and not everyone is convinced it was fully real — TechRadar](https://www.techradar.com/ai-platforms-assistants/figure-ai-streamed-humanoid-robots-sorting-packages-for-8-hours-straight-and-not-everyone-is-convinced-it-was-fully-real)
- [Helix-02 humanoid robots reach 8-hour shift claim at Figure AI — humanoid.guide](https://humanoid.guide/figure-ai-demonstrates-helix-02-humanoid-robots-on-8-hour-shifts/)
- [Figure AI's 38-Hour Livestream Signals Industrialization Push — BigGo Finance](https://finance.biggo.com/news/1lm9Kp4B6tLPsnrZ_iyi)
- [Figure AI's Robots Work 17-Hour Shift, Sort 22,000 Packages — eWeek](https://www.eweek.com/news/figure-helix-robots-22000-packages/)
- [Atlas vs Optimus vs Figure AI: The Humanoid Robot Race in 2026 — unteachablecourses](https://unteachablecourses.com/humanoid-robot-race-in-2026/)
- [Humanoid Robots 2026: Tesla Optimus vs Figure AI vs Unitree — LumiChats](https://lumichats.com/blog/humanoid-robots-2026-tesla-optimus-figure-ai-unitree-complete-guide)
