# Snowflake CoCo, CoWork i Adaptive Compute w GA — rebranding agentów na AI Pulse

**Data:** 16.06.2026, 10:00 PT (AI Pulse, 90 min sesja, EMEA replay 18.06)
**Źródła:** Snowflake AI Pulse, Snowflake Blog (Adaptive Compute GA), Snowflake Press Release (CoCo), ChannelLife UK, Atlan, TechFinitive, Medium (Snowflake Builders), Digital Today, CXOToday

## Kluczowe fakty

- Snowflake na cyklicznym **AI Pulse** 16 czerwca o 10:00 PT pokazał deep-dive trzech filarów strategii **Agentic Control Plane**: rebranding **Cortex Code → CoCo**, **Snowflake Intelligence → CoWork**, oraz **Adaptive Compute** w **GA** (Generally Available).
- **Adaptive Compute** to nowy silnik automatycznego skalowania warehouse: **1,5–1,6× szybsza analityka** i **3,5× szybszy DML** vs warehouse pierwszej generacji. Wobec **Gen2 Standard Warehouses** daje **1,2× lepszy price-performance** na benchmarku **TPC-DS 10TB Concurrency**.
- **CoCo** dostał nowy **Skill „Compute"** — agent sam wskazuje warehouse'y warte konwersji na Adaptive Compute i pomaga w tuningu parametrów po migracji (samonapędzający się upsell).
- **Cortex Code → CoCo** ogłoszony 2 czerwca na Summit 2026, na AI Pulse 16.06 dolano nowych integracji: desktop (GA wkrótce), VS Code, Claude Code (GA), Excel, Slackbot, iOS mobile, SDK i MCP server.
- **Snowflake Intelligence → CoWork** — osobisty AI agent dla knowledge workers z **persistent memory**, **personal skills**, **background agents**, MCP konektorami GA do **Slack/Jira/Gmail/Salesforce**, dostępny z **iOS, Slacka i Excel**.
- **Adopcja CoCo**: **7 100+ kont Snowflake** (ponad **50% bazy klientów**). CoWork: **2× growth quarter-over-quarter**.
- **Cortex Sense** — system pamięci enterprise łączący oba agenty, daje **83% accuracy** vs **24% bez niego** w testach kontekstu organizacyjnego.
- Tego samego dnia (16.06.2026) **Databricks ogłosił LTAP (Lake Transactional/Analytical Processing)** z **Lakebase** — bezpośrednia kontra w architekturze.

## Specyfikacja

### Adaptive Compute (GA)
- **Wydajność:**
  - **1,5–1,6× szybsza analityka** vs Gen1 warehouse
  - **3,5× szybszy DML** vs Gen1 warehouse
  - **1,2× price-performance** vs Gen2 Standard (TPC-DS 10TB Concurrency)
- **Automatyzacja:** eliminacja manualnego wyboru rozmiaru warehouse, auto-detection i mitigation data skew w złożonych zapytaniach.
- **Regiony GA:** US West 2 (Oregon), US East 2 (Ohio), EU West 1 (Ireland), EU Central 1 (Frankfurt), AP Northeast 1 (Tokyo), AP Southeast 2 (Sydney).
- **Bonus dla istniejących klientów:** Gen2 Standard Warehouses dostały **25 ulepszeń wydajności w 6 miesięcy** bez dodatkowych kosztów.
- **Nadchodzi:** **Compute Advisor** — self-service framework do testowania compute tierów na realnych workloadach.

### CoCo (dawniej Cortex Code)
- **Generuje:** SQL, Python, **dbt models**, **Airflow DAGs**, ML pipelines, kod agentów na Snowflake open framework.
- **IDE/Integracje:** Snowsight, CoCo Desktop (macOS/Windows z persistent project context), CLI, VS Code, Claude Code plugin, Excel extension, Slack, iOS, SDK + MCP server, Retool, Superblocks.
- **Nowe Skille z AI Pulse:**
  - **Compute** — identyfikuje warehouse'y do konwersji na Adaptive Compute, tuning post-migracja.
  - **Shareable Skills + Skills Catalog** — odkrywanie i dzielenie workflowów w organizacji.
  - **CoCo Automations** — recurring, event-driven workflows na scheduleach/triggerach.
  - **Cloud Agents** — serverless containers (shell, Python, dbt builds, file ops).
  - **Agent Teams** — multi-agent orchestration z parallel sub-tasks.
- **Architektura:** four-step planning loop (parse intent → tool selection → review plan → execute) z human-on-the-loop (vs human-in-the-loop GitHub Copilota).
- **Modele:** Claude Opus 4.7, Claude Sonnet 4.7, GPT 5.4 — intelligent cost/accuracy routing.
- **Wydajność:** **72,1% pass rate na ADE-Bench**, **51% mniej tokenów** i **8% szybciej** vs konkurencja na Opus 4.7, **3× lepsza dokładność SQL** z business context (Atlan, 145 zapytań, p < 2e-10).
- **Pricing:** **$20/miesiąc** po 30-dniowym free trial, **$40 free inference credits** w trialu.

