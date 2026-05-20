# Gemini 3.5 Flash GA — pokonuje 3.1 Pro w benchmarkach za 1/3 ceny Claude'a

**Data:** 2026-05-20
**Temat:** Google wypuszcza na I/O 2026 model Flash, który w benchmarkach agentic i kodu bije własne flagowe Pro oraz mieści się dwa punkty od Claude Opus 4.7 — za jedną trzecią ceny.

---

## Kluczowe fakty i liczby

- Premiera **19 maja 2026** na Google I/O — od razu **GA** (pominięto fazę preview), w Gemini API, AI Studio, Antigravity, apce Gemini, AI Mode w wyszukiwarce i Android Studio.
- Cena: **1,50 USD wejścia / 9,00 USD wyjścia** za 1M tokenów, cache wejścia **0,15 USD**. Globalnie; w regionach non-global 1,65 / 9,90.
- Kontekst: **1 048 576 tokenów wejścia**, **65 536 tokenów wyjścia**. Modalności wejściowe: tekst, obraz, audio, wideo.
- API model ID: `gemini-3.5-flash` (wersja wewnętrzna `3.5-flash-05-2026`). Knowledge cutoff styczeń **2026**.
- Benchmarki agentic/kod (bije własne 3.1 Pro): **Terminal-Bench 2.1 — 76,2%** (vs 70,3%), **MCP Atlas — 83,6%** (vs 78,2%), **CharXiv Reasoning — 84,2%**, **Finance Agent v2 — 57,9%** (vs 43,0%), **GDPval-AA Elo 1656** (vs 1314).
- Artificial Analysis Intelligence Index: **55** — dwa punkty od **Claude Opus 4.7 (57)**, pięć od **GPT-5.5 (60)**, przy ~1/3 ceny GPT-5.5 (który kosztuje 5 / 30 USD).
- Prędkość: **284,2 tokenów/s** (mediana porównywalnych modeli: 62,9 t/s). Google deklaruje **4× szybciej** niż frontier konkurencji, do **12× szybciej** w Antigravity.
- Słabe punkty vs 3.1 Pro: **MRCR v2 (128k) — 77,3% vs 84,9%** (–7,6 pp), **Humanity's Last Exam — 40,2% vs 44,4%** (–4,2 pp). Time-to-first-token **17,75 s** (mediana 2,73 s) — dynamic thinking domyślnie włączone.
- Wzrost ceny: **3× drożej** niż Gemini 3 Flash Preview, **6× drożej** niż 3.1 Flash-Lite — Willison twierdzi, że wszystkie trzy duże laby (Google, OpenAI 2× po GPT-5.5, Anthropic 1,46× po Opus 4.7) "testują tolerancję cenową API customers".
- Demo na I/O: agent zbudował działający OS w **12 godzin**, używając **93 równoległych sub-agentów** i **mniej niż 1000 USD** kredytów API.

## Specyfikacja techniczna

- **Cztery poziomy thinking**: minimal, low, medium, high — z preserwacją myśli między turami konwersacji.
- Brak **computer use** (regresja vs poprzednie wersje Flash).
- Multi-modal input (tekst/obraz/audio/wideo), output tylko tekstowy (do generacji wideo Google ma osobne **Gemini Omni**).
- Zaprojektowany pod **długie, równoległe agentic workflows** — Google wprost mówi: "many fast agents over one slow monolithic run".
- Dostępny w **Managed Agents w Gemini API** z hostowanymi sandboxami Linux (Bash, Python, Node, browsing, custom skills).

## Porównanie z konkurencją

| Model | Intelligence Index | Cena input/output (1M) | Output speed |
|---|---|---|---|
| Gemini 3.5 Flash | **55** | **1,50 / 9,00 USD** | **284 t/s** |
| Claude Opus 4.7 | 57 | ~15 / 75 USD (szac.) | ~60 t/s |
| GPT-5.5 | 60 | 5,00 / 30,00 USD | n/a |
| Gemini 3.1 Pro | 53 | 2,50 / 15,00 USD | wolniej |

Flash kosztuje **40% mniej** od Gemini 3.1 Pro i jest jednocześnie lepszy w kodzie i agentic. R&D World policzył, że w benchmarkach mieści się dwa punkty od flagowego Anthropic za jedną trzecią ceny.

## Pozycjonowanie biznesowe

