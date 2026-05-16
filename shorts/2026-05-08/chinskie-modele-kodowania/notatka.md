# Chiny: 4 modele kodowania w 12 dni

## Kluczowe fakty

- **Timeline:** GLM-5.1 (7 kwietnia) → MiniMax M2.7 open-source (12 kwietnia) → Kimi K2.6 (20 kwietnia) → DeepSeek V4 (24 kwietnia) — razem 17 dni, ale core'owy sprint to ok. 12 dni (Kimi do DeepSeek to 4 dni; GLM do DeepSeek to 17 dni)
- **Wszystkie open-source/open-weight** z prawem do użytku komercyjnego (MIT lub zmodyfikowany MIT)
- **Architektura:** Każdy model to Mixture-of-Experts (MoE) — aktywują tylko ułamek parametrów, co dramatycznie obniża koszty wnioskowania
- **Stanford AI Index 2026:** Chiny "effectively closed" gap wydajnościowy z USA
- **MIT/Hugging Face study:** Chińskie open-weight modele to 17,1% globalnych pobrań (vs 15,86% USA) — pierwsza taka zmiana pozycji

---

## Każdy model osobno

### GLM-5.1 — Z.ai (dawniej Zhipu AI)
- **Wydanie:** 7 kwietnia 2026
- **Parametry:** 754 mld (całość); architektura MoE
- **Kontekst:** 202 752 tokenów (maks. output: 65 535)
- **Benchmarki:**
  - SWE-Bench Pro: **58,4** (vs GPT-5.4: 57,7 | Claude Opus 4.6: 57,3) — nowe SOTA w dniu premiery
  - SWE-Bench Verified: **77,8%**
  - BrowseComp: 68,0%; MCP-Atlas: 71,8%; τ³-Bench: 70,6%
  - NL2Repo (generowanie repo) i Terminal-Bench 2.0: lider wśród open-source
- **Wyjątkowa cecha:** Może pracować autonomicznie przez **8 godzin z rzędu** nad jednym zadaniem
- **Ceny API:** $1,05/1M tokenów wejście | $3,50/1M tokenów wyjście
- **Porównanie z Claude Opus 4.6:** Osiąga 94,6% jego wydajności kodowania przy ok. 1/7 ceny

### MiniMax M2.7 — MiniMax
- **Wydanie:** API: 18 marca 2026; open-source: **12 kwietnia 2026**
- **Architektura:** MoE (liczba parametrów niepodana; do samodzielnego hostowania)
- **Benchmarki:**
  - SWE-Pro: **56,22%** (wynik identyczny z GPT-5.3-Codex)
  - Terminal Bench 2: 57,0%
  - NL2Repo: 39,8%
  - VIBE-Pro: 55,6% (prawie identyczny z Opus 4.6)
  - SWE Multilingual: 76,5%
  - Multi SWE Bench: 52,7%
  - GDPval-AA: ELO **1 495** — najwyższy wśród open-source
  - MLE-Bench Lite (22 konkursy ML): 66,6% medal rate — drugie miejsce zaraz za frontier closed-source
  - Toolathon: 46,3%
- **Wyjątkowa cecha:** "Self-evolving" — model przeprowadził **100+ rund autonomicznej optymalizacji** własnego scaffoldu, poprawiając siebie o 30%; natywna kolaboracja wielu agentów ("Agent Teams")
- **Ceny API:** $0,30/1M tokenów wejście | $1,20/1M tokenów wyjście — najtańszy z czwórki

### Kimi K2.6 — Moonshot AI
- **Wydanie:** **20 kwietnia 2026**
- **Parametry:** 1 bilion całkowitych, **32 mld aktywnych** na token (384 ekspertów; 8 wybieranych + 1 stały)
- **Warstwy:** 61 | Kontekst: 256K tokenów | Vocab: 160K
- **Benchmarki:**
  - SWE-Bench Pro: **58,6** (1. miejsce w dniu premiery; GPT-5.4: 57,7)
  - SWE-Bench Verified: **80,2%**
  - LiveCodeBench v6: **89,6%** (Claude Opus 4.6: 88,8%)
  - HLE-Full with tools: **54,0** (1. miejsce; GPT-5.4: 52,1)
  - BrowseComp (Agent Swarm): 86,3%
  - SWE-Bench Multilingual: 76,7%
- **Wyjątkowa cecha:** **Agent Swarm** — 300 sub-agentów równolegle, 4 000 skoordynowanych kroków; autonomiczne kodowanie przez **13+ godzin**
- **Ceny API:** $0,55–0,75/1M tokenów wejście | $2,65–3,50/1M tokenów wyjście
- **Oszczędność vs Claude:** Użytkownicy raportują 88% redukcję kosztów kodowania przy podobnej jakości

