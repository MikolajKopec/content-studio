# OpenAI i Broadcom pokazali Jalapeño — własny chip AI w 9 miesięcy

**Data:** 2026-06-25
**Temat:** OpenAI ujawniło swój pierwszy własny procesor AI — specjalizowany układ do obsługi ChatGPT, zbudowany z Broadcomem w rekordowe 9 miesięcy, który ma obciąć koszty wnioskowania o połowę.

---

## Kluczowe fakty i liczby

- Jalapeño to **ASIC** (application-specific integrated circuit) — chip zaprojektowany wyłącznie pod LLM inference, nie pod trening modeli; produkowany przez TSMC
- Od projektu do tape-out: **9 miesięcy** — według OpenAI i Broadcomu najkrótszy cykl ASIC w historii układów HPC
- Cel kosztowy: obniżenie kosztu wnioskowania per token o **~50%** względem obecnych GPU NVIDIA (deklaracja OpenAI, bez niezależnych benchmarków)
- OpenAI traci rocznie **$20,9 mld** przy przychodach **$13,1 mld**; sama obsługa ChatGPT kosztuje szacunkowo **$8,4 mld rocznie** — to główny motyw budowy własnego krzemu
- Próbki inżynieryjne już działają, obsługując model **GPT-5.3-Codex-Spark** na docelowej częstotliwości i mocy
- Wdrożenie produkcyjne: **koniec 2026** (małe prototypy), pełna skala w **2027–2028**
- Chip nie będzie sprzedawany zewnętrznie — służy wyłącznie wewnętrznej infrastrukturze OpenAI
- NVIDIA nadal dostarczy sprzęt do treningu — Jalapeño zastępuje GPU tylko w jednej warstwie (inference)
- Broadcom's Tomahawk (1,6 Tb/s) zapewnia networking między chipami w klastrach
- Gigawatt-skalowe centra danych planowane wspólnie z Microsoft i partnerami do **2029**

## Architektura

**Reticle-size ASIC** oznacza chip wypełniający maksymalną możliwą powierzchnię kości (die), jaką TSMC może wyprodukować w jednym cyklu litograficznym — jest więc tak duży, jak to tylko możliwe dla danej technologii. To nie typ GPU ani CPU — Jalapeño ma jedną pracę i jest zoptymalizowany wyłącznie pod nią.

Kluczowe różnice względem GPU:
- GPU (np. NVIDIA H200/B200) obsługuje pełen wachlarz zadań AI — trening, inference, grafikę — przez co nosi "zbędny" bagaż logiki, której inference nie potrzebuje
- Jalapeño minimalizuje ruch danych między pamięcią a obliczeniami — to właśnie memory bottleneck jest największym wąskim gardłem przy obsłudze dużych modeli językowych
- Lepsza realizowana utylizacja vs. teoretyczne szczyty GPU — GPU rzadko pracuje na 100% przy inference

**AI-wspomagany design:** OpenAI użyło własnych modeli językowych do przyspieszenia prac nad projektem krzemowym — automatyzując części procesu symulacji i optymalizacji.

## Porównanie z konkurencją

| Chip | Typ | Producent | Zastosowanie | Status |
|------|-----|-----------|--------------|--------|
| Jalapeño | ASIC inference | Broadcom/TSMC | Tylko LLM inference | Samples 2026 |
| NVIDIA H200 | GPU ogólny | NVIDIA | Trening + inference | Produkcja |
| NVIDIA B200 (Blackwell) | GPU ogólny | NVIDIA | Trening + inference | Produkcja |
| Google TPU v5 | ASIC | Google | Trening + inference | Wewnętrzny |
| Amazon Trainium 2 | ASIC | AWS/Annapurna | Trening | Wewnętrzny |

Broadcom CEO Hock Tan: Jalapeño działa "na równi" z Blackwell GPU i Google TPU dla releventnych zadań — ale bez niezależnych benchmarków.

## Implikacje dla użytkownika / rynku

**Dla użytkownika ChatGPT:** bez bezpośredniego efektu krótkoterminowego — chip jest wewnętrzny. Jeśli obietnice kosztowe się sprawdzą, może przełożyć się na tańszy dostęp do API i ewentualnie niższe ceny planów.

**Dla OpenAI:** strategia żywotności biznesowej. Przy obecnych stratach firma nie może polegać wyłącznie na drogich GPU NVIDIA ($30 mld kontrakt). Własny krzem to jedyna droga do rentowności przy 900 mln tygodniowych użytkowników.

