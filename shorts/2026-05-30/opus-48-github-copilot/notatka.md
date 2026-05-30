# Claude Opus 4.8 wjeżdża do GitHub Copilot z 15× premium request multiplier

**Data:** 2026-05-30
**Temat:** GitHub w dniu premiery modelu (28 maja 2026) udostępnia Claude Opus 4.8 dla planów Pro+, Business i Enterprise z mnożnikiem 15× premium request — utrzymywanym tylko do startu Usage Based Billing 1 czerwca 2026 (czyli przez niecałe 4 dni).

---

## Kluczowe fakty i liczby

- **28 maja 2026** — tego samego dnia, w którym Anthropic ogłosił Opus 4.8, GitHub Copilot dodał model do model pickera w VS Code, Visual Studio, JetBrains, Xcode, Eclipse, Copilot CLI, GitHub.com i Copilot App.
- Mnożnik startowy: **15× premium request multiplier** — najwyższy w katalogu Copilota, **5× więcej** niż obecny mnożnik **3× dla Opus 4.7**.
- Dostępność ograniczona do **3 planów**: **Pro+ (39 USD/mies.)**, **Business (19 USD/user/mies.)** i **Enterprise (39 USD/user/mies.)** — w zwykłym Copilot Pro Opus nadal niedostępny od marca 2026.
- Okno z mnożnikiem 15× trwa do **1 czerwca 2026**, kiedy startuje Usage Based Billing — rozliczanie po tokenach (input/output/cached) zamiast premium requestów. Każdy plan dostanie miesięczny budżet **AI Credits równy cenie planu w USD** (1 AI credit = 0,01 USD).
- Opus 4.8 wymaga **administracyjnego włączenia polityki** w ustawieniach Copilota dla planów Business i Enterprise — nie pojawia się automatycznie u userów.
- Równolegle wyszedł **Copilot CLI 1.0.55** z obsługą Opus 4.8, raportowaniem **thinking tokens** w session summary, ustawieniem `permissions.disableBypassPermissionsMode` (blokada trybu yolo) oraz `/autopilot` z aliasem `/goal`.
- Plany **Free i Student** na token-based billingu są zablokowane do **Auto model selection** — brak ręcznego wyboru Opus 4.8.
- Benchmarki Opus 4.8 vs 4.7: **SWE-Bench Pro 69,2% (z 64,3%)**, **OSWorld-Verified 83,4% (z 82,8%)**, **Online-Mind2Web 84%**, misalignment score spadł z **2,5 do 1,9** (niżej = lepiej).

---

## Oś czasu wojny agentic IDE (maj 2026)

- **18 maja** — Cursor odpala **Composer 2.5** (na bazie Kimi K2.5): **SWE-Bench Multilingual 79,8% vs Opus 4.7 80,5%**, ale **~10× taniej** za task (<1 USD vs 3–11 USD u Opus/GPT-5.5).
- **19 maja** — Google na I/O 2026 startuje **Antigravity 2.0** (desktop app, CLI, SDK, Managed Agents API, Enterprise Agent Platform) napędzane Gemini 3.5 Flash + nowy plan **AI Ultra 100 USD/mies.**
- **28 maja** — Anthropic dropuje Opus 4.8 + GitHub Copilot CLI 1.0.55 ze wsparciem 4.8 + 15× mnożnik premium request.
- **1 czerwca** — start Usage Based Billing w Copilocie, koniec ery premium request multiplierów.

## Model biznesowy / cena

- Pre-1 czerwca: limity Pro+ to >**5× limity Pro**, każdy premium request 15×-mnożnikowany = w praktyce **15 premium requestów z budżetu** za jedno pytanie do Opus 4.8.
- Post-1 czerwca: rozliczanie po **tokenach API rate**. Opus 4.8 = **5 USD/M input, 25 USD/M output** (tak samo jak 4.7). Fast mode: **10 USD/M input, 50 USD/M output**.
- Code completions i Next Edit suggestions **nie konsumują AI Credits** — pozostają w pakiecie bez limitu.
- Nowi klienci Business/Enterprise dostają promocyjne credits do sierpnia 2026: Business 30 USD, Enterprise 70 USD/mies.

## Porównanie z konkurencją

