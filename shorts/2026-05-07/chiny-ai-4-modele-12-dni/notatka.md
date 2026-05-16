# Chiny wypuszczają 4 topowe modele kodowania w 12 dni — notatka badawcza

## Kluczowe fakty

- **GLM-5.1** (Z.ai / Zhipu AI) — premiera: **8 kwietnia 2026** (open-source)
- **MiniMax M2.7** (MiniMax) — premiera: **18 marca 2026** (open-source udostępniony publicznie ~12 kwietnia)
- **Kimi K2.6** (Moonshot AI) — premiera: **20 kwietnia 2026**
- **DeepSeek V4** (DeepSeek) — premiera: **24 kwietnia 2026** (preview)
- Okno 12 dni: od ~8 do ~20 kwietnia (GLM → Kimi), przy czym DeepSeek zamknął kwiecień 24 kwietnia
- Wszystkie 4 modele to open-weight (wagi dostępne publicznie) — żaden nie jest zamkniętym SaaS
- Wszystkie 4 twierdzą, że dorównują lub biją GPT-5.4 / Claude Opus 4.6 na benchmarkach kodowania
- Ceny API: 5–25x niższe niż Claude Opus czy GPT-5.5

### Benchmarki SWE-Bench Pro (najważniejszy benchmark kodowania agentowego)
| Model | SWE-Bench Pro | SWE-Bench Verified |
|-------|:---:|:---:|
| Kimi K2.6 | **58,6%** | 80,2% |
| GLM-5.1 | 58,4% | — |
| DeepSeek V4-Pro | ~58% | 80,6% |
| MiniMax M2.7 | 56,2% | 78% |
| GPT-5.4 (punkt odniesienia) | 57,7% | — |
| Claude Opus 4.6 (punkt odniesienia) | 57,3% | 80,8% |

Kimi K2.6 remisuje z GPT-5.5 na SWE-Bench Pro (58,6%) i wyprzedza Claude Opus 4.7 (53,4%).

### Ceny API (kwiecień 2026, USD za 1M tokenów)
| Model | Input | Output | Dla porównania |
|-------|:---:|:---:|:---:|
| DeepSeek V4-Flash | $0,14 | **$0,28** | ~1% ceny Claude |
| MiniMax M2.7 | $0,30 | $1,20 | najtańszy wśród top-4 |
| DeepSeek V4-Pro | $1,74 | $3,48 | 7x taniej niż Claude |
| GLM-5.1 | $1,00–1,40 | $3,20–4,40 | MIT, self-host=gratis |
| Kimi K2.6 | $0,95 | $4,00 | |
| **Claude Opus 4.7** | **$5,00** | **$25,00** | punkt odniesienia |
| **GPT-5.5** | ~$5,00 | ~$30,00 | punkt odniesienia |

Konkretny przykład: startup spalający 100M input + 10M output tokenów miesięcznie płaci ~$85 na Kimi K2.6 vs ~$2550 na Claude Opus 4.6.

---

## Szerszy kontekst

### Sankcje USA na chipy — jak to możliwe?

USA od 2022 roku stopniowo zakazują eksportu zaawansowanych chipów AI do Chin: najpierw A100, potem H100, w końcu H20. W teorii Chiny nie mają dostępu do najnowszego sprzętu Nvidii.

**Trzy odpowiedzi Chin:**

1. **Huawei Ascend 950PR** — DeepSeek V4 jako pierwszy model frontier zoptymalizowany pod chińskie chipy. V4 działa natywnie na Ascend 950PR (premiera Q1 2026), a Huawei planuje dostarczyć ~750 000 sztuk w tym roku. Chiński ekosystem chipów (Cambricon, Hygon, Moore Threads) osiągnął "Day 0 adaptation" przy premierze V4 — coś, co wcześniej było możliwe tylko z Nvidią.

2. **Efektywność architektoniczna** — DeepSeek V4-Pro używa tylko 27% mocy obliczeniowej poprzedniego V3.2 przy 10% zużycia pamięci KV cache. Modele MoE (Mixture-of-Experts) aktywują tylko część parametrów: GLM-5.1 ma 744B parametrów, ale używa 40B na raz; Kimi K2.6 ma 1B, ale używa 32B; DeepSeek V4-Pro ma 1,6B, ale używa 49B.

