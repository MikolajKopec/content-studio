## Firma spaliła 500 milionów dolarów na Claude w 30 dni — bo zapomnieli ustawić limitów

**Data:** 2026-05-31
**Temat:** Jeden enterprise klient Anthropica przepalił pół miliarda dolarów na Claude w 30 dni, dając pracownikom nieograniczony dostęp bez spending caps — w tle Microsoft kasuje wewnętrzne licencje Claude Code, a Uber wypalił **3,4 mld USD** budżetu AI do kwietnia.

---

## Kluczowe fakty i liczby

- **500 mln USD** — rachunek za Claude wystawiony jednemu (nieujawnionemu) enterprise klientowi Anthropica w ciągu **30 dni**. To około **16 700 USD na sekundę** non-stop przez cały miesiąc.
- Źródło: konsultant AI ujawnił sprawę Axiosowi **28 maja 2026** — informację potwierdziły niezależnie Tech Startups, BusinessToday, Yahoo Finance, Tom's Hardware i Fast Company.
- **Root cause: zero guardraili.** Firma rozdała pracownikom licencje Claude bez spending caps, bez per-user usage limits i bez dashboardów real-time. Anthropic oferuje admin dashboards i per-user limits w planach Enterprise — ale trzeba je włączyć ręcznie.
- **Agent vs chat: do 1000× więcej tokenów.** Pojedyncze zapytanie do chatbota to kilka tysięcy tokenów. Agentic workflow działa w pętli (plan → tool call → observation → replan), bez przerwy, czasem 24/7 — i potrafi spalić **1000× więcej tokenów** niż klasyczny prompt.
- **Microsoft kasuje Claude Code wewnętrznie.** Pilot ruszył w **grudniu 2025** w dywizji Experiences & Devices. Per-engineer koszty doszły do **500–2 000 USD miesięcznie**. Deadline wyłączenia: **30 czerwca 2026** (koniec roku fiskalnego Microsoftu). AI Weekly nazywa to "najwyraźniejszym enterprise-scale pullbackiem w wydatkach AI w 2026".
- **Uber: 3,4 mld USD budżetu AI spalone w 4 miesiące.** Wdrożenie Claude Code u **~5 000 inżynierów**. Adopcja skoczyła z **32% (start)** do **84–95%** w marcu/kwietniu. **~70% commitowanego kodu** generowane przez AI, **~10–11% backend updates** shipowane bez udziału człowieka. CTO Ubera: *"I'm back to the drawing board because the budget I thought I would need is blown away already."*
- **Amazon: zlikwidowane wewnętrzne usage leaderboards.** Pracownicy zaczęli celowo pompować zapytania, żeby wspinać się w rankingu — narodził się termin **"tokenmaxxing"**.
- **Polymarket potwierdził raport Axiosa** (Anthropic ~98% prawdopodobieństwa "best AI model" pod koniec maja).
- **Gartner**: globalne wydatki na AI w 2026 to **2,5 bln USD** (+69% r/r). **Tylko 28%** projektów AI dostarcza pełne business case. **25%** zaplanowanych budżetów AI 2026 ślizga się na 2027.

---

## Co poszło nie tak — mechanika kosztów

- **Token billing zamiast seat billing.** SaaS uczył enterprise CFO myśleć w licencjach: jedna licencja = jedna stała opłata. Token-based pricing łamie ten model — koszt rośnie liniowo z intensywnością użycia, a agenty pracują znacznie intensywniej niż człowiek.
- **Agenty = długie konteksty + tool calls w pętli.** Każda iteracja agenta dorzuca do contextu poprzednie kroki. Po 50 krokach jeden "task" potrafi przerobić setki tysięcy tokenów. Pomnożone przez tysiące pracowników i 30 dni — wychodzi pół miliarda.
- **Brak real-time obserwowalności.** Faktury Anthropic przychodzą po fakcie. Bez własnego gateway/dashboardu firma dowiaduje się o problemie dopiero z invoice. Komentarz w branży: *"Half a billion dollars, spent on AI in 30 days, because the organizational equivalent of a parental control was never switched on."*
- **OpenClaw / agentic frameworks na planie Max za 200 USD.** Indywidualni użytkownicy potrafią ciągnąć **1 000–5 000 USD/dzień** w API usage przez sam framework — mimo "flat" subskrypcji.

---

## Reakcje branży — FinOps for AI

