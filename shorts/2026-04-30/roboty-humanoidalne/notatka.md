# Roboty humanoidalne — notatka badawcza
**Data:** 2026-04-30
**Źródło wyjściowe:** Bloomberg, 2026-04-29 — "Why Humanoid Robots Will Soon Become the Ultimate AI Frontier"

---

## Kontekst ogólny

- Roboty humanoidalne to dwunożne maszyny zasilane oprogramowaniem AI — Bloomberg nazywa je "najbardziej namacalnym efektem rewolucji AI"
- W odróżnieniu od tradycyjnych robotów przemysłowych (stałe, wyspecjalizowane) — humanoidalne są elastyczne: jeden robot, wiele zadań
- Wyglądają jak ludzie, poruszają się jak ludzie, coraz częściej uczą się jak ludzie → stąd ambicja "maszyny ogólnego przeznaczenia" dla fabryk, magazynów i domów
- VC zainwestowało w humanoidalne startupy **6,1 mld USD w 2025** (wzrost o ponad 300% rok do roku, z 1,5 mld w 2024)
- Ogółem w robotykę w 2025 zainwestowano ~14 mld USD (rekord, więcej niż szczyt z 2021 — 13,1 mld)

---

## 1. Który robot jest najbardziej zaawansowany?

### Agility Robotics — Digit (USA)
- **Jedyny humanoid generujący przychody z komercyjnej pracy** (stan na kwiecień 2026)
- Wdrożony w magazynie GXO (sieć logistyczna) przy firmie SPANX w Atlancie — pierwsza komercyjna umowa RaaS (Robot-as-a-Service) w historii
- Przeniósł ponad **100 000 tacek (totes)** w rzeczywistym środowisku magazynowym
- Podpisane kontrakty z Toyota i Mercado Libre
- Fabryka RoboFab w Salem: zdolność produkcyjna **10 000 sztuk rocznie**
- Cena: ok. **250 000 USD** za jednostkę

### Figure AI — Figure 02 / AEON (USA)
- Pilot w fabryce BMW Spartanburg (11 miesięcy): załadował ponad **90 000 części**, przyczynił się do produkcji **30 000 samochodów BMW X3**
- Luty 2026: Figure AI i BMW rozszerzają program na Lipsk (Niemcy) — pierwszy humanoid w europejskim środowisku produkcyjnym
- Robot używany do: dostarczania materiałów na linie montażowe, omijania przeszkód, montażu akumulatorów wysokiego napięcia
- Fabryka BotQ: cel **12 000 sztuk rocznie**
- Finansowanie: prawie **2 mld USD** łącznie; runda C we wrześniu 2025 — ponad **1 mld USD** przy wycenie **39 mld USD**, prowadzona przez Nvidię
- Figure 02 oficjalnie wycofany; następcą jest **AEON**

### Apptronik — Apollo (USA)
- Wdrożony u Mercedes-Benz
- Luty 2026: runda **520 mln USD** (rozszerzenie serii A), łącznie ponad **935 mln USD**
- Wycena: ponad **5,5 mld USD** (trzykrotny wzrost względem poprzedniej rundy)
- Inwestorzy: Google, Mercedes-Benz, B Capital, AT&T Ventures, John Deere
- Produkcja przez kontrakt z Jabil (brak opublikowanych celów ilościowych)

### Unitree Robotics — G1, R1 (Chiny)
- G1: cena **13 500–16 000 USD** — najtańszy zaawansowany humanoid
- R1: lipiec 2025, cena **5 900 USD** — rekordowo tani
- Właśnie te roboty testuje Japan Airlines w Hanedzie (patrz sekcja 4)

### 1X Technologies — NEO (Norwegia)
- Październik 2025: przedsprzedaż konsumencka, cena **20 000 USD** lub **499 USD/mies.**
- Dostawy od 2026; potrafi: składać pranie, organizować półki, rozmawiać
- Skupiony na zastosowaniach domowych

### Boston Dynamics — Atlas elektryczny (USA)
- Powszechnie uważany za **najbardziej zaawansowany dynamicznie**
- Wdrożony w fabryce Hyundai w Georgii (Metaplant) do pracy produkcyjnej
- Niedostępny komercyjnie szeroko — własny ekosystem Hyundai

---

## 2. Tesla Optimus — aktualny status

- Styczeń 2026: Elon Musk przyznał, że **zero** robotów Optimus robiło "użyteczną pracę" w fabrykach Tesli (nie osiągnięto celu 10 000 sztuk z 2025)
- 21 stycznia 2026: oficjalny start masowej produkcji **Optimus Gen 3** w fabryce Fremont
- Kwiecień 2026 (Q1 earnings): masowa produkcja w Fremont ruszyć ma po zakończeniu produkcji Model S/X (wczesny maj 2026); prawdziwe wdrożenie autonomiczne planowane Q2–Q3 2026
- Druga fabryka: budowa przy Giga Texas, start produkcji **lato 2027**, docelowa zdolność **10 mln sztuk rocznie**
- Sprzedaż konsumencka: target **koniec 2027**
- Docelowa cena: **20 000–30 000 USD**
- Główny problem: ponad 10 000 unikalnych komponentów — żaden nie ma jeszcze doświadczenia masowej produkcji
- Superkomp. Cortex 2.0 (Giga Texas): **250 MW** (faza 1, kwiecień 2026), **500 MW** docelowo do połowy 2026 — żadna inna firma robotyczna nie ma podobnej infrastruktury treningowej