### DeepSeek V4 — DeepSeek
- **Wydanie:** Preview **24 kwietnia 2026** (MIT license, wagi na Hugging Face)
- **Dwa warianty:**
  - **V4-Pro:** 1,6 bln parametrów całkowitych / 49 mld aktywnych; kontekst 1M tokenów
  - **V4-Flash:** 284 mld całkowitych / 13 mld aktywnych; kontekst 1M tokenów
- **Benchmarki V4-Pro:**
  - SWE-Bench Verified: **80,6%** (2. miejsce open-source)
  - HumanEval: ~96,4%
  - LiveCodeBench: 93,5%
  - GDPval-AA: ELO **1 554** — 1. miejsce wśród open-source
  - Artificial Analysis Intelligence Index: 52 (2. wśród open-weight)
- **Uwaga:** Część benchmarków to "internal claims" — rekomendowane czekanie na niezależną weryfikację (Macaron/NIST)
- **Wyjątkowa cecha:** Pierwszy frontier model wytrenowany na **Huawei Ascend 950PR** (nie NVIDIA); "Engram Memory" — 97% recall na Needle-in-Haystack vs 84,2% standard attention; natywny multimodal
- **Ceny API:**
  - V4-Pro: $1,74/1M wejście | $3,48/1M wyjście (cache: $0,145)
  - V4-Flash: **$0,14/1M wejście | $0,28/1M wyjście** (cache: $0,0028 — 98% taniej przy cache!)
  - Promocja do 5 maja 2026: V4-Pro 75% off → $0,435/$0,87

---

## Porównanie cen API (wejście/wyjście, 1M tokenów)

| Model | Wejście | Wyjście |
|-------|---------|---------|
| DeepSeek V4-Flash | $0,14 | $0,28 |
| MiniMax M2.7 | $0,30 | $1,20 |
| Kimi K2.6 | $0,55–0,75 | $2,65–3,50 |
| GLM-5.1 | $1,05 | $3,50 |
| DeepSeek V4-Pro | $1,74 | $3,48 |
| Claude Haiku 4.5 | $1,00 | $5,00 |
| Claude Sonnet 4.6 | $3,00 | $15,00 |
| Claude Opus 4.6/4.7 | $5,00 | $25,00 |

Chiński V4-Flash jest ok. **90x tańszy od Claude Opus** przy zbliżonej jakości kodowania.

---

## Szerszy kontekst

### Sankcje i chipy

USA nałożyły kolejne ograniczenia eksportu chipów do Chin (zakaz A100/H100 w 2022; H800/A800 w październiku 2023). W efekcie:

1. **Huawei Ascend** staje się realną alternatywą — Ascend 950PR (premiera 20 marca 2026) ma ~1,56 PFLOP na FP4, czyli **2,8x więcej niż Nvidia H20**. Huawei produkuje 750 000 sztuk w 2026 roku.
2. **DeepSeek V4 wytrenowany wyłącznie na Ascend 950PR** — pierwsza potwierdzona frontier model na nie-NVIDIA hardware.
3. **ByteDance wydaje $5,6 mld** na chipy Ascend w 2026; Alibaba i Tencent dodają kolejne miliardy.
4. **Gray market:** Zablokowane GPU krążą przez Singapur, Malezję, UAE i rynek używanych (Taobao, Idle Fish).
5. **Cloud loophole:** Chińskie firmy wynajmują moc obliczeniową z zagranicznych data center bez fizycznego importu chipów.
6. Trump w stycznia 2026 poluzował część ograniczeń (H200 dopuszczony z limitami: 50% wolumenu vs sprzedaż krajowa USA), ale Chiny i tak już zbudowały niezależną infrastrukturę.

### Wyścig technologiczny

- Chiny produkują więcej frontier modeli open-source niż USA — po raz pierwszy dominują w pobieraniach na HuggingFace (17,1% vs 15,86%)
- Koszty wnioskowania: chińskie modele są **5–30x tańsze** strukturalnie, nie tymczasowo
- Chiński model MoE pozwala aktywować tylko ułamek parametrów → drastycznie niższe FLOP-y na inference
- Łączna runda finansowania Q1 2026: DeepSeek, Zhipu, Moonshot i MiniMax razem zebrały **ponad $3 mld**

---

## Tło firm

