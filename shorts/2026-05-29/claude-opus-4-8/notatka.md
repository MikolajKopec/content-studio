# Claude Opus 4.8 — Anthropic bije GPT-5.5, dostępny od ręki

**Data:** 2026-05-29
**Temat:** Anthropic wypuszcza Opus 4.8 zaledwie 41 dni po 4.7 — rekordowy skok w matematyce i kodowaniu, nowy tryb fast 3x tańszy, model bije GPT-5.5 na większości benchmarków, dostępny natychmiast wszędzie.

---

## Kluczowe fakty i liczby

- Opus 4.8 wyszedł **28 maja 2026** — zaledwie **41 dni** po Opus 4.7. Anthropic sam nazywa to "modest but tangible improvement" (skromna, ale wyraźna poprawa).
- SWE-bench Pro (kodowanie agentowe): **69,2%** vs **64,3%** u Opus 4.7 vs **58,6%** u GPT-5.5 — przewaga nad GPT-5.5 to **+10,6 pkt**.
- SWE-bench Verified: **88,6%** (z **87,6%** u 4.7). SWE-bench Multilingual: **84,4%**.
- USAMO 2026 (matematyka): **96,7%** vs **69,3%** u Opus 4.7 — to **największy skok w historii linii Opus** (+27,4 pkt).
- GPQA Diamond: **93,6%**. Humanity's Last Exam: **49,8%** bez narzędzi, **57,9%** z narzędziami (z narzędziami GPT-5.5 ma tylko 41,4% bez — przewaga Opus +8,4 pkt).
- Computer use (OSWorld-Verified): **83,4%** vs **78,7%** u GPT-5.5. Tool use (MCP-Atlas): **82,2%** vs **75,3%** u GPT-5.5.
- Efektywność: Opus 4.8 zużywa **15% mniej przebiegów na zadanie** i **35% mniej tokenów wyjściowych** niż 4.7.
- Cena standardowa bez zmian: **5 $ / mln** tokenów wejściowych, **25 $ / mln** wyjściowych.
- Nowy tryb fast: **2,5x szybszy** za **10 $ / 50 $ za mln** tokenów — **3x taniej** niż fast mode w poprzednich modelach Claude.
- W kodowaniu przepuszcza błędy bez komentarza **~4x rzadziej** niż Opus 4.7 (poprawa "uczciwości" / honesty).
- W GitHub Copilot tego samego dnia z mnożnikiem **15x** do startu Usage Based Billing **1 czerwca 2026**.

## Benchmarki (Opus 4.8 vs Opus 4.7 vs GPT-5.5)

| Benchmark | Opus 4.8 | Opus 4.7 | GPT-5.5 |
|---|---|---|---|
| SWE-bench Pro | **69,2%** | 64,3% | 58,6% |
| SWE-bench Verified | **88,6%** | 87,6% | — |
| USAMO 2026 (matematyka) | **96,7%** | 69,3% | — |
| GPQA Diamond | **93,6%** | — | — |
| OSWorld-Verified (computer use) | **83,4%** | — | 78,7% |
| MCP-Atlas (tool use) | **82,2%** | — | 75,3% |
| Humanity's Last Exam (bez narzędzi) | **49,8%** | — | 41,4% |
| Terminal-Bench 2.1 | 74,6% | — | **78,2–83,4%** |

> Uwaga: Terminal-Bench to jedyna duża kategoria, w której **GPT-5.5 wygrywa** — 78,2% (publiczny harness Terminus-2) lub aż 83,4% pod natywnym harnessem Codex CLI, vs 74,6% Opus 4.8. Wynik zależny od harnessu.

## Nowe funkcje

- **Dynamic workflows** (research preview): model uruchamia setki równoległych sub-agentów w jednej sesji, ogarnia migracje kodu na skalę setek tysięcy linii.
- **Effort control** (sterowanie wysiłkiem): domyślnie high, do najtrudniejszych zadań tryby **xhigh** i **max**. Regulacja w Claude.ai i Cowork — wpływa na zużycie tokenów i jakość.
- **Messages API**: przyjmuje wpisy systemowe wewnątrz tablicy messages — można dorzucać instrukcje w trakcie zadania.
- **Honesty / alignment**: model częściej sygnalizuje niepewność, rzadziej wygłasza nieuzasadnione twierdzenia, niższe wskaźniki "deception" niż 4.7. VentureBeat opisuje to jako poziom alignmentu zbliżony do klasy Mythos.

## Cena i dostępność

