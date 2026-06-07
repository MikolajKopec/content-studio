# Anthropic dzieli Claude na dwa portfele — od 15 czerwca SDK na osobnym koncie

**Data:** 2026-06-07
**Temat:** Anthropic rozdziela subskrypcję Claude na pulę „interaktywną" (chat, Claude Code w terminalu) i „programatyczną" (Agent SDK, `claude -p`, GitHub Actions, third-party agenci), tnąc faktyczny budżet automatyzacji nawet **25–40x** w stosunku do dotychczasowych planów.

## Kluczowe fakty i liczby

- Zmiana wchodzi **15 czerwca 2026**, ogłoszona **14 maja 2026** (w komunikacie z 5 czerwca Anthropic powtórzył to z przypomnieniem dla devów).
- Nowe miesięczne pule kredytów SDK per user: **Pro $20**, **Max 5x $100**, **Max 20x $200**, **Team Standard $20/seat**, **Team Premium $100/seat**, **Enterprise Premium $200/seat**, **Enterprise Standard $0** (bez kredytu).
- Kredyty rozliczane są **po standardowych stawkach API** — Sonnet 4.6 to **$3 / 1M input** i **$15 / 1M output**, Opus 4.7 to **$5 / 1M input** i **$25 / 1M output**.
- **$20 kredytu = ~6,6 mln tokenów input lub ~1,3 mln output na Sonnet 4.6**, czyli realnie **~50 średnich tasków** miesięcznie (10K in + 3K out per task).
- Kredyty są **per-user, nie pool'owane w teamie**, **nie rolują się** na kolejny cykl, wymagają **jednorazowego opt-in** w Claude Account.
- Po wyczerpaniu kredytu — jeśli włączysz „usage credits", lecisz **pay-as-you-go po cenach API**; jeśli nie — **requesty SDK po prostu przestają działać** do końca cyklu.
- Theo Browne (T3.gg): „Your ability to use your sub in T3 Code has been **cut by 25 to 40 times** as a result of this change."

## Co dokładnie się zmienia

**Stary model (do 14 czerwca):** wszystko — chat na claude.ai, Claude Code w terminalu, `claude -p` w CI, GitHub Actions, third-party agenci (OpenClaw, Conductor, Zed, Jean) — leciało z **jednej puli** subskrypcji ($20/$100/$200). Power-userzy odpalali subagentów w nieskończoność i jeden $20 plan generował koszty, które na bezpośrednim API kosztowałyby $500+.

**Nowy model (od 15 czerwca) — dwa portfele:**

**Portfel 1 — Interaktywny (bez zmian, w ramach subskrypcji):**
- Claude.ai (web, desktop, mobile)
- Interaktywny Claude Code w terminalu / IDE
- Claude Cowork

**Portfel 2 — Programatyczny (NOWY osobny kredyt $20–$200):**
- Claude Agent SDK (Python + TypeScript) w twoich projektach
- `claude -p` (non-interactive / headless mode)
- Claude Code GitHub Actions
- Third-party aplikacje autoryzujące się subskrypcją Claude (OpenClaw, Conductor, Zed, Jean, T3 Code itd.)

Boris Cherny (head of Claude Code w Anthropic) powiedział wprost: third-party narzędzia, które operują poza systemem cache Anthropic, „are really hard to do sustainably."

## Nowy cennik per plan

| Plan | Cena planu | Kredyt SDK/mies. | ~Średnich tasków/mies.* |
|---|---|---|---|
| Pro | $20 | **$20** | ~50 |
| Max 5x | $100 | **$100** | ~250 |
| Max 20x | $200 | **$200** | ~500 |
| Team Standard | per seat | **$20/seat** | ~50/seat (non-pooled) |
| Team Premium | per seat | **$100/seat** | ~250/seat (non-pooled) |
| Enterprise Standard | per seat | **$0** | brak SDK z subskrypcji |
| Enterprise Premium | per seat | **$200/seat** | ~500/seat |

*Przyjęto „średni task" = 10K input + 3K output na Sonnet 4.6 (~$0,075/task). Refresh z cyklem rozliczeniowym, **brak rolowania**, kredyty zużywane FIFO przed jakimkolwiek innym źródłem.