| Cecha | Copilot + Opus 4.8 | Cursor Composer 2.5 | Antigravity 2.0 |
|---|---|---|---|
| Cena planu | 39 USD (Pro+) | 20 USD (Pro) | 0 USD baseline, 100 USD AI Ultra |
| Model bazowy | Opus 4.8 (Anthropic) | Composer 2.5 (proprietary, Kimi K2.5) | Gemini 3.5 Flash |
| Mnożnik / billing | 15× → tokeny od 1.06 | flat per task | request limits |
| SWE-Bench | 69,2% (Pro) | 79,8% (Multilingual) | brak danych |

## Implikacje dla użytkownika

- Okno 4-dniowe do testów Opus 4.8 przy mnożniku 15× — wycisk limitów Pro+ momentalny. Po 1 czerwca wszystko liczone w tokenach, a Opus 4.8 jest **5× droższy w outpucie** od Sonnet 4.6.
- Devy na Reddit/Visual Studio Magazine już krzyczą: "You will get less, but pay the same price" — narracja podobna jak przy Cursor i nowych planach od kwietnia.
- Strategicznie: GitHub szybko reaguje (8 dni po Composer 2.5, 9 dni po Antigravity 2.0), ale stawia na premium model + premium price zamiast na konkurowanie ceną.

---

## Potencjalne kąty narracyjne do shorta

1. "GitHub wpuścił Opus 4.8 do Copilota z mnożnikiem **15×** — i wyłącza go po **4 dniach**. Wiesz co się dzieje 1 czerwca?"
2. "Jedno pytanie do Opus 4.8 w GitHub Copilot kosztuje **15 premium requestów**. Na Pro+ wytrzymasz może 2 godziny."
3. "**28 maja Anthropic ogłosił Opus 4.8. 28 maja GitHub już go miał w Copilocie.** Tak wygląda nowa wojna agentic IDE."
4. "Cursor Composer 2.5 kosztuje **10× mniej** za task niż Opus 4.7. A GitHub właśnie wrzuca Opus 4.8 z mnożnikiem **15×**. Kto tu zwariował?"
5. "**1 czerwca 2026** Copilot kończy z premium requestami. Wszystko idzie na tokeny. Output Opus 4.8 = **25 USD za milion**. Policz ile to dla Twojej pracy."
6. "Maj 2026: Composer 2.5, Antigravity 2.0, Opus 4.8 w Copilocie. **Trzy launche w 10 dni.** Coding IDE wars właśnie weszły w fazę gorącą."
7. "GitHub Copilot Free i Student: **brak dostępu do Opus 4.8**. Auto-select i tyle. Premium AI w Microsofcie kosztuje teraz **39 USD/mies. minimum.**"

---

## Źródła

- [Claude Opus 4.8 is generally available for GitHub Copilot — GitHub Changelog](https://github.blog/changelog/2026-05-28-claude-opus-4-8-is-generally-available-for-github-copilot/)
- [Releases · github/copilot-cli (1.0.55)](https://github.com/github/copilot-cli/releases)
- [GitHub Copilot is moving to usage-based billing — GitHub Blog](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/)
- [Changes to GitHub Copilot plans for individuals — GitHub Changelog](https://github.blog/changelog/2026-04-20-changes-to-github-copilot-plans-for-individuals/)
- [Supported AI models in GitHub Copilot — GitHub Docs](https://docs.github.com/en/copilot/reference/ai-models/supported-models)
- [Claude Opus 4.8: Release Date, Pricing, Benchmarks — WaveSpeed Blog](https://wavespeed.ai/blog/posts/opus-4-8/)
- [Model Drop: Claude Opus 4.8 — Handy AI](https://handyai.substack.com/p/model-drop-claude-opus-48)
- [Cursor's Composer 2.5 matches Opus 4.7 and GPT-5.5 — The Decoder](https://the-decoder.com/cursors-composer-2-5-matches-opus-4-7-and-gpt-5-5-benchmarks-at-a-fraction-of-the-cost/)
- [Google launches Antigravity 2.0 at I/O 2026 — TechCrunch](https://techcrunch.com/2026/05/19/google-launches-antigravity-2-0-with-an-updated-desktop-app-and-cli-tool-at-io-2026/)
- [Devs Sound Off on Usage-Based Copilot Pricing — Visual Studio Magazine](https://visualstudiomagazine.com/articles/2026/04/27/devs-sound-off-on-usage-based-copilot-pricing-change-you-will-get-less-but-pay-the-same-price.aspx)