---

## 3. Boston Dynamics Atlas elektryczny — co potrafi i czym różni się od hydraulicznego

### Kluczowe różnice techniczne

| Cecha | Hydrauliczny Atlas | Elektryczny Atlas |
|---|---|---|
| Napęd | Hydraulika (siłowniki cieczowe) | Elektryczne siłowniki |
| Stopnie swobody | ~28 | **56** (prawie 3x więcej) |
| Zasięg rąk | Ograniczony | Do **7,5 stopy (~2,3 m)** |
| Udźwig | Ograniczony | Do **110 funtów (~50 kg)** |
| Obrót stawów | Częściowy | Pełne 360° w wielu stawach |
| Głośność | Głośna (pompy hydrauliczne) | Cicha |
| Konserwacja | Złożona (układ płynów) | Prostsze, tańsze |
| Efektywność | Niska | Wysoka |

### Możliwości elektrycznego Atlasa
- Rozpoznaje wagę i tarcie przedmiotów przez fingertips (haptyka) — może wykonywać manipulacje "na ślepo"
- Sterowanie: architektura **Diffusion Transformer (450 mln parametrów)** tworzona we współpracy z Google DeepMind
- Poprzednia wersja: Model Predictive Control (MPC) i ręcznie projektowane rutyny fizyczne
- Wdrożony w: fabryce Hyundai Metaplant w Georgii (realny montaż pojazdów)
- CES 2026: Boston Dynamics zapowiedziało szerszą produkcję i dostawy w 2026

---

## 4. Lotnisko Haneda — szczegóły testów

- **Kto:** Japan Airlines (JAL) + GMO AI & Robotics (jednostka GMO Internet Group)
- **Kiedy:** od maja 2026, próba trwa **2–3 lata** z fazowymi ewaluacjami
- **Gdzie:** płyta lotniska Haneda (Tokyo), strefa obsługi naziemnej
- **Jakie roboty:** Unitree Robotics — humanoid ok. **130 cm wzrostu**
- **Liczba robotów:** 2 w fazie startowej

### Zadania w fazie 1
- Transportowanie kontenerów bagażowych
- Otwieranie/zamykanie dźwigni zabezpieczających kontenery
- Pchanie bagażu na taśmę przenośnikową przy samolocie
- Sygnalizowanie gestami dla personelu naziemnego

### Planowane rozszerzenie
- Sprzątanie kabin samolotów

### Specyfikacja techniczna robotów
- Sensory: LiDAR 3D + kamery głębi
- Autonomia: **2–3 godziny** na jednym ładowaniu

### Kontekst i przyczyny
- Japonia: rekordowa turystyka — **42,7 mln odwiedzających w 2025**, już **7 mln w samych dwóch pierwszych miesiącach 2026**
- Starzejące się społeczeństwo + kurczący się rynek pracy → przewlekły brak pracowników w lotnictwie
- Cel: stałe wdrożenie robotów po sukcesie prób

---

## 5. Ile kosztuje robot humanoidalny? Kiedy masowa produkcja?

### Aktualne ceny (2026)

| Robot | Producent | Cena |
|---|---|---|
| Unitree R1 | Unitree (Chiny) | **5 900 USD** |
| Unitree G1 | Unitree (Chiny) | **13 500–16 000 USD** |
| 1X NEO | 1X Technologies (Norwegia) | **20 000 USD** / 499 USD mies. |
| Optimus (docelowo) | Tesla (USA) | **20 000–30 000 USD** |
| Fourier GR-1 | Fourier Intelligence (Chiny) | **150 000–170 000 USD** |
| Digit | Agility Robotics (USA) | **~250 000 USD** |
| Zaawansowane modele przemysłowe | różni | do **1 mln USD+** |

### Prognozy cenowe
- 2028: ok. **150 000 USD** dla klasy przemysłowej
- 2050: ok. **50 000 USD**
- Rynek globalny do 2050: **5 bilionów USD** (prognoza Morgan Stanley)

### Masowa produkcja — kiedy?
- **Już trwa:** Agility (10 000/rok), Figure BotQ (12 000/rok)
- **2026:** Tesla Fremont rusza z seryjną produkcją Optimus Gen 3; Xpeng Iron (Chiny) — masowa produkcja
- **2027:** Tesla Giga Texas — pełna skala
- **Dalej:** Tesla deklaruje zdolność 10 mln sztuk rocznie docelowo

---

## 6. Inwestycje — kto i ile

