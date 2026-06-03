# GitHub Copilot przechodzi na AI Credits + nowy plan Max za 100 USD

**Data:** 2026-06-03
**Temat:** Od 1 czerwca 2026 wszystkie plany Copilota są rozliczane w AI Credits (1 credit = 0,01 USD), a nowy plan Max za **100 USD/mies.** dorzuca **20 000 credits** i celuje w deweloperów heavy-agentic, których Microsoft chce odbić Cursorowi i Claude Code.

---

## Kluczowe fakty i liczby

- **1 czerwca 2026** GitHub przełączył wszystkie plany Copilota z modelu PRU (premium request units) na **GitHub AI Credits**, gdzie **1 credit = 0,01 USD**.
- Ceny seatów się **nie zmieniły**: Pro **10 USD/mies.**, Pro+ **39 USD/mies.**, Business **19 USD/seat**, Enterprise **39 USD/seat** — ale w środku siedzi inny licznik.
- Każdy plan dostaje **base credits = 1:1 z ceną subskrypcji** (nigdy się nie zmieniają) plus **flex allotment** (zmienny dodatek, GitHub może go regulować w czasie razem z cennikami modeli).
- Nowy **Copilot Max** za **100 USD/mies.** daje **10 000 base + 10 000 flex = 20 000 credits**, czyli równowartość **200 USD** miesięcznej puli — Microsoft otwarcie targetuje power-userów Cursora Ultra i Claude Code Max.
- **Code completions i Next Edit Suggestions zostają unlimited** na wszystkich płatnych planach — credits zużywają tylko Copilot Chat, Copilot CLI, cloud agent, Spaces, Spark i third-party coding agents.
- Domyślny **overage cap = 0 USD** — bez ustawienia budżetu nie zapłacisz ani centa ponad subskrypcję; po przekroczeniu puli **dodatkowe użycie idzie po cenniku per-token modelu**.
- **Sign-upy do Pro/Pro+/Student zostały wstrzymane** przed przełączeniem, a **Opus 4.5 i 4.6 zniknęły z Pro+** (zostaje tylko **Opus 4.7**, dostępny wyłącznie w Pro+/Max).

## Tabela planów Copilota (od 1 czerwca 2026)

| Plan | Cena (USD/mies.) | Base credits | Flex credits | Razem credits | Ekwiwalent w USD |
|---|---|---|---|---|---|
| Free | 0 | ograniczone | — | limit | — |
| **Pro** | **10** | **1 000** | **500** | **1 500** | **15** |
| **Pro+** | **39** | **3 900** | **3 100** | **7 000** | **70** |
| **Max** (NEW) | **100** | **10 000** | **10 000** | **20 000** | **200** |
| Business | 19/seat | 1 900 | 1 100 | 3 000 | 30 (promo do sierpnia) |
| Enterprise | 39/seat | 3 900 | 3 100 | 7 000 | 70 (promo do sierpnia) |

**Mechanika:** najpierw zjadane są base, potem automatycznie flex. Po wyczerpaniu obu — tylko jeśli ustawisz budżet — overage liczony per-token wg cennika modelu.

## Cennik per model (AI Credits per 1M tokenów)

Ceny w USD per **1 milion tokenów** (1 credit = 0,01 USD, więc cena × 100 = credits):

| Model | Input | Cached input | Output | Cache write |
|---|---|---|---|---|
| **Claude Sonnet 4.6** | **3,00** | 0,30 | **15,00** | 3,75 |
| **GPT-5.5** | **5,00** | 0,50 | **30,00** | — |
| **Gemini 2.5 Pro** | 1,25 | — | **10,00** | — |
| **Gemini 3.5 Flash** | 1,50 | — | 9,00 | — |
| **MAI-Code-1-Flash** (Microsoft) | **0,75** | — | **4,50** | — |
| **Opus 4.7** (tylko Pro+/Max) | ~7,5× droższy niż Sonnet | — | — | — |

