# NVIDIA Nemotron 3: 500-miliardowy model open-weight na Hugging Face

**Data:** 2026-06-02
**Temat:** NVIDIA wypuszcza rodzinę Nemotron 3 (Nano/Super/Ultra) z hybrydową architekturą Mamba-2 + Transformer MoE — Ultra to **~500B** parametrów i największy open-weight w historii Nvidii, ogłoszony na Computex w Tajpej (1 czerwca 2026).

---

## Kluczowe fakty i liczby

- **Trzy modele open-weight**: Nemotron 3 **Nano (30B total / 3B aktywnych)**, **Super (~120B / 12B aktywnych)** i **Ultra (~500–550B / 50B aktywnych)** — wszystkie MoE z aktywacją tylko części wag na token.
- **Ultra to największy open-source model w historii NVIDII** — w Artificial Analysis Intelligence Index ma szacowany wynik **~48**, co czyni go „najinteligentniejszym amerykańskim open-weight modelem".
- **Architektura hybrydowa Mamba-2 + Transformer MoE**: w Nano np. **23 warstwy Mamba-2**, **23 warstwy MoE** (po **128 routed experts + 1 shared expert**), tylko **6 warstw attention** (GQA z 2 grupami) — łącznie **52 warstwy**, aktywowanych **6 ekspertów na token**.
- **Kontekst 1 mln tokenów** we wszystkich wariantach (Nano domyślnie **256k** w HF configu z powodu VRAM).
- **Trening Super i Ultra w formacie NVFP4 (4-bit)** na Blackwell — Nvidia twierdzi, że to pierwszy duży open-weight trenowany natywnie w 4-bit.
- **Dane treningowe**: **25 bln tokenów pre-training** dla Nano (**13.3 bln** post-training), w tym **3.5 bln syntetycznych** (33%) i **922 mld tokenów kodu** w **43 językach programowania**.
- **Harmonogram**: Nano (w tym wariant Omni multimodalny) dostępne **1 czerwca 2026**, Super i Ultra dochodzą do **4 czerwca 2026** (i I połowa 2026 dla pełnego rollout).
- **Dystrybucja**: Hugging Face, ModelScope, OpenRouter, build.nvidia.com (NIM), AWS Bedrock, Google Cloud, CoreWeave, Baseten, DeepInfra, Fireworks, FriendliAI, Together AI.
- **GGUF dla Nano 4B**: **2.84 GB na dysku** (Q4_K_M), odpalisz w **Ollamie**, **LM Studio**, llama.cpp, Jan — na laptopie z **~4–6 GB VRAM** lub samym CPU.
- **Benchmarki Nano 30B (z toolami)**: **MMLU-Pro 78.3%**, **AIME25 99.2%**, **GPQA 75.0%**, **LiveCodeBench 68.3%**, **SWE-Bench 38.8%**, **Arena-Hard-V2 67.7%**, **RULER 1M kontekst 86.3%**.
- **Benchmarki Super 120B**: Artificial Analysis Intelligence Index **36** (vs. **33** dla gpt-oss-120b, **42** dla Qwen3.5 122B), **Terminal-Bench Hard 29%**, do **484 tokenów/s** na 10k input, **+11% throughput** na B200 vs. gpt-oss-120b.
- **Speculative decoding (SPEED-Bench)**: Super akceptuje średnio **3.45 tokena na krok** weryfikacji (vs. **2.70** dla DeepSeek-R1) — do **3x speedup** wall-clock bez osobnego draft modelu.
- **Throughput vs. konkurencja**: Super osiąga do **2.2x** wyższy throughput niż GPT-OSS-120B i do **7.5x** wyższy niż Qwen3.5-122B na 8k in / 64k out, przy lepszej lub porównywalnej jakości.
- **Open recipe**: Nvidia publikuje nie tylko wagi, ale też **pełne przepisy treningowe**, datasety pre/post-training, kod RL (NeMo Gym, NeMo RL, NeMo Evaluator na GitHub).

## Architektura (Mamba-2 + MoE) — co to znaczy w praktyce

Klasyczny Transformer ma attention O(n²) — przy 1M tokenów zajeżdża pamięć i czas. **Mamba-2** to selective state-space model (SSM) z liniową złożonością O(n) — przelatuje przez długi kontekst znacznie szybciej, ale jest słabsza w precyzyjnym rozumowaniu. Nvidia łączy oba: **większość warstw to tania Mamba-2** (długie konteksty), a **kilka warstw attention** (w Nano tylko 6 z 52) dba o jakość rozumowania.

