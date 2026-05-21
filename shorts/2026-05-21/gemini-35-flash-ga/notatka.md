# Gemini 3.5 Flash wystartował — bije 3.1 Pro w benchmarkach, kosztuje 40% mniej

**Data:** 2026-05-21
**Temat:** Google na I/O 2026 wypuścił Gemini 3.5 Flash — model klasy "Flash", który w benchmarkach agentowych i kodowych pokonuje własnego flagowca 3.1 Pro, działa 4× szybciej i kosztuje 40% mniej, ale jednocześnie jest 3× droższy od poprzedniego Flasha.

---

## Kluczowe fakty i liczby

- Premiera: **19 maja 2026** podczas keynote Google I/O — model GA tego samego dnia w Gemini API, AI Studio, Google Antigravity, Vertex AI, aplikacji Gemini i Search AI Mode.
- Cena globalna: **$1.50 za 1M tokenów wejścia / $9.00 za wyjście**, cache **$0.15/M** (-90%). Regiony non-global: **$1.65 / $9.90**.
- Względem konkurencji wewnątrz rodziny: **3× drożej** niż Gemini 3 Flash Preview ($0.50/$3.00), **6× drożej** niż 3.1 Flash-Lite, ale **~40% taniej** niż Gemini 3.1 Pro ($2.50/$15).
- Kontekst: **1 048 576 tokenów wejścia**, **65 536 max output**. Modalności: tekst, obraz, audio, video, PDF na wejściu — tekst na wyjściu.
- Przepustowość: **289 tokenów/s** — około **4× więcej** niż inne modele frontier. Wewnętrzna wersja w Antigravity działa według Google **12× szybciej**.
- Knowledge cutoff: **styczeń 2026**. Dynamic thinking domyślnie włączone (domyślnie poziom medium, w preview było high).
- Brak computer use w tej wersji. **Gemini 3.5 Pro** zapowiedziany na **czerwiec 2026** — publiczność I/O "audibly groaned" gdy usłyszała o opóźnieniu.

## Specyfikacja techniczna

- Model ID API: `gemini-3.5-flash` (bez sufiksu preview), wersja wewnętrzna `3.5-flash-05-2026`.
- Zachowuje feature parity z resztą serii 3.x — Managed Agents API z natywnymi multi-turn sesjami, structured outputs, tool calling, grounding.
- Time-to-first-token przy thinking=high: **17,75 s**. Przy low/medium: **<5 s**.
- Klienci enterprise z dnia premiery: Shopify, Macquarie Bank, Salesforce (Agentforce), Ramp, Xero, Databricks.

## Cena i porównanie z konkurencją

| Model                  | Input $/1M | Output $/1M | Cache $/1M |
| ---------------------- | ---------- | ----------- | ---------- |
| Gemini 3.5 Flash       | **$1.50**  | **$9.00**   | $0.15      |
| Gemini 3.1 Pro         | $2.50      | $15.00      | $0.25      |
| Gemini 3.1 Flash-Lite  | $0.25      | $1.50       | —          |
| Gemini 3 Flash Preview | $0.50      | $3.00       | —          |
| GPT-5.5                | $5.00      | $30.00      | —          |
| Claude Opus 4.7        | $15.00     | $75.00      | —          |

- Względem **GPT-5.5**: 3.5 Flash kosztuje mniej więcej **jedną trzecią**.
- Względem **Claude Opus 4.7**: **10× taniej** na wejściu, **8× taniej** na wyjściu.

## Benchmarks

| Benchmark             | 3.5 Flash  | 3.1 Pro | Δ           |
| --------------------- | ---------- | ------- | ----------- |
| Terminal-Bench 2.1    | **76,2%**  | 70,3%   | **+5,9**    |
| SWE-Bench Pro Public  | 55,1%      | 54,2%   | +0,9        |
| MCP Atlas             | **83,6%**  | 78,2%   | +5,4        |
| Toolathlon            | 56,5%      | 49,4%   | +7,1        |
| OSWorld-Verified      | 78,4%      | 76,2%   | +2,2        |
| Finance Agent v2      | **57,9%**  | 43,0%   | **+14,9**   |
| GDPval-AA (Elo)       | **1656**   | 1314    | **+342**    |
| CharXiv Reasoning     | 84,2%      | 83,3%   | +0,9        |
| MMMU-Pro              | 83,6%      | 80,5%   | +3,1        |
| Blueprint-Bench 2     | 33,6%      | 26,5%   | +7,1        |
| MRCR v2 (128k)        | 77,3%      | 84,9%   | **-7,6**    |
| Humanity's Last Exam  | 40,2%      | 44,4%   | -4,2        |
| ARC-AGI-2             | 72,1%      | 77,1%   | -5,0        |

Kontra Claude Opus 4.7 i GPT-5.5:
- **MCP Atlas**: 3.5 Flash **83,6%** vs Opus 4.7 79,1% (+4,5) vs GPT-5.5 75,3% (+8,3).
- **SWE-bench Pro**: Opus 4.7 wciąż wygrywa z wynikiem **64,3%**, Flash daje 55,1%.
- **ARC-AGI-2**: GPT-5.5 wyżej niż 3.5 Flash.

Wzór: Flash dominuje w **agentowych, multi-step tool-use** zadaniach, ale traci na **reasoning intensywnym wiedzą** i **long-context retrieval** (-7,6 pkt na MRCR 128k).