Przykład: jedno zapytanie do **Claude Sonnet 4.6** zjadające 50k input + 5k output = **0,15 + 0,075 = 0,225 USD ≈ 22,5 credits**. Pula **Pro (1 500 credits)** wystarczy na ~66 takich zapytań, **Max (20 000)** na ~890.

## Porównanie z konkurencją (Cursor / Claude Code / Antigravity)

| Tool | Plan power-user | Cena/mies. | Model rozliczeniowy |
|---|---|---|---|
| **Copilot Max** (GitHub) | Max | **100 USD** | 20 000 AI Credits (10k base + 10k flex), overage per-token |
| **Cursor** | Ultra | **200 USD** | pula requestów, reset miesięczny |
| **Claude Code Max 5×** | Max 5× | **100 USD** | 5× limity Pro, reset **tygodniowy** |
| **Claude Code Max 20×** | Max 20× | **200 USD** | 20× limity Pro, reset tygodniowy |
| **Antigravity** (Google) | AI Pro | **20 USD** | wbudowane credits + zakup ekstra |
| **Antigravity** (Google) | AI Ultra (5×) | **100 USD** | 5× rate limit vs Pro |
| **Antigravity** (Google) | AI Ultra (20×) | **200 USD** (obniżone z 250) | 20× rate limit vs Pro |

Punkt 100 USD/mies. nagle ma **trzech graczy** (Copilot Max, Claude Code Max 5×, Antigravity Ultra 5×) — wcześniej Microsoft nie miał nic w tym segmencie powyżej Pro+ za 39 USD.

## Co zmieniło się dla obecnych subskrybentów

- **Miesięczni subskrybenci Pro/Pro+** — automatyczna migracja **1 czerwca 2026**, bez akcji ze strony usera.
- **Roczni subskrybenci** — zostają na starych warunkach do końca okresu, ale **mnożniki modeli rosną od 1 czerwca**; po wygaśnięciu lądują na Copilot Free z opcją upgrade.
- **Refund** — do 20 maja było można anulować z proporcjonalnym zwrotem przez Settings → Billing → Manage subscription.
- **Opus 4.5 i 4.6 usunięte** z Pro+ przed migracją; **Opus 4.7** — tylko w Pro+ i Max.
- **Code completions = nadal unlimited i darmowe** — to się nie zmienia, panika devów o "Copilot zaczął liczyć każde Tab" jest nieuzasadniona dla autocomplete.
- **Business/Enterprise** dostają **promo extra credits** do sierpnia: Business 30 USD/seat (zamiast 19), Enterprise 70 USD/seat (zamiast 39).
- **Pooled credits** w organizacji + admin budget controls per cost center i per user.

## Implikacje dla developerów

- **Heavy agentic userzy** (Claude Code, Cursor power-users) dostają realną alternatywę w ekosystemie GitHub bez doklejania trzeciego subscription.
- **Casual userzy Pro za 10 USD** — większość nawet nie ruszy puli 1 500 credits, bo autocomplete jest free, a kilka pytań do Chat dziennie to ~500-800 credits/mies.
- **Predictability vs flexibility** — flat fee zniknął. Możesz wydać **0,01 USD/mies. albo 200 USD/mies.**, zależnie od użycia; **budget cap = 0 USD by default** to zabezpieczenie przed surprise bill.
- **Microsoft optymalizuje pod swoje modele** — **MAI-Code-1-Flash** kosztuje **0,75 USD/1M input**, czyli 4× taniej od Sonneta 4.6. Każde zapytanie do "darmowego" Microsoftowego modelu spala mniej credits → naturalna presja, by korzystać z MAI.
- **Devy uciekający z Cursor Ultra (200 USD)** — Copilot Max za 100 USD oferuje połowę "ekwiwalentu USD" puli (200 USD), ale w tym samym IDE-agnostic narzędziu, które już znają.
- **Token economics > sticker price** — realny koszt zależy od tego, jak agresywnie agent woła model, ile context window pakuje i czy korzysta z cached tokens (10× tańsze input).

---

## Potencjalne kąty narracyjne do shorta