- Standard: **5 $ / 25 $** za mln tokenów (in/out) — bez zmian względem 4.7, brak dopłat przy długim kontekście.
- Fast mode: **10 $ / 50 $** za mln (2,5x szybciej).
- Kontekst: **1 mln** tokenów wejścia, do **128K** wyjścia.
- GPT-5.5 dla porównania: **3 $ / 15 $** (a w niektórych źródłach 5 $ / 30 $ z dopłatą powyżej 272K kontekstu) — czyli tańszy w bazie, ale z surcharge na długim kontekście potrafi wyjść drożej.
- Dostępny natychmiast: platforma Claude, Claude API (`claude-opus-4-8`), AWS Bedrock, Google Cloud Vertex AI, Microsoft Foundry.
- GitHub Copilot: Pro+, Business, Enterprise; selektor modelu w VS Code, GitHub.com, JetBrains, Xcode, Eclipse, GitHub Mobile; admini Business/Enterprise muszą włączyć politykę.

## Kontekst rynkowy

- Anthropic zapowiada tańsze modele dorównujące Opus 4.8 oraz udostępnienie modeli klasy **Mythos** wszystkim klientom "w nadchodzących tygodniach".
- Premiera wpada w okres wyścigu IPO Anthropic vs OpenAI — Yahoo Finance opisuje Opus 4.8 jako kartę w tej rozgrywce.

---

## Potencjalne kąty narracyjne do shorta

**Skok matematyczny, jakiego nie było:** "Z 69 na 97 procent na olimpiadzie matematycznej w jednym modelu — to największy skok w historii Claude'a." (USAMO 2026: 96,7% vs 69,3%)

**41 dni:** "Anthropic wypuściło nowy flagowiec 41 dni po poprzednim — ale to nie marketing, benchmarki naprawdę poszły w górę."

**Bije GPT-5.5 prawie wszędzie — oprócz jednego:** "Claude Opus 4.8 wygrywa z GPT-5.5 w kodowaniu, computer use i tool use, ale jest jeden benchmark, gdzie OpenAI nadal rządzi — terminal."

**3x tańszy szybki tryb:** "Nowy fast mode Claude'a jest 2,5x szybszy i trzy razy tańszy niż wcześniej — Anthropic walczy o programistów na cenę."

**Pułapka GitHub Copilot:** "Opus 4.8 wszedł do Copilota z mnożnikiem 15x — a 1 czerwca GitHub przechodzi na płacenie za tokeny. Twój rachunek za AI właśnie się zmienia."

**Mniej kłamie o własnym kodzie:** "Nowy Claude cztery razy rzadziej przepuszcza błąd we własnym kodzie bez słowa — Anthropic mierzy teraz, jak bardzo model ściemnia."

**Setki agentów naraz:** "Jeden prompt, setki równoległych sub-agentów, migracja kodu na skalę setek tysięcy linii — to dynamic workflows w Opus 4.8."

---

## Źródła

- [Claude Opus 4.8 Release, Benchmarks And More — llm-stats](https://llm-stats.com/blog/research/claude-opus-4-8-launch)
- [Claude Opus 4.8 is generally available for GitHub Copilot — GitHub Changelog](https://github.blog/changelog/2026-05-28-claude-opus-4-8-is-generally-available-for-github-copilot/)
- [Anthropic ships Claude Opus 4.8 as a "modest but tangible improvement" — The Decoder](https://the-decoder.com/anthropic-ships-claude-opus-4-8-as-a-modest-but-tangible-improvement-that-tops-gpt-5-5-in-most-benchmarks/)
- [Anthropic Launches Claude Opus 4.8 With Gains in Coding and Honesty — MacRumors](https://www.macrumors.com/2026/05/28/anthropic-claude-opus-4-8/)
- [Anthropic's Claude Opus 4.8 is here with 3X cheaper fast mode — VentureBeat](https://venturebeat.com/technology/anthropics-claude-opus-4-8-is-here-with-3x-cheaper-fast-mode-and-near-mythos-level-alignment)
- [Claude Opus 4.8 vs GPT-5.5: Benchmarks & Cost Compared — Digital Applied](https://www.digitalapplied.com/blog/claude-opus-4-8-vs-gpt-5-5-frontier-comparison)
- [Anthropic debuts flagship Claude Opus 4.8 AI model as IPO race with OpenAI heats up — Yahoo Finance](https://finance.yahoo.com/news/anthropic-debuts-flagship-claude-opus-48-ai-model-as-ipo-race-with-openai-heats-up-170000527.html)
