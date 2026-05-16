# Figure robots w BMW + NVIDIA GR00T — April 2026

Data researchu: 2026-04-30

---

## Kluczowe fakty

- Robot Figure 02 przez 10 miesięcy pracował na aktywnej linii produkcyjnej BMW X3 w Spartanburgu (Karolina Południowa, USA)
- Wspomógł produkcję ponad 30 000 samochodów — to nie symulacja ani laboratorium, to prawdziwa fabryka
- Wykonał ponad 90 000 operacji załadunku blach do spawarki, z dokładnością powyżej 99% na zmianę
- NVIDIA w tygodniu National Robotics Week (kwiecień 2026) ogłosiło nowe otwarte modele Isaac GR00T — mózg dla robotów humanoidalnych, dostępny za darmo dla każdego producenta
- Wartość Figure AI: ok. 39 mld dolarów (wrzesień 2025, seria C)
- BMW rozszerza program: od kwietnia 2026 testy w fabryce w Lipsku (Niemcy) z robotem AEON od Hexagon Robotics
- Związki zawodowe w Korei Południowej (Hyundai) oficjalnie ogłosiły: "pod żadnym pozorem nie zaakceptujemy robotów w fabrykach"

---

## Figure w BMW — szczegóły

**Lokalizacja:** BMW Group Plant Spartanburg, Karolina Południowa — największa fabryka BMW na świecie

**Okres:** styczeń 2024 (ogłoszenie partnerstwa) → ~11 miesięcy pilotażu (zakończony)

**Robot:** Figure 02 — bipedalna maszyna humanoidalna, wzrost zbliżony do człowieka

**Zadanie:**
- Klasyczny pick-and-place: pobieranie blach z półek i umieszczanie na urządzeniu spawalniczym
- Tolerancja precyzji: 5 mm
- Czas jednego cyklu: 37 sekund (wymaganie BMW: do 84 sekund łącznie)
- Praca 5 dni w tygodniu, 10 godzin na zmianę

**Wyniki po 10 miesiącach:**
- 30 000+ pojazdów BMW X3 z udziałem robota
- 90 000+ elementów blacharskich przeładowanych
- 1 250 godzin pracy operacyjnej
- 1,2 miliona kroków (ponad 300 km)
- Dokładność: >99% na zmianę
- Zero interwencji operatora na zmianę (po wdrożeniu pełnym)

**Wzrost wydajności:** 400% w stosunku do wersji startowej (źródła: Interesting Engineering, Financial Content)

**Szacowane oszczędności:** ponad 1 mln dolarów rocznie przez redukcję błędów i przeróbek (szacunek analityków)

**Wniosek BMW (cytat Michaela Nikolaidesa, Senior VP):**
> "Pomyślne pierwsze wdrożenie humanoidalnych robotów w naszym zakładzie w Spartanburgu dowodzi, że robot humanoidalny może funkcjonować nie tylko w warunkach kontrolowanego laboratorium, ale także w istniejącym środowisku produkcji samochodów."

**Co dalej w BMW:**
- Fabryka Leipzig (Niemcy): testy od kwietnia 2026 z robotem AEON (Hexagon Robotics)
- Pełny pilotaż: lato 2026
- Trwa ocena zastosowań dla Figure 03 (najnowsza generacja)

---

## NVIDIA GR00T — co to zmienia

**Co to jest (dla laika):**
Wyobraź sobie, że robot do tej pory był jak kalkulator — musiał być zaprogramowany dla każdej operacji z osobna. GR00T to jak danie mu głowy do myślenia: rozumie polecenia mówione naturalnym językiem, widzi otoczenie, sam planuje jak wykonać zadanie i się uczy.

**Pełna nazwa:** Isaac GR00T (Generalist Robot 00 Technology)

**Najnowsza wersja (kwiecień 2026):** GR00T N1.7 — model open-source, licencja komercyjna Apache 2.0, dostępny bezpłatnie na Hugging Face i GitHub

**Jak działa (uproszczone):**
- Wejście: kamera (widzi) + mikrofon/tekst (słyszy polecenie)
- Wyjście: konkretne ruchy ramion, rąk, nóg robota
- Trenowany na 20 000+ godzinach nagrań ludzkich ruchów — uczy się od ludzi, nie od inżynierów programujących każdy ruch
- 3 miliardy parametrów (dla porównania: GPT-2 miał 1,5 mld)

**Co ogłoszono na National Robotics Week (kwiecień 2026):**
- GR00T N1.7 — gotowy do produkcji fabrycznej (material handling, pakowanie, inspekcja)
- GR00T N2 (zapowiedź) — następna generacja, 2x skuteczniejsza w nowych zadaniach niż obecne modele
- Newton 1.0 — otwarty silnik fizyki (z Google DeepMind i Disney Research)
- Isaac Sim 6.0, Isaac Lab 3.0 — symulatory do trenowania robotów przed wdrożeniem

