# 2. Z.ai wypuszcza GLM-5.2 na otwartej licencji MIT — bije GPT-5.5 za 1/6 ceny

**Data:** 2026-06-17
**Temat:** Chińska Z.ai (dawniej Zhipu) wypuszcza **753B-parametrowy** MoE z **1M kontekstu** na licencji **MIT**, bijąc GPT-5.5 na SWE-Bench Pro i FrontierSWE za **1/6 ceny API** — to "DeepSeek moment" dla agentowego kodowania.

---

## Kluczowe fakty i liczby

- **13 czerwca 2026** Z.ai ogłosiła GLM-5.2; wagi MIT trafiły na HuggingFace `zai-org/GLM-5.2` w oknie **16–22 czerwca** — pełna komercyjna swoboda, **bez ograniczeń regionalnych**.
- Architektura: **Mixture-of-Experts** z **744–753 mld parametrów** całkowitych, **40 mld aktywnych** per token, **384 ekspertów**, **61 warstw**, trenowane na **28,5 bln tokenów**.
- **1 000 000 tokenów** kontekstu (5x więcej niż GLM-5.1, który miał 200K); max output **131 072 tokeny**. Model ID `glm-5.2[1m]` dla pełnego okna.
- Atencja: **DeepSeek Sparse Attention (DSA)** + autorska technika **IndexShare** — współdzieli indekser między każde 4 warstwy sparse attention, redukując FLOPs **2,9x** przy 1M kontekstu.
- Cennik API: **$1,40 / 1M tokenów wejścia**, **$4,40 / 1M wyjścia** — przy GPT-5.5 **$5,00 / $30,00** to **~6x taniej** na wyjściu.
- Cennik subskrypcyjny Z.ai Coding Plan: **$10/mc Lite** (~400 promptów/tydz.), **$30/mc Pro** (~2000), **$80/mc Max** (~8000); plan Team — per seat.
- Day-one wsparcie w **Claude Code, Cline, OpenCode, Roo Code, Goose, Crush, OpenClaw, Kilo Code** (przez Anthropic-compatible endpoint); brak natywnego Cursora w starcie.
- HuggingFace stats po ~11h od publikacji: **569 pobrań GLM-5.2** + **43 pobrań GLM-5.2-FP8**; dla porównania starszy GLM-5.1-FP8 ma już **1,03M pobrań**.

## Specyfikacja techniczna

- **Typ:** `AutoModelForMultimodalLM`, tensory **BF16 / F32 / FP8**.
- **Self-hosting VRAM:** ~**1,65 TB (BF16)**, **800 GB (FP8)**, **200 GB (INT4)** — czyli realnie tylko klastry H100/H200 albo agresywna kwantyzacja.
- **Wsparcie frameworków:** Transformers v0.5.12+, **vLLM v0.23.0+** (BF16, FP8), **SGLang v0.5.13+**, **xLLM**, **KTransformers**, planowane **GGUF** dla **Ollamy** i **LM Studio** "w ciągu kilku dni" od release (community).
- **MTP Layer:** 20% poprawa w długości akceptacji speculative decoding.
- **Tryby myślenia:** wielopoziomowe — kompromis latencja/jakość, dwa nowe (High, Max) względem GLM-5.1.

## Benchmarki — GLM-5.2 vs GPT-5.5 vs Claude

| Benchmark | GLM-5.2 | GPT-5.5 | Komentarz |
|---|---|---|---|
| **SWE-Bench Pro** | **62,1** | 58,6 | Realna praca w repo — GLM wygrywa |
| **FrontierSWE** | **74,4%** | 72,6% | Długie horyzonty — GLM lekko wyżej |
| **MCP-Atlas** (tool-use) | **77,0** | 75,3 | Agentowe wywołania narzędzi |
| **PostTrainBench** | **34,3%** | 25,0% | Wielogodzinne workloady |
| **SWE-Marathon** | **13,0%** | 12,0% | Marathon repo-scale |
| **Terminal-Bench 2.1** | 81,0 | **85,0** | Claude 84,0 — GLM przegrywa |
| **AIME 2026** | 99,2 | — | Matematyka — niemal idealne |
| **GPQA-Diamond** | 91,2 | — | Reasoning naukowy |
| **HLE** | 40,5 | — | Humanity's Last Exam |

Z.ai pierwsze 48h po launchu **nie opublikowała oficjalnych benchmarków** — liczby pochodzą z karty modelu i niezależnych raportów (VentureBeat, CryptoBriefing).

## Porównanie z innymi open-weight (DeepSeek V4, Qwen)

- **GLM-5.2** wygrywa kontekstem (**1M vs 128–256K DeepSeek V4**) i flat-rate subskrypcją; **DeepSeek V4-Flash** zjeżdża do **$0,14 / $0,28** za 1M tokenów — bezkonkurencyjne dla high-throughput.
- **DeepSeek V4-Pro** wciąż lider na **LiveCodeBench (93,5)** i **Codeforces (3206)** — single-shot code-gen.
- **Qwen 3.6 Plus / 3.7 Max** (Alibaba) — równolegle 1M kontekstu, frontier-MoE; trzecia chińska szkoła.
- Tezę "**open-source dogonił closed-source w kodowaniu**" potwierdzają wszyscy trzej gracze chińscy w czerwcu 2026.

