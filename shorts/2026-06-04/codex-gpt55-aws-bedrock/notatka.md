# OpenAI Codex i GPT-5.5 generalnie dostępne na AWS Bedrock

**Data:** 2026-06-04
**Temat:** Po miesiącu limited preview OpenAI ogłasza GA dla GPT-5.5, GPT-5.4 i Codexa na Amazon Bedrock — z pełnym IAM, VPC, PrivateLink i, co kluczowe, zaliczaniem zużycia do AWS commitments / EDP.

---

## Kluczowe fakty i liczby

- **1 czerwca 2026** OpenAI i AWS ogłosiły GA dla **GPT-5.5**, **GPT-5.4** i agenta kodującego **Codex** na Amazon Bedrock — dokładnie **35 dni** po starcie limited preview z **28 kwietnia 2026**.
- Cennik **identyczny z first-party OpenAI**: GPT-5.5 to **$5.00 / $30.00** za milion tokenów (input/output), GPT-5.4 to **$2.50 / $15.00**. Cached input odpowiednio **$0.50** i **$0.25** za milion. Bez seat licenses i bez per-developer commitments dla Codexa.
- Zużycie liczy się do **AWS cloud commitments**, w tym **Enterprise Discount Program (EDP)** — czyli niewykorzystany commit AWS można "spalić" na tokeny OpenAI zamiast tracić go pod koniec roku fiskalnego.
- Regiony GA na start: **GPT-5.5 w us-east-2 (Ohio)**, **GPT-5.4 w us-east-2 + us-west-2 (Oregon)**. Inference zostaje w wybranym regionie — data residency w cenie.
- Codex używany przez **>4 mln deweloperów tygodniowo** (dane OpenAI z maja 2026); dostępny przez **Codex App, Codex CLI** (od **v0.124.0** z AWS SigV4 auth) i **rozszerzenia IDE: VS Code, JetBrains, Xcode**.
- Stack security AWS-natywny: **IAM**, **VPC + PrivateLink**, **KMS encryption**, **CloudTrail audit logging**. Prompty i odpowiedzi **nie są używane do trenowania** modeli OpenAI.
- API endpoint: `https://bedrock-mantle.us-east-2.api.aws/openai/v1` — kompatybilny z **Responses API** OpenAI, czyli aplikacje już używające Responses API migrują "swap endpointu i klucza".
- Wśród nazwanych klientów GA: **Amgen** (biotech / drug discovery), **Autodesk** (CAD i building design), **Box** (115 tys. organizacji).
- Coming soon: **Bedrock Managed Agents** (per-agent identity, auditability) i **Daybreak** (OpenAI security suite do code risk review i vulnerability identification).

## Co dokładnie obejmuje GA

GA obejmuje **trzy warstwy produktu**:

1. **Modele frontier przez Responses API** — GPT-5.5 (najmocniejszy, agentic coding, multi-step) i GPT-5.4 (cheap workhorse). Wołane jak każdy inny model Bedrocka, ale via Responses API, nie klasyczne Bedrock InvokeModel.
2. **Codex jako produkt** — Codex App (desktop), Codex CLI (terminal) i rozszerzenia IDE. Wszystkie konfigurowalne tak, by inference szedł przez Bedrock zamiast api.openai.com.
3. **Infrastruktura Bedrock pod spodem** — next-gen inference engine AWS, automatyczna recovery przy awarii hardware, durable state capture dla długich agent-loopów.

Kluczowy szczegół techniczny: Codex CLI **v0.124.0** dodał first-class wsparcie dla Bedrock — auth przez **AWS SigV4** i credentiale AWS (profil, IAM role, STS), nie przez klucz OpenAI. To znaczy, że deweloper w korporacji nie musi mieć osobistego konta OpenAI ani wnioskować o klucz API — wystarczy `aws sso login`.

## Model biznesowy / cena

| Element | GPT-5.5 | GPT-5.4 |
|---|---|---|
| Input ($/1M) | **$5.00** | **$2.50** |
| Cached input ($/1M) | **$0.50** | **$0.25** |
| Output ($/1M) | **$30.00** | **$15.00** |

Ekonomika jest celowo zaprojektowana tak, by **nie konkurować** z direct OpenAI — same stawki. Cały sens dla AWS to **lock-in finansowy**: jeśli masz $10M EDP na 3 lata i palisz $3M rocznie na compute, pozostałe $1M rocznie możesz teraz wpakować w GPT-5.5 zamiast zwracać AWS-owi. Dla OpenAI to dystrybucja do **klientów regulowanych** (banki, life sci, gov), którzy nie podpisali kontraktu direct.

