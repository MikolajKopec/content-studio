# OpenAI Codex i GPT-5.5 wjeżdżają do AWS Bedrock (GA)

**Data:** 2026-06-03
**Temat:** Flagowe modele OpenAI (GPT-5.5, GPT-5.4) oraz agent kodowy Codex od **1 czerwca 2026** są generally available na Amazon Bedrock — w regionach komercyjnych i GovCloud, rozliczane per-token po cenach OpenAI, z zaliczeniem do zobowiązań AWS — co domyka transformację post-Azure-exclusive zapoczątkowaną listopadowym kontraktem na **38 mld USD**.

---

## Kluczowe fakty i liczby

- **1 czerwca 2026** — AWS i OpenAI ogłosiły **general availability** modeli **GPT-5.5**, **GPT-5.4** oraz agenta **Codex** na Amazon Bedrock. Limited Preview ruszył **28 kwietnia 2026** — od preview do GA minęło około **5 tygodni**.
- **GPT-5.5** dostępny w **US East (Ohio)**. **GPT-5.4** w **US East (Ohio)** + **US West (Oregon)**. Bedrock obsługuje też **GovCloud (US)** — kluczowe dla klientów federalnych i regulowanych.
- Cennik **identyczny jak first-party OpenAI**, bez markupów AWS. **GPT-5.5**: **5 USD / 1M input**, **0,50 USD** cached input, **30 USD / 1M output**. Long context (>128K): **10 USD** input / **45 USD** output.
- **GPT-5.4**: **2,50 USD / 1M input**, **15 USD / 1M output** — czyli **6× taniej** na outpucie niż GPT-5.5.
- **Codex** (gpt-5.3-codex) na Bedrocku: **1,75 USD** input / **14 USD** output per 1M tokenów, tryb Priority **2× droższy**. Per-token, **bez seat licenses**, bez per-developer commitments.
- **Context window GPT-5.5**: **1M tokenów** przez API, **400K** w Codex. Inferencja przez **Responses API** na nowym silniku Bedrock.
- Inferencja **nie opuszcza wybranego regionu Bedrock** — prompty i odpowiedzi **nie są używane do treningu** ani udostępniane OpenAI.
- Zużycie liczy się do **AWS commitments** (EDP / Private Pricing Agreements) — czyli klient AWS może "spalać" miliony zaszyte w kontrakcie na inferencji OpenAI.
- Codex spinany przez **Codex App**, **Codex CLI** oraz IDE: **VS Code**, **JetBrains**, **Xcode** — wszystko routowane przez Bedrock. Konfiguracja: `model_provider = "amazon-bedrock"`, opcjonalny pin `openai.gpt-5.5` / `openai.gpt-5.4`.
- Codex notuje **5+ mln użytkowników tygodniowo** (dane OpenAI z anonsu).

---

## Specyfikacja modeli — szybkie porównanie

| Model | Input / 1M | Output / 1M | Context | Region Bedrock |
|---|---|---|---|---|
| GPT-5.5 | **5,00 USD** | **30,00 USD** | **1M** (Codex: 400K) | US East (Ohio) |
| GPT-5.4 | **2,50 USD** | **15,00 USD** | 400K+ | Ohio + Oregon |
| Codex (gpt-5.3-codex) | **1,75 USD** | **14,00 USD** | — | przez Responses API |

GPT-5.5 trzyma czołówkę benchmarków agentic-coding: **82,7%** Terminal-Bench 2.0, **73,1%** Expert-SWE, **58,6%** SWE-Bench Pro, **78,7%** OSWorld-Verified.

## Implikacje dla dealu OpenAI ↔ Microsoft

- Do **listopada 2025** Azure był **jedynym** publicznym cloudem hostującym frontier modele OpenAI. Restrukturyzacja umowy w **październiku 2025** zniosła ekskluzywność na produkty inne niż API.
- **3 listopada 2025** OpenAI podpisał z AWS pierwszy wieloletni kontrakt na **38 mld USD** mocy obliczeniowej — akcje Amazona zamknęły wtedy na rekordzie.
- Microsoft zachowuje **non-exclusive** prawa do IP OpenAI do **2032** roku oraz **first-ship-on-Azure** dla nowych modeli — ale klienci enterprise mogą już je konsumować przez Bedrock.
- Bedrock GA to **operacyjne domknięcie** tej zmiany: nie ogłoszenie strategiczne, lecz dostępny SKU w konsoli AWS.

## Co dostają deweloperzy i enterprise

- **Governance** out-of-the-box: **IAM**, **VPC + PrivateLink**, **KMS encryption**, **CloudTrail audit logging** — żaden nowy model bezpieczeństwa, działa to samo co dla Claude'a czy Llamy w Bedrocku.
- **GovCloud (US)** — sektor publiczny dostaje GPT-5.5 w środowisku zgodnym z **FedRAMP High** i **DoD IL-4/5** (Bedrock w GovCloud uzyskał te autoryzacje wcześniej w 2026).
- **Codex CLI / IDE pluginy** można skonfigurować na Bedrock Provider zamiast OpenAI bezpośrednio — credentials z AWS SDK chain lub Bedrock API keys.
- **Bedrock Managed Agents, powered by OpenAI** — jeszcze nie GA ("coming soon"), ale to zapowiedź managed runtime dla agentów z identity per-agent, audit logiem każdej akcji i pełną inferencją w środowisku klienta.