**Dla NVIDIA:** sygnał rynkowy. OpenAI dołącza do Google, Amazon i Apple na liście firm budujących własne układy, by zmniejszyć "podatek NVIDIA". NVIDIA zachowuje monopol na trening — ale inference to rosnący rynek.

**Dla rynku AI chips:** walidacja tezy, że ASICi przewyższają GPU dla wyspecjalizowanych zadań. Wzrost 9-miesięcznego cyklu sugeruje, że AI-wspomagany chip design może obniżyć barierę wejścia dla kolejnych graczy.

---

## Potencjalne kąty narracyjne do shorta

1. **"ChatGPT traci 20 miliardów rocznie — ten chip ma to naprawić"** — bezpośredni związek między stratami firmy a motywacją do budowy własnego krzemu; konkretna liczba, realne konsekwencje

2. **"9 miesięcy, gdzie inni potrzebują 3–4 lat — bo OpenAI użyło ChatGPT do zaprojektowania własnego chipa"** — paradoks: AI zaprojektowało swój własny silnik; kontrast czasowy jest uderzający

3. **"NVIDIA zarabia 75 centów z każdego dolara, OpenAI traci 1,60 — Jalapeño to odpowiedź na ten rachunek"** — zestawienie marż mówi wszystko; słuchacz od razu rozumie, kto na czym zarabia

4. **"Google zrobiło to 10 lat temu, Amazon 5 lat temu — OpenAI właśnie dołączyło do klubu firm z własnym krzemieniem"** — kontekstualizuje krok OpenAI jako spóźniony, ale konieczny; buduje napięcie "dlaczego tak późno?"

5. **"Ten chip nie jest na sprzedaż — kupisz go tylko w cenie tańszego ChatGPT"** — obala możliwe założenie widza, że to produkt konsumencki; definiuje realne znaczenie ogłoszenia

6. **"Jeden chip, jedna robota — to dlaczego bije GPU, który robi sto rzeczy naraz"** — tłumaczy w jednym zdaniu, czym jest ASIC i dlaczego wygrywa z GPU na inference, bez żadnego żargonu technicznego

7. **"50% taniej za każde pytanie do ChatGPT — jeśli ta liczba się sprawdzi, zmieni się cała ekonomia AI"** — cel kosztowy jako główna historia; "jeśli" zachowuje uczciwość wobec braku niezależnych benchmarków

---

## Źródła

- [OpenAI Blog — OpenAI and Broadcom unveil LLM-optimized inference chip](https://openai.com/index/openai-broadcom-jalapeno-inference-chip/) (primary)
- [Broadcom Investor Relations — press release](https://investors.broadcom.com/news-releases/news-release-details/openai-and-broadcom-unveil-llm-optimized-intelligence-processor) (primary)
- [TechCrunch — OpenAI unveils its first custom chip, built by Broadcom](https://techcrunch.com/2026/06/24/openai-unveils-its-first-custom-chip-built-by-broadcom/)
- [Tom's Hardware — Broadcom and OpenAI unveil custom-built Jalapeño inference processor](https://www.tomshardware.com/tech-industry/artificial-intelligence/broadcom-and-openai-unveil-custom-built-jalapeno-inference-processor-openais-first-chip-is-a-massive-reticle-sized-asic-built-in-an-ultra-fast-nine-month-development-cycle)
- [VentureBeat — OpenAI unveils first custom AI inference chip, Jalapeño](https://venturebeat.com/infrastructure/openai-unveils-first-custom-ai-inference-chip-jalapeno-with-broadcom-and-its-development-was-sped-up-with-openais-own-models)
- [SiliconANGLE — OpenAI, Broadcom debut custom Jalapeño chip for AI inference](https://siliconangle.com/2026/06/24/openai-broadcom-debut-custom-jalapeno-chip-llm-inference/)
- [AI News — Beyond the Nvidia Tax: The Strategy Behind the OpenAI Jalapeño Chip](https://www.artificialintelligence-news.com/news/openai-jalapeno-chip-inference-economics/)
- [BigGo Finance — OpenAI's Jalapeño Chip Heats Up AI Inference](https://finance.biggo.com/news/202606241621_OpenAI_Jalape%C3%B1o_Chip_AI_Inference)
