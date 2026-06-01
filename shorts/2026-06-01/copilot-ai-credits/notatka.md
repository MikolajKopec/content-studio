# GitHub Copilot przechodzi dziś na płatność za zużycie

**Data:** 2026-06-01
**Temat:** Od dziś GitHub Copilot rozlicza się w GitHub AI Credits liczonych od zużytych tokenów — koniec ery flat-rate dla agentowego kodowania.

---

## Kluczowe fakty i liczby

- Od **1 czerwca 2026** wszystkie plany GitHub Copilot przechodzą na rozliczenie zużycia oparte o tokeny — wprowadzono walutę **GitHub AI Credits** w kursie **1 kredyt = 0,01 USD**.
- Ceny planów się nie zmieniają, ale logika tak: **Pro 10 USD/mc (10 USD kredytów)**, **Pro+ 39 USD/mc (39 USD kredytów)**, **Business 19 USD/użytkownik/mc**, **Enterprise 39 USD/użytkownik/mc**.
- **Code completions i Next Edit suggestions zostają darmowe** i nie zużywają kredytów — płacisz tylko za chat, agenty, code review i długie sesje kontekstowe.
- Stawki Anthropic w Copilot za **1 mln tokenów**: **Claude Opus 4.6/4.7 — 5 USD input / 25 USD output**, **Claude Sonnet 4.6 — 3 USD input / 15 USD output**, **Claude Haiku 4.5 — 1 USD input / 5 USD output**. OpenAI: **GPT-5.5 — 5 USD input / 30 USD output**, **GPT-5.4 — 2,50 USD / 15 USD**. Google: **Gemini 3.1 Pro — 2 USD / 12 USD**.
- Według GitHuba w starym modelu premium request developerzy zużywali **3-8x więcej tokenów niż wartość abonamentu** — Microsoft dopłacał, ale teraz „flat-rate przestał się spinać".
- Reakcja społeczności na thread GitHub Community Discussions: **ponad 910 łapek w dół vs 22 w górę**, **ponad 400 komentarzy** — głównie wściekłych.
- Migracja: subskrybenci **miesięcznych planów Pro/Pro+ przechodzą automatycznie 1 czerwca**, **roczni zostają na starym premium-request pricingu do końca abonamentu** (z podwyższonymi mnożnikami modeli).

---

## Model biznesowy / cena

| Plan        | Cena              | Kredyty/mc           | Co dostajesz                                                |
|-------------|-------------------|----------------------|-------------------------------------------------------------|
| Free        | 0 USD             | limit dzienny        | Code completions + ograniczony chat                         |
| Pro         | **10 USD/mc**     | **1 000 kredytów**   | Wszystkie modele, agent, chat, MCP, dokupowanie overage     |
| Pro+        | **39 USD/mc**     | **3 900 kredytów**   | To samo co Pro + premium support, większy budżet            |
| Business    | **19 USD/user/mc**| **1 900 kredytów**   | Wszystko z Pro + kontrola org, polityki                     |
| Enterprise  | **39 USD/user/mc**| **3 900 kredytów**   | Pełna integracja, audyt, custom models                      |

**1 AI Credit = 0,01 USD.** Po wyczerpaniu przydziału płatne plany mogą dokupować zużycie — Free hard-stop.

---

## Co dokładnie kosztuje kredyty (stawki za 1 mln tokenów)

### Anthropic
| Model                         | Input    | Cached   | Cache write | Output    |
|-------------------------------|----------|----------|-------------|-----------|
| Claude Haiku 4.5              | **1 USD**| 0,10 USD | 1,25 USD    | **5 USD** |
| Claude Sonnet 4 / 4.5 / 4.6   | **3 USD**| 0,30 USD | 3,75 USD    | **15 USD**|
| Claude Opus 4.5–4.8           | **5 USD**| 0,50 USD | 6,25 USD    | **25 USD**|

### OpenAI
| Model                | Input      | Cached    | Output     |
|----------------------|------------|-----------|------------|
| GPT-5 mini           | 0,25 USD   | 0,025 USD | 2 USD      |
| GPT-5.2 / 5.3-Codex  | 1,75 USD   | 0,175 USD | **14 USD** |
| GPT-5.4              | 2,50 USD   | 0,25 USD  | **15 USD** |
| GPT-5.5              | **5 USD**  | 0,50 USD  | **30 USD** |