3. **Kontrowersje: przemyt i distylacja** — US officials twierdzą, że DeepSeek trenował na przemyconych chipach Nvidia Blackwell. Anthropic oskarżyło DeepSeek, MiniMax i Moonshot o przeprowadzenie ponad **16 milionów interakcji** z Claude przez ~24 000 fałszywych kont w celu wyciągnięcia wiedzy (distylacja na skalę przemysłową). MiniMax miał wygenerować ponad 13M z tych interakcji. OpenAI, Anthropic i Google zjednoczyli siły w Frontier Model Forum (kwiecień 2026), żeby walczyć z tym procederem.

### China's open-source bet

Według MIT Technology Review (kwiecień 2026): chińskie modele open-weight zdobyły 17,1% globalnych pobrań AI w sierpniu 2025 — po raz pierwszy bijąc udział USA (15,86%). Kraje od Singapuru po Malezję budują krajowe systemy AI na chińskich fundamentach. Alibaba Qwen ma więcej wariantów stworzonych przez użytkowników niż Google i Meta razem wzięte.

---

## Szczegóły techniczne / biznesowe

### GLM-5.1 (Z.ai / Zhipu AI)
- **Firma**: Zhipu AI / Z.ai — spin-off Tsinghua University, założony 2019, w Pekinie. W lipcu 2025 rebranding na Z.ai. IPO na giełdzie w Hongkongu 8 stycznia 2026 (ticker 02513.HK), wycena ~HK$52,8 mld — pierwsza na świecie spółka z modelem językowym notowana na giełdzie. Finansowanie od Alibaba, Tencent, Meituan, Ant Group, Xiaomi.
- **Architektura**: 744B parametrów MoE, 40B aktywnych, kontekst 200K tokenów, licencja MIT
- **Kluczowa cecha**: możliwość autonomicznej pracy do 8 godzin nad jednym zadaniem; najlepszy wynik w front-end agentowym kodowaniu
- **Twierdzenia**: nr 1 open-source na SWE-Bench Pro (58,4%) — powyżej GPT-5.4 (57,7%) i Claude Opus 4.6 (57,3%)
- **Cena API**: ~$1,00/$3,20 za 1M tokenów; self-hosting gratis (MIT)

### MiniMax M2.7 (MiniMax)
- **Firma**: MiniMax — założona 2021 w Szanghaju, CEO Yan Junjie. IPO w Hongkongu 9 stycznia 2026, akcje wzrosły 70% w debiucie, wycena powyżej HK$90 mld ($11,5 mld). Inwestorzy: Alibaba, Tencent, HongShan Capital.
- **Architektura**: 230B parametrów MoE, **tylko 10B aktywnych** (najtańszy inference w grupie), kontekst 205K tokenów
- **Kluczowa cecha "self-evolution"**: model sam optymalizował swój własny scaffold przez ponad 100 autonomicznych rund, osiągając 30% poprawę wyników. Potrafi obsługiwać 30–50% workflow reinforcement learning bez udziału człowieka.
- **Twierdzenia**: zbliżony do Claude Opus 4.6 na SWE-Pro (56,2%), bije go na SWE-bench Verified (78% vs 55%)
- **Cena API**: $0,30/$1,20 — najtańszy z grupy, 94% wydajności GLM-5.1 przy 1/5 kosztu

### Kimi K2.6 (Moonshot AI)
- **Firma**: Moonshot AI — założona marzec 2023 przez absolwentów Tsinghua (Yang Zhilin, Zhou Xinyu, Wu Yuxin). Siedziba w Pekinie. Zamknęła rundę Series D ~$2 mld, wycena powyżej $20 mld (rekord dla chińskiego startupu LLM). ARR wzrosło z $100M (marzec 2026) do $200M (kwiecień 2026) w ciągu 2 miesięcy.
- **Architektura**: 1 bilion parametrów MoE, 32B aktywnych, kontekst 256K tokenów, natywna multimodalność
- **Kluczowe cechy agentowe**: 300 równoległych sub-agentów, 4000+ kroków narzędziowych, 12+ godzin ciągłej pracy, "Claw Groups" — kolaboracja między agentami i ludźmi
- **Twierdzenia**: remis z GPT-5.5 na SWE-Bench Pro (58,6%), lider na HLE z narzędziami (54,0%); obecnie nr 3 najczęściej używany model AI na świecie wg liczby tokenów
- **Cena API**: $0,95/$4,00 — ~5–7x taniej niż GPT-5.5 ($5/$30)

