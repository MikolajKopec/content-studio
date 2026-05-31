# Claude Opus 4.8 wjeżdża z Effort Controls i Dynamic Workflows w Claude Code

**Data:** 2026-05-31
**Temat:** Anthropic wypuszcza Opus 4.8 zaledwie 41 dni po 4.7 — suwak wysiłku, równoległe armie sub-agentów do 1000 sztuk i Fast Mode 3× tańszy.

---

## Kluczowe fakty i liczby

- **Premiera 28 maja 2026** — model dostępny na claude.ai, w API, na Amazon Bedrock, Vertex AI i Microsoft Foundry; cena **$5 / $25 za milion tokenów** (input/output), bez zmian wobec 4.7.
- Opus 4.8 jest **4× rzadziej** niż 4.7 przepuszcza błędy we własnym kodzie i jako pierwszy model przekroczył **10% na "all-pass"** Sierra Legal Agent Benchmark — w teście, gdzie wystarczy jedna pomyłka w łańcuchu, żeby cała sprawa "padła".
- **SWE-bench Pro: 69,2%** (Opus 4.7: 64,3%; GPT-5.5: 58,6%; Gemini 3.1 Pro: 54,2%). **SWE-bench Verified: 88,6%**. **OSWorld-Verified: 83,4%**. **Online-Mind2Web: 84%** — najlepszy wynik na rynku w testach agentów przeglądarkowych.
- **Humanity's Last Exam z narzędziami: 57,9%** (Opus 4.7: 54,7%; GPT-5.5: 52,2%). **GDPval-AA (max effort): 1 890 punktów** — o 137 wyżej niż 4.7 i o 121 wyżej niż GPT-5.5.
- Dynamic Workflows w Claude Code: **do 16 równoczesnych agentów** i **1 000 agentów łącznie w jednym przebiegu**, planowanie żyje w skrypcie JS zamiast w kontekście modelu.
- Demo Anthropic: port **750 000 linii kodu z Zig do Rust** w projekcie Bun, **99,8% testów przeszło**, **11 dni** pracy setek sub-agentów w tle.
- Fast Mode: **2,5× szybszy** output, **3× tańszy** niż przy 4.6/4.7 — z $30/$150 schodzi do **$10/$50** za milion tokenów.
- Kontekst **1M tokenów** jest teraz domyślny. Effort Controls (low/medium/high/extra/max) dostępne na claude.ai, w Cowork i Claude Code; "high" jest defaultem, "max" mieli tokeny dla benchmarków typu GDPval.
- Opus 4.8 robi te same zadania w **15% mniej iteracji** i **35% mniej tokenów outputu** niż 4.7 na tych samych benchmarkach.

## Specyfikacja techniczna — Dynamic Workflows

- To **research preview** dla planów Enterprise, Team i Max. Wymaga Claude Code w wersji **v2.1.154+**.
- Architektura: jeden agent-planista pisze **skrypt JavaScript** orkiestrujący setki sub-agentów. Pośrednie wyniki trzymane są w zmiennych skryptu, nie w oknie kontekstowym Opus 4.8 — to jest sposób Anthropic na obejście limitów kontekstu nawet przy 1M tokenów.
- Model konwergencji: agenci atakują problem z niezależnych kątów, inni próbują obalić ich wnioski, wyniki są weryfikowane przed scaleniem. Run iteruje aż odpowiedzi się zgodzą.
- Twardy limit **16 równolegle / 1 000 łącznie** — to nie soft cap, to wymuszone runtime.
- Messages API: nowa zmiana pozwala wstawiać wpisy **system** w środku tablicy messages — można w locie zmieniać uprawnienia, budżet tokenów, kontekst bez wywracania prompt cache.

## Porównanie z konkurencją

| Benchmark | Opus 4.8 | Opus 4.7 | GPT-5.5 | Gemini 3.1 Pro |
|---|---|---|---|---|
| SWE-bench Pro | **69,2%** | 64,3% | 58,6% | 54,2% |
| SWE-bench Verified | **88,6%** | 87,6% | — | 80,6% |
| Terminal-Bench 2.1 | 74,6% | 66,1% | **78,2%** | 70,3% |
| OSWorld-Verified | **83,4%** | 82,8% | 78,7% | 76,2% |
| Online-Mind2Web | **84%** | — | < 84% | — |
| Humanity's Last Exam (tools) | **57,9%** | 54,7% | 52,2% | 51,4% |
| GPQA Diamond | 93,6% | 94,2% | — | **94,3%** |
| Finance Agent v2 | 53,9% | 51,5% | 51,8% | **57,9%** (Gemini 3.5 Flash) |
| GDPval-AA | **1 890** | 1 753 | 1 769 | 1 314 |

Wniosek z benchmarków: Opus 4.8 wygrywa kodowanie, computer-use i agentic-reasoning. **GPT-5.5 trzyma koronę terminala**. **Gemini 3.5 Flash** zostaje liderem ceny/szybkości — Intelligence Index 55,3 przy ~70% niższym koszcie i ~4× wyższej prędkości niż Opus 4.8 (61,4).

## Reakcje branży

- **Bridgewater Associates** w komentarzu dla TechCrunch: największą zmianą jest "skłonność Opus 4.8 do proaktywnego flagowania problemów w danych wejściowych i wyjściowych analizy" — czego konkurencja nie robi.
- The Decoder nazwał release "**modest but tangible improvement**" — Anthropic sam użył tej frazy w blog poście, sygnalizując, że to nie skok generacyjny, tylko przyspieszony cycle przed Mythos.
- **Jarred Sumner / Bun**: użył Dynamic Workflows w demo migracji 750k linii. W grudniu 2025 Anthropic przejął Bun; pełny port runtime z Zig na Rust (ok. 1M linii, 6 755 commitów) zamknął się w 6 dni z Claude jako primary coding agent.
- gHacks i MarkTechPost zwracają uwagę, że **41 dni** między 4.7 a 4.8 to nowy rekord — wcześniej Anthropic szedł kwartalnymi rytmami.