1. **"Copilot dorównał Cursorowi ceną — Microsoft uruchamia plan Max za 100 USD i celuje w heavy userów."** Hook na nagłą zmianę pozycjonowania: Microsoft wcześniej kończył na 39 USD (Pro+), teraz wchodzi na ring obok Cursora Ultra i Claude Code Max.

2. **"Od 1 czerwca każde zapytanie do Copilota kosztuje konkretne grosze — autocomplete nadal za darmo, ale Chat liczy tokeny."** Hook edukacyjny: **1 credit = 0,01 USD**, Sonnet 4.6 = 3 USD/1M input, GPT-5.5 = 5 USD/1M input. Pula Pro (**1 500 credits**) starcza na ~66 średnich pytań.

3. **"Microsoft chce, żebyś używał ich modelu — MAI-Code-1-Flash jest 4× tańszy w credits od Claude Sonnet 4.6."** Hook konspiracyjny: cennik MAI 0,75 USD vs Sonnet 3,00 USD per 1M input — naturalna ekonomiczna presja, żebyś klikał Microsoftowy default.

4. **"100 USD u Microsoftu daje 20 000 credits, 100 USD w Claude Code daje 5× limity Pro, 100 USD w Antigravity daje 5× rate limit — kto wygrywa?"** Hook porównawczy do tabeli: trzech graczy nagle ma plan za 100 USD/mies., każdy z inną mechaniką (credits vs requests vs rate limit).

5. **"Stara cena Copilota 10 USD/mies. została — ale teraz wewnątrz masz licznik, który mówi 'wystarczy na 1 500 zapytań'. Co się stanie, jak skończą się credits?"** Hook na FOMO/strach: domyślnie nic — **budget cap = 0 USD by default**. Bez aktywacji budżetu po prostu przestaje działać Chat (autocomplete dalej śmiga).

6. **"Opus 4.5 i 4.6 zniknęły z Copilota. Zostaje tylko Opus 4.7 — i tylko jeśli płacisz minimum 39 USD."** Hook na nagłą zmianę dla power-userów Anthropic: cichy cleanup modeli przy okazji migracji.

7. **"Roczni subskrybenci Pro nie migrują od razu — ale 1 czerwca mnożniki modeli im się i tak podniosą. Po wygaśnięciu lądują na Free."** Hook dla ostrożnych: pułapka annual plan, który nie chroni cię tak, jak myślałeś.

---

## Źródła

- [GitHub Blog — Copilot individual plans: flex allotments + Max](https://github.blog/news-insights/company-news/github-copilot-individual-plans-introducing-flex-allotments-in-pro-and-pro-and-a-new-max-plan/) — primary, ogłoszenie planów Pro/Pro+/Max
- [GitHub Blog — Copilot is moving to usage-based billing](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/) — primary, mechanika AI Credits i migracji
- [GitHub Changelog — Updates to GitHub Copilot billing and plans (2026-06-01)](https://github.blog/changelog/2026-06-01-updates-to-github-copilot-billing-and-plans/) — primary, dzień przełączenia
- [GitHub Docs — Models and pricing for GitHub Copilot](https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing) — primary, cennik per model
- [GitHub Community Discussion #192963 — FAQ: Changes to Copilot Individual Plans](https://github.com/orgs/community/discussions/192963) — primary, FAQ i Opus 4.5/4.6 removal
- [FindSkill — GitHub Copilot's New AI Credits Billing: What Changes June 1](https://findskill.ai/blog/github-copilot-ai-credits-billing-june-2026/) — secondary, podsumowanie zmian
- [WinBuzzer — GitHub Adds Copilot Max and Bigger Pro Usage Pools](https://winbuzzer.com/2026/05/14/github-copilot-individual-plans-introducing-flex-a-xcxwbn/) — secondary, kontekst rynkowy
- [Medium — Cursor Ultra vs Claude Code Max: do you need both](https://medium.com/realworld-ai-use-cases/cursor-ultra-vs-claude-code-max-do-you-need-both-or-is-one-enough-f07a7fb73996) — porównanie konkurencji 100/200 USD
- [Antigravity Pricing 2026](https://antigravity.google/pricing) — primary, Antigravity Pro/Ultra
