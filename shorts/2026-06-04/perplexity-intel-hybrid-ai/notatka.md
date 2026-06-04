# Perplexity demonstruje hybrydowy lokalny+chmurowy orchestrator na keynote Intela

**Data:** 2026-06-04
**Temat:** Na Computex 2026 w Tajpej Aravind Srinivas (CEO Perplexity) wszedł na scenę Intela z Lip-Bu Tanem i pokazał pierwszy publiczny "hybrid local-server inference orchestrator" — software, który w trakcie zadania sam decyduje, co poleci do chmury, a co zostanie na NPU laptopa.

---

## Kluczowe fakty i liczby

- Demo odbyło się **2 czerwca 2026** na keynote Intela podczas **Computex 2026** w Tajpej; Srinivas dzielił scenę z Lip-Bu Tanem, CEO Intela.
- Funkcja nazywa się **hybrid agentic inference** i trafia do produktu **Perplexity Computer** w **lipcu 2026** (Windows PC, później NVIDIA RTX Spark).
- Demo działało na **Intel Core Ultra 300 "Panther Lake"** (Core Ultra Series 3) — pierwszym CPU Intela na procesie **Intel 18A**, z **50 TOPS na NPU**, **12 Xe-cores Arc** i do **16 rdzeni CPU**, łącznie do **180 platform TOPS**.
- Lokalny "kompaktowy" model klasyfikuje wrażliwość, koszt i wymaganą jakość — następnie dzieli zadanie pomiędzy on-device a frontier modele w chmurze (Claude, Gemini, GPT, Grok — Perplexity Computer koordynuje **19 modeli**).
- Przy okazji Intel ogłosił dostępność **Xeon 6+ "Clearwater Forest"** — flagowy **Xeon 6990E+** ma **288 e-cores (Darkmont)**, **576 MB L3**, **12 kanałów DDR5-8000 (~750 GB/s/socket)**, TDP od **330 do 450 W**, układ jest pierwszym data-center CPU na **Intel 18A** z opakowaniem **Foveros Direct 3D** (12 tile'ów 18A na 3 tile'ach Intel 3).
- Srinivas zapowiedział, że produkt będzie **"chip agnostic, model agnostic"** — orchestrator ma trafić też na NVIDIA RTX Spark i inne platformy.
- Perplexity twierdzi, że ich przychody **wzrosły 3x w 5 miesięcy** — co Srinivas wiązał z koniecznością optymalizacji "token value per watt".

## Jak działa hybrid orchestrator

Architektura — w odróżnieniu od typowego "albo cały model lokalnie, albo całe zapytanie w chmurze" — działa **per podzadanie**:

1. Użytkownik daje Perplexity Computer zadanie agentowe (np. "przeanalizuj te dokumenty M&A i napisz memo").
2. **Lokalny mały model** (działa na NPU + Arc GPU Core Ultra Series 3) pełni rolę **"traffic copa"** — ocenia każdy fragment workloada wg czterech kryteriów: **privacy, cost, energy, accuracy + dostępna pojemność sprzętu**.
3. Wrażliwe fragmenty (dane finansowe, medyczne, prywatne pliki) **zostają na urządzeniu** — przetwarzane przez lokalny model.
4. Zadania wymagające ciężkiego rozumowania (long-context reasoning, multi-step agentic) **idą do frontier modeli** w infrastrukturze Perplexity.
5. System **prosi o zgodę użytkownika** przed wysłaniem wrażliwych fragmentów do chmury — to ma być odpowiedź na obawy enterprise o data governance.

W demo na scenie Srinivas użył Perplexity Personal Computer do przetworzenia **poufnych materiałów deal'owych** — orchestrator w czasie rzeczywistym pokazał, które fragmenty zostały na laptopie, a które poszły do chmury. Cytat: *"Orchestrator jest tam, to kawałek softu decydujący, czy zapytanie lub część AI workloada jest lepiej zrobiona lokalnie na urządzeniu na edge, czy potrzebuje wyższego compute serwerów chmurowych."*

## Specyfikacja Intel Core Ultra Series 3 + Xeon 6+

| Parametr | Core Ultra Series 3 (Panther Lake, klient) | Xeon 6+ (Clearwater Forest, DC) |
|---|---|---|
| Proces | **Intel 18A** (pierwszy klient) | **Intel 18A** (pierwszy DC) |
| Rdzenie | do **16 CPU** | do **288 e-cores (Darkmont)** |
| NPU / akceleracja | **50 TOPS NPU 5** | brak NPU — agentic AI na CPU |
| GPU | **12 Xe3-cores Arc**, ~120 TOPS | — |
| Platform TOPS | **~180 TOPS** total | — |
| Cache | — | **576 MB L3** |
| Pamięć | LPDDR5X | **12× DDR5-8000 (~750 GB/s)** |
| TDP | mobile (~15-45 W) | **330-450 W** |
| Bateria | do **27 h** | — |
| Dostępność | od **27 stycznia 2026**, 325+ designów | **immediately** przez Dell/HPE/Lenovo/Supermicro |
| Wydajność (claim) | +60% MT vs Lunar Lake, +77% gaming, **1,9× LLM perf**, **4,5× VLA throughput** | **+30% per-thread** vs AMD EPYC 9965 (192c) |