Codex CLI **bez seat license** to też świadoma decyzja — odwrotnie niż Cursor czy GitHub Copilot Enterprise. Płacisz wyłącznie za tokeny, więc 100-osobowy team płaci tyle, ile faktycznie generuje, nie 100 × $39/mies.

## Klienci enterprise

- **Amgen** — biotech, drug discovery. Cytat CIO: "scientific accuracy and decision quality are critical". W praktyce: workflow `wyszukiwanie literatury → hipoteza → eksperyment → notatka regulacyjna FDA`. Wcześniej Amgen był silnym customer reference Anthropica.
- **Autodesk** — design i building workflows, CAD. Cytat: "highly iterative, requiring precision, coordination, and continuous refinement". Pierwsze deploymenty wokół Codexa do generowania skryptów AutoLISP/Dynamo i GPT-5.5 do design intent reasoning.
- **Box** — CTO Ben Kus jako twarz announcementu. 115 tys. organizacji na platformie Box, integracja Box AI z GPT-5.5 via Bedrock zamiast direct OpenAI — bo Box i tak sprzedaje korporacjom siedzącym na AWS.

To są klasyczne **AWS strongholds** w branżach regulowanych — Amgen jest hostowany w AWS od lat, Autodesk Forge to AWS, Box od dawna na AWS. Migracja na OpenAI-via-Bedrock = zero zmian w architekturze sieciowej / compliance.

## Porównanie: AWS Bedrock vs Azure Foundry vs Google Vertex

| Wymiar | AWS Bedrock (po 1 czerwca 2026) | Azure AI Foundry | Google Vertex AI |
|---|---|---|---|
| Modele OpenAI | **GPT-5.5, GPT-5.4, Codex** (od 1.06.2026) | **Pełna paleta GPT** (ekskluzywnie historycznie) | Brak OpenAI |
| Modele Anthropic | **Claude Sonnet/Opus** (ekskluzywnie w hyperscalerach poza Anthropic API) | Brak (Claude **nie ma** dostępu) | Claude (przez Vertex Model Garden) |
| Modele Google | Brak | Brak | Gemini 2.x / 3.x |
| Cena Claude Sonnet 4.5 | **$3 / $15** | n/d | **$3 / $15** (+ 10% za regional endpoint) |
| Cena GPT-5.5 | **$5 / $30** (= first-party) | **$5 / $30** (= first-party) | n/d |
| Commitments / EDP | **AWS EDP, Savings Plans** | **MACC (Microsoft Azure Consumption Commitment)** | **Google Cloud Committed Use Discounts** |
| Network isolation | **VPC + PrivateLink + KMS** | Private Endpoint + VNet | VPC Service Controls |
| Batch discount | **50% off async** | 50% off batch | 50% off batch |

**Wniosek z tabeli:** AWS Bedrock staje się **jedyną platformą, która ma jednocześnie OpenAI i Anthropic** w trybie managed/native — Azure nie ma Claude'a, Vertex nie ma GPT. Dla CTO, który mówi "chcę mieć dwóch dostawców frontier modeli pod jednym IAM-em i jedną fakturą", AWS jest dziś jedyną odpowiedzią.

## Implikacje dla deweloperów i rynku

1. **Koniec ekskluzywności Azure na GPT** — Microsoft od 2023 r. miał de facto monopol na enterprise-grade GPT. GA na Bedrock kończy ten okres; dla klientów AWS, których siła negocjacyjna była dotąd słaba (musieli "wychodzić" do Azure), to przesunięcie torów.
2. **Multi-vendor AI w jednym VPC** — typowy enterprise stack 2H 2026: GPT-5.5 do agentic coding, Claude Sonnet 4.5 do długich kontekstów i pisania, Llama 4 / Nova do tanich batch jobów — **wszystko przez Bedrock, jeden IAM, jeden CloudTrail**.
3. **EDP burn rate** — finanse korporacyjne dostają nowe narzędzie: niewykorzystany commit AWS można teraz konwertować na "frontier AI budget" bez negocjacji nowego kontraktu z OpenAI. To może skokowo zwiększyć adopcję GPT-5.5 w firmach, które nigdy nie podpisały direct.
4. **Codex bez seat license = nowa konkurencja dla Cursor / Copilot** — model `pay per token, no seats` jest atrakcyjny dla zespołów, które chcą kontrolować koszty na poziomie projektowym, nie per head.
5. **Anthropic pod presją** — Amgen i (potencjalnie) Autodesk to były klientskie referencje Anthropica. Jeśli klienci przesuwają obciążenie do GPT-5.5 bo "jest w tym samym Bedrocku", Anthropic traci moat "single click access via Bedrock".
6. **Czego nie ma** — brak GPT-5.6 i brak modeli OSS OpenAI (gpt-oss-120B) w GA Bedrock; brak Knowledge Bases / Guardrails integration "out of the box" (AWS wspomina, ale nie potwierdza GA); brak EU regionów na start.