**NVIDIA jako "Android robotyki":**
Strategia NVIDIA: stać się dla robotów tym, czym Android jest dla telefonów — każdy producent robota może użyć ich oprogramowania jako fundamentu. TechCrunch (styczeń 2026): "Nvidia wants to be the Android of generalist robotics"

**Cały stack NVIDIA dla robotyki:**
1. Symulacja w chmurze (Cosmos, Isaac Sim) → robot uczy się w wirtualnym świecie
2. Model mózgu (GR00T) → robot rozumie zadania
3. Edge computing (procesory Jetson) → robot działa lokalnie, bez internetu
4. Newton → symulacja fizyki zgodna z prawdziwym światem

---

## Mapa rynku robotyki humanoidalnej 2026

| Firma | Robot | Wdrożenie | Status |
|---|---|---|---|
| Figure AI | Figure 02/03 | BMW Spartanburg (zakończone), ewaluacja BMW Leipzig | Wycena 39 mld USD, seria C >1 mld USD |
| Tesla | Optimus Gen 3 | Gigafactory Texas, Fremont | 1 000+ robotów w fabrykach Tesli |
| Boston Dynamics / Hyundai | Atlas | Metaplant Savannah, Georgia | 2026 pierwsze realne wdrożenia, cel: 30 000 robotów/rok |
| Agility Robotics | Digit | Amazon (fulfillment centers) | Pierwsza komercyjna produkcja, Oregon |
| Apptronik | Apollo | Mercedes-Benz Digital Factory Campus Berlin | Pilot, faza przed skalowaniem |
| 1X Technologies | NEO | Konsument domowy | Pre-order otwarty, dostawa 2026, cena 20 000 USD |
| Hexagon Robotics | AEON | BMW Leipzig (od IV 2026) | Nowy gracz, wchodzi do BMW |

**Chiny:**
- Robotyka humanoidalna masowo finansowana przez rząd, koszty produkcji ~35 000 USD/szt. vs ~100 000 USD na Zachodzie
- Dziesiątki startupów, m.in. Unitree, Fourier Intelligence

---

## Wpływ na miejsca pracy

**Dane globalne:**
- McKinsey: automatyzacja może wypchnąć 400–800 mln miejsc pracy do 2030
- Do 375 mln pracowników (14% globalnej siły roboczej) będzie musiało zmienić zawód
- Branże najbardziej zagrożone: produkcja, logistyka, magazyny, transport

**Reakcje związków zawodowych:**

*Hyundai / Korea Południowa (styczeń 2026):*
> "Pod żadnym pozorem pracownicy nie zaakceptują tych planów, ponieważ wdrożenie robotów przyniesie ogromny szok zatrudnieniowy."
— Związki zawodowe Hyundai Motor Company

*Ogólna postawa związków zawodowych (wg Automotive World):*
- Związki silnie opierają się, ale obserwatorzy mówią wprost: trend jest nieodwracalny
- Unia ma ograniczone możliwości zatrzymania procesu
- Negocjują głównie o: tempie wdrożenia, programach przekwalifikowania, pakietach odejść

**Polityka UE:**
- Kilka krajów UE rozważa podatek od "robotyzacji" (zastępowania ludzi maszynami)
- Niemcy, Francja, Włochy: silne prawo pracy spowalnia, ale nie zatrzyma robotyzacji

**Argument firm:**
- Roboty przejmują zadania "zbyt monotonne, brudne lub niebezpieczne" dla ludzi
- BMW podkreśla: Figure 02 pracował OBOK ludzi, nie zamiast
- Ciągle potrzebni: operatorzy, nadzorcy, technicy serwisu

**Argument krytyków:**
- "Tym razem jesteśmy końmi" — analogia do koni, które straciły pracę na rzecz silników parowych (RethinkX)
- Przejście będzie "ekonomicznie bolesne bez aktywnej polityki publicznej"

---

## Cytaty

> "Six months of daily runtime yielded invaluable insights for our mechanical and reliability teams."
— Figure AI, oficjalny raport z BMW

> "The first successful deployment of humanoid robots in our Spartanburg plant proves that a humanoid robot can function not only in a controlled laboratory, but also in an existing automotive production environment."
— Michael Nikolaides, Senior VP BMW Group

> "Under no circumstances will workers welcome the plan, as the robot deployment will bring a huge employment shock."
— Związek zawodowy Hyundai Motor (Korea Południowa), styczeń 2026

