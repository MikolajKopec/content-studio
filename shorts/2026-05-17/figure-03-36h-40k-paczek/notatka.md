# Figure 03 przepakował 40 000 paczek non-stop przez 36 godzin

**Data:** 2026-05-17
**Temat:** Humanoidalny robot Figure 03 sterowany modelem Helix 02 przekroczył planowane 8 godzin demo i pracował **ponad 36 godzin non-stop**, przetwarzając **ponad 40 000 paczek** w symulacji centrum logistycznego. Stream stał się viralowym wydarzeniem branży, a wycena Figure AI dobiła **39 mld dolarów**.

---

## Kluczowe fakty i liczby

- **36+ godzin** ciągłej autonomicznej pracy zamiast planowanych **8 godzin** — demo startujące 14 maja 2026 zostało przedłużone na żywo, bo roboty po prostu nie padły. Według późniejszych raportów stream poszedł dalej i osiągnął **72 godziny / 88 000 paczek** zanim ekipa go zatrzymała.
- **40 000+ paczek** przetworzonych w ciągu 36 godzin → **~1 111 paczek/godz.** na flotę. Po 40h licznika ekipa miała już ~50 000 paczek.
- **~3 sekundy na paczkę** — czyli parytet z człowiekiem. Brett Adcock (CEO Figure) sam to przyznał: ludzki sortowacz w Amazon/InPost robi paczkę średnio w 3 sekundy.
- **Trzy roboty Figure 03** (widzowie streamu nadali im imiona **Bob, Frank, Gary** — Figure dopiął im na pierś naszywki z imionami) pracowały w trybie zmianowym z autonomicznym ładowaniem.
- **Zero awarii w pierwsze 24h** — Adcock w live: *"This is uncharted territory. We haven't had a failure yet, but statistically we probably will at some point."*
- **109 000 linii kodu C++** zastąpione przez **jedną sieć neuronową Helix 02** trenowaną na **1000+ godzinach danych o ruchu człowieka**.
- **39 mld USD** — wycena Figure AI po rundzie Series C zamkniętej we wrześniu 2025 (lead: Parkway VC, w rundzie m.in. NVIDIA, Intel Capital, Brookfield, Salesforce, T-Mobile, Qualcomm). **15x wzrost wyceny w 18 miesięcy**.
- **350+ jednostek F.03 dostarczonych** — Figure podkręciła produkcję z 1 sztuki dziennie do **1 sztuki na godzinę** w 120 dni.

---

## Specyfikacja techniczna: Figure 03 + Helix 02

**Hardware Figure 03 (premiera październik 2025):**
- Wzrost ~173 cm, waga **61 kg** (9% lżejszy od Figure 02), udźwig **20 kg**.
- **20 stopni swobody w dłoniach** — czujniki w opuszkach palców wykrywają **3 gramy nacisku** (waga spinacza biurowego).
- **5h pracy na baterii F.03**, ładowanie indukcyjne (cewki w stopach, stoisz na ładowarce — robot się ładuje 2 kW bezprzewodowo).
- Kamery: **2x szybsze, 1/4 latencji, +60% pola widzenia** vs F.02. Dodatkowa kamera w każdej dłoni.
- Cena szacowana ~**130 tys. USD** dla zastosowań komercyjnych (wersja konsumencka ~20 tys. USD planowana na koniec 2026).

**Helix 02 (model AI):**
- **VLA (Vision-Language-Action)** — jeden zunifikowany model neuronowy łączący widzenie, dotyk, proprioceptę i kontrolę całego ciała.
- **System 0** — nauczony kontroler whole-body, zamiast ręcznie kodowanej lokomocji.
- **Inferencja onboard** — zero zależności od chmury, robot myśli lokalnie.
- Wejścia: kamery głowy + kamery dłoni + czujniki dotyku w palcach + proprioceptywne pomiary całego ciała.

---