---

## Potencjalne kąty narracyjne do shorta

1. **"Microsoft właśnie stracił monopol na GPT w enterprise"** — od 2023 r. każdy korpo, który chciał oficjalnie GPT, musiał iść do Azure. Od 1 czerwca to się skończyło i pierwszą ofiarą jest dział sprzedaży Azure AI.
2. **"AWS pozwala spalić niewykorzystany budżet chmury na tokeny GPT-5.5"** — finansowy hack: jeśli twoja firma ma EDP na $20M i nie wykorzysta — możesz teraz w grudniu palić to na Codexa zamiast zwracać AWS.
3. **"Codex bez seat license po raz pierwszy realnie zagraża Cursor i GitHub Copilot"** — pay per token zamiast $39/seat zmienia ekonomikę dla teamów >50 osób.
4. **"Jedyna platforma, która ma jednocześnie GPT-5.5 i Claude — to AWS Bedrock"** — Azure nie ma Claude'a, Vertex nie ma GPT. AWS staje się "Switzerland of frontier AI".
5. **"Amgen przeskakuje z Anthropica na OpenAI — i to jest sygnał, że Claude ma problem w life sci"** — klient referencyjny zmienia stronę bo "ten sam Bedrock, ale więcej throughput w agentic".
6. **"GPT-5.5 kosztuje 2x więcej niż Claude Sonnet 4.5 — i ludzie i tak płacą"** — $5/$30 vs $3/$15. Sygnał, że benchmarki na agentic coding wygrywają z cenówką w decyzjach zakupowych.
7. **"Codex CLI v0.124.0 — pierwszy AI dev tool z AWS SigV4 zamiast klucza OpenAI"** — techniczny szczegół, który zmienia sposób, w jaki korporacyjny dev dostaje dostęp do AI: `aws sso login` zamiast wniosku do IT o klucz API.

---

## Źródła

- [Get started with OpenAI GPT-5.5, GPT-5.4 models, and Codex on Amazon Bedrock (AWS News Blog)](https://aws.amazon.com/blogs/aws/get-started-with-openai-gpt-5-5-gpt-5-4-models-and-codex-on-amazon-bedrock/)
- [OpenAI models and Codex on Amazon Bedrock are now generally available (AWS ML Blog)](https://aws.amazon.com/blogs/machine-learning/openai-models-and-codex-on-amazon-bedrock-are-now-generally-available/)
- [GPT-5.5, GPT-5.4, and Codex from OpenAI are now generally available on Amazon Bedrock (AWS What's New)](https://aws.amazon.com/about-aws/whats-new/2026/06/amazon-bedrock-openai-models-codex-generally-available/)
- [OpenAI models GPT-5.5 and GPT-5.4 — and Codex — now generally available on Amazon Bedrock (About Amazon)](https://www.aboutamazon.com/news/aws/bedrock-openai-models)
- [OpenAI brings frontier AI to existing AWS environments (Help Net Security)](https://www.helpnetsecurity.com/2026/06/02/openai-models-and-codex-on-aws/)
- [GPT-5.5 vs GPT-5.4 Pricing 2026 — Cost per 1M Tokens Comparison (LangCopilot)](https://langcopilot.com/gpt-5-4-vs-gpt-5-5-pricing)
- [Codex on AWS Bedrock: 30-Min Setup + Decision Gates (FindSkill.ai)](https://findskill.ai/blog/codex-aws-bedrock-30-min-setup-decision-gates/)
- [Enterprise AI Platform: Vertex vs Bedrock vs Foundry 2026 (Internative)](https://internative.net/insights/blog/enterprise-ai-platform-comparison-vertex-bedrock-foundry-2026)
- [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents (Limited Preview, April 2026)](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