- Google **świadomie rezygnuje** z modelu chatbotowego — Flash jest pozycjonowany jako "model do tysięcy wywołań pod kapotą agentów".
- DeepMind CTO: "3.5 Flash offers an incredible combination of quality and low latency. It outperforms on nearly all benchmarks".
- Google oficjalnie: "frontier intelligence with action" i "a major leap forward in building more capable, intelligent agents".
- VentureBeat: Google twierdzi, że Flash **może obniżyć enterprise AI costs o ponad 1 mld USD rocznie** (banki, fintech, data science automatyzujące wielotygodniowe workflow).
- **Gemini 3.5 Pro** w testach wewnętrznych, premiera planowana w ciągu miesiąca.

## Reakcje branży

- **Simon Willison**: zaskoczony skalą wdrożenia ("rolled out this more expensive model across their free consumer products to billions of people"); zauważa, że Artificial Analysis za pełny przebieg ich benchmarku zapłaciło **1551 USD** za Flash (high) vs 892 USD za 3.1 Pro Preview — bo Flash "myśli" dłużej.
- **Google AI Developers Forum**: split opinii — jedni piszą "responses are lightning fast", inni że model "kept looping endlessly. Compacting, verifying, over and over" w Antigravity 2.0.
- **TechCrunch**: "Google bets its next AI wave on agents, not chatbots" — strategia odejścia od konwersacji w stronę autonomii.
- **Engadget**: Google twierdzi, że Flash "rywalizuje z dużymi modelami flagowymi" w kodzie i agentic — pierwszy raz "Flash" przekroczył tę linię.
- **Artificial Analysis**: Flash plasuje się w **prawym górnym kwadrancie** Pareto frontier intelligence-vs-speed.

## Implikacje dla rynku

- Wojna cenowa w agentic AI weszła w nową fazę: za 1,50 USD wejścia można dostać model, który bije Claude'a o 2 punkty w niezależnym indeksie inteligencji.
- Dev tools (Cursor, Windsurf, Cline, Antigravity) dostają tańszy frontier — to presja na Anthropic i OpenAI, by obniżyły ceny Opus/GPT-5.5 albo zaakceptowały utratę volumeu.
- Strategia "many fast agents in parallel" wymaga taniego modelu — Google jest pierwszym, który go ma na poziomie flagowym.
- Jednoczesny wzrost cen Flash (3× drożej) sygnalizuje, że era dumpingowych cen tokenów się kończy — labs testują, ile rynek wytrzyma.

---

## Potencjalne kąty narracyjne do shorta

- **"Tani model Google'a właśnie pobił Claude'a o 2 punkty — za jedną trzecią ceny"**
- **"Gemini Flash bije Gemini Pro. Własne flagowe."**
- **"Agent zbudował system operacyjny w 12 godzin za mniej niż 1000 dolarów"**
- **"Google przestał walczyć o chatbota. Stawia wszystko na agentów."**
- **"1,50 dolara za milion tokenów — i lepsze niż GPT-5.5 w kodowaniu"**
- **"Wszystkie trzy laby AI właśnie sprawdzają, ile dasz radę zapłacić"**
- **"93 agentów AI pracowało równolegle. Wynik: działający OS."**

---

## Źródła

- [Gemini 3.5: frontier intelligence with action — blog.google](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-5/)
- [With Gemini 3.5 Flash, Google bets its next AI wave on agents, not chatbots — TechCrunch](https://techcrunch.com/2026/05/19/with-gemini-3-5-flash-google-bets-its-next-ai-wave-on-agents-not-chatbots/)
- [Gemini 3.5 Flash: more expensive, but Google plan to use it for everything — Simon Willison](https://simonwillison.net/2026/May/19/gemini-35-flash/)
- [Gemini 3.5 Flash — Intelligence, Performance & Price Analysis — Artificial Analysis](https://artificialanalysis.ai/models/gemini-3-5-flash)
- [Google's Gemini 3.5 Flash scores within two points of Anthropic's flagship at a third of the price — R&D World](https://www.rdworldonline.com/googles-gemini-3-5-flash-scores-within-two-points-of-anthropics-flagship-at-a-third-of-the-price/)
- [Gemini 3.5 Flash: Benchmarks, Pricing, and Complete Specs — llm-stats.com](https://llm-stats.com/blog/research/gemini-3.5-flash-launch)
- [Google I/O 2026: Gemini 3.5 Flash, Omni, Spark, Antigravity 2.0 — Latent Space](https://www.latent.space/p/ainews-google-io-2026-gemini-35-flash)
- [Google says Gemini 3.5 Flash rivals 'large flagship models' for coding and agentic tasks — Engadget](https://www.engadget.com/2176592/google-says-gemini-3-5-flash-rivals-large-flagship-models-for-coding-and-agentic-tasks/)