| Firma | Założona | Siedziba | Kluczowy fakt |
|-------|----------|----------|---------------|
| **Z.ai** (Zhipu) | 2019 | Pekin (spin-off Tsinghua University) | Pierwsza notowana firma LLM na świecie (IPO HK 8 stycznia 2026, $558M przy wycenie $7,1 mld); na liście sankcji USA; inwestorzy: Tencent, Meituan, Xiaomi, Alibaba |
| **MiniMax** | Grudzień 2021 | Szanghaj (wywodzi się z SenseTime) | IPO 9 stycznia 2026 ($619M, cap rynkowy $11,5 mld); w lutym 2026 Anthropic oskarżył MiniMax o 16M nieautoryzowanych interakcji z Claude |
| **Moonshot AI** | 2023 | Pekin | Założyciel: Yang Zhilin (b. Meta AI, Google Brain); 7 maja 2026 zebrał $2 mld przy wycenie $20 mld (led by Meituan); ARR przekroczyło $200M w kwietniu 2026; Kimi K2.6 to 2. najczęściej używany model na OpenRouter |
| **DeepSeek** | Lipiec 2023 | Hangzhou | Spin-off z funduszu hedge High-Flyer (Liang Wenfeng); przed sankcjami zgromadził 10 000 kart NVIDIA A100; jedyna firma z czwórki bez IPO; słynna z ekstremalnie niskich kosztów treningu |

---

## Reakcje i opinie

- **CNN (24.04.2026):** "Will it make waves like last year?" — rynek już wycenił chińską konkurencję, ale skalę cięcia kosztów nikt nie spodziewał się aż tak szybko
- **Al Jazeera (24.04.2026):** DeepSeek ogłasza "world class reasoning" i "best agentic coding among open-source" — ale CNN i NIST ostrzegają, że benchmarki to internal claims niepo potwierdzone niezależnie
- **Stanford AI Index 2026:** Chiny "effectively closed" gap — nie ma już wyraźnej przewagi jakościowej zachodnich lab
- **MIT/Hugging Face (kwiecień 2026):** Chińskie open-weight modele po raz pierwszy wyprzedziły USA w globalnych pobraniach
- **Foreign Policy (7 maja 2026):** Analizuje jak Chiny wygrywają wyścig AI przez open-source i cenę — "weaponizing commoditization of intelligence"
- **Kilo.ai:** Kimi K2.6 to "open-weight powerhouse" z Agent Swarm, którego "no other frontier system ships"
- **Moonshot CEO:** Po rundzie finansowania — roczne przychody (ARR) ponad $200M, Kimi jest 2. na OpenRouter
- **Uwaga analityków:** Rynek akcji US AI firm nie zareagował panicznie jak po DeepSeek R1 (styczeń 2025) — tym razem oczekiwano przewagi Chin w open-source

---

## Ciekawe haczyki do shortsa

1. **"DeepSeek V4 wytrenowany na chińskich chipach"** — Huawei Ascend 950PR, nie NVIDIA. To pierwsze potwierdzenie, że sankcje nie zadziałały na poziomie treningu modeli frontierowych.

2. **MiniMax oskarżony przez Anthropic** — w lutym 2026 Anthropic wykrył, że MiniMax użył 16 milionów fałszywych kont żeby "nakarmić" Claude'a i ukraść dane treningowe. Miesiąc później MiniMax wypuścił model który bije Claude na benchmarkach.

3. **"Self-evolving model"** — M2.7 uruchomił 100 rund autonomicznej poprawy samego siebie. Brzmi jak SF, ale to po prostu automated scaffold optimization. Jednak efekt: 30% wzrostu wydajności bez ludzkiej interwencji.

4. **Moonshot zebrał $2 mld w tydzień po premierze K2.6** — wycena skoczyła z $4,3 mld (koniec 2025) do $20 mld (maj 2026), czyli ~5x w pół roku. Inwestorzy głosują portfelem.

5. **Kimi K2.6 #1 na SWE-Bench Pro** — chiński model pokonał GPT-5.4 i Claude Opus 4.6 na benchmarku mierzącym rozwiązywanie prawdziwych GitHub issues. Nie syntetycznych zadań, ale realnych bugów z produkcyjnych repozytoriów.

6. **Cena vs wydajność: V4-Flash za $0,14/1M tokenów** — Claude Opus kosztuje $5,00/1M wejście. Stosunek 1:36. Przy tym samym budżecie możesz odpytać V4-Flash 36 razy więcej niż Opus.

7. **Timeline 12-17 dni** — cztery niezależne firmy, cztery frontier modele, wszystkie open-source, wszystkie w top-3 światowych rankingów kodowania. Rok temu żaden chiński model nie był blisko top-5.

8. **Chiński model na chińskich chipach, wytrenowany w chińskim chmurze, dystrybuowany globalnie przez open-source** — cały stos niezależny od USA. Dokładnie tego bały się sankcje i dokładnie to się stało.

---

## Źródła