Do tego dochodzi **Mixture of Experts**: model ma 30B/120B/500B wag, ale na każdy token aktywuje się tylko **3B/12B/50B** (tylko **6 z 128+1 ekspertów na warstwę** w Nano). Efekt: koszt inferencji odpowiada małemu modelowi gęstemu, a jakość — dużemu. **Super deklasuje gpt-oss-120b w throughput o 2.2x** przy lepszej jakości, **Ultra ma 500B parametrów ale aktywuje 50B** — koszt mniej więcej jak gęsty 50B, jakość bliska frontier.

Bonus: **NVFP4 (4-bit native training)** na Blackwell — Super i Ultra od początku trenowane w 4-bit, co daje mniejsze checkpointy i tańszą inferencję bez post-hoc kwantyzacji.

---

## Potencjalne kąty narracyjne do shorta

- **„NVIDIA wypuściła 500-miliardowy model open-source. Za darmo. Wagi na Hugging Face."** (drama: Nvidia robi to, czego nie zrobi OpenAI)
- **„Nemotron 3 Nano. 2.84 GB. Odpalasz w Ollamie na laptopie. AIME 99.2%."** (konkretny pull-up: ściągnij dziś)
- **„Mamba-2 + Transformer + MoE. 1 mln tokenów kontekstu. 6 ekspertów na 128 aktywuje się na token."** (architektura w 10 sekund)
- **„Nvidia trenuje open-weighty w 4-bit od zera. NVFP4. Przyszłość inferencji za 1/4 ceny."** (kąt techniczny: NVFP4 to game-changer)
- **„Super bije gpt-oss-120b o 2.2x w throughput. Przy lepszej jakości. Otwarty. Komercyjnie."** (vs. OpenAI)
- **„NVIDIA publikuje nie tylko wagi, ale **25 bilionów tokenów** training data i pełne przepisy RL."** (radykalna otwartość)
- **„Czemu Nvidia oddaje frontier-model za darmo? Bo sprzedaje GPU. Każdy kto odpala Ultra — kupuje H100 albo B200."** (kąt biznesowy: open-source jako strategia sprzedaży hardware'u)

---

## Źródła

- [NVIDIA Debuts Nemotron 3 Family of Open Models — NVIDIA Newsroom](https://nvidianews.nvidia.com/news/nvidia-debuts-nemotron-3-family-of-open-models)
- [nvidia/NVIDIA-Nemotron-3-Nano-30B-A3B-BF16 — Hugging Face](https://huggingface.co/nvidia/NVIDIA-Nemotron-3-Nano-30B-A3B-BF16)
- [nvidia/NVIDIA-Nemotron-3-Nano-4B-GGUF — Hugging Face](https://huggingface.co/nvidia/NVIDIA-Nemotron-3-Nano-4B-GGUF)
- [Introducing Nemotron 3 Super: Hybrid Mamba-Transformer MoE for Agentic Reasoning — NVIDIA Developer Blog](https://developer.nvidia.com/blog/introducing-nemotron-3-super-an-open-hybrid-mamba-transformer-moe-for-agentic-reasoning/)
- [NVIDIA Nemotron 3 Super: The new leader in open, efficient intelligence — Artificial Analysis](https://artificialanalysis.ai/articles/nvidia-nemotron-3-super-the-new-leader-in-open-efficient-intelligence)
- [Nemotron 3 Ultra: NVIDIA's 550B Open Model — Pasquale Pillitteri](https://pasqualepillitteri.it/en/news/3924/nemotron-3-ultra-nvidia-open-model)
- [NVIDIA Nemotron 3 Launches 500B-Param Open Ultra Model — AI Weekly](https://aiweekly.co/alerts/nvidia-nemotron-3-launches-500b-param-open-ultra-model)
- [Nemotron 3 Family of Models — NVIDIA Research](https://research.nvidia.com/labs/nemotron/Nemotron-3/)
- [NVIDIA Nemotron 3: Efficient and Open Intelligence — arXiv 2512.20856](https://arxiv.org/pdf/2512.20856)
- [Nemotron 3 Super — API Pricing & Benchmarks — OpenRouter](https://openrouter.ai/nvidia/nemotron-3-super-120b-a12b)
