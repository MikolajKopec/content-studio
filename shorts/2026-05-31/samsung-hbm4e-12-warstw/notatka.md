# Samsung wysyła próbki HBM4E. 3,6 TB/s, sześć miesięcy przed SK Hynix

**Data:** 2026-05-31
**Temat:** Samsung jako pierwsza firma na świecie dostarczył 12-warstwowe próbki HBM4E klientom (Nvidia, AMD, Google), wyprzedzając SK Hynix o pół roku i prawdopodobnie zabezpieczając sobie pamięć w kolejnej generacji akceleratorów AI.

---

## Kluczowe fakty i liczby

- **29 maja 2026** Samsung rozpoczął wysyłkę pierwszych w branży 12-warstwowych próbek HBM4E do "głównych klientów" — branża wskazuje na **Nvidia, AMD i Google** (Samsung oficjalnie nazwisk nie potwierdził).
- Przepustowość: **3,6 TB/s na stack** (wzrost o ponad 20% vs. HBM4, który osiągał 11,7 Gbps/pin).
- Stabilna prędkość pinu **14 Gbps**, z możliwością skalowania do **16 Gbps** pod obciążeniem — Samsung podaje 16 Gbps jako szczytową specyfikację.
- Pojemność: **48 GB na stack** w konfiguracji 12-Hi (+**30%** vs. HBM4), z roadmapem na warianty **32 GB (8-Hi)** i **64 GB (16-Hi)**.
- Wydajność energetyczna lepsza o **16%**, rezystancja termiczna lepsza o ponad **14%** względem HBM4.
- Samsung wyprzedził SK Hynix o **co najmniej 6 miesięcy** — SK Hynix planuje próbki HBM4E na **H2 2026**, mass production dopiero w **2027**.
- Micron jest jeszcze dalej: jego HBM4E ma trafić do produkcji w **2027-2028**, we współpracy z TSMC dla logic die.
- Akcje Samsunga skoczyły o **5,84%** (intraday do 6,51%); kapitalizacja przekroczyła **2 015,75 bln KRW** (~**1,3 bln USD** / w przeliczeniu z akcjami uprzywilejowanymi ~**1,385 bln USD**) — 11. miejsce globalnie, tuż za Meta.
- HBM4 Samsunga ruszył na produkcji w **lutym 2026** — próbki HBM4E wyszły **3 miesiące** po starcie HBM4. Bezprecedensowe tempo iteracji.

## Specyfikacja techniczna

| Parametr | HBM4 (Samsung) | HBM4E (Samsung) | Zmiana |
|----------|----------------|------------------|--------|
| Pin speed (stabilna) | 11,7 Gbps | **14 Gbps** | +20% |
| Pin speed (peak) | 13 Gbps (target) | **16 Gbps** | +23% |
| Bandwidth/stack | ~2,8 TB/s | **3,6 TB/s** | +29% |
| Pojemność (12-Hi) | 36 GB | **48 GB** | +30% |
| Energy efficiency | baseline | **+16%** | — |
| Thermal resistance | baseline | **+14%** | — |
| Proces | 1c DRAM | **1c DRAM + 4nm logic die** | — |

Kluczowe: Samsung połączył pamięć (1c DRAM), foundry (4nm logic die) i advanced packaging w jednym "memory turnkey" — to przewaga konkurencyjna, której SK Hynix musi szukać u zewnętrznego foundry (TSMC).

## Porównanie z konkurencją

| Producent | Próbki HBM4E | Mass production | Udział rynku HBM (Q3 2025) |
|-----------|--------------|------------------|---------------------------|
| **Samsung** | **maj 2026** (już wysłane) | "Zsynchronizowana z klientami" | ~ud. mniejszy, ale rośnie |
| **SK Hynix** | H2 2026 (plan) | **2027** | **57%** (lider rynku) |
| **Micron** | 2027 | **2027-2028** | trzecie miejsce |

Według TrendForce HBM4E ma zająć **~40% całego rynku HBM w 2027**. Popyt na HBM ma rosnąć **+77% YoY w 2026** i **+68% w 2027**.

## Oś czasu

- **marzec 2026 (GTC)** — Samsung pokazuje fizyczny chip HBM4E na konferencji Nvidii.
- **luty 2026** — Samsung rusza z mass production HBM4 (jako pierwszy na świecie).
- **23 kwietnia 2026** — SK Hynix potwierdza próbki HBM4E w H2 2026, mass production w 2027.
- **29 maja 2026** — Samsung wysyła pierwsze próbki HBM4E (6 miesięcy przed pierwotnym planem).
- **2027** — Rubin Ultra (Nvidia) ma używać HBM4E w konfiguracji NVL576 (do **365 TB** łącznej pamięci).
- **2027-2028** — Micron dołącza do gry.

## Implikacje dla rynku GPU/AI