## Dostępność i rollout

- Domyślny model w **Search AI Mode** dla wszystkich użytkowników na świecie od dnia premiery.
- Dostępność API: Gemini API, AI Studio, Vertex AI, Google Antigravity, Android Studio.
- Knowledge cutoff styczeń 2026, brak preview window — Google wypuścił od razu GA.

## Reakcje branży / dev community

- **Simon Willison**: "All three major AI labs appear to be starting to probe the price tolerance of their API customers." Zwraca uwagę że Flash kosztuje **3× więcej** niż poprzednik, mimo że Google używa go domyślnie w darmowym Search AI Mode dla wszystkich.
- **Hacker News**: główny wątek dyskusji nie dotyczył benchmarków, tylko **wzrostu cen** w całej rodzinie 3.x.
- **X (dawne Twitter)**: posty wskazujące na halucynacje — model który rozwiązał 14-bugowy challenge w Ruście "nie potrafił poprawnie opisać własnego cennika".
- **DEV Community** (test na realnym Rust code): 3.5 Flash znalazł 14/14 bugów, 3.1 Pro 11/14 — przy **4× szybszej** generacji.
- **Audience reaction na I/O**: "audibly groaned" gdy Sundar Pichai zapowiedział że **3.5 Pro pojawi się dopiero w czerwcu**.

## Implikacje

- **Wzór "Flash bije zeszłorocznego Pro"** się powtarza — to trzecia generacja z rzędu gdzie nowy Flash > stary Pro. Czas półrozpadu modelu Pro to dziś ~6 miesięcy.
- **Wszystkie 3 frontier laby podnoszą ceny** w 2026: Anthropic wprowadził Opus 4.7 z premium pricing, OpenAI dało GPT-5.5 za $5/$30, Google zrobił 3× wzrost na Flashu. Era $0.50/M dla "porządnego" modelu się skończyła.
- **MCP-first design**: 83,6% na MCP Atlas + Managed Agents API sygnalizują że Google projektuje Flasha pod orkiestrację agentów, nie pod single-turn Q&A.
- **Antigravity 12× faster**: Google ma wewnętrzną optymalizację jakiej nie udostępnia w API — możliwa przyszła monetyzacja jako "Antigravity Tier".

---

## Potencjalne kąty narracyjne do shorta

1. "Gemini Flash kosztuje teraz **3× więcej** niż 3 miesiące temu — i Google twierdzi że to *taniej*."
2. "Model za **$1.50/M** właśnie pokonał flagowca za **$2.50/M** od tego samego producenta. W tym samym tygodniu."
3. "**12× szybszy** Claude Code? Google właśnie pokazał wewnętrzną wersję Gemini w Antigravity. **289 tokenów na sekundę** vs Opus przy 24 t/s."
4. "Simon Willison: 'Wszystkie 3 laby AI sondują granicę tego, ile programiści są gotowi zapłacić.' Flash 3× droższy. Opus $75/M. GPT-5.5 $30."
5. "Gemini 3.5 Flash: **14/14 bugów** w Ruście znalezione. Ale na **MRCR 128k** spadł o **7,6 punktu** w stosunku do 3.1 Pro. Wie więcej o agencie, mniej o kontekście."
6. "Sundar powiedział '3.5 Pro w czerwcu'. Sala **audibly groaned**. Tak wygląda hype-fatigue w 2026."
7. "Flash bije Pro. Trzecia generacja z rzędu. Sześciomiesięczny cykl półrozpadu modelu Pro to nowa norma — i powód żeby **nie kupować rocznych kontraktów** na konkretną wersję."

---

## Źródła

- [Simon Willison — Gemini 3.5 Flash: more expensive, but Google plan to use it for everything (19 maja 2026)](https://simonwillison.net/2026/May/19/gemini-35-flash/)
- [llm-stats.com — Gemini 3.5 Flash: Benchmarks, Pricing, and Complete Specs](https://llm-stats.com/blog/research/gemini-3.5-flash-launch)
- [MarkTechPost — Google Introduces Gemini 3.5 Flash at I/O 2026](https://www.marktechpost.com/2026/05/20/google-introduces-gemini-3-5-flash-at-i-o-2026-a-faster-and-cheaper-model-for-ai-agents-and-coding/)
- [BuildFastWithAI — Gemini 3.5 Flash Review: Benchmarks, Price & API (2026)](https://www.buildfastwithai.com/blogs/gemini-3-5-flash-review-benchmarks-price-api)
- [NxCode — Gemini 3.5 Flash: Complete 2026 Guide](https://www.nxcode.io/resources/news/gemini-3-5-flash-complete-guide-benchmarks-pricing-api-2026)
- [DEV.to — Is Gemini 3.5 Flash Actually Better at Coding Than 3.1 Pro?](https://dev.to/hiyoyok/is-gemini-35-flash-actually-better-at-coding-than-31-pro-i-tested-it-with-real-rust-code-4m1c)
- [DigitalApplied — Gemini 3.5 Flash vs GPT-5.5 vs Opus 4.7: Agentic Coding](https://www.digitalapplied.com/blog/gemini-3-5-flash-vs-gpt-5-5-opus-4-7-agentic-coding)
- [Artificial Analysis — Gemini 3.5 Flash (high) vs Claude Opus 4.7](https://artificialanalysis.ai/models/comparisons/gemini-3-5-flash-vs-claude-opus-4-7-non-reasoning)