> "Nvidia wants to be the Android of generalist robotics."
— TechCrunch, styczeń 2026

> "Figure AI was started in a phone booth in Palo Alto."
— Brett Adcock, założyciel Figure AI

---

## Liczby i dane

**Figure AI — firma:**
- Założona: maj 2022, Brett Adcock (wcześniej: Archer Aviation, Vettery)
- Siedziba: San Jose / Sunnyvale, CA
- Pracownicy: ~180 (wg danych 2025)
- Łączne finansowanie: 2,34 mld USD
- Wycena: 39 mld USD (wrzesień 2025, seria C)
- Inwestorzy: Jeff Bezos, Microsoft, NVIDIA, Intel, Amazon, OpenAI, Brookfield, Qualcomm, Salesforce, T-Mobile
- Seria A (maj 2023): 70 mln USD
- Seria B (luty 2024): 675 mln USD (przy wycenie 2,6 mld)
- Seria C (wrzesień 2025): ponad 1 mld USD

**Koszt robotów (2026):**
- Figure 02: ~90 000–100 000 USD/szt. (Zachód)
- Boston Dynamics Atlas: ~140 000–150 000 USD
- Tesla Optimus (cel docelowy): 20 000–30 000 USD
- Chiński ekwiwalent: ~35 000 USD
- Prognoza 2030: poniżej 17 000 USD

**Rynek w liczbach:**
- 2026: szacowane 50 000–100 000 sztuk humanoidów trafi do przemysłu (IDC/analitycy)
- Tesla: 1 000+ Optimus Gen 3 już w fabrykach (kwiecień 2026)
- Boston Dynamics / Hyundai: cel 30 000 robotów rocznie
- Figure BotQ (własna fabryka): cel 12 000 humanoidów rocznie

**ROI Figure 02 w BMW:**
- Oszczędności szacowane: ponad 1 mln USD rocznie
- Zwrot z inwestycji (przy cenie ~100k): 18–24 miesiące
- Zwrot z inwestycji (przy cenie ~30k): poniżej 14 miesięcy

**GR00T N1.7:**
- Parametry: 3 miliardy (3B)
- Dane treningowe: 20 000+ godzin nagrań ludzkich ruchów
- Licencja: Apache 2.0 (bezpłatna, komercyjna)
- Dostępność: Hugging Face, GitHub

---

## Potencjalne kąty pod short

**Kąt #1 — "Robot już pracuje w prawdziwej fabryce" (najsilniejszy)**
Hak: "Ten robot nie jest z przyszłości. Przez ostatnie 10 miesięcy codziennie szedł do pracy. Do fabryki BMW."
Kotwica komentarzowa: "Czy wiedziałeś, że twoje BMW może być już robione przez robota?"

**Kąt #2 — "NVIDIA rozdaje mózgi robotom za darmo"**
Hak: "NVIDIA właśnie wypuściło darmowy mózg dla robotów. Każda firma na świecie może go użyć od dziś."
Kotwica komentarzowa: "Jak myślisz — która branża zostanie zastąpiona pierwsza?"

**Kąt #3 — "30 000 samochodów — i nikt o tym nie mówi"**
Hak: "30 000 samochodów. Tyle zrobił jeden robot w ciągu roku. A ty się dowiadujesz o tym dopiero teraz."
Mocna kontrowersja — podkreśla skalę bez technicznych detali.

**Kąt #4 — "Związkowcy Hyundai: nie pozwolimy" (konflikt)**
Hak: "Związki zawodowe powiedziały: nie. Firmy mówią: i tak. Kto wygra?"
Kotwica komentarzowa: "Co byś wolał — praca przy robocie czy zasiłek bez robota?"

**Kąt #5 — "Ile kosztuje zastąpienie człowieka robotem?"**
Hak: "Robot kosztuje 100 000 dolarów. Pracownik na podobnym stanowisku kosztuje firmę więcej w ciągu 2 lat. Zrobiłem obliczenia."
Uwaga: wymaga ostrożności — nie fabrykować konkretnych liczb których nie mamy.

**Kąt #6 — "Od telefonu w budce do 39 miliardów"**
Hak: "Brett Adcock założył firmę w telefonie budce w Palo Alto. Dziś jest warta 39 miliardów dolarów. A jego robot właśnie skończył pierwszy rok pracy w BMW."
Kąt ludzki / start-up story — może słabszy dla kanału techniczno-newsowego.

**Rekomendacja:**
Kąt #1 lub #3 — najmocniejszy uderzenie dla widza nietechnicznego. Konkretna liczba (30 000 aut, 10 miesięcy, prawdziwa fabryka) robi robotę bez żadnego żargonu. Kąt #4 dodaje konflikt i komentarze organiczne.