**Po wyczerpaniu:**
- z włączonym „usage credits" → standardowe API rates (np. refactor 120K in + 18K out = **$0,63 Sonnet / $1,05 Opus**)
- bez „usage credits" → twarda blokada SDK do końca cyklu

## Dlaczego Anthropic to robi

1. **Arbitrage compute był nie do utrzymania.** $20 subskrypcja generowała workloady warte $500+ na liście cenowej API. Subagenci-orkiestratorzy w pętlach „autonomous coding" zjadali marżę.
2. **OpenClaw & spółka.** Anthropic w marcu wprowadził ban na konkretne third-party agenty „due to unsustainable demand". Reinstate'ował je teraz, ale w klatce kredytowej.
3. **Cache jako linia podziału.** Cherny: poza systemem cache Anthropic koszty są nieprzewidywalne. Subskrypcja zakładała wzorce użycia z dużą redundancją cache'owalną — agenci łamią to założenie.
4. **GPU constraint?** Ben Hylak (CTO Raindrop.ai) na X: „**this is either really silly, or shows how bad of a spot anthropic is in re: gpus**." Anthropic oficjalnie tego nie potwierdza, ale timing po skoku popularności Agent SDK sugeruje, że compute jest wąskim gardłem.
5. **Przewidywalność dla księgowości.** Flat-rate z nieskończonym variance to koszmar finansowy. Dwa portfele = czysty model: subsydiowany interactive + metered programmatic.

## Implikacje dla devów

**Indie hackerzy / solo agenci:**
- $20 Pro to teraz **~50 tasków SDK miesięcznie** zamiast „de facto unlimited". Codzienne `claude -p` w CI na małym projekcie zje to w 3-4 dni.
- Realny floor migruje na **Max 5x ($100) lub bezpośredni klucz API** z pay-as-you-go (często tańszy przy disciplined użyciu).
- Long-running autonomous loops (multi-agent orchestratory) — **nie mieszczą się** nawet w $200, niezależnie od planu.

**Agency / małe teamy:**
- Kredyty **nie pool'ują się**. Jeden dev z runaway scriptem nie wyczyści budżetu zespołu, ale też nie ma elastyczności „jeden user pożyczy nadwyżkę od drugiego".
- CI/CD pipelines współdzielone → Anthropic wprost rekomenduje **migrację na direct API key**.

**Large teams / Enterprise:**
- Enterprise Standard dostaje **$0 kredytu** — to świadomy push w stronę zakupu osobnego klucza API z negocjowanymi stawkami.
- Enterprise Premium ($200/seat) sensowne tylko dla orgów, gdzie każdy dev faktycznie odpala Agent SDK codziennie.

**Power userzy Claude Code GitHub Actions:**
- Każdy PR z auto-review przez Claude Code Action = liczy się jako programmatic. Repo z 50 PR-ami/dzień może wypalić **$20 kredytu w jeden dzień**.

## Reakcje społeczności

- **Theo Browne (T3.gg, T3 Code):** „Your ability to use your sub in T3 Code has been **cut by 25 to 40 times**." „**All of this is an attack on open source.**" „I listened to the Claude Code team. I took them at their word. **I will never make that mistake again.**" „**Any statement from an Anthropic employee is a lie on a timer.**" „We built T3 Code for free. It has made far more money for Anthropic and OpenAI than for us."
- **Ben Hylak (CTO Raindrop.ai):** „**this is either really silly, or shows how bad of a spot anthropic is in re: gpus.** they should be doing everything they can to be the foundational infrastructure for agents."
- **Matt Pocock (edukator Claude Code):** „I have never before experienced from any developer tool such a frustrating lack of clarity over the basic terms of usage. This is the clarity that we've been crying out for — **but it's a poisoned chalice**."
- Anonimowy Max-subskrybent na forum: jego non-interactive usage „would now **far, far exceed** what I can afford."
- Comparison frame: na **Cursor Ultra ($200)** dostajesz „nielimitowane" agentic loops (de facto soft-capped), na **Cline** płacisz tylko czysty API koszt (Cline średnio $20-50/mies. heavy use). **OpenAI Codex** przeszedł na token-based pricing w kwietniu 2026 — Anthropic dogania ten model, ale z gorszym PR-em.