| Firma | Łączne finansowanie | Kluczowa runda | Inwestorzy |
|---|---|---|---|
| Figure AI | ~3 mld USD | 1 mld USD (sept. 2025, wycena 39 mld) | Nvidia, inni |
| Apptronik | 935 mln USD | 520 mln USD (luty 2026, wycena 5,5 mld) | Google, Mercedes, B Capital, AT&T Ventures, John Deere |
| 1X Technologies | brak danych | — | Sam Altman (OpenAI), Tiger Global |
| Agility Robotics | brak danych | — | Amazon (właściciel) |

### Trend rynkowy
- **2025: 6,1 mld USD** w humanoidalne startupy — wzrost o **300%+ r/r**
- **2024:** 1,5 mld USD
- **2025 ogółem robotyka:** ~14 mld USD (rekord wszech czasów)
- VC funding dla humanoidów: **139 transakcji w 2025**

---

## 7. Co to znaczy "uczony przez LLM" — jak to działa w praktyce

### Dwa poziomy działania robota

**Poziom 1 — LLM jako "mózg" strategiczny (planowanie):**
- LLM (np. GPT-klasy model) dostaje opis zadania w języku naturalnym: "włóż tę część do skrzynki"
- LLM planuje sekwencję kroków, dobiera wcześniej nauczone "umiejętności motoryczne" do nowego kontekstu
- Wynik: robot może wykonywać zadania, których nigdy wcześniej nie widział (zero-shot generalizacja)
- LLM generuje polecenia Python wywoływane w pętli: percepcja → decyzja → ruch → obserwacja → następny krok

**Poziom 2 — Imitation Learning (nauka przez naśladowanie ruchów człowieka):**
- Człowiek ubiera egzoszkielet lub teleoperuje robotem — robot nagrywa każdy ruch
- Dane (trajektorie, siły, obrazy z kamer) trafiają do treningu sieci neuronowej
- Robot uczy się kopiować precyzję ludzkich ruchów bez ręcznego programowania
- Framework: Hugging Face LeRobot — pipeline od zbierania danych teleop → standaryzowane datasety → trening Diffusion Policy / VLA

**Najważniejsza architektura w 2026:**
- **Diffusion Transformer** — Boston Dynamics Atlas korzysta z modelu 450 mln parametrów (we współpracy z Google DeepMind)
- **Behavior Cloning** — używany w ok. połowie systemów
- **Model Predictive Control (MPC)** — najczęstsze źródło danych treningowych dla zaawansowanych systemów imitacyjnych

**Praktyczny efekt:**
- Robot może "na ślepo" wyczuć wagę i teksturę przedmiotu przez palce (haptyka) — tak jak Atlas elektryczny
- Adaptacja do nowych środowisk bez przeprogramowania — wystarczy nowy opis zadania w języku naturalnym

---

## Źródła

- [Bloomberg — Why Humanoid Robots Will Soon Become the Ultimate AI Frontier (2026-04-29)](https://www.bloomberg.com/news/articles/2026-04-29/why-humanoid-robots-will-soon-become-the-ultimate-ai-frontier)
- [Japan Times — JAL humanoid robot use airport (2026-04-28)](https://www.japantimes.co.jp/business/2026/04/28/companies/jal-humanoid-robot-use-airport/)
- [eWeek — Japan Airlines Humanoid Robots Haneda Airport](https://www.eweek.com/news/japan-airlines-humanoid-robots-haneda-airport-apac/)
- [Electrek — Tesla Optimus Production Fremont (2026-04-22)](https://electrek.co/2026/04/22/tesla-optimus-production-fremont-model-sx-line/)
- [programming-helper.com — Tesla Optimus Gen3 Production 2026](https://www.programming-helper.com/tech/tesla-optimus-gen3-production-deployment-2026-factory-robots-revolution)
- [Boston Dynamics — An Electric New Era for Atlas](https://bostondynamics.com/blog/electric-new-era-for-atlas/)
- [automate.org — CES 2026: Boston Dynamics Atlas](https://www.automate.org/robotics/industry-insights/boston-dynamics-to-begin-production-on-redesigned-atlas-humanoid-in-2026)
- [Figure AI — Production at BMW](https://www.figure.ai/news/production-at-bmw)
- [BMW Group — Humanoid robot Leipzig (2026)](https://www.bmwgroup.com/en/news/general/2026/humanoid-robot-in-leipzig.html)
- [Apptronik — $520M raise (TechCrunch)](https://techcrunch.com/2026/02/11/humanoid-robot-startup-apptronik-has-now-raised-935m-at-a-5b-valuation/)
- [Agility Robotics — Digit 100k totes](https://www.agilityrobotics.com/content/digit-moves-over-100k-totes)
- [PitchBook — VC humanoid robotics funding 300%](https://pitchbook.com/news/articles/apptronik-raises-520m-as-vc-funding-for-humanoid-robotics-explodes-300)
- [Morgan Stanley — Humanoid Robot Market $5T by 2050](https://www.morganstanley.com/insights/articles/humanoid-robot-market-5-trillion-by-2050)
- [Humanoid Index — Pricing 2026](https://humanoidindex.org/pricing)
- [NVIDIA Glossary — Imitation Learning](https://www.nvidia.com/en-us/glossary/imitation-learning/)
