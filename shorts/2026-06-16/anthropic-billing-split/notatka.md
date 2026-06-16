# Anthropic odpina Claude Code od planu Pro/Max — od wczoraj devsi płacą osobno

**Data:** 2026-06-16
**Temat:** Od 15 czerwca 2026 Anthropic rozdziela billing Claude'a na dwie pule — interaktywny chat zostaje w planie Pro/Max, ale Agent SDK, `claude -p`, GitHub Actions i third-party agenci (Zed, Conductor, OpenClaw, Jean) wyjeżdżają do osobnego "Agent SDK Credit pool" płaconego po pełnych stawkach API. Tego samego dnia retirement łapią dwa oryginalne modele Claude 4 — calls od wczoraj failują.

---

## Kluczowe fakty i liczby

- **15 czerwca 2026, 9:00 PT** — moment wejścia w życie split billingu i jednoczesnego retirement modeli `claude-sonnet-4-20250514` oraz `claude-opus-4-20250514`. Bez okresu przejściowego. Anthropic zapowiedział to **14 kwietnia 2026** — czyli dał **60 dni** notice.
- Nowe miesięczne pule kredytów Agent SDK liczone po **standardowych stawkach API** (bez subscription discount): Pro **$20**, Max 5x **$100**, Max 20x **$200**, Team Standard **$20/seat**, Team Premium **$100/seat**.
- Co dokładnie wjeżdża w nową pulę: **4 kategorie** — Claude Agent SDK, `claude -p` (headless/non-interactive), Claude Code GitHub Actions, oraz third-party agenci autoryzujący się przez Agent SDK (**OpenClaw, Conductor, Zed, Jean**).
- Co zostaje w starej puli Pro/Max: interaktywny Claude Code w terminalu, Claude.ai web/desktop/mobile, Claude Cowork oraz direct API key billing.
- **Bez rollover. Bez refundu.** Niewykorzystane kredyty wygasają na koniec cyklu rozliczeniowego. Po wyczerpaniu puli automated requesty **stop entirely** — chyba że ręcznie włączysz "overflow billing" (pay-as-you-go po stawkach API).
- Kredyty wymagały **jednorazowego manual claim** przez konto Claude przed 15 czerwca — nie są przyznawane automatycznie. Są per-user, nie poolowane w teamie.
- Migration path: `claude-sonnet-4-20250514` → **`claude-sonnet-4-6`**, `claude-opus-4-20250514` → **`claude-opus-4-8`**. Opus 4.8 ma **1M tokenów** kontekstu (vs poprzednie 200k) i 128k max output, ale dropuje support dla manualnego `temperature`, `top_p` i `top_k` — z non-default values zwraca **400 error**.
- Według **JetBrains 2026 Developer Ecosystem Survey** około **18% professional devs** używa Claude Code daily — to wielkość audytu który właśnie dostał billingowego pstryczka.
- Przykład ekonomiki: $200 kredytu Max 20x na Opus 4.7 = ~**13.3 mln tokenów** = mniej więcej **13–26 heavy sessions miesięcznie** (przy 500K–1M tokenów na sesję).
- Theo (T3) skomentował publicznie że "musi teraz pogorszyć Claude Code experience na T3 Code", żeby zapobiec rapid credit depletion — bo wcześniej devsi mieli **~25x subsidization** względem rzeczywistych kosztów API.

---

## Co dokładnie się zmieniło 15 czerwca

Dwie zmiany w jednym dniu, obie breaking:

1. **Billing split**: do tej pory `claude -p`, Agent SDK i GitHub Actions konsumowały tę samą pulę co interaktywny chat. Dev z planem Pro za $20 mógł odpalać agentowe workflows o ekwiwalencie API rzędu **setek dolarów miesięcznie**. Ten arbitrage skończył się o 9 rano czasu pacyficznego.
2. **Model retirement**: oba oryginalne snapshoty Claude 4 z maja 2025 (`claude-sonnet-4-20250514` i `claude-opus-4-20250514`) dostały twardy kill. *"Requests to retired models fail. Not degrade, not redirect: fail."* Każdy cron, GitHub Action albo backend service hardcodowany na te ID od wczoraj rzuca błąd.

## Reakcje społeczności

- Reddit thread "Agent Use is gonna drop off a cliff once it's all usage based" przeskoczył **1000+ upvotes**.
- Jeden dev raportował **$50** za feature zbudowany przez agenta w long weekend — przy starym modelu mieściło się w Pro.
- Anonimowy case: **$200.98** opłaty bo string `HERMES.md` przypadkowo trafił do commit message i agent zaczął go szukać; Anthropic zwrócił po publicznym backlashu.
- Pojawił się open-source workaround obchodzący split (pre-15 czerwca).

