# Databricks startuje LTAP, Lakebase i Agent Bricks na Data + AI Summit 2026

**Data:** 16.06.2026 (keynote dnia 2.), Data + AI Summit 15-18.06, Moscone Center, San Francisco
**Potencjał:** średni
**Slug:** databricks-lakebase

---

## Kluczowe fakty

- Na **Data + AI Summit 2026** (Moscone Center, San Francisco, **30 000+ uczestników in-person**) Databricks ogłosił **16 czerwca** premierę nowej architektury **LTAP — Lake Transactional/Analytical Processing**, którą pozycjonuje jako "pierwszą architekturę łączącą OLTP i OLAP na jednej kopii danych w jeziorze".
- LTAP eliminuje pipeline'y ETL, repliki i CDC by design: dane transakcyjne są zapisywane bezpośrednio w otwartych formatach kolumnowych (**Delta Lake** i **Apache Iceberg**), zachowując kompatybilność z **PostgreSQL** dla aplikacji.
- Fundamentem LTAP jest **Lakebase** — serverless Postgres na obiektowym storage, dostępny GA od **3 lutego 2026** (powstał z akwizycji **Neon** w maju 2025).
- Lakebase obsługuje obecnie **12 milionów uruchomień bazy danych dziennie** wśród tysięcy klientów (m.in. Block, Ensemble, Superhuman, Zillow).
- **Agent Bricks** — od premiery rok temu (DAIS 2025) zbudowano na nim **ponad 100 000 agentów**, które przetwarzają **ponad 1 kwadrylion tokenów rocznie**. Customers: **AstraZeneca, 7-Eleven, Fox Corporation, Block, Workday, Virgin Atlantic, Zapier, EchoStar**.
- Keynote'y: **Ali Ghodsi** + **Matei Zaharia** + Reynold Xin + Arsalan Tavakoli-Shiraji (Databricks), **Greg Brockman** (OpenAI, President/Co-Founder, in-person), **Satya Nadella** (Microsoft CEO, pre-recorded fireside chat).
- Backdrop finansowy: Databricks przekroczył **$5.4 mld revenue run-rate** w lutym 2026 (**+65% YoY**), AI products generują **$1.4 mld** w annualized revenue. Według CNBC z 16.06.2026 wzrost przyspieszył do **>80% YoY**, run-rate sięgnął **$6.9 mld**. Wycena w nowej rundzie: **$165-175 mld** (raport The Information z 09.06.2026). IPO sygnalizowane przez Ali Ghodsi'ego "as early as 2027".

---

## Specyfikacja techniczna

### LTAP — Lake Transactional/Analytical Processing

- **Storage layer:** open object storage z Delta i Iceberg
- **Postgres compatibility:** full ACID semantics, transakcje w standardowym Postgres
- **Format konwersji:** PostgreSQL → Apache Parquet (Databricks planuje open-source tej technologii konwersji)
- **Governance:** Unity Catalog jako single source of truth, jeden model identity i permissions
- **Izolacja workloadów:** transakcyjne i analityczne skalują niezależnie z performance isolation
- **Trzy properties różnicujące LTAP:**
  1. unified governance + single source of truth,
  2. brak performance trade-offów dla żadnego workloadu,
  3. brak pipeline'ów ETL (włącznie z "ukrytymi").

### Lakebase — nowe features ogłoszone

- **Cross-cloud, cross-region disaster recovery**
- **Git-style branching i snapshots** (safe agent experimentation)
- **Autonomous database operations:** health monitoring, automatic index suggestions
- **Native vector search + full-text search** (bez osobnej bazy wektorowej)
- **Lakeflow Zerobus:** real-time event ingestion
- **Lakebase Search:** agent-native retrieval wbudowany w Lakebase Postgres

### Lakehouse//RT (real-time analytics engine, beta)

- Powered by **Reyden execution engine**
- **10ms response time** dla małych workloadów, **<100ms** dla większych
- **Tens of thousands** concurrent users i agentów
- **Do 16x lepszy performance** vs istniejące architektury (deklaracja Databricks)

### Agent Bricks — platforma pełna

**Choice (modele i frameworki):**
- Frontier models: OpenAI, Anthropic, Gemini, Qwen, Kimi
- **Nowe partnerstwo z SpaceX** — integracja modeli **Grok**
- Custom model training: prompt optimization, fine-tuning, reinforcement learning
- Frameworki: **LangGraph, Agno, CrewAI, Claude Code SDK, OpenAI Agent SDK**