### Google
| Model               | Input     | Output     |
|---------------------|-----------|------------|
| Gemini 3 Flash      | 0,50 USD  | 3 USD      |
| Gemini 2.5 Pro      | 1,25 USD  | 10 USD     |
| Gemini 3.1 Pro      | 2 USD     | **12 USD** |
| Gemini 3.5 Flash    | 1,50 USD  | 9 USD      |

**Co konsumuje kredyty:** chat, agent mode, code review, large context, MCP tool calls, retrieval indexing.
**Co NIE konsumuje:** code completions, Next Edit suggestions.

---

## Porównanie z konkurencją

| Narzędzie               | Entry plan    | Realny koszt heavy usera | Model rozliczania              |
|-------------------------|---------------|--------------------------|--------------------------------|
| **GitHub Copilot Pro**  | **10 USD/mc** | 39–100+ USD (Pro+ + overage) | Token-based AI Credits (od dziś) |
| **Cursor Pro**          | **20 USD/mc** | **60–200 USD/mc** (Pro+/Ultra) | Token-based, tiered            |
| **Claude Code Pro**     | **20 USD/mc** | **100–200 USD/mc** (Max) | Subscription + usage limits    |
| **OpenAI Codex CLI**    | **10 USD/mc** | **100–200 USD/dev/mc**   | Token-based credits (od kwietnia 2026) |

Cursor Ultra **200 USD/mc** i Claude Max **200 USD/mc** istnieją bo Pro users notorycznie odbijają się od limitów. Niezależne testy: **Claude Code zużywa 5,5x mniej tokenów niż Cursor** na tych samych zadaniach. Branża zbiegła się do metered pricing — flat rate na agent-coding nie istnieje już nigdzie.

---

## Reakcje społeczności — backlash

- Konkretny przykład z GitHub Community Discussions: **„Pojedyncze zapytanie zjadło 405,1 kredytów — około 2 USD za jeden query"** (sesja 3-minutowa, GPT-5.5).
- Wyliczenie z thread: **przy Claude Opus 4.6 plan Pro+ za 39 USD wystarczy na ~140 requestów miesięcznie**.
- Inny dev: **„sesja agentowa rutynowo zjada 30–40 USD kredytów — to 3-4x cały miesięczny budżet Pro"**.
- Klasyczna analogia z thread: **„Like the cell phone plans of long ago… unlimited minutes nie zadziała tutaj"**.
- Roczni subskrybenci czują się oszukani: **„Zapłaciłem za cały rok Pro — pozwólcie mi chociaż dokończyć Opusem do końca cyklu"**. GitHub odpowiedział: dla rocznych zostaje stary model, ale **mnożniki modeli idą w górę 1 czerwca**.
- Lista narzędzi do których devs deklarują migrację: **Cursor, Claude Code, Codex CLI, DeepSeek, OpenCode**.
- Najgłośniejszy zarzut z Visual Studio Magazine: **„Dostaniesz mniej, zapłacisz tyle samo"**.

---

## Implikacje dla developerów

- **Light user (autocomplete + parę chatów dziennie):** **10 USD/mc Pro w pełni wystarczy** — completions są darmowe.
- **Mid user (regularny chat + okazjonalne agenty):** Pro „ledwo wystarczy", realnie potrzebujesz Pro+ (**39 USD**).
- **Heavy user (codzienny agent mode na Opus/GPT-5.5):** **Pro+ nie wystarczy** — szacunek **150–300 USD/mc** overage przy intensywnej pracy.
- Strategiczna decyzja: **wybór modelu = wybór ceny**. Sonnet 4.6 jest **5x tańszy niż Opus 4.7** na output. Haiku 4.5 jest **25x tańszy niż GPT-5.5** na output.
- Caching staje się kluczowy: cache hit kosztuje **10x mniej niż świeży input** — ergonomia kontekstu staje się skill ekonomicznym.
- Praktyczna kombo-recepta z japońskiego deep-dive: **Copilot Pro (10 USD) za completions + Claude Code Pro (20 USD) za agent mode = 30 USD/mc** bije czyste Pro+ za 39 USD.
- Pojawia się nowa metryka workflow: **„tokenowa świadomość"** — codzienna decyzja, który model uruchomić do którego zadania.