### DeepSeek V4 (DeepSeek)
- **Firma**: DeepSeek — założona lipiec 2023 w Hangzhou przez Liang Wenfeng (założyciel funduszu hedgingowego High-Flyer). High-Flyer posiada ~90% spółki. Tylko ~200 pracowników. W maju 2026 prowadzi pierwszą rundę VC, potencjalna wycena $45 mld (wzrost z $20 mld w kilka tygodni), z udziałem Tencenta, Alibaby i chińskiego funduszu państwowego.
- **Architektura**: V4-Pro: 1,6B parametrów MoE, 49B aktywnych, kontekst 1M tokenów; V4-Flash: 284B parametrów, 13B aktywnych
- **Kluczowa cecha**: pierwsze frontier model zoptymalizowane pod Huawei Ascend 950PR; V4-Pro używa 27% mocy obliczeniowej V3.2 przy 10% zużycia pamięci KV
- **Benchmarki**: LiveCodeBench 93,5 (rekord), Codeforces 3206, SWE-Bench Verified 80,6%
- **Cena API**: V4-Flash $0,14/$0,28 (ok. 1% ceny Claude); V4-Pro $1,74/$3,48

---

## Potencjał contentowy

### Co jest najciekawsze dla widza niezainteresowanego branżą

**Hak emocjonalny 1: Skala i tempo**
4 kraje — nie, 4 firmy — nie, 4 laboratoria z jednego kraju, w 12 dni, wypuszczają modele, które biją lub remisują z GPT i Claude na kodowaniu. Miesiąc temu to był niemożliwy scenariusz. Teraz to fakt.

**Hak emocjonalny 2: Cena jako broń**
DeepSeek V4-Flash kosztuje $0,28 za milion tokenów. Claude Opus kosztuje $25. To dosłownie 1% ceny przy porównywalnej jakości kodowania. Firma, która płaciła $2550/mies. za Claude, może zapłacić $85 za Kimi K2.6. To nie jest optymalizacja — to zmiana rzędu wielkości.

**Hak emocjonalny 3: Sankcje vs. rzeczywistość**
USA przez 4 lata próbowało zablokować Chinom dostęp do chipów AI. Efekt: Chiny wyprodukowały Huawei Ascend 950PR i DeepSeek V4 — pierwszy model frontier działający na chińskim sprzęcie. Kontrsankcje nie zatrzymały wyścigu; może go przyspieszyły.

**Hak emocjonalny 4: Oskarżenia o kradzież**
Anthropic twierdzi, że MiniMax, DeepSeek i Moonshot — czyli 3 z 4 firm z tej historii — przeprowadziły 16 milionów "rozmów szpiegowskich" z Claude przez fałszywe konta, żeby skopiować jego zachowanie. OpenAI, Anthropic i Google tworzą wspólny front przeciwko nim. To nie jest sucha informacja technologiczna — to thriller technologiczny.

**Hak emocjonalny 5: MiniMax jako "samouczący się model"**
M2.7 sam optymalizował własny kod szkoleniowy przez ponad 100 autonomicznych rund. Model, który sam się doskonali. Dla widza niezainteresowanego branżą — to brzmi jak science fiction.

### Pytania do komentarzy (organiczne haki)
- "Używasz Clauda do kodowania? Czy zmieniłbyś na coś 25x tańszego z porównywalną jakością?"
- "Jak myślisz — czy sankcje na chipy miały sens, skoro Chiny i tak to zrobiły?"
- "Który z tych 4 modeli robi na tobie największe wrażenie?"

### Kontekst dla narracji
To nie jest "moment DeepSeek 2.0" — eksperci (CFR, MIT Tech Review) mówią, że V4 nie wywołał takiego szoku jak R1 w 2025. USA nadal prowadzi o ok. 6–7 miesięcy na poziomie frontier. Ale narracja zmieniła się fundamentalnie: **open-source z Chin jest teraz prawdziwą alternatywą dla zamkniętych modeli Zachodu**. Dla firmy płacącej za Claude Sonnet to nie jest kwestia patriotyzmu — to kwestia arkusza kalkulacyjnego.

---

## Źródła