**Context:**
- **MCP (Model Context Protocol)** integracja z Unity Catalog (Google Drive, JIRA, Slack, GitHub)
- **Genie Ontology** — business semantics i data understanding
- Agentic search **3x szybszy** niż wcześniej
- **Agent memory service** zasilany przez Lakebase
- **Document Intelligence functions:** ai_parse_document, ai_extract, ai_classify
- **Databricks Sandbox** — secure isolated compute

**Control:**
- **Unity AI Gateway** — unified governance
- **Agent Traces and Monitoring** zintegrowane z LakeWatch
- **Contextual Policies** w SQL (Python wkrótce)
- **Unity Catalog Registry** dla agentów, narzędzi i modeli

Custom RL-trained model demonstruje "competitive performance z Opus/Sonnet" przy znacznie niższych kosztach per query (deklaracja Databricks).

---

## Reakcje branży

- **Ali Ghodsi (CEO Databricks):** *"For the first time, we think we've cracked the unification code."*
- **Reynold Xin (Co-founder Databricks):** *"The agents really prefer a much simpler stack, because they can move way faster."*
- **Shanku Niyogi (VP Product Management, Databricks):** *"The data stack becomes the bottleneck"* — wskazując, że organizacje zarządzają "hundreds of thousands of Postgres databases, each with CDC pipelines".
- **Grant Veazey (CTO, Ensemble):** *"LTAP extends that foundation by unifying operational and analytical workloads on a single layer."*
- **Michael Leone (Moor Insights & Strategy):** *"Agents read for context, loop, try things, then write back thousands of times. The constant bouncing between production and analytics systems starts becoming the bottleneck."*
- **Stephanie Walter (HyperFRAME Research):** *"Real-time, context-aware applications combining transactions, analytics, and AI in one flow"* — najciekawszy emerging pattern.
- **Ashish Chaturvedi (HFS Research):** *"Most enterprises don't realize how much of their data engineering budget is pure plumbing maintenance"* (ETL pipelines).

**Caveats od analityków:** brak publicznych niezależnych benchmarków porównujących latency, transactional guarantees i mixed-workload isolation pod realnym load'em. Sukces LTAP zależy od "commit-to-query latency numbers under real load" — sama elegancja architektoniczna nie wystarczy.

---

## Implikacje

1. **OLTP staje się polem bitwy AI agentów.** Snowflake dorzucił ML inference (Cortex AI) w 2025, Databricks dodał OLTP (Lakebase). Gap się zmniejsza, ale Databricks stara się go odbudować nową warstwą architektoniczną (LTAP), gdzie Snowflake nie ma odpowiednika.
2. **"End of pipelines" jako positioning.** Databricks otwarcie ogłasza koniec ery ETL/CDC — to bezpośredni cios w cały ekosystem narzędzi (Fivetran, Airbyte, dbt). Jeśli LTAP zadziała przy obiecanych metrykach, mocno zmienia ekonomikę data engineeringu.
3. **Agent Bricks jako rewenue engine.** 100k agentów + kwadrylion tokenów rocznie to skala, która zaczyna usprawiedliwiać wycenę $175 mld i przyspieszenie growth z 65% → 80%+ YoY. CNBC raportuje jednocześnie kurczące się marże ze względu na koszt inferencji agentów.
4. **Pre-IPO storytelling.** Cały Summit pasuje do narracji pre-IPO: rekord uczestników (30k+), Brockman + Nadella na keynote, własna platforma agentowa, własny OLTP, własny RT analytics engine. Databricks buduje pełny stack przed wejściem na giełdę.
5. **Open-source PostgreSQL→Parquet conversion** — strategiczny ruch: zwiększa wiarygodność "open" pozycjonowania (Delta/Iceberg/Parquet) i utrudnia konkurencji zarzut vendor lock-in.
6. **Walka z HTAP-em.** LTAP to przyznanie, że poprzednie hybrydowe podejścia (HTAP, "Zero ETL") zawiodły. Differentiator: unifikacja na warstwie storage, nie engine — co umożliwia niezależne skalowanie compute pod transakcje vs analitykę.
7. **Lakebase z Neon.** Akwizycja Neon z maja 2025 ($1 mld) okazuje się fundamentalna — bez serverless Postgres na obiektowym storage cała koncepcja LTAP nie miałaby sensu.

---

## Potencjalne kąty narracyjne (hooks)

