# Skrót dnia — 17 czerwca 2026

7 newsów researched. Cherry-pick poniżej (uporządkowane: 🔥 wysoki → ⚡ średni).

---

## 1. SpaceX kupuje Cursor (Anysphere) za $60 mld

📂 [`spacex-kupuje-cursor/notatka.md`](./spacex-kupuje-cursor/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Cztery dni po rekordowym IPO ($135 → $192/akcję) SpaceX wykonuje kwietniową opcję i kupuje Cursor za $60 mld all-stock — Musk dostaje pełen vertical stack (chipy → Colossus → model → IDE → 67% Fortune 500), wprowadzając konflikt interesów z Anthropic/Google jako jednoczesny cloud vendor i konkurent. Deal ma $4 mld antitrust break fee — sygnał, że SpaceX traktuje blokadę FTC/DOJ jako live scenario.

**Top hooks:**
- "Musk właśnie kupił Cursora za $60 mld — i zapłacił za to akcjami, które urosły mu o tę kwotę w 4 godziny handlu."
- "25-letni CEO Cursora właśnie został miliarderem. A jego inwestorzy — Nvidia i Google — dostali akcje SpaceX zamiast cashu."
- "SpaceX miał dwie opcje: zapłacić $10 mld za partnerstwo z Cursorem albo $60 mld i go kupić. Wybrali drogi wariant. Dlaczego?"

---

## 2. Z.ai wypuszcza GLM-5.2 na otwartej licencji MIT — bije GPT-5.5 za 1/6 ceny

📂 [`glm-52-open-weights/notatka.md`](./glm-52-open-weights/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Chińska Z.ai (dawniej Zhipu) wypuściła 753B-parametrowy MoE GLM-5.2 z 1M tokenów kontekstu na licencji MIT, bijąc GPT-5.5 na SWE-Bench Pro (62,1 vs 58,6) i FrontierSWE (74,4% vs 72,6%) — przy API ~6x tańszym ($1,40/$4,40 vs $5/$30 za 1M tokenów). Strategia "DeepSeek 2.0": open weights jako marketing, monetyzacja przez API i Coding Plan od $10/mc; Anthropic-compatible endpoint pozwala na drop-in replacement w Claude Code.

**Top hooks:**
- "Chińska Z.ai właśnie wypuściła model, który bije GPT-5.5 za 1/6 ceny — i oddaje wagi za darmo na MIT."
- "753 miliardy parametrów. 1 milion tokenów kontekstu. Licencja MIT. Cena: $1,40 za milion tokenów wejścia. OpenAI bierze $5."
- "To jest moment 'DeepSeek 2.0' dla agentowego kodowania — i Amerykanie znowu zostali zaskoczeni."

---

## 3. OpenAI startuje Partner Network z $150 mln — wojna o konsultantów z Anthropic

📂 [`openai-partner-network/notatka.md`](./openai-partner-network/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** OpenAI ogłosiło 14-16 czerwca formalny globalny program partnerski z budżetem $150 mln i celem certyfikacji 300 000 konsultantów do końca 2026 — bezpośrednia kontra wobec Claude Partner Network Anthropic (uruchomiony 11 dni wcześniej z $100 mln, ma już 10 000+ certyfikowanych i 40 000+ aplikacji firm). Trzy tiery (Select/Advanced/Elite), partnerzy startowi: Accenture, Bain, BCG, McKinsey, PwC — większość gra na dwa fronty zarówno dla OpenAI, jak i Anthropic.

**Top hooks:**
- "3 miesiące spóźnienia, 3x większy budżet" — OpenAI mimo $500B wyceny biegnie za Anthropikiem w channel strategy. Claude Partner Network ruszył 12 marca, OpenAI 14 czerwca. Anthropic ma już 10 000 certyfikowanych, OpenAI dopiero startuje.
- "Model wars są skończone — wojnę o enterprise wygra ten, kto ma więcej konsultantów" — sam OpenAI to przyznaje w blogu. Implementacja, nie capability, to wąskie gardło.
- "Accenture gra na dwa fronty" — ta sama firma trenuje 30 000 ludzi na Claude i jest elite partnerem OpenAI. Konsultanci jako neutralna Szwajcaria AI wars.

---

## 4. Databricks startuje Lakebase i Agent Bricks na Summit 2026 — LTAP łączy OLTP z analityką

📂 [`databricks-lakebase/notatka.md`](./databricks-lakebase/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Databricks na Data + AI Summit 2026 (30k+ uczestników, San Francisco) ogłosił LTAP — nową architekturę unifikującą OLTP i OLAP na jednej kopii danych w jeziorze, opartą o serverless Postgres Lakebase (12M baz dziennie). Równolegle rozszerzono Agent Bricks: 100k+ agentów zbudowanych w rok, kwadrylion tokenów rocznie; backdrop finansowy to run-rate $6.9 mld i wycena $175 mld przed potencjalnym IPO.

**Top hooks:**
- Databricks zabija ETL. 12 milionów Postgresów dziennie, jedna kopia danych, koniec pipeline'ów.
- 100 000 agentów. Kwadrylion tokenów rocznie. Databricks właśnie pokazał, jak naprawdę wygląda Agentic AI w enterprise.
- Snowflake vs Databricks 2026: Databricks właśnie wbił szpilę. OLTP + analityka + agenci na jednej kopii danych. Snowflake nie ma odpowiednika.

---

## 5. Microsoft Work IQ API wchodzi w GA z rozliczeniem Copilot Credits

📂 [`microsoft-work-iq-api/notatka.md`](./microsoft-work-iq-api/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Microsoft wprowadził 16.06.2026 Work IQ API w GA — semantyczną warstwę M365 (mail, kalendarz, Teams, pliki) dla agentów, rozliczaną wyłącznie przez Copilot Credits ($0.01/credit PAYG, $0.001 za Tools call, $0.20–$1.50 za Chat/Context call). Brak osobnego SKU, ale wymagana licencja M365 Copilot ($30/user/mc) plus consumption-based billing — Microsoft buduje nowy unified licznik dla całego AI w enterprise.

**Top hooks:**
- "Microsoft przestał sprzedawać Copilot za $30/usera. Teraz sprzedaje credity — i twój agent może wypalić $1.50 jednym promptem."
- "Work IQ API wszedł w GA. 1 Copilot Credit = $0.01. Pilot z 50 ludźmi: $442/mc w samym Work IQ + $1 500/mc za licencje. Welcome to consumption-based enterprise AI."
- "Microsoft Graph zwraca dane. Work IQ zwraca *znaczenie*. Różnica: przestajesz budować vector DB, ACL i ranking. Lock-in: maksymalny."

---

## 6. Faraday Future debiutuje z EAI Robotics — humanoidy + roboty edukacyjne live 16 czerwca

📂 [`faraday-future-eai/notatka.md`](./faraday-future-eai/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Faraday Future (FFAI, $0,30, market cap $92M) odpalił 16 czerwca w LA EAI Robotics Education Ecosystem z premierą humanoida Futurist 2 (pierwszy w USA z NVIDIA Sonic) i edukacyjnego quadrupeda FX Navi — kolejny krok pivotu z porażki EV (FF91) na "Physical AI ecosystem company", przy probability of bankruptcy 18,5% i Nasdaq deficiency notice.

**Top hooks:**
- Faraday Future właśnie premierował humanoidalnego robota — firma od EV, która przez 12 lat dostarczyła kilkadziesiąt aut. Co może pójść nie tak?
- FFAI handluje za $0,30. Market cap $92M. Sprzedaż w Q1 2026: $512 tysięcy. Ale "pivotują na robotykę".
- FF Futurist 2 to pierwszy w USA humanoid z NVIDIA Sonic motion control. Druga prawda: producent ma 18,5% probability of bankruptcy.

---

## 7. Snowflake CoCo, CoWork i Adaptive Compute w GA — rebranding agentów na AI Pulse

📂 [`snowflake-coco-cowork/notatka.md`](./snowflake-coco-cowork/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Snowflake na AI Pulse 16.06.2026 ogłosił Adaptive Compute w GA (1,5–1,6× szybsza analityka, 3,5× szybszy DML vs Gen1, 1,2× price-performance vs Gen2 na TPC-DS 10TB) oraz rebranding Cortex Code → CoCo i Snowflake Intelligence → CoWork, dorzucając Skill „Compute" w CoCo do self-driving upsellu na nowy compute. Tego samego dnia Databricks odpowiedział architekturalnym LTAP/Lakebase — symboliczna data końca ery „warehouse vs lakehouse".

**Top hooks:**
- Snowflake przemianowuje Cortex Code na CoCo, a Snowflake Intelligence na CoWork — żeby agent miał imię, a nie SKU.
- CoCo ma teraz Skill „Compute" — agent sam mówi ci, które warehouse'y warto przenieść na Adaptive Compute. Self-driving upsell jak w branży SaaS jeszcze nie widziałem.
- Adaptive Compute w GA: 3,5× szybszy DML vs Gen1 warehouse i 1,2× lepszy price-performance vs Gen2 na TPC-DS 10TB. Snowflake mówi: nie myśl o rozmiarze warehouse'a, my za ciebie.

---