---

## Potencjalne kąty narracyjne do shorta

1. **„Twoja jedna sesja z Copilotem dzisiaj kosztuje 2 dolary — pokażę ci dokładnie czemu"** — pokazać thread, 405 kredytów za 3 minuty, rozbić koszt na input/output.
2. **„Pro+ za 39 USD daje ci 140 requestów do Opusa miesięcznie. Sprawdź czy to wystarczy"** — kalkulator na żywo: ile kosztuje refactor 500-linijkowego pliku.
3. **„GitHub przez 2 lata DOPŁACAŁ ci 3-8x do każdej sesji. Dziś koniec subsydium"** — meta-historia ekonomiczna AI codingu, dlaczego flat-rate musiał paść.
4. **„910 łapek w dół, 22 w górę. Największy bunt w historii GitHuba"** — pokazać thread, czytać komentarze, kontrast z poprzednimi rolloutami.
5. **„Wybór modelu jest teraz wyborem ceny. Opus 4.7 to 25 USD/1M tokenów, Haiku to 1 USD"** — tutorial: jak czytać tabelę i nie spalić budżetu w 3 dni.
6. **„Cursor Ultra 200, Claude Max 200, Copilot overage 100+. Era 10-dolarowego coding-assistanta umarła"** — branżowa zmiana, wszyscy zbiegli się w jedno miejsce.
7. **„Jak zaoszczędzić 70% kredytów: cache, kontekst, model-routing"** — praktyczny tutorial pod nowy reżim, konkretne workflow tricks.

---

## Źródła

- [GitHub Blog — GitHub Copilot is moving to usage-based billing](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/) — primary, oficjalne ogłoszenie
- [GitHub Docs — Models and pricing for GitHub Copilot](https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing) — primary, tabela stawek per model
- [GitHub Community Discussion #192948 — Copilot moving to usage-based billing](https://github.com/orgs/community/discussions/192948) — primary, 400+ komentarzy, 910 downvotes
- [gHacks — GitHub Copilot Switches to Token-Based Billing From June 1](https://www.ghacks.net/2026/05/02/github-copilot-switches-to-token-based-billing-from-june-1-replacing-premium-request-model/) — secondary, kontekst i fakty
- [Visual Studio Magazine — Devs Sound Off: „You Will Get Less, but Pay the Same Price"](https://visualstudiomagazine.com/articles/2026/04/27/devs-sound-off-on-usage-based-copilot-pricing-change-you-will-get-less-but-pay-the-same-price.aspx) — secondary, reakcje community
- [MLQ.ai — Copilot Switches to Token-Based Billing, Drawing Developer Backlash](https://mlq.ai/news/github-copilot-switches-to-token-based-billing-june-1-drawing-developer-backlash/) — secondary, analiza backlashu
- [Windows Forum — Copilot to Usage Billing June 1, 2026: AI Credits, Token Costs, and Meter Shock](https://windowsforum.com/threads/copilot-to-usage-billing-june-1-2026-ai-credits-token-costs-and-meter-shock.420900/) — secondary, konkretne przykłady kosztów
- [Note.com — The Full Picture of GitHub Copilot's Usage-Based Billing (こうへい)](https://note.com/aiedgerunner/n/nd4beae207691?hl=en-US) — secondary, japoński deep-dive, czy 10 USD wystarczy
- [Spectrum AI Lab — AI Coding Tools Pricing 2026: Copilot vs Claude Code vs Codex vs Cursor](https://spectrumailab.com/blog/ai-coding-tools-pricing-compared-2026) — secondary, porównanie konkurencji
- [Artificial Intelligence News — Per-token AI charges come to GitHub Copilot](https://www.artificialintelligence-news.com/news/per-token-ai-charging-comes-to-github-copilot/) — secondary, branżowy komentarz