Intel pozycjonuje Xeon 6+ jasno: **agentic AI density** — twierdzą, że agenci wracają CPU do data center, bo nie każdy krok agenta potrzebuje GPU, a 288 cores na socket daje ekstremalne concurrency tanio.

## Porównanie z konkurencją

| Rozwiązanie | Routing decision | Local model | Cloud model | Dostępność | Kluczowa różnica |
|---|---|---|---|---|---|
| **Perplexity hybrid orchestrator** | **per podzadanie, w trakcie, automatycznie** | mały model na NPU/GPU | Claude/Gemini/GPT/Grok via Perplexity | lipiec 2026 (Perplexity Computer) | Pierwsze publiczne dynamiczne, autonomiczne routowanie task-level |
| **Apple Intelligence + Private Cloud Compute** | per zapytanie, ale wybór local vs PCC robi system Apple | Apple Foundation Models on-device | PCC (Apple silicon servers, weryfikowalna privacy) | dostępne od 2024-2025 | Cała chmura w zaufanym, weryfikowalnym enclave Apple — ale tylko Apple modele |
| **Microsoft Copilot+ PC + Foundry Local + Windows Agent Framework** | Windows Agent Framework abstrahuje split, DirectML 2.0 | Phi/Whisper/SD via ONNX Runtime na NPU | Azure AI Foundry | Build 2026, w trakcie rolloutu | Ekosystemowo zamknięte w Windows, ale otwarte na NPU Intel/Qualcomm/AMD |
| **Google Antigravity CLI (`agy`)** | dekompozycja na subagentów, nie hybrid local/cloud | brak dedykowanego trybu local-first | Gemini w chmurze | dostępne (od 2025) | To agent harness do dev workflow, nie inferencyjny router prywatności |

Kluczowa **różnica vs Antigravity**: Antigravity dekomponuje **zadanie na subagentów** (wszystkie w chmurze), Perplexity dekomponuje **inference workload na lokal+chmurę**. To dwa różne wymiary orkiestracji.

**Vs Apple**: Apple ma elegancki model (PCC + on-device) ale tylko **w obrębie Apple silicon i Apple modeli**. Perplexity chce być **chip-agnostic i model-agnostic** — to bardziej radykalna, otwarta propozycja, ale bez audytowalnej infrastruktury chmurowej à la PCC.

**Vs Copilot+ PC**: Microsoft ma podobny pomysł (Windows Agent Framework + Foundry Local), ale wszystko zamknięte w stacku Microsoftu (Azure AI Foundry jako endpoint chmurowy). Perplexity to **third-party**, który chce siedzieć **na cudzym sprzęcie i cudzych modelach**.

## Implikacje dla użytkownika

- **Prywatność jako default**: dane finansowe/medyczne/osobiste nie wychodzą z laptopa, chyba że user wyraźnie pozwoli — to ma być killer feature dla enterprise compliance (GDPR, HIPAA).
- **Niższe koszty inference**: lokalny NPU robi 50 TOPS za "darmo" (już zapłaciłeś za laptopa), więc Perplexity może oszczędzać na chmurze i przekazywać to w "token value per watt".
- **Lepsza latencja na proste zadania**: summarization, formatting, klasyfikacja — wszystko bez round-tripa do chmury.
- **Ryzyko mis-klasyfikacji**: jeśli mały lokalny model źle oceni wrażliwość, prywatne dane mogą trafić do chmury — albo skomplikowane zadanie utknie na słabym NPU.
- **Realny test "AI PC"**: Intel/Microsoft od 2024 sprzedają NPU TOPS jako must-have, ale brakuje killer-appów. To pierwsza próba pokazania, że NPU faktycznie ma sens biznesowy poza Recall.
- **Walka o standard agentic compute**: jeśli Perplexity narzuci swój orchestrator, ominie zarówno Apple Intelligence jak i Windows Copilot+ PC API — będzie pierwszy cross-platform layer.

---

## Potencjalne kąty narracyjne do shorta

1. **"Pierwszy raz, kiedy NPU w twoim laptopie naprawdę coś robi"** — przez 2 lata Intel/Qualcomm/AMD sprzedają TOPSy, a jedyne use case'y to bluur tła w Teams i Recall (który nikomu nie wyszedł). Perplexity Computer + Core Ultra Series 3 = pierwszy moment, kiedy 50 TOPS NPU faktycznie obsługuje real workload.