- Nvidia **Rubin/Rubin Ultra** (H2 2027) potrzebuje HBM4E — Samsung pozycjonuje się jako preferowany dostawca przez 6-miesięczny lead w qualification.
- AMD **MI400** (2026) jedzie na HBM4 (432 GB pamięci, 19,6 TB/s) — następna generacja **MI500** (2027) to oczywisty target dla HBM4E.
- Google **Ironwood TPU** wymieniany jako prawdopodobny klient.
- Lead w "qualification race" liczy się w miliardach USD — klienci podpisują kontrakty long-term zanim ruszy mass production. Sześć miesięcy przewagi oznacza pierwszeństwo w wyborze i wyższe marże.
- Samsung tradycyjnie traci do SK Hynix udziały w HBM (był poza Blackwellem). HBM4E to próba odwrócenia trendu i wejście do mainstreamu kolejnej generacji Nvidii.

## Reakcje rynkowe

- Akcje Samsunga: **+5,84%** na zamknięciu (do **317 000 KRW**), intraday do **+6,51%**.
- Kapitalizacja skoczyła powyżej **2 000 bln KRW** po raz pierwszy w historii. Samsung podwoił cap w **4 miesiące** (z 1 000 bln KRW pod koniec stycznia 2026).
- KB Securities podniósł target z **450 000 do 530 000 KRW**; topowe targety sięgają **570 000 KRW** — to implikuje cap rzędu **2,5 bln USD**.
- Drugi katalizator tego samego dnia: inwestycja Samsunga w Anthropic.

---

## Potencjalne kąty narracyjne do shorta

1. "Samsung wyprzedził SK Hynix o **pół roku** — i prawdopodobnie wygrał wyścig o pamięć w kolejnym Nvidii."
2. "**3,6 terabajta na sekundę**. Z jednego stacka. HBM4E od Samsunga właśnie pojechał do Nvidii, AMD i Google."
3. "Trzy miesiące temu Samsung ruszył HBM4. Teraz wysyła już próbki HBM4E. **48 GB na stack**. To tempo, którego rynek pamięci jeszcze nie widział."
4. "Samsung przebił **1,3 biliona dolarów** kapitalizacji w jeden dzień. Powód: trzy próbki pamięci pojechały do Nvidii."
5. "SK Hynix ma **57% rynku HBM**. Samsung właśnie zrobił coś, co może mu to zabrać — wysłał HBM4E **6 miesięcy przed nimi**."
6. "Akcelerator Rubin Ultra od Nvidii będzie miał **365 TB** pamięci HBM4E. Pytanie tylko czyjej. Dziś poznaliśmy odpowiedź."
7. "**+20% prędkości, +30% pojemności, +16% efektywności energetycznej**. HBM4E od Samsunga to nie iteracja — to wymuszenie tempa na całej branży."

---

## Źródła
- [Samsung Electronics Begins Shipment of Industry-First HBM4E Samples – Samsung Global Newsroom](https://news.samsung.com/global/samsung-electronics-begins-shipment-of-industry-first-hbm4e-samples)
- [Samsung Electronics Ships World's First HBM4E 12-High Samples – Seoul Economic Daily](https://en.sedaily.com/news/2026/05/29/samsung-unveils-worlds-first-hbm4e-12-high-sample)
- [Samsung Ships Industry-First HBM4E Samples: 3.6 TB/s Bandwidth Beats SK Hynix by Six Months – TechTimes](https://www.techtimes.com/articles/317400/20260530/samsung-ships-industry-first-hbm4e-samples-36-tb-s-bandwidth-beats-sk-hynix-six-months.htm)
- [Samsung's shares surge as much as 6% after company ships next-generation AI memory chip samples – CNBC](https://www.cnbc.com/2026/05/29/samsung-hbm4e-chip-samples-ai-memory.html)
- [Samsung Starts Shipping Industry-First HBM4E Samples 3 Months After HBM4 Ramp; Performance Up 20%+ – TrendForce](https://www.trendforce.com/news/2026/05/29/news-samsung-starts-shipping-industry-first-hbm4e-samples-three-months-after-hbm4-mass-production-performance-up-over-20/)
- [Samsung Electronics Breaks $1.3 Trillion Market Cap on First HBM4E Shipment – BigGo Finance](https://finance.biggo.com/news/7APyc54B-PfaobXf9oh8)
- [SK hynix to Ship HBM4E Samples in H2, Begin Mass Production in 2027 – Seoul Economic Daily](https://en.sedaily.com/finance/2026/04/23/sk-hynix-to-ship-hbm4e-samples-in-h2-begin-mass-production)
- [Samsung Unveils HBM4E at NVIDIA GTC 2026 – Samsung Semiconductor](https://semiconductor.samsung.com/news-events/news/samsung-unveils-hbm4e-showcasing-comprehensive-ai-solutions-nvidia-partnership-and-vision-at-nvidia-gtc-2026/)
- [Micron teams up with TSMC to deliver HBM4E, targeted for 2027 – Tom's Hardware](https://www.tomshardware.com/micron-hands-tsmc-the-keys-to-hbm4e)
- [Samsung ships first 12-layer HBM4E memory — and it's gunning for Nvidia's next GPU – Gagadget](https://gagadget.com/en/712845-samsung-ships-first-12-layer-hbm4e-memory-and-its-gunning-for-nvidias-next-gpu/)
