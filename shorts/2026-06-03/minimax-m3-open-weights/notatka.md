# MiniMax M3: pierwszy open-weights model klasy frontier z kodowania

**Data:** 2026-06-03
**Temat:** Chiński MiniMax 1 czerwca 2026 wypuścił model M3 — pierwszy open-weights LLM łączący kodowanie klasy frontier, kontekst 1M tokenów i natywną multimodalność, kosztujący 5-10% ceny GPT-5.5 i Opusa 4.8.

---

## Kluczowe fakty i liczby

- **1 czerwca 2026** — premiera M3 przez MiniMax (Szanghaj). API i subskrypcje od razu, wagi na HuggingFace w ciągu **~10 dni** (cel: ok. 11 czerwca).
- **59,0%** na SWE-Bench Pro — bije GPT-5.5 (**58,6%**) i Gemini 3.1 Pro (**54,2%**), ale traci **10,2 pkt** do Opusa 4.8 (**69,2%**).
- **1 048 576 tokenów** kontekstu (~1M), maksymalny output **512 000 tokenów**.
- **0,60 USD** za milion tokenów wejściowych i **2,40 USD** za milion output. Przez pierwszy tydzień **50% rabatu** — efektywnie **0,30 / 1,20 USD**.
- Względem Opusa 4.8 (**5 USD in / 25 USD out**) to różnica **~10×** na input i **~10×** na output. Względem GPT-5.5 — **5-10% ceny**.
- Architektura **MiniMax Sparse Attention (MSA)** daje **15,6× szybsze dekodowanie** i **9,7× szybszy prefill** w porównaniu do M2 przy 1M tokenów, a per-token compute spada do **1/20** poprzedniej generacji.
- W teście wewnętrznym M3 **przez ~12 godzin bez interwencji** reprodukował paper o fine-tuningu LLM, generując **18 commitów i 23 wykresy** i potwierdzając kluczowe tezy.
- W innym teście podniósł wykorzystanie sprzętu **Hopper z 7,6% do 71,3%** w ciągu **147 prób** optymalizacji kernela GPU.
- **BrowseComp 83,5** — bije autonomiczne przeglądanie Opusa 4.7 (79,3) i agenty Anthropica.

---

## Specyfikacja techniczna

- **Architektura:** MSA (MiniMax Sparse Attention) — zamiast pełnej uwagi O(n²) wybiera "bloki" cache'a key-value, dla których faktycznie liczy attention scores. Wstępny filtr decyduje, które segmenty kontekstu są relewantne dla bieżącego query.
- **Kontekst:** 1 048 576 tokenów wejściowych, 512 000 tokenów wyjściowych.
- **Multimodalność:** natywna (od pierwszego kroku treningu). Wejście: tekst + obraz + wideo. Wyjście: tekst.
- **Computer use:** sterowanie pulpitem (np. wprowadzanie faktur do klienta ERP).
- **Otwartość:** wagi mają trafić na HuggingFace i GitHub w ciągu 10 dni, repo do śledzenia: `huggingface.co/MiniMaxAI`. MiniMax nie zobowiązuje się jednak do pełnego open-source (dane treningowe, kod treningowy).

---

## Porównanie z konkurencją

| Benchmark | MiniMax M3 | GPT-5.5 | Opus 4.7 | Opus 4.8 | Gemini 3.1 Pro |
|---|---|---|---|---|---|
| SWE-Bench Pro | **59,0%** | 58,6% | 64,3% | **69,2%** | 54,2% |
| Terminal-Bench 2.1 | 66,0% | — | 66,1% | **74,6%** | — |
| OSWorld-Verified | 70,0% | — | — | **83,4%** | — |
| BrowseComp | **83,5** | — | 79,3 | — | — |
| MCP Atlas | 74,2% | — | — | — | — |
| KernelBench Hard | 28,8% | — | — | — | — |

**Cena za 1M tokenów (input / output):**
- MiniMax M3: **0,60 / 2,40 USD** (promo: 0,30 / 1,20)
- Claude Opus 4.8: **5 / 25 USD**
- GPT-5.5: **~10 / 30 USD**

**Uwaga:** wszystkie wyniki M3 są **vendor-run** — odpalone na infrastrukturze MiniMaxa, z ich scaffoldingiem agenta. Niezależne pomiary z Artificial Analysis i LMArena na dzień premiery jeszcze nie były dostępne.

---

## Cennik i dostępność

- **API pay-as-you-go:** 0,60 USD / 1M input, 2,40 USD / 1M output (≤512K kontekstu). Powyżej 512K — wyższy tier.
- **Multimodal image input:** 1,00 USD / 1M tokenów.
- **Subskrypcje (token plans):**
  - Plus: **20 USD/mies.** (~1,7 mld tokenów)
  - Max: **50 USD/mies.** (~5,1 mld tokenów)
  - Ultra: **120 USD/mies.** (~9,8 mld tokenów)
- **Dostęp:** MiniMax Code, MiniMax API, OpenRouter (model ID `minimax/minimax-m3-20260531`). Brak ograniczeń geograficznych.

---

## Reakcje branży i kontrowersje