## Potencjalne kąty narracyjne do shorta

1. **„Twój Claude Pro został właśnie pocięty 40 razy"** — open Theo Browne'em, pokaż liczbę „25-40x" jako headline, potem rozłóż na portfele.
2. **„Anthropic właśnie przyznał, że subagenci nie działają ekonomicznie"** — angle business: $20 plan generował $500 kosztów, Cherny mówi „hard to do sustainably", to koniec ery compute arbitrage.
3. **„Czy Anthropic ma problem z GPU?"** — Hylak quote jako klucz, spekulacja o compute constraints, dlaczego akurat teraz, porównanie z OpenAI Codex.
4. **„Indie hacker post-mortem: 1 dzień, $20 kredytu w popiele"** — symulacja realnego użycia (GitHub Action review na każdym PR), pokaż jak szybko 50 tasków znika.
5. **„T3 Code, OpenClaw, Conductor — kto przeżyje 15 czerwca"** — przegląd third-party ecosystem, kto musi przebudować model biznesowy, atak na open source wg Browne'a.
6. **„Cursor vs Claude vs Codex po 15 czerwca — gdzie uciec z agentami"** — comparison table, kiedy direct API tańszy, kiedy Max 5x ma sens, kiedy Cursor Ultra wygrywa.
7. **„Dwa portfele, jeden user — jak nie wypalić $200 w 48 godzin"** — praktyczny tutorial: prompt caching (0,1x koszt na cache hit, do **90% oszczędności**), Sonnet zamiast Opus, długie konteksty pod kontrolą.

## Źródła

1. [Claude Help Center — Use the Claude Agent SDK with your Claude plan](https://support.claude.com/en/articles/15036540-use-the-claude-agent-sdk-with-your-claude-plan) — oficjalny zakres, kwoty per plan, mechanika opt-in.
2. [DevToolPicks — Anthropic Splits Claude Subscriptions: What Changes for Indie Hackers on June 15](https://devtoolpicks.com/blog/anthropic-splits-claude-subscriptions-agent-sdk-credit-june-2026) — Theo Browne, Ben Hylak quotes, lista third-party tooli.
3. [The-Decoder — Claude subscriptions get separate budgets for programmatic use, billed at full API prices](https://the-decoder.com/claude-subscriptions-get-separate-budgets-for-programmatic-use-billed-at-full-api-prices/) — daty (announcement 14 maja, effective 15 czerwca), business reasoning.
4. [Digital Applied — Claude Credit Overhaul 2026: What Changes on June 15](https://www.digitalapplied.com/blog/anthropic-claude-credit-overhaul-june-15-2026) — API rates Sonnet/Opus, token math per task, breakeven analysis, prompt caching.
5. [BigGo Finance — Anthropic Policy Slashes Third-Party Tool Access by 40x, T3 Code Creator Theo Browne Says](https://finance.biggo.com/news/382b1ef1c37acfb3) — pełne quotes Browne'a i Matta Pococka.
6. [ClaudeFa.st — Claude's $200 Agent SDK Credit: Who Wins on June 15?](https://claudefa.st/blog/guide/development/agent-sdk-credit) — analiza winners/losers, team admin angle.
7. [TechTimes — Anthropic Ends Subscription Subsidy for Agents June 15](https://www.techtimes.com/articles/317625/20260602/anthropic-ends-subscription-subsidy-agents-june-15-credit-pool-replaces-flat-rate-access.htm) — framing „end of subsidy", kontekst rynkowy.
8. [Gist Magna Capax — Canonical reference for Anthropic's May 13, 2026 Agent SDK $200 credit policy change](https://gist.github.com/MagnaCapax/d9177e35b355853f03c730dfcaa693ef) — math 12x–175x effective price increase, competitor comparison.
9. [Developers Digest — AI Coding Tools Pricing Comparison 2026](https://www.developersdigest.tech/blog/ai-coding-tools-pricing-2026) — kontekst Cursor Ultra $200, Cline $20-50, Codex token-based.