## Konsekwencje dla PL devów

Polska społeczność vibecoderów na Discordzie ma sporo użytkowników Pro/Max odpalających automatyzacje przez cron lub n8n. Dziś rano część budzi się z:
- padniętymi calls do `claude-opus-4-20250514` (jeśli nie zmigrowali do `claude-opus-4-8`),
- wyczerpanym Agent SDK credit pool jeśli pipeline'y zostały włączone bez nowego limitu,
- niespodzianką że third-party tools (Zed, Conductor) nie liczą się już do subskrypcji.

OpenAI w międzyczasie wystartował promocję **"two free months of Codex"** wycelowaną w switcherów z Claude Code (start początek maja 2026).

---

## Potencjalne kąty narracyjne do shorta

**Wczoraj o 9 rano Anthropic odpiął Claude Code od planu Pro i Max — i pół internetu devów obudziło się dziś z padniętym cronem.**

**$20 Pro, $100 Max 5x, $200 Max 20x — to nie cena planu, to nowy osobny portfel na Agent SDK który Anthropic dorzucił od wczoraj. Bez rollover, bez refundu.**

**Anthropic zabił wczoraj dwa modele Claude 4 bez okresu przejściowego. Jeśli twój skrypt ma w sobie "claude-opus-4-20250514", to od wczoraj zwraca błąd zamiast odpowiedzi.**

**Pokażę wam jak jeden dev zapłacił $200 za to że napisał "HERMES.md" w commit message — Anthropic refundował dopiero po publicznym wpierdolu na Twitterze.**

**Theo z T3 mówi wprost: do wczoraj Claude Code subsydiował devsów 25x względem realnych kosztów API. Od dziś ten arbitrage się skończył.**

**Plan Pro za $20 dawał ci kiedyś agenta do kodowania o ekwiwalencie setek dolarów API miesięcznie. Wczoraj o 9 rano Anthropic to wyłączył.**

**Jeśli używasz Zed, Conductor albo OpenClaw na koncie Pro — sprawdź dzisiaj pulę kredytów, bo te third-party agenty od wczoraj nie liczą się już do subskrypcji.**

---

## Źródła

- [Anthropic Ends Subscription Subsidy for Agents June 15: Credit Pool Replaces Flat-Rate Access — TechTimes](https://www.techtimes.com/articles/317625/20260602/anthropic-ends-subscription-subsidy-agents-june-15-credit-pool-replaces-flat-rate-access.htm)
- [Anthropic's June 15 Billing Change: What Every Claude Code & Agent SDK User Must Do — Codersera](https://codersera.com/blog/anthropic-june-2026-billing-change-claude-code/)
- [Anthropic splits billing again: Agent SDK gets separate credit pools — The New Stack](https://thenewstack.io/anthropic-agent-sdk-credits/)
- [Two Claude Deadlines Hit June 15: What AI Builders Must Do — Enterprise DNA](https://enterprisedna.co/resources/news/anthropic-claude-june-15-retirements-billing-2026/)
- [Anthropic's June 15 Double Hit: Agent SDK Leaves Your Subscription, Claude 4 Retires — UsageBox](https://usagebox.com/articles/anthropic-june-15-agent-sdk-credit-split-claude-4-retirement)
- [Anthropic's Claude subscriptions no longer include Agent SDK and claude -p usage — XDA Developers](https://www.xda-developers.com/anthropics-claude-subscriptions-no-longer-include-agent-sdk-and-claude-p-usage/)
- [Anthropic Splits Claude Subscriptions Into Two Billing Pools — Vibe Coder Blog](https://blog.vibecoder.me/anthropic-claude-subscription-billing-split-june-2026)
- [Claude Sonnet 4 and Opus 4 Retire June 15 — ChatForest](https://chatforest.com/guides/anthropic-claude-sonnet-4-opus-4-deprecation-june-15-2026/)
- [Anthropic Splits Claude Subscriptions: What Changes for Indie Hackers on June 15 — DevToolPicks](https://devtoolpicks.com/blog/anthropic-splits-claude-subscriptions-agent-sdk-credit-june-2026)
- [Claude Code Pricing June 2026: What Each Plan Actually Costs — Bind AI](https://blog.getbind.co/claude-code-pricing-changes-june-15-what-youll-actually-pay-2026/)
