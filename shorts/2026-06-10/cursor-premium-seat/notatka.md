# Cursor wprowadza Premium Seat za $96/mc — 5× więcej usage za 3× cenę

**Data:** 2026-06-10
**Temat:** Cursor restrukturyzuje pricing Teams, wprowadza Premium Seat za 3× cenę Standardu, ale z 5× większą pulą usage — celuje w "power userów" generujących większość kosztów na zespole.

---

## Kluczowe fakty i liczby

- **Standard seat:** **$32/mc** (roczny) lub **$40/mc** (miesięczny) — bez podwyżki, ale z większą pulą "included usage" niż przed zmianą.
- **Premium seat:** **$96/mc** (roczny) lub **$120/mc** (miesięczny) — **5× usage** Standardu, ale tylko **3× cenę**, czyli efektywny **rabat ~40%** na dodatkowe credity.
- Każdy seat ma teraz **dwa osobne pule** usage: **Composer + Auto** (modele first-party Cursora) oraz **Third-Party API** (Anthropic, OpenAI, Google). Pule **nie przechodzą między członkami zespołu** i resetują się co cykl rozliczeniowy.
- Cursor twierdzi, że Composer pool na Premium pokryje **99%** miesięcy ciężkiego usage agentowego — to ich oficjalna obietnica dla "power userów".
- Zmiany działają **od razu** dla nowych klientów; dla obecnych — od **1 lipca 2026** przy odnowieniu cyklu.
- **Cursor Token Rate:** **$0.25 / 1M tokenów** doliczane do wszystkich non-Auto requestów (input + output + cached, **też dla BYOK**) — pokrywa semantic search, custom modele, infrastrukturę.
- **Free Admin seat:** **$0/mc** dla nieaktywnych adminów zarządzających zespołem bez dostępu do Cursora — nowy element, którego wcześniej nie było.
- **On-demand usage** włączone domyślnie: po wyczerpaniu puli użytkownik kontynuuje pracę po cenach API + Cursor Token Rate, bez przerwy w serwisie. **Spending limits** zespołowe można ustawić, per-member tylko na Enterprise.

## Kontekst: Composer 2.5 i tańsze tokeny

- Premium Seat ma sens głównie dlatego, że **Composer 2.5** (release **18 maja 2026**) daje wynik **Claude Opus 4.7 / GPT-5.5** za **~1/10 ceny per token**.
- Cennik Composer 2.5: **$0.50/M input + $2.50/M output** (standard) lub **$3.00/M + $15.00/M** (Fast, default).
- Composer 2.5 to dotrenowany **Moonshot Kimi K2.5** — z **25×** większą liczbą syntetycznych task-ów RL niż Composer 2. Cursor trenuje też z **SpaceXAI** model od zera z **10×** więcej compute.
- Benchmarki: **79.8% SWE-Bench Multilingual**, **63.2% CursorBench v3.1**.

## Porównanie z konkurencją

| Tool | Cena per dev / mc | Pula included | Model usage |
|---|---|---|---|
| **GitHub Copilot Business** | **$19** | $19 AI credits | Usage-based od 1 czerwca 2026 |
| **Cursor Teams Standard** | **$32-40** | "Standard pula" Composer + 3rd-party | Hybrid sub + on-demand |
| **Cursor Teams Premium** | **$96-120** | 5× Standard | Hybrid sub + on-demand |
| **Claude Code Max 5x** | **$100** | 5× Pro w 5h window | Reset co 5h |
| **Claude Code Max 20x** | **$200** | 20× Pro w 5h window | Reset co 5h |
| **Google Antigravity Pro** | **$20** | Limited credits | $0.01/credit overage |
| **Google Antigravity Ultra** | **$100-249.99** | Większa pula | Pełny stack agentów |

**Skala:** 200-osobowy team na Copilot Business = **$3,800/mc**, na Cursor Teams Standard = **$8,000/mc**, na Cursor Teams Premium = **$19,200/mc**. Roczny gap Cursor Premium vs Copilot: **~$185k**.

## Reakcje społeczności i pain points

- Na **forum.cursor.com** developerzy już przed update'm krytykowali model "wasted seats": *"We tried the team plan for a month and found only 3-4 members will use the limit and the rest all wasted their limits."*
- Główna skarga: **pule nie transferują się między userami**. Płacisz za 10 seatów, ale jeden senior pali 80% — pozostałe 9 quotów się marnuje. Premium Seat to **częściowa odpowiedź** Cursora na ten problem — daj jedno duże konto power userowi zamiast rozpraszać quoty.
- **BYOK ban:** Cursor jeszcze w 2025 ograniczył BYOK dla agent/edit features na premium planach — *"Agent and Edit Rely on Custom Models"* error. Społeczność na to narzeka, bo to wymusza płacenie Cursorowi Token Rate nawet przy własnym kluczu Anthropic.
- **Anthropic crackdown:** VentureBeat raportował, że Anthropic ogranicza nieautoryzowane użycie Claude przez third-party harnessy — to dodatkowy nacisk, żeby zostać przy first-party Composer 2.5 zamiast podpinać Claude Max do Cursora.

## Co się dzieje 18 czerwca z Gemini CLI