- **Giełda:** akcje MiniMaxa spadły w dniu premiery o **12,38%** (obrót 1,49 mld HKD) — rynek niespecjalnie kupił narrację o "frontier killer".
- **Niezależna weryfikacja:** Thomas Wiegold i TechTimes podkreślają, że **każda liczba jest vendor-run**. Bez publikacji technicznego raportu i wag na HuggingFace claimy zostają claimami.
- **Suwerenność danych:** każdy prompt przez API MiniMaxa podlega chińskiej jurysdykcji (Narodowe Prawo Wywiadowcze z 2017). Dla wrażliwych workloadów — ryzyko.
- **Pozew:** Disney, Universal i Warner Bros. Discovery — sąd 26 maja 2026 odrzucił wniosek MiniMaxa o oddalenie sprawy o copyright (modele wideo).
- **Pozytywna strona:** scena "open-weights coding" zyskuje pierwszego realnego konkurenta dla Opusa. The Information opisuje to jako "open-source AI coding battle heating up" — chińskie laby (Qwen, DeepSeek, MiniMax) wymuszają obniżki u zachodnich graczy.

---

## Implikacje dla użytkownika

- **Dla developerów AI agents:** input 10× tańszy niż Opus 4.8 oznacza, że workflowy z 1M tokenów kontekstu (cała baza kodu, długie sesje agenta) wreszcie wchodzą w sensowny budżet.
- **Dla hobbystów:** jak wagi trafią na HuggingFace, da się odpalić lokalnie (z odpowiednim sprzętem) — pełna kontrola, brak data leak do Chin.
- **Dla firm enterprise:** trzeba poczekać na niezależne benchmarki. Vendor-run liczby + chińska jurysdykcja = czerwone flagi dla compliance.
- **Dla rynku:** Opus 4.8 zostaje liderem na najtwardszych benchmarkach (SWE-Bench Pro, OSWorld), ale presja cenowa jest realna — Anthropic i OpenAI będą musieli odpowiedzieć.

---

## Potencjalne kąty narracyjne do shorta

1. **"Chińczyk za 30 centów robi to, za co OpenAI kasuje 10 dolarów"** — kontrast 0,30 USD vs ~10 USD za milion tokenów. Konkret, drama, liczba.
2. **"M3 sam napisał paper. 12 godzin bez człowieka."** — historia o reprodukcji papera o fine-tuningu LLM: 18 commitów, 23 wykresy, zero kliknięć od programisty.
3. **"15 razy szybsze, 20 razy tańsze — i ktoś to zaraz pobierze na laptopa"** — MSA + open weights = lokalny frontier-class coding model za 10 dni.
4. **"MiniMax pobił GPT-5.5 i Gemini. A jego akcje spadły o 12%."** — paradoks: techniczny success, rynkowa klapa. Wbicie w narrację "rynek wie coś, czego my nie wiemy".
5. **"Pierwszy chiński model, który Anthropic powinien się bać"** — Opus 4.8 wciąż wygrywa o 10 punktów, ale na BrowseComp już przegrywa (79,3 vs 83,5).
6. **"Z 7,6% na 71,3% w 147 próbach — robot zoptymalizował GPU lepiej niż ludzie"** — historia o tym, jak M3 przez 147 iteracji wycisnął prawie 10× więcej wydajności z karty Nvidia Hopper.
7. **"Wagi za 10 dni. Wtedy się okaże, czy MiniMax kłamie."** — wszystkie benchmarki są vendor-run. Cała branża czeka, aż MiniMax pokaże karty.

---

## Źródła

- [MiniMax M3: Frontier Coding, 1M Context, Native Multimodality — All in One Model (oficjalny blog MiniMax)](https://www.minimax.io/blog/minimax-m3)
- [MiniMax-M3 debuts, eclipsing GPT-5.5 and Gemini 3.1 Pro on key benchmark performance for just 5-10% of the cost — VentureBeat](https://venturebeat.com/technology/minimax-m3-debuts-eclipsing-gpt-5-5-and-gemini-3-1-pro-on-key-benchmark-performance-for-just-5-10-of-the-cost)
- [MiniMax M3: Open-weight model with a million-token context challenges proprietary leaders — The Decoder](https://the-decoder.com/minimax-m3-open-weight-model-with-a-million-token-context-challenges-proprietary-leaders/)
- [MiniMax M3 Open-Weight Coding Model: Frontier Claims, Unverified Benchmarks — TechTimes](https://www.techtimes.com/articles/317532/20260601/minimax-m3-open-weight-coding-model-frontier-claims-unverified-benchmarks.htm)
- [MiniMax M3 - API Pricing & Benchmarks — OpenRouter](https://openrouter.ai/minimax/minimax-m3-20260531)
- [Pay as You Go - Models — MiniMax API Docs](https://platform.minimax.io/docs/guides/pricing-paygo)
- [China's MiniMax Launches New Model as Open-Source AI Coding Battle Heats Up — The Information](https://www.theinformation.com/briefings/chinas-minimax-launches-new-model-open-source-ai-coding-battle-heats)
- [MiniMax debuts AI model built for long and complex coding tasks — South China Morning Post](https://www.scmp.com/tech/tech-trends/article/3355529/minimax-debuts-ai-model-built-long-and-complex-coding-tasks)
- [MiniMax Challenges AI Rivals With M3 But Stops Short Of Full Open Source Commitment — Open Source For You](https://www.opensourceforu.com/2026/06/minimax-challenges-ai-rivals-with-m3-but-stops-short-of-full-open-source-commitment/)
- [MiniMax M3 Review: Finally Matching GPT-5.5 & Opus? — Thomas Wiegold Blog](https://thomas-wiegold.com/blog/minimax-m3-review/)