2. **"Perplexity właśnie skopiowała Apple Intelligence — ale na cudzym sprzęcie"** — Apple ma PCC + on-device od 1,5 roku, tylko zamknięte w swoim ekosystemie. Perplexity bierze tę samą architekturę i robi z niej cross-platform layer. Apple ma audytowalność, Perplexity ma elastyczność modeli (Claude, GPT, Gemini, Grok jednocześnie).

3. **"Intel właśnie sprzedał agentic AI jako CPU story — i to może faktycznie zadziałać"** — Xeon 6+ z 288 e-cores na 18A to kontra dla NVIDIA: "agent nie potrzebuje GPU na każdym kroku, potrzebuje gęstego concurrency". Jeśli to się przyjmie, AMD EPYC i Intel Xeon znów stają się centrum data center, a nie tylko host dla H100.

4. **"Pierwsze publiczne demo 18A — i to działa w laptopie i w serwerze tego samego dnia"** — Intel od 5 lat opowiada o 18A jako "make-or-break process". Computex 2026 to pierwszy moment, w którym ten sam node trafia jednocześnie do Core Ultra Series 3 (klient) i Xeon 6+ Clearwater Forest (DC). To technologiczne odbicie Intela albo jego ostatnia szansa.

5. **"Token value per watt — nowa metryka, którą wszyscy ukradną"** — Srinivas użył sformułowania, które brzmi jak nowy KPI: nie tokens/second, nie cost/token, tylko **value per watt per user**. Jeśli to się przyjmie, zmienia ekonomikę całej branży AI — bo cloud-only zaczyna przegrywać z hybrid w prostych zadaniach.

6. **"Chip-agnostic, model-agnostic" — Perplexity wybija się na niezależność od OS-ów"** — Microsoft chce cię zamknąć w Copilot+, Apple w Intelligence, Google w Antigravity. Perplexity mówi: jestem na każdym chipie (Intel, NVIDIA, dalej Qualcomm/AMD) i koordynuję każdy model (Claude, GPT, Gemini, Grok). To pozycjonowanie "Switzerland of AI" — wyceniana na 18 mld powodów, żeby to zadziałało.

7. **"NPU vs GPU vs Cloud — pierwszy realny benchmark hybrid pipeline'u"** — to nie jest tylko demo PR. Jeśli Perplexity Computer w lipcu odpali na publiczność, dostaniemy pierwsze realne dane: ile % workloada agentic AI faktycznie da się zostawić lokalnie na 50-TOPS NPU? 30%? 70%? Odpowiedź zdefiniuje, czy "AI PC" to kategoria, czy marketing.

---

## Źródła

- [Computex 2026: An Intelligent World Built on Silicon — Intel Newsroom](https://newsroom.intel.com/artificial-intelligence/computex-2026-an-intelligent-world-built-on-silicon)
- [Perplexity AI unveils hybrid local-cloud inference system at Computex 2026 — VentureBeat](https://venturebeat.com/technology/perplexity-ai-unveils-hybrid-local-cloud-inference-system-at-computex-2026)
- [Perplexity Wants Your Laptop to Do Part of the AI Work — Decrypt (via Yahoo)](https://tech.yahoo.com/ai/articles/perplexity-wants-laptop-part-ai-193241926.html)
- [Perplexity Computer adding ability to split tasks between local and cloud models — 9to5Mac](https://9to5mac.com/2026/06/02/perplexity-computer-adding-ability-to-split-tasks-between-local-and-cloud-models/)
- [Perplexity Tests AI PC Privacy With Local-Cloud Router — Winbuzzer](https://winbuzzer.com/2026/06/03/perplexity-tests-ai-pc-privacy-with-local-cloud-router-xcxwbn/)
- [Perplexity CEO on AI Boom and "Hybrid Local" Future — StartupHub.ai](https://www.startuphub.ai/ai-news/artificial-intelligence/2026/perplexity-ceo-on-ai-boom-and-hybrid-local-future)
- [CES 2026: Intel Core Ultra Series 3 Debut as First Built on Intel 18A — Intel Newsroom](https://newsroom.intel.com/client-computing/ces-2026-intel-core-ultra-series-3-debut-first-built-on-intel-18a)
- [Intel launches 288-core Clearwater Forest Xeon 6 on 18A process — The Register](https://www.theregister.com/systems/2026/06/01/intel-launches-288-core-clearwater-forest-xeon-6-on-18a-process/5248150)
- [Intel Xeon 6+ Targets Agentic AI Density With 288 E-Cores on Intel 18A — Futurum Group](https://futurumgroup.com/insights/intel-xeon-6-targets-agentic-ai-density-with-288-e-cores-on-intel-18a/)
- [Hybrid agentic inference is coming soon to Perplexity Computer — Business Standard](https://www.business-standard.com/technology/tech-news/hybrid-agentic-inference-is-coming-soon-to-perplexity-computer-what-is-it-126060300638_1.html)