## Model biznesowy — strategia "DeepSeek 2.0"

- **Open weights MIT = darmowy marketing**: każdy fork, każdy GGUF, każdy Ollama-pull buduje brand Z.ai bez wydatków.
- **Monetyzacja przez API i Coding Plan** — replikuje sukces DeepSeeka (open weights → API revenue → enterprise).
- **Subskrypcja prompt-based** (1 prompt ≈ 15–20 inwokacji modelu) zamiast czystego token-billing — psychologicznie łatwiejsza dla developerów.
- **Anthropic-compatible endpoint** = drop-in replacement dla Claude Code; Z.ai świadomie pasożytuje na ekosystemie agentowym Anthropic.
- **Timing:** launch dwa dni po amerykańskich kontrolach eksportu modeli Anthropic — pozycjonowanie jako "open alternative do modeli z restrykcjami".

## Implikacje

- **Wojna agentowych IDE** (Cursor / Claude Code / Codex / Antigravity) dostaje czwartego dużego gracza po stronie modeli — z radykalnie niższym kosztem.
- **MIT** (nie Apache, nie custom) = każdy enterprise prawnik klepnie deployment bez pytań — to bardziej liberalne niż Llama Community License.
- Self-hosting wciąż drogi (**~$200K w H100 dla pełnego BF16**), więc realnie 95% użytkowników skończy na API albo INT4 quants.
- **Geopolitycznie:** Chiny eksportują frontier-grade open weights w momencie, gdy USA zaostrza kontrolę nad modelami — odwrotność narracji "China copies".
- Presja na **OpenAI/Anthropic** by zejść z cenami albo pokazać moat poza ceną (np. enterprise compliance, multimodal video).

---

## Potencjalne kąty narracyjne do shorta

1. **"Chińska Z.ai właśnie wypuściła model, który bije GPT-5.5 za 1/6 ceny — i oddaje wagi za darmo na MIT."** — hook szokowy z dwoma liczbami.
2. **"753 miliardy parametrów. 1 milion tokenów kontekstu. Licencja MIT. Cena: $1,40 za milion tokenów wejścia. OpenAI bierze $5."** — staccato liczb.
3. **"To jest moment 'DeepSeek 2.0' dla agentowego kodowania — i Amerykanie znowu zostali zaskoczeni."** — narracja geopolityczna.
4. **"GLM-5.2 na SWE-Bench Pro: 62,1. GPT-5.5: 58,6. Claude: 57,3. Cena GLM: 6 razy niższa. Open weights. Pytanie nie brzmi 'czy', tylko 'kiedy' przełączysz się na chiński model."**
5. **"Z.ai zrobiła coś genialnego: ich endpoint API jest kompatybilny z Anthropic, więc wpisujesz jeden URL i Claude Code nagle gada z chińskim modelem. Za jedną szóstą ceny."** — angle "ekosystemowego pasożytnictwa".
6. **"1 milion tokenów kontekstu oznacza, że wrzucasz cały swój repo do jednego promptu — bez RAG, bez chunkingu. Twój monorepo na 800 tysięcy linii? Mieści się."** — praktyczny angle dla devów.
7. **"Amerykanie zablokowali eksport modeli Anthropic do Chin w poniedziałek. Chińczycy wypuścili otwarte wagi konkurencyjne wobec GPT-5.5 w środę. Tak wygląda nowy Cold War AI."**

---

## Źródła

- [Z.ai's open-weights GLM-5.2 beats GPT-5.5 on multiple long-horizon coding benchmarks for 1/6th the cost — VentureBeat](https://venturebeat.com/technology/z-ais-open-weights-glm-5-2-beats-gpt-5-5-on-multiple-long-horizon-coding-benchmarks-for-1-6th-the-cost)
- [zai-org/GLM-5.2 — HuggingFace model card](https://huggingface.co/zai-org/GLM-5.2)
- [zai-org organization page — HuggingFace](https://huggingface.co/zai-org)
- [GLM-5.2: Zhipu's 1M-Context Open-Weight Coding Model (Builder Guide) — ChatForest](https://chatforest.com/builders-log/zhipu-glm-5-2-1m-context-open-weights-agentic-coding-builder-guide/)
- [GLM 5.2 Just Launched: 1M Context, Coding-First, Open Weights Next Week — Codersera](https://codersera.com/blog/glm-5-2-release-1m-context-coding-2026/)
- [Z.AI's GLM-5.2 outperforms GPT-5.5 on coding benchmarks at one-sixth the cost — CryptoBriefing](https://cryptobriefing.com/z-ai-glm-5-2-outperforms-gpt-5-5-coding/)
- [What Is GLM 5.2? Zhipu's 1M-Context Open Model — FelloAI](https://felloai.com/glm-5-2/)
- [GLM 5.2 vs DeepSeek V4: The Open-Weights Coding Showdown (2026) — Codersera](https://codersera.com/blog/glm-5-2-vs-deepseek-v4-coding-2026/)
- [GLM-5.2 Review 2026: Z.ai's 1M-Context AI Model — BuildFastWithAI](https://www.buildfastwithai.com/blogs/glm-5-2-review-2026)
- [GLM-5.2 Complete Guide — 1M Context, MIT License, Setup (2026) — AImadetools](https://www.aimadetools.com/blog/glm-5-2-complete-guide)