### CoWork (dawniej Snowflake Intelligence)
- **Persona:** personal agent dla knowledge workers — od reactive analysis do proactive execution.
- **Funkcje:** persistent memory, personal skills, background agents, nowy gen artifacts/dashboards, AI-centered BI redesign.
- **MCP konektory GA:** Slack, Jira, Gmail, Salesforce.
- **Powierzchnie:** iOS app (launch), CoWork Slackbot, Microsoft Excel extension, Snowsight; Android coming.
- **Wizja CEO Sridhara Ramaswamy'ego:** „a new browser, a space where users do not stop at querying data but orchestrate work across multiple applications".

### Klienci referencyjni (CoCo)
- **Fanatics** — pipeline troubleshooting z dni do godzin.
- **Thomson Reuters** — przyspieszenie insightów na **37 500+ governed tables**.
- **WHOOP** — roll-out org-wide, non-data teams budują workflows.

## Porównanie z Databricks

| Parametr | Snowflake (16.06.2026) | Databricks (16.06.2026) |
|---|---|---|
| Główny anons dnia | Adaptive Compute GA + CoCo/CoWork rebrand | LTAP + Lakebase (serverless Postgres na lake) |
| Strategia | Agentic Control Plane (orchestration layer) | Unified governance OLTP + analytics + streaming |
| AI agent dev | CoCo (7 100+ kont, 50% bazy) | Databricks Assistant + Mosaic AI Agent |
| Personal AI | CoWork z MCP konektorami (Slack/Jira/Gmail/SF) | Databricks AI/BI Genie |
| Compute | Adaptive Compute (auto-skaling, 1,2× vs Gen2) | Serverless SQL + Lakebase Postgres |
| Pricing modelu | $20/mies CoCo po trialu | Brak ujawnionego CoCo equivalentu |
| Wycena (czerwiec 2026) | ~**$83B mcap**, $4,2B ARR (+26% YoY) | **$165–175B** wycena pre-IPO, $5,4B ARR (+65%) |
| Pozycjonowanie | Data warehouse → agentic OS | Lakehouse → full-stack data platform |

**Wniosek strategiczny:** Snowflake atakuje od strony agentów i automatyzacji compute (CoCo Compute Skill = self-driving upsell na Adaptive Compute). Databricks tego samego dnia odpowiada architekturalnie (LTAP scala OLTP z OLAP w jednym layerze). Obie firmy w 24h sygnalizują końcówkę ery „warehouse vs lakehouse" — wchodzimy w erę agentic platform z natywnym compute decision-making.

## Hooks

1. **Snowflake przemianowuje Cortex Code na CoCo, a Snowflake Intelligence na CoWork — żeby agent miał imię, a nie SKU.**
2. **CoCo ma teraz Skill „Compute" — agent sam mówi ci, które warehouse'y warto przenieść na Adaptive Compute. Self-driving upsell jak w branży SaaS jeszcze nie widziałem.**
3. **Adaptive Compute w GA: 3,5× szybszy DML vs Gen1 warehouse i 1,2× lepszy price-performance vs Gen2 na TPC-DS 10TB. Snowflake mówi: nie myśl o rozmiarze warehouse'a, my za ciebie.**
4. **7 100+ kont Snowflake już używa CoCo — to ponad 50% bazy klientów. Po cichu największy enterprise agent deployment 2026.**
5. **CoCo za $20/miesiąc po 30-dniowym trialu. Cursor Pro to $20. GitHub Copilot Enterprise to $39. Snowflake celuje w dev-tier price, nie enterprise data-tier.**
6. **Tego samego dnia Databricks ogłosił LTAP z Lakebase. 16 czerwca 2026 to symbolizczna data: warehouse vs lakehouse umarł, zaczyna się walka o agentic platform.**
7. **CoWork dostaje MCP konektory GA do Slack/Jira/Gmail/Salesforce. Snowflake po cichu staje się Zapierem na sterydach z natywnym dostępem do danych.**

## Źródła

1. **Snowflake AI Pulse — June 16, 2026 landing page** — https://www.snowflake.com/en/ai-pulse/june-2026/
2. **Snowflake Blog: Adaptive Compute Is Now Generally Available** — https://www.snowflake.com/en/blog/adaptive-compute-generally-available/
3. **Snowflake Press Release: CoCo Redefines Enterprise AI Development** — https://www.snowflake.com/en/news/press-releases/snowflake-coco-redefines-enterprise-ai-development-as-the-coding-agent-built-for-faster-easier-and-more-powerful-innovation-anywhere/
4. **ChannelLife UK: Snowflake unveils platform upgrades for CoCo, CoWork** — https://channellife.co.uk/story/snowflake-unveils-platform-upgrades-for-coco-cowork
5. **Atlan: Snowflake CoCo — What It Is and How It Works** — https://atlan.com/know/snowflake/snowflake-coco/
6. **Medium / Snowflake Builders: Summit 2026 Summary of New Features** — https://medium.com/snowflake/snowflake-summit-2026-summary-of-new-features-09f3d5ffeefe
7. **Digital Today: Snowflake agentic OS strategy gains traction, AI brand overhaul** — https://www.digitaltoday.co.kr/en/view/60280/snowflake-agentic-os-strategy-gains-traction-ai-brand-overhaul
8. **Databricks Press Release: LTAP launch (kontekst konkurencyjny)** — https://www.databricks.com/company/newsroom/press-releases/databricks-launches-ltap-first-lake-transactionalanalytical