## Czego NIE ma (jeszcze)

- **Brak Europy** — żaden region EU na liście (komentarz dla polskich teamów: dane fizycznie lecą do US East).
- **Brak Batch / Flex pricing** dla OpenAI na Bedrocku w dniu GA — tylko standardowy on-demand przez Responses API.
- **Brak console support** dla GPT-5.5/5.4 w Bedrock console na dzień ogłoszenia (AWS pisze: "coming soon") — wszystko leci przez API.
- **Managed Agents** wciąż w preview, nie produkcyjnie.

---

## Potencjalne kąty narracyjne do shorta

1. **"OpenAI właśnie wjechał na AWS — i to nie metafora, tylko 38 miliardów dolarów kontraktu."** Hook: liczba 38B + obrazowanie ciężarówki danych przewożącej się z Azure do AWS.

2. **"GPT-5.5 na Bedrocku kosztuje tyle samo co u OpenAI bezpośrednio — ale teraz wlicza się do twojego budżetu AWS."** Hook na księgowych/CTO: ten sam token, inna kolumna w fakturze. To zmienia zakupy enterprise.

3. **"Pięć tygodni od preview do GA. Pięć. Tak szybko AWS nie odpalił chyba nigdy żadnego modelu."** Kontrast tempa — Claude na Bedrocku potrzebował miesięcy.

4. **"GPT-5.5 wlazł do GovCloud. To znaczy, że amerykański rząd może oficjalnie używać ChatGPT-a do classified workloadów."** Hook geopolityczny — FedRAMP High + DoD IL-4/5.

5. **"Codex na Bedrocku to 1,75 dolara za milion tokenów wejściowych — 17× taniej niż output GPT-5.5. Twój autonomiczny dev junior jest tańszy niż lunch."** Cena vs. ludzka praca.

6. **"Microsoft trzymał OpenAI na wyłączność. Teraz Bedrock ma GPT-5.5, GovCloud ma GPT-5.5, a Azure dostaje co najwyżej first-ship privilege do 2032."** Narracja końca monopolu.

7. **"VS Code, JetBrains, Xcode — Codex CLI z jednym flag-iem przerzucasz inferencję z OpenAI na AWS. Multi-cloud AI jest tu i teraz, nie w 2027."** Praktyczny developer-hook.

---

## Źródła

- [Get started with OpenAI GPT-5.5, GPT-5.4 models, and Codex on Amazon Bedrock — AWS Blog](https://aws.amazon.com/blogs/aws/get-started-with-openai-gpt-5-5-gpt-5-4-models-and-codex-on-amazon-bedrock/)
- [GPT-5.5, GPT-5.4, and Codex from OpenAI are now generally available on Amazon Bedrock — AWS What's New](https://aws.amazon.com/about-aws/whats-new/2026/06/amazon-bedrock-openai-models-codex-generally-available/)
- [OpenAI models and Codex on Amazon Bedrock are now generally available — AWS Machine Learning Blog](https://aws.amazon.com/blogs/machine-learning/openai-models-and-codex-on-amazon-bedrock-are-now-generally-available/)
- [OpenAI models GPT-5.5 and GPT-5.4—and Codex—now generally available on Amazon Bedrock — About Amazon](https://www.aboutamazon.com/news/aws/bedrock-openai-models)
- [OpenAI brings frontier AI to existing AWS environments — Help Net Security](https://www.helpnetsecurity.com/2026/06/02/openai-models-and-codex-on-aws/)
- [Pricing — OpenAI API (GPT-5.5/5.4/Codex per-token rates)](https://developers.openai.com/api/docs/pricing)
- [OpenAI brings models to AWS after ending exclusivity with Microsoft — CNBC](https://www.cnbc.com/2026/04/28/openai-brings-models-to-aws-after-ending-exclusivity-with-microsoft.html)
- [Amazon closes at record after $38 billion OpenAI deal with AWS — CNBC (Nov 2025)](https://www.cnbc.com/2025/11/03/open-ai-amazon-aws-cloud-deal.html)
- [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents (Limited Preview) — AWS What's New (April 28, 2026)](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- [Accelerating government innovation: Bedrock models get FedRAMP High and DoD IL-4/5 in GovCloud — AWS Public Sector Blog](https://aws.amazon.com/blogs/publicsector/accelerating-government-innovation-amazon-bedrock-models-get-fedramp-high-and-dod-il-4-5-approval-in-aws-govcloud-us/)
- [Introducing GPT-5.5 — OpenAI (benchmarks, 1M context)](https://openai.com/index/introducing-gpt-5-5/)
- [Codex OpenAI Agents on Amazon Bedrock — Elevata.io setup guide](https://elevata.io/en/codex-openai-agents-on-amazon-bedrock-aws-setup-guide)