1. **"Databricks zabija ETL. 12 milionów Postgresów dziennie, jedna kopia danych, koniec pipeline'ów."** — najmocniejszy hook techniczny: skala + radykalna obietnica.

2. **"100 000 agentów. Kwadrylion tokenów rocznie. Databricks właśnie pokazał, jak naprawdę wygląda Agentic AI w enterprise."** — hook o skali, świetny do wideo.

3. **"Snowflake vs Databricks 2026: Databricks właśnie wbił szpilę. OLTP + analityka + agenci na jednej kopii danych. Snowflake nie ma odpowiednika."** — hook konkurencyjny.

4. **"Ali Ghodsi: 'For the first time, we think we've cracked the unification code'. LTAP to coś, czego HTAP nigdy nie potrafił."** — hook z cytatem CEO, historyczny.

5. **"Greg Brockman i Satya Nadella na jednej scenie z Databricks. To nie jest przypadek — to pre-IPO show za $175 mld."** — hook biznesowo-polityczny.

6. **"Databricks rośnie 80% YoY. Run-rate $6.9 mld. Marże spadają, bo agenci zżerają inferencję. Witamy w nowej ekonomice AI."** — hook finansowy z napięciem.

7. **"Neon kupione za $1 mld w maju 2025. Rok później Lakebase obsługuje 12M baz dziennie i jest fundamentem całej strategii Databricks. Najlepsza akwizycja roku?"** — hook z perspektywy M&A.

---

## Źródła

1. **Databricks Newsroom (16.06.2026)** — *"Databricks Launches LTAP: The First Lake Transactional/Analytical Processing Architecture"*: https://www.databricks.com/company/newsroom/press-releases/databricks-launches-ltap-first-lake-transactionalanalytical
2. **Databricks Blog (16.06.2026)** — *"Agent Bricks: Data + AI Summit 2026"*: https://www.databricks.com/blog/agent-bricks-dais-2026
3. **Databricks Blog** — *"Agent Bricks: The governed enterprise agent platform"*: https://www.databricks.com/blog/agent-bricks-governed-enterprise-agent-platform
4. **CNBC (16.06.2026)** — *"Databricks sales growth tops 80%, but margins are shrinking from swarm of AI agents"*: https://www.cnbc.com/2026/06/16/databricks-revenue-growth-tops-80percent-to-6point9-billion-annualized.html
5. **InfoWorld** — *"Databricks pitches LTAP as a new foundation for agentic applications"*: https://www.infoworld.com/article/4185622/databricks-pitches-ltap-as-a-new-foundation-for-agentic-applications.html
6. **Techzine Global** — *"Databricks breaks down the barrier between OLTP and OLAP with LTAP architecture"*: https://www.techzine.eu/news/analytics/142199/databricks-breaks-down-the-barrier-between-oltp-and-olap-with-ltap-architecture/
7. **Techzine Global** — *"Databricks makes serverless Postgres service Lakebase available"*: https://www.techzine.eu/news/analytics/138518/databricks-makes-serverless-postgress-service-lakebase-available/
8. **Let's Data Science** — *"Databricks launches LTAP to unify OLTP and OLAP"*: https://letsdatascience.com/news/databricks-launches-ltap-to-unify-oltp-and-olap-fc0300bc
9. **TechTimes (16.06.2026)** — *"Databricks Summit 2026 Day 2: Agentic AI and Catalog Federation Move From Lab to Enterprise"*: https://www.techtimes.com/articles/318450/20260616/databricks-summit-2026-day-2-agentic-ai-catalog-federation-move-lab-enterprise.htm
10. **StorageNewsletter (15.06.2026)** — *"Data + AI Summit 2026: Keynote Lineup"*: https://www.storagenewsletter.com/2026/06/15/data-ai-summit-2026-databricks-announces-keynote-lineup-and-programming-for-the-worlds-largest-data-and-ai-conference/
11. **TechFundingNews** — *"IPO-bound Databricks reportedly eyes $175B valuation after hitting $5.4B revenue run rate"*: https://techfundingnews.com/ipo-bound-databricks-reportedly-eyes-175b-valuation-after-hitting-5-4b-revenue-run-rate/
12. **Databricks Newsroom (luty 2026)** — *"Databricks Grows >65% YoY, Surpasses $5.4 Billion Revenue Run-Rate"*: https://www.databricks.com/company/newsroom/press-releases/databricks-grows-65-yoy-surpasses-5-4-billion-revenue-run-rate