- Nowa kategoria budżetowania: zamiast "per seat" — **"per task"** i **"per workflow"**.
- Konieczne **miesięczne consumption ceilings** per inżynier, alerty Slack/email, hard kill-switche.
- **Model-agnostic gateways** (wewnętrzny router promptów) — żeby tańsze modele Haiku/Sonnet brały tematy, które nie wymagają Opusa.
- **GitHub Copilot** reaguje: od **1 czerwca 2026** wszystkie plany Copilota przechodzą na usage-based billing przez **GitHub AI Credits** — Microsoft zamyka klamrę, kierując inżynierów na własną platformę.
- Cytowane szacunki: **~90% spadek kosztu tokena do 2030** (Gartner), ale **24× wzrost konsumpcji** (Goldman Sachs). Netto wydatki nadal w górę.

---

## Implikacje dla rynku

- To pierwszy publicznie udokumentowany **9-cyfrowy "AI bill shock"** — będzie cytowany w każdej prezentacji CFO przez najbliższe 6 miesięcy.
- Anthropic w trudnej pozycji PR: ich enterprise controls **istnieją**, ale klient ich nie włączył. Każdy enterprise sales call od czerwca zaczyna się teraz od guardraili, nie od capabilities.
- **Sygnał dla startupów AI**: rynek będzie wymagał wbudowanych spending caps default-on, nie default-off.

---

## Potencjalne kąty narracyjne do shorta

1. "Pół miliarda dolarów. W jednym miesiącu. Przez przypadek." → twardy fakt + zagadka kto to był.
2. "**16 700 dolarów na sekundę.** Tyle wydawał ten klient Anthropica — i nie zauważył przez 30 dni."
3. "Jeden agent AI pali **1000× więcej tokenów** niż jedno pytanie do chatbota. A pracownicy odkryli agenty masowo."
4. "Uber wypalił **3,4 miliarda dolarów** budżetu AI w 4 miesiące. CTO: 'jestem z powrotem przy desce kreślarskiej'."
5. "Microsoft po cichu kasuje Claude Code u siebie. Bo jeden inżynier potrafił spalić **2 000 dolarów miesięcznie**."
6. "W Amazonie pojawił się 'tokenmaxxing' — pracownicy pompowali AI requests, żeby być wyżej w leaderboardzie."
7. "Pół miliarda na fakturze. Bo nikt nie kliknął 'ustaw limit'. To nie jest błąd Anthropica — to jest błąd CFO."

---

## Źródła
- [Company accidentally spent $500 million on Claude AI in one month after forgetting usage limits — Tech Startups (2026-05-28)](https://techstartups.com/2026/05/28/company-accidentally-spent-500-million-on-claude-ai-in-one-month-after-forgetting-usage-limits/)
- [AI spending nightmare: Companies spend over $500 million in 30 days on Anthropic's Claude — BusinessToday (2026-05-29)](https://www.businesstoday.in/technology/artificial-intelligence/story/ai-spending-nightmare-companies-spend-over-a-500-million-in-30-days-on-anthropics-claude-533824-2026-05-29)
- [Client Accidentally Burns $500 Million on Claude AI in One Month: Here's How — Yahoo Finance (2026-05-29)](https://finance.yahoo.com/sectors/technology/articles/client-accidentally-burns-500-million-105400717.html)
- [Mystery company accidentally blew $500 million on Claude AI in a single month — Tom's Hardware (2026-05-29)](https://www.tomshardware.com/tech-industry/artificial-intelligence/mystery-company-accidentally-blew-usd500-million-on-claude-in-a-single-month-failed-to-put-usage-limit-on-licenses-for-employees)
- [Microsoft Drops Claude Code After Budget Overrun — AI Weekly (2026-05-22)](https://aiweekly.co/alerts/microsoft-drops-claude-code-after-budget-overrun)
- [Microsoft's quiet Claude Code retreat and the real cost of enterprise AI — The Next Web](https://thenextweb.com/news/microsoft-claude-code-retreat-ai-cost)
- [Microsoft drops Claude Code as enterprise AI ROI fails — AI Weekly](https://aiweekly.co/alerts/microsoft-drops-claude-code-as-enterprise-ai-roi-fails)
- [Client loses $500M on Claude due to uncapped AI usage — Crypto Briefing](https://cryptobriefing.com/client-loses-500m-claude-uncapped-ai-usage/)
- [What Microsoft Canceling Claude Code Means for Enterprise AI — ComputeLeap](https://www.computeleap.com/blog/microsoft-cancels-claude-code-licenses-enterprise-ai-buyer-signal-2026/)