## Sceptycyzm: czy to faktycznie autonomia, czy PR-stunt?

- Ekspertka robotyki **Ayanna Howard** określiła pokaz bardziej jako **"science project"** niż gotowy produkt — punktowała niedokładność w umiejscawianiu paczek.
- TechRadar: *"not everyone is convinced it was fully real"* — pytania o to, czy roboty radziły sobie z błędami autonomicznie czy wymagały interwencji ludzi off-stream.
- Z danych NenPower wynika, że **doszło do incydentów rozsypania paczek** wymagających interwencji człowieka — ale Figure twierdzi, że to były operacje "reset", a nie korekta robota.
- Helix 02 ma jednak **autonomous reset capability** kiedy polityka wychodzi out-of-distribution — sieć potrafi sama się wycofać i spróbować ponownie.

---

## Porównanie z konkurencją (stan na maj 2026)

| Robot | Status | Cena | Atut |
|---|---|---|---|
| **Figure 03** | Pilot w BMW, demo 36h | ~$130K | Helix 02 (VLA), realny track record |
| **Tesla Optimus Gen 3** | Cel 10 tys. sztuk 2026 (poślizg) | ~$20K | 50 aktuatorów w dłoniach, AI5 chip |
| **1X Neo** | Konsumencki, preordery | $20K (lub $499/mc) | Pierwszy na rynek domowy USA |
| **Unitree H1/H2** | Komercyjny | $90K | Najtańsza opcja przemysłowa |

Figure ma **realny deployment u BMW** (10-godzinne zmiany, **90 000+ części** przeniesionych, wsparcie produkcji **30 000+ pojazdów**). Tesla i 1X to wciąż w dużej mierze demo i obietnice.

---

## Polski kontekst: InPost, Allegro, DHL

- **Rafał Brzoska (CEO InPost)** publicznie prognozuje humanoidy w polskich domach **w ciągu 5 lat** — argumentem jest demografia i brak chętnych do prostych prac.
- **InPost CAPEX 2026 = 2,4 mld PLN** (rekord), 60% na rozbudowę paczkomatów + AI/automatyzacja.
- InPost już testuje **autonomiczne punkty odbioru bez personelu** we Francji i Włoszech, **paczkomaty z rozpoznawaniem twarzy** w UK.
- **Pytanie:** czy magazyn sortowniczy InPostu w Wieliczce za 2-3 lata będzie obsługiwany przez 50 Figure 03 zamiast 300 ludzi? Koszt robota ~130 tys. USD amortyzuje się na ~2 lata pracy 24/7 vs koszt pracownika w PL ~6 tys. PLN/mc.
- Allegro/DHL Polska — najbardziej narażeni operatorzy logistyczni. Jeśli Helix 02 osiąga parytet z człowiekiem 3s/paczka **dziś**, za rok jest 2x szybszy.

---

## Implikacje dla rynku pracy

- Sortowanie paczek w centrum dystrybucyjnym to **dokładnie ten typ pracy** który humanoidy zjedzą jako pierwszy: powtarzalny, w zamkniętym środowisku, mierzalny output.
- USA: ~1,5 mln osób pracuje w warehouse fulfillment. Polska: ~250 tys. (InPost, Allegro, Amazon, DHL, DPD).
- Adcock w wywiadach: roadmapa Figure to **"robot buduje robota"** w 24 miesiące → koszt jednostkowy spadnie do ~20 tys. USD do 2028.
- Przy ROI **<12 miesięcy** vs człowiek pracujący 8h/dzień, sektor logistyczny ma **finansowy obowiązek** wdrożyć roboty kiedy tylko będą gotowe.

---

## Potencjalne kąty narracyjne do shorta

