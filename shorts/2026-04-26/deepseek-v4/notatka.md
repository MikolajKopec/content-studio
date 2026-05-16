# DeepSeek V4 — notatka badawcza

## Kluczowe fakty

- **Data premiery:** 24 kwietnia 2026 — oba modele (V4-Pro i V4-Flash) dostępne od razu przez API i jako open weights (MIT license) na Hugging Face
- **Dwa modele:** V4-Pro (flagship) i V4-Flash (tańszy, szybszy)
- **V4-Pro:** 1,6 biliona parametrów ogółem, 49 mld aktywnych na token — największy model open-source na świecie (większy niż Kimi K2.6 z 1,1T i ponad 2x większy od poprzedniego DeepSeek V3.2 z 685B)
- **V4-Flash:** 284 mld parametrów ogółem, 13 mld aktywnych na token
- **Kontekst:** oba modele obsługują okno kontekstowe 1 miliona tokenów
- **Architektura:** Mixture-of-Experts (MoE) — tylko część ekspertów aktywowana per token
- **Trening V4-Pro:** 33 biliony tokenów, FP4 quantization-aware training dla wag ekspertów
- **Optimizer:** Muon (zamiast AdamW) — szybsza konwergencja i stabilność przy 1,6T parametrach
- **KV cache:** V4-Pro używa tylko 10% KV cache w porównaniu do V3.2 przy kontekście 1M tokenów
- **Obliczenia:** V4-Pro wymaga tylko 27% FLOPs pojedynczego tokena w porównaniu do V3.2 przy kontekście 1M — radykalna poprawa efektywności
- **Chipy:** trenowany na Huawei Ascend 910B/910C i Cambricon — bez Nvidii
- Reakcja rynkowa spokojna: akcje Nvidii poszły w górę +4,32% (vs -17% przy premierze R1 rok wcześniej)

---

## Benchmarki i porównania

### Ranking ogólny (Artificial Analysis Intelligence Index)
| Model | Wynik |
|-------|-------|
| GPT-5.5 | 60 |
| Claude Opus 4.7 | 57 |
| Gemini 3.1 Pro | 57 |
| DeepSeek V4-Pro | 52 |
| Poprzednik V3.2 | 42 |

### Kodowanie — SWE-bench Verified (agentowe naprawianie bugów)
| Model | Wynik |
|-------|-------|
| Claude Opus 4.7 | 64,3% |
| GPT-5.5 | 58,6% |
| DeepSeek V4-Pro | 55,4% |
| Claude Opus 4.6 | 80,6%* |
| DeepSeek V4-Pro | 80,6%* |

*Różne edycje benchmark — V4-Pro vs Claude Opus 4.6 to różnica 0,2 punktu na SWE-bench Verified (starszym)

### LiveCodeBench (competitive programming)
| Model | Wynik |
|-------|-------|
| DeepSeek V4-Pro | 93,5% |
| DeepSeek V4-Flash | 91,6% |
| Claude Opus 4.6/4.7 | 88,8% |

### Terminal-Bench 2.0 (real-world agentic coding)
| Model | Wynik |
|-------|-------|
| GPT-5.5 | 82,7% |
| Claude Opus 4.7 | 69,4% |
| DeepSeek V4-Pro | 67,9% |
| Claude Opus 4.6 | 65,4% |

### Matematyka
- **HMMT 2026:** Claude 96,2%, GPT-5.4 97,7%, V4-Pro 95,2%
- **IMOAnswerBench:** V4-Pro 89,8, GPT-5.4 91,4, Claude 75,3, Gemini 81,0

### Wnioski z benchmarków
Według Simona Willisona (cenionyanalityk AI): V4 plasuje się mniej więcej 3–6 miesięcy za aktualnym state-of-the-art. Dla zadań koderskich i cost-sensitive workloads — model naprawdę konkurencyjny. Dla niuansowanego rozumowania i reliability enterprise — GPT-5.x i Claude nadal prowadzą.

---

## Ceny — zestawienie

### Output (per 1 mln tokenów)
| Model | Cena output | Cena input |
|-------|-------------|------------|
| GPT-5.5 (OpenAI) | $30,00 | $5,00 |
| Claude Opus 4.7 (Anthropic) | $25,00 | $5,00 |
| Gemini 3.1 Pro (Google) | ~$20–25 | ~$3–5 |
| DeepSeek V4-Pro | **$3,48** | $1,74 |
| DeepSeek V4-Flash | **$0,28** | $0,14 |