- [GLM-5.1 - Z.AI Developer Docs](https://docs.z.ai/guides/llm/glm-5.1)
- [GLM-5.1 Benchmarks — BenchLM.ai](https://benchlm.ai/models/glm-5-1)
- [GLM-5.1 Benchmarks, Pricing & Context — llm-stats.com](https://llm-stats.com/models/glm-5.1)
- [GLM 5.1 Open Source Review — BuildFastWithAI](https://www.buildfastwithai.com/blogs/glm-5-1-open-source-review-2026)
- [GLM-5 GitHub repo](https://github.com/zai-org/GLM-5)
- [MiniMax M2.7 — MarkTechPost](https://www.marktechpost.com/2026/04/12/minimax-just-open-sourced-minimax-m2-7-a-self-evolving-agent-model-that-scores-56-22-on-swe-pro-and-57-0-on-terminal-bench-2/)
- [MiniMax M2.7 — minimax.io](https://www.minimax.io/news/minimax-m27-en)
- [MiniMax M2.7 — Artificial Analysis](https://artificialanalysis.ai/models/minimax-m2-7)
- [Kimi K2.6 Tech Blog — kimi.com](https://www.kimi.com/blog/kimi-k2-6)
- [Kimi K2.6 — MarkTechPost](https://www.marktechpost.com/2026/04/20/moonshot-ai-releases-kimi-k2-6-with-long-horizon-coding-agent-swarm-scaling-to-300-sub-agents-and-4000-coordinated-steps/)
- [Kimi K2.6 vs GLM-5.1 vs Qwen 3.6 vs MiniMax — Atlas Cloud](https://www.atlascloud.ai/blog/guides/kimi-k2-6-vs-glm-5-1-vs-qwen-3-6-plus-vs-minimax-m2-7-coding-2026)
- [DeepSeek V4 Preview Release — api-docs.deepseek.com](https://api-docs.deepseek.com/news/news260424)
- [DeepSeek V4 Full Specs — NxCode](https://www.nxcode.io/resources/news/deepseek-v4-release-specs-benchmarks-2026)
- [DeepSeek V4 — Artificial Analysis](https://artificialanalysis.ai/articles/deepseek-is-back-among-the-leading-open-weights-models-with-v4-pro-and-v4-flash)
- [DeepSeek V4 API Pricing — api-docs.deepseek.com](https://api-docs.deepseek.com/quick_start/pricing)
- [Claude API Pricing 2026 — Anthropic](https://platform.claude.com/docs/en/about-claude/pricing)
- [The Great Convergence — aictrl.dev](https://aictrl.dev/blog/chinese-ai-models-catch-up)
- [China wins AI race — Foreign Policy](https://foreignpolicy.com/2026/05/07/artificial-intelligence-ai-china-us-west-race-silicon-valley-global/)
- [China DeepSeek V4 — CNN](https://edition.cnn.com/2026/04/24/tech/chinas-ai-deepseek-v4-intl-hnk)
- [Moonshot AI $2B funding — TechCrunch](https://techcrunch.com/2026/05/07/chinas-moonshot-ai-raises-2b-at-20b-valuation-as-demand-for-open-source-ai-skyrockets/)
- [Moonshot AI $20B valuation — Bloomberg](https://www.bloomberg.com/news/articles/2026-05-07/kimi-chatbot-maker-moonshot-ai-valued-at-20-billion-in-meituan-led-round)
- [Z.ai IPO Hong Kong — PR Newswire](https://www.prnewswire.com/news-releases/chinas-agi-pioneer-and-leader-zai-listed-on-hong-kong-stock-exchange-302656265.html)
- [MiniMax IPO and background — Bamboo Works](https://thebambooworks.com/minimax-scores-big-new-funds-but-likely-to-need-more-in-expensive-ai-race/)
- [DeepSeek — Wikipedia](https://en.wikipedia.org/wiki/DeepSeek)
- [Huawei Ascend 950PR vs NVIDIA — tech-insider.org](https://tech-insider.org/huawei-ascend-950pr-ai-chip-nvidia-china-2026/)
- [DeepSeek V4 na Huawei Ascend — TechWireAsia](https://techwireasia.com/2026/04/deepseek-v4-points-to-growing-use-of-huawei-chips-in-ai-models/)
- [China Underground AI Network — NewsAnyway](https://www.newsanyway.com/2026/05/06/chinas-underground-ai-network-how-beijing-is-bypassing-the-us-nvidia-export-ban)
- [Trump lifts AI chip ban on China — Built In](https://builtin.com/articles/trump-lifts-ai-chip-ban-china-nvidia)
- [Late-April 2026 Chinese LLM Stack — DEV Community](https://dev.to/bean_bean/the-late-april-2026-chinese-llm-stack-qwen-36-deepseek-v4plus-kimi-k26-minimax-m27-glm-51-2bif)
- [NIST/CAISI Evaluation of DeepSeek V4 Pro](https://www.nist.gov/news-events/news/2026/05/caisi-evaluation-deepseek-v4-pro)
- [Chinese foundation labs raise $3B+ Q1 2026 — AIMenta](https://aimenta.ai/news/apac-foundation-model-funding-q1-2026)