## Oś czasu i Mythos

- **7 kwietnia 2026** — accidental leak Claude Mythos Preview; Anthropic potwierdza istnienie i nazywa to "step change".
- **Project Glasswing** — NDA-bound konsorcjum testujący Mythos na realnych workloadach w zamian za safety telemetry.
- **28 maja 2026** — premiera Opus 4.8 + zapowiedź: "**Mythos-class models to all our customers in the coming weeks**". Wcześniej Anthropic deklarował, że Mythos Preview nie wyjdzie publicznie — wyjdą "Mythos-class".
- Trasa: testowanie zabezpieczeń na Opusach -> rozszerzenie Glasswing -> ograniczony enterprise API. Analitycy obstawiają **Q3-Q4 2026** dla enterprise, konsumencko **2027+**.

## Implikacje dla użytkownika

- Dla deweloperów: **dyskretny skok jakości** (SWE-bench Pro +5 pp), ale gigantyczny skok w skali zadań — codebase-wide migracje przestają być nierealne.
- Dla użytkownika claude.ai: suwak Effort daje świadomą kontrolę nad rachunkiem za tokeny — "low" pali mniej rate limitu, "max" daje top benchmarków.
- Dla rynku: cena bez zmian, ale **Fast Mode 3× tańszy** = sygnał, że Anthropic ma headroom na cięcia, jeśli Gemini 3.5 Flash zacznie odbierać udziały.
- Dla regulatorów: rosnąca autonomia (1000 sub-agentów w tle, codebase-scale migracje, 99,8% testów) to nowa skala "agentic actions" — pierwszy model, w którym jeden prompt prowadzi do tysięcy commitów.

---

## Potencjalne kąty narracyjne do shorta

1. **"41 dni i nowy Claude — Anthropic zmienia tempo"** — kontrast z kwartalnymi cyklami, sygnał paniki przed Mythos vs. GPT-5.5.
2. **"1000 botów Claude'a pisze za ciebie kod, a ty śpisz"** — Dynamic Workflows, 16 jednocześnie, 1000 łącznie, demo Bun w 11 dni.
3. **"750 000 linii kodu w 11 dni — i 99,8% testów wciąż działa"** — konkretne demo Bun Zig->Rust, namacalne dla deweloperów.
4. **"4× rzadziej przepuszcza twoje bugi — najszczerszy Claude w historii"** — "honesty" jako USP, kontrast do halucynujących modeli.
5. **"Suwak, który mówi Claude'owi: myśl mocniej za moją kasę"** — Effort Controls jako pierwsza widoczna w UI ekonomia tokenów.
6. **"Fast Mode 3× tańszy: Anthropic ścina cenę, zanim Gemini zje rynek"** — strategia cenowa, $30/$150 -> $10/$50.
7. **"Pierwszy model, który zdał Legal Agent Benchmark all-pass"** — 10% próg, prawnicy stają się następną branżą do automatyzacji.

---

## Źródła

- [Introducing Claude Opus 4.8 — Anthropic](https://www.anthropic.com/news/claude-opus-4-8) — primary, blog producenta z 28.05.2026.
- [Anthropic releases Opus 4.8 with new 'dynamic workflow' tool — TechCrunch](https://techcrunch.com/2026/05/28/anthropic-releases-opus-4-8-with-new-dynamic-workflow-tool/) — cytat Bridgewater, oficjalne stanowisko o Mythos.
- [Anthropic Ships Claude Opus 4.8 Alongside Dynamic Workflows and Cheaper Fast Mode, With Workflows Capped at 1,000 Subagents — MarkTechPost](https://www.marktechpost.com/2026/05/28/anthropic-ships-claude-opus-4-8-alongside-dynamic-workflows-and-cheaper-fast-mode-with-workflows-capped-at-1000-subagents/) — techniczne detale architektury workflow.
- [Claude Opus 4.8 Benchmarks Explained — Vellum](https://www.vellum.ai/blog/claude-opus-4-8-benchmarks-explained) — pełna tabela benchmarków vs. 4.7, GPT-5.5, Gemini.
- [Anthropic ships Claude Opus 4.8 as a "modest but tangible improvement" that tops GPT-5.5 in most benchmarks — The Decoder](https://the-decoder.com/anthropic-ships-claude-opus-4-8-as-a-modest-but-tangible-improvement-that-tops-gpt-5-5-in-most-benchmarks/) — analiza GDPval, 15%/35% redukcji.
- [Anthropic Releases Claude Opus 4.8 With Dynamic Workflows, Just 41 Days After Opus 4.7 — Technology.org](https://www.technology.org/2026/05/29/anthropic-claude-opus-4-8-dynamic-workflows/) — moment 41 dni jako rekord cyklu.
- [Claude Mythos Preview — red.anthropic.com](https://red.anthropic.com/2026/mythos-preview/) — official primary o Mythos i Project Glasswing.
- [Anthropic releases new model, Opus 4.8 — Axios](https://www.axios.com/2026/05/28/anthropic-opus-release-mythos) — Mythos roadmap.
- [Anthropic Releases Claude Opus 4.8 With Effort Controls and Dynamic Workflows for Claude Code — gHacks](https://www.ghacks.net/2026/05/30/anthropic-releases-claude-opus-4-8-with-effort-controls-and-dynamic-workflows-for-claude-code/) — szczegóły Effort Controls UI.