### Podsumowanie dysproporcji
- V4-Pro jest ~7x tańszy od Claude Opus 4.7 i ~8-9x tańszy od GPT-5.5
- V4-Flash jest najtańszym modelem w klasie "małych flagship" — bije GPT-5.4 Nano, Gemini 3.1 Flash, Claude Haiku 4.5
- Przy cached input dysproporcja rośnie do ~10x na korzyść DeepSeek
- MIT license = możliwość samodzielnego hostowania → koszty mogą spaść jeszcze bardziej

---

## Chiński chip — Huawei Ascend 910C

### Specyfikacja techniczna
- **Pamięć:** 128 GB HBM3 (vs 80 GB w H100) — więcej niż H100!
- **Bandwidth:** 3,2 TB/s
- **Moc:** ~310W
- **Wydajność FP16:** 320 TFLOPS
- **Tranzystory:** ~53 mld, chiplet packaging
- **Proces:** SMIC N+2 (7nm-class, 2nd Gen)
- **Wydajność vs H100:** 60% przy inferencji wg badań DeepSeek (potwierdzono przez Tom's Hardware)

### Huawei CloudMatrix 384 (superklaster)
- 384 x Ascend 910C
- 300 petaFLOPs BF16 — **dwukrotnie więcej niż GB200 NVL72** (~150 petaFLOPs)
- 49,2 TB pamięci HBM — 3,6x więcej niż GB200 (13,8 TB)
- 1229 TB/s bandwidth — ponad 2x więcej niż GB200 (576 TB/s)
- Na poziomie systemu: pewne metryki bijące konfiguracje Nvidii

### Geopolityczne znaczenie
- **Kontekst regulacyjny:** Nvidia H100/H200 są objęte restrykcjami eksportowymi USA do Chin — DeepSeek nie może legalnie kupować nowych chipów Nvidii w wystarczającej skali
- DeepSeek V4 to pierwszy model flagowy Chińczyków **trenowany bez Nvidii** (V3.2 i R1 używały H800 przed zaostrzeniem sankcji)
- Przemówienie Białego Domu (23-24 kwietnia 2026): Michael Kratsios oskarżył Chiny o "przemysłowe kampanie destylacji" modeli OpenAI i Anthropic
- Anthropic i OpenAI oskarżają DeepSeek o nielegalną destylację wiedzy z ich modeli (Anthropic: ponad 16 mln wymian przez ~24 000 fałszywych kont)
- Jeśli V4 naprawdę działa na Ascend w tym stopniu → bifurkacja ekosystemu AI hardware: NVIDIA/zachód vs. Huawei/Chiny

### Znaczenie strategiczne
Chiny skutecznie zbudowały alternatywny stack technologiczny. DeepSeek V4 to pierwszy duży dowód, że ta ścieżka działa na poziomie zbliżonym do frontieru.

---

## Reakcje branży

### Simon Willison (niezależny analityk, simonwillison.net)
> "DeepSeek-V4-Pro is the new largest open weights model" i jednocześnie "the cheapest of the larger frontier models" — podkreśla bezprecedensowe połączenie skali i ceny.
Ocena: "roughly 3 to 6 months behind the state-of-the-art frontier" — ale otwarto-źródłowy i wielokrotnie tańszy.

### MIT Technology Review
Artykuł "Three reasons why DeepSeek's new model matters" — uznaje premierę za istotną, ale nie przełomową jak R1.

### VentureBeat
Tytuł artykułu: "DeepSeek-V4 arrives with near state-of-the-art intelligence at 1/6th the cost of Opus 4.7, GPT-5.5"

### Morningstar (inwestorzy)
"DeepSeek V4 Is Here, but Don't Expect Another 'DeepSeek Moment'" — rynek nie zareagował paniką, bo V4 to ewolucja, nie rewolucja jak R1.

### Rynek akcji
- Nvidia: +4,32% po premierze V4 (vs -17% po R1 — inwestorzy już "przerobili" temat)
- OpenAI i Anthropic: brak publicznego komentarza nt. V4 (poza wcześniejszymi oskarżeniami o distillation)

### 36kr / chińskie media
Premierę opisują jako "Arrival of the Singularity in China's AI Applications Cambrian Explosion" — w Chinach narracja triumfalna.

### Interesting Engineering
Tytuł: "US still ahead of China in AI race as DeepSeek fails to narrow gap" — zachodnia narracja: USA wciąż prowadzi o ~7 miesięcy.

---

## Potencjalne haki do shorta

1. **Hak cenowy/szok:** "Chińskie AI robi to samo co ChatGPT, ale kosztuje 10 razy mniej. I jest za darmo do pobrania."

2. **Hak geopolityczny/chip:** "Stany Zjednoczone zablokowały Chinom dostęp do najlepszych chipów. DeepSeek właśnie pokazał, że to nie ma znaczenia."

3. **Hak porównawczy (kontra-narracja):** "GPT-5.5 i Claude kosztują 25-30 dolarów za milion słów. DeepSeek V4 — 3 dolary 48 centów. Za te same wyniki w kodowaniu."

4. **Hak techniczny (dla ciekawskich):** "Model z 1,6 biliona parametrów — ale używa naraz tylko 49 miliardów. To dlatego jest tak tani."

5. **Hak bifurkacja (długoterminowy):** "Świat AI właśnie się podzielił na dwa obozy: Nvidia i Huawei. DeepSeek V4 właśnie udowodnił, że chiński obóz działa."

---

## Źródła

- [DeepSeek V4 Preview Release — oficjalne docs API](https://api-docs.deepseek.com/news/news260424)
- [Simon Willison: DeepSeek V4 — almost on the frontier, a fraction of the price](https://simonwillison.net/2026/Apr/24/deepseek-v4/)
- [Artificial Analysis: DeepSeek is back among leading open weights models](https://artificialanalysis.ai/articles/deepseek-is-back-among-the-leading-open-weights-models-with-v4-pro-and-v4-flash)
- [VentureBeat: DeepSeek-V4 arrives with near state-of-the-art intelligence at 1/6th cost](https://venturebeat.com/technology/deepseek-v4-arrives-with-near-state-of-the-art-intelligence-at-1-6th-the-cost-of-opus-4-7-gpt-5-5)
- [Fortune: DeepSeek unveils V4 model with rock-bottom prices and Huawei chip integration](https://fortune.com/2026/04/24/deepseek-v4-ai-model-price-performance-china-open-source/)
- [TechCrunch: DeepSeek previews new AI model that 'closes the gap' with frontier models](https://techcrunch.com/2026/04/24/deepseek-previews-new-ai-model-that-closes-the-gap-with-frontier-models/)
- [MIT Technology Review: Three reasons why DeepSeek's V4 matters](https://www.technologyreview.com/2026/04/24/1136422/why-deepseeks-v4-matters/)
- [The Register: DeepSeek's new models offer big inference cost savings](https://www.theregister.com/2026/04/24/deepseek_v4/)
- [gHacks: DeepSeek Releases V4 with 9.5x lower memory requirements and Huawei Ascend support](https://www.ghacks.net/2026/04/26/deepseek-releases-v4-models-with-9-5x-lower-memory-requirements-and-huawei-ascend-support/)
- [Tom's Hardware: Huawei Ascend 910C delivers 60% of Nvidia H100 inference performance](https://www.tomshardware.com/tech-industry/artificial-intelligence/deepseek-research-suggests-huaweis-ascend-910c-delivers-60-percent-nvidia-h100-inference-performance)
- [Huawei Central: Ascend AI supernode fully supports DeepSeek V4](https://www.huaweicentral.com/ascend-ai-supernode-fully-supports-deepseek-v4-model-huawei/)
- [CNN Business: China's AI upstart DeepSeek drops new model](https://www.cnn.com/2026/04/24/tech/chinas-ai-deepseek-v4-intl-hnk)
- [Morningstar: DeepSeek V4 Is Here, but Don't Expect Another DeepSeek Moment](https://www.morningstar.com/markets/deepseek-v4-is-here-dont-expect-another-deepseek-moment)
- [DataCamp: DeepSeek V4 Features, Benchmarks, and Comparisons](https://www.datacamp.com/blog/deepseek-v4)
- [Interesting Engineering: US still ahead of China as DeepSeek fails to narrow gap](https://interestingengineering.com/ai-robotics/chinas-deepseek-v4-fails)
- [HuggingFace — DeepSeek-V4-Pro model card](https://huggingface.co/deepseek-ai/DeepSeek-V4-Pro)
- [HuggingFace — DeepSeek-V4-Flash model card](https://huggingface.co/deepseek-ai/DeepSeek-V4-Flash)