1. **"Robot pracował 36 godzin non-stop. Bez przerwy na siku, bez kawy, bez narzekania. 40 000 paczek."** — twardy hook z konkretnymi liczbami, kontrast z ludzką pracą.
2. **"Figure AI planowało 8 godzin demo. Robot nie chciał się zatrzymać. Skończył po 36 godzinach."** — narracja o robocie który "wymknął się spod kontroli" w pozytywnym sensie.
3. **"3 sekundy. Tyle robot Figure 03 potrzebuje na jedną paczkę. Tyle samo, co człowiek. Z jedną różnicą — robot nie idzie do domu."** — punchline o parytecie + niezmęczeniu.
4. **"Roboty dostały imiona od widzów streamu: Bob, Frank, Gary. Za 5 lat takie roboty mogą sortować twoją paczkę w InPoście."** — humanizacja + Polski hook.
5. **"Brzoska z InPostu mówi: humanoidy w polskich domach za 5 lat. Figure właśnie pokazało, że są gotowe. Wycena firmy? 39 miliardów dolarów."** — biznesowy wymiar, Brzoska jako autorytet.
6. **"Jedna sieć neuronowa zastąpiła 109 000 linii kodu. Teraz ten robot pracuje 36h bez snu w magazynie Amazon."** — angle techniczny.
7. **"Robot kosztuje 130 tys. dolarów. Pracownik magazynu w Polsce — 6 tys. zł miesięcznie. Policz sobie, kiedy roboty zastąpią ludzi."** — brutalna ekonomia, kalkulacja ROI dla viewera.

---

## Źródła

- [AI Robot Moves Over 40,000 Packages in 36 Hours (NenPower)](https://nenpower.com/blog/ai-robot-moves-over-40000-packages-in-36-hours-sparking-debate-on-the-future-of-human-jobs-in-logistics/)
- [Figure AI Helix-02 Robots Complete Full 8-Hour Shifts (TechTimes)](https://www.techtimes.com/articles/316632/20260514/figure-ais-helix-02-robots-complete-full-8-hour-autonomous-shifts-humanoid-race-intensifies.htm)
- [Figure AI's Robots Work 17-Hour Shift, Sort 22,000 Packages (eWeek)](https://www.eweek.com/news/figure-helix-robots-22000-packages/)
- [Figure AI streamed humanoid robots sorting packages — skepticism (TechRadar)](https://www.techradar.com/ai-platforms-assistants/figure-ai-streamed-humanoid-robots-sorting-packages-for-8-hours-straight-and-not-everyone-is-convinced-it-was-fully-real)
- [Helix-02 humanoid robot handles full 8-hour factory work shifts (Interesting Engineering)](https://interestingengineering.com/ai-robotics/figure-helix02-humanoid-robots-8-hour-shifts)
- [Figure's F.03 Humanoids Run 24 Hours Without a Failure (Glitchwire)](https://glitchwire.com/news/figures-f03-humanoids-run-24-hours-without-a-failure-stream-viewers-named-them/)
- [Figure AI humanoid robots sort 88,000 packages in 72 hours (CryptoBriefing)](https://cryptobriefing.com/figure-ai-humanoid-robots-sort-packages/)
- [Figure Exceeds $1B in Series C Funding at $39B Valuation (Intel Capital)](https://www.intelcapital.com/figure-exceeds-1b-in-series-c-funding-at-39b-post-money-valuation/)
- [Figure 03 Robot Specs (Humanoid.guide)](https://humanoid.guide/product/figure-03/)
- [Introducing Figure 03 (Figure AI blog)](https://www.figure.ai/news/introducing-figure-03)
- [Rafał Brzoska prognozuje humanoidy w naszych domach (Rzeczpospolita)](https://cyfrowa.rp.pl/technologie/art43983801-rafal-brzoska-prognozuje-humanoidy-w-naszych-domach-za-piec-lat)
- [InPost chce testować humanoidy (Strefa Biznesu)](https://strefabiznesu.pl/humanoidy-albo-roboty-zagoszcza-w-naszych-domach-i-nie-tylko-inpost-chce-testowac-takie-rozwiazania/ar/c3p2-28828375)