- **18 czerwca 2026** Gemini CLI i Gemini Code Assist IDE extensions **przestają serwować requesty** dla planów Google AI Pro, Ultra oraz free Gemini Code Assist for individuals.
- **Wyjątek:** organizacje na Gemini Code Assist **Standard/Enterprise** zachowują dostęp bez zmian.
- Migracja na **Antigravity CLI** (Go-based replacement) jest dostępna od 20 maja 2026, ale **bez pełnej parzystości feature** — keep się: Agent Skills, Hooks, Subagents, Extensions (jako "Antigravity plugins").
- **Free tier Antigravity** spadł z 250 → **20 agent requests / dzień** w marcu 2026 (-92%). Cena: **$0.01 per credit** overage, pakiet $25 = 2,500 credits.

## Implikacje dla polskiego dewa / firmy

- **Solo dev z PL:** $96/mc to **~390 zł netto** — w okolicy 10-15% średniej pensji mid-deva. Większość będzie zostawać na **Cursor Pro $20** lub **Antigravity Pro $20**.
- **Polski software house (10 devów):** Standard Teams = **$320/mc ≈ 1,300 zł**. Premium dla wszystkich = **$960/mc ≈ 3,900 zł**. Realnie firmy zrobią **mix:** 1-2 seniorów na Premium, reszta na Standard.
- **Polski startup vs US konkurencja:** Premium Seat = ~3% MRR przy zespole na seed roundzie. Dla US-based startupu — pomijalne. **Asymetria kosztowa** zwiększa presję na korzystanie z Copilot Business albo Antigravity Pro.
- **BYOK z polską stawką VAT:** Cursor Token Rate $0.25/M jest doliczany **nawet do BYOK**, więc oszczędność tylko częściowa. Anthropic Sonnet 4.6 ($3/M input) + Cursor Token Rate ($0.25/M) = realnie tylko **~8% drożej** niż czyste API, ale traci się 100% kontroli nad billingiem.

---

## Potencjalne kąty narracyjne do shorta

1. **"Cursor podniósł cenę o 200% — i developerzy się cieszą"** — paradoks: Premium Seat to 3× drożej, ale daje 5× więcej, więc to de facto **40% rabat** dla power userów. Hook na sprzeczność.
2. **"$96 miesięcznie za narzędzie, które koduje za ciebie"** — konkretna kwota, polski kontekst (390 zł = budżet jedzenia na tydzień), pytanie czy warto.
3. **"Google zabija Gemini CLI 18 czerwca — Cursor podnosi ceny tego samego dnia"** — drama, deadline, dwa newsy w jednej narracji, "wybierz stronę".
4. **"99% developerów nie wyrobi się z miesięcznego limitu Cursor Premium" — i to jest problem"** — wywrócenie marketingowej obietnicy: jeśli 99% nie wyrobi, to znaczy że płacisz za nieużywane.
5. **"Polski startup na Cursor Teams Premium płaci tyle, co za pensję juniora"** — 10 devów × $96 = ~3,900 zł / mc, lokalne porównanie ekonomiczne.
6. **"Copilot Business $19, Cursor Premium $96, Claude Code Max $200 — który wybrać?"** — comparison hook, konkretne liczby, jasny wybór dla widza.
7. **"Cursor każe płacić $0.25 za milion tokenów, nawet jeśli przynosisz własny klucz Anthropic"** — counterintuitive, BYOK nie jest "free", ujawnia ukryty koszt.

---

## Źródła

- [Improvements to Teams Pricing — Cursor blog (czerwiec 2026)](https://cursor.com/blog/teams-pricing-june-2026)
- [Team Pricing | Cursor Docs](https://cursor.com/docs/account/teams/pricing)
- [Introducing Composer 2.5 — Cursor blog](https://cursor.com/blog/composer-2-5)
- [Cursor Teams Upgrades Pricing for Predictability — StartupHub.ai](https://www.startuphub.ai/ai-news/technology/2026/cursor-teams-upgrades-pricing-for-predictability)
- [An important update: Transitioning Gemini CLI to Antigravity CLI — Google Developers Blog](https://developers.googleblog.com/an-important-update-transitioning-gemini-cli-to-antigravity-cli/)
- [Bye-bye, Gemini CLI; Google nudges devs toward Antigravity — The Register](https://www.theregister.com/ai-ml/2026/05/20/bye-bye-gemini-cli-google-nudges-devs-toward-antigravity/5243605)
- [Google Antigravity Pricing 2026 — antigravity.google/pricing](https://antigravity.google/pricing)
- [Team Pricing Clarification — Cursor Community Forum](https://forum.cursor.com/t/team-pricing-clarification-per-seat-usage-vs-shared-usage-pool/146379)
- [GitHub Copilot is moving to usage-based billing — GitHub Blog](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/)
- [Cursor vs Claude Code vs GitHub Copilot 2026 — NxCode](https://www.nxcode.io/resources/news/cursor-vs-claude-code-vs-github-copilot-2026-ultimate-comparison)
- [Anthropic API Billing and Extra Credits for Third-Party Tools — Fazm Blog](https://fazm.ai/blog/anthropic-api-billing-extra-credits-third-party-tools)
- [Bring your own API key | Cursor Docs](https://cursor.com/help/models-and-usage/api-keys)