- [LLM Coding Benchmark (April 2026): GPT 5.5, DeepSeek v4, Kimi v2.6 — AkitaOnRails.com](https://akitaonrails.com/en/2026/04/24/llm-benchmarks-parte-3-deepseek-kimi-mimo/)
- [The Late-April 2026 Chinese LLM Stack — DEV Community](https://dev.to/bean_bean/the-late-april-2026-chinese-llm-stack-qwen-36-deepseek-v4plus-kimi-k26-minimax-m27-glm-51-2bif)
- [Kimi K2.6 vs GLM 5.1 vs Qwen 3.6 Plus vs MiniMax M2.7 — Atlas Cloud Blog](https://www.atlascloud.ai/blog/guides/kimi-k2-6-vs-glm-5-1-vs-qwen-3-6-plus-vs-minimax-m2-7-coding-2026)
- [DeepSeek V4 Preview Release — DeepSeek API Docs](https://api-docs.deepseek.com/news/news260424)
- [DeepSeek V4: Features, Benchmarks, and Comparisons — DataCamp](https://www.datacamp.com/blog/deepseek-v4)
- [DeepSeek V4 vs Kimi K2.6 vs GLM-5.1: Full Comparison (2026) — AI Stack Choice](https://www.aistackchoice.com/deepseek-v4-vs-kimi-k2-6-vs-glm-5-1-2026-chinese-ai-showdown/)
- [MiniMax M2.7: Early Echoes of Self-Evolution — MiniMax](https://www.minimax.io/news/minimax-m27-en)
- [MiniMax Just Open Sourced MiniMax M2.7 — MarkTechPost](https://www.marktechpost.com/2026/04/12/minimax-just-open-sourced-minimax-m2-7-a-self-evolving-agent-model-that-scores-56-22-on-swe-pro-and-57-0-on-terminal-bench-2/)
- [Kimi K2.6 Explained: Moonshot AI's Open-Source Model That Ties GPT-5.5 on Coding — Miraflow](https://miraflow.ai/blog/kimi-k2-6-explained-moonshot-ai-open-source-model-ties-gpt-5-5-coding)
- [Kimi reportedly nears $2 billion funding round at over $20 billion valuation — TechNode](https://technode.com/2026/05/07/kimi-reportedly-nears-2-billion-funding-round-at-over-20-billion-valuation/)
- [GLM-5.1 Open Source: #1 on SWE-Bench Pro — ModemGuides](https://www.modemguides.com/blogs/ai-news/glm-5-1-open-source-benchmarks-local-ai)
- [Zhipu AI GLM-5.1 Disrupts the AI Landscape with 744B Open Weights — ML Hive](https://mlhive.com/2026/04/zhipu-ai-glm-5-1-744b-open-source-release)
- [Z.ai — Wikipedia](https://en.wikipedia.org/wiki/Z.ai)
- [DeepSeek launches 1.6T parameter V4 on Huawei chips — Tom's Hardware](https://www.tomshardware.com/tech-industry/artificial-intelligence/deepseek-launches-1-6-trillion-parameter-v4-on-huawei-chips-as-us-escalates-ai-theft-accusations)
- [DeepSeek V4 unveils, rock-bottom prices, Huawei chips — Fortune](https://fortune.com/2026/04/24/deepseek-v4-ai-model-price-performance-china-open-source/)
- [Three reasons why DeepSeek's V4 matters — MIT Technology Review](https://www.technologyreview.com/2026/04/24/1136422/why-deepseeks-v4-matters/)
- [China's open-source bet — MIT Technology Review](https://www.technologyreview.com/2026/04/21/1135658/china-open-source-models-ai-artificial-intelligence/)
- [DeepSeek V4 Signals a New Phase in the U.S.-China AI Rivalry — CFR](https://www.cfr.org/articles/deepseek-v4-signals-a-new-phase-in-the-u-s-china-ai-rivalry)
- [Anthropic joins OpenAI in flagging 'industrial-scale' distillation campaigns — CNBC](https://www.cnbc.com/2026/02/24/anthropic-openai-china-firms-distillation-deepseek.html)
- [OpenAI, Anthropic, Google Unite Against Chinese AI Model Copying — Bloomberg](https://www.bloomberg.com/news/articles/2026-04-06/openai-anthropic-google-unite-to-combat-model-copying-in-china)
- [DeepSeek reportedly seeks first funding at $45B valuation — TechCrunch](https://techcrunch.com/2026/05/06/deepseek-could-hit-45b-valuation-from-its-first-investment-round/)
- [Decoding DeepSeek V4: Huawei Ascend 950PR — TrendForce](https://www.trendforce.com/news/2026/04/07/news-decoding-deepseek-v4-how-huaweis-ascend-950-pr-is-powering-chinas-push-to-break-cuda-dependence/)
- [AINews: Moonshot Kimi K2.6 — Latent Space](https://www.latent.space/p/ainews-moonshot-kimi-k26-the-worlds)
- [DeepSeek could hit $45B valuation — TechCrunch](https://techcrunch.com/2026/05/06/deepseek-could-hit-45b-valuation-from-its-first-investment-round/)
- [MiniMax IPO jumps on Hong Kong debut — TechNode](https://technode.com/2026/01/09/mihoyo-backed-ai-firm-minimax-jumps-on-hong-kong-debut-market-value-tops-11-5-billion/)
