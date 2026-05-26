# Gemini Spark wjeżdża w betę dla amerykańskich subskrybentów Google AI Ultra — odpala Canvę, OpenTable i Instacart przez MCP

**Data:** 2026-05-26
**Temat:** Google odpala szeroki beta-rollout Gemini Spark — chmurowego agenta 24/7 — dla amerykańskich subskrybentów Google AI Ultra i po raz pierwszy wpuszcza go do aplikacji trzecich (Canva, OpenTable, Instacart) przez MCP.

---

## Kluczowe fakty i liczby

- Beta Gemini Spark rusza **w tygodniu od 26 maja 2026** — wyłącznie dla **amerykańskich subskrybentów Google AI Ultra**, po około tygodniu fazy trusted-tester po I/O 2026 (19.05).
- Plan **Google AI Ultra** dostał dwa progi: nowy **$100/miesiąc** (5× wyższe limity niż Pro, Gemini 3.5 Flash, priorytet do Antigravity) i przeskalowany flagowiec **$200/miesiąc** (obniżka z poprzednich **$250**, 20× wyższe limity, dostęp do Sparka i Project Genie).
- Spark działa na **Gemini 3.5 Flash** i platformie **Antigravity 2.0** — uruchamia się na **dedykowanej maszynie wirtualnej w Google Cloud**, więc kontynuuje pracę, gdy zamkniesz laptopa lub zablokujesz telefon.
- Trzech pierwszych partnerów MCP (Model Context Protocol — otwarty standard od Anthropic z listopada 2024): **Canva, OpenTable, Instacart**. W kolejce na lato 2026: **Adobe, Samsung, Spotify, CapCut, GitHub, Notion, Slack**.
- Każdy subskrybent dostaje **20 TB storage'u w Google One**, **YouTube Premium**, wcześniejszy dostęp do **Gemini Omni** (model wideo) oraz przejście z dziennych limitów na model **"compute-used"** odświeżany co **5 godzin**, aż do tygodniowego capa.
- Wstępne security guardrails: limit autoryzacji płatności **$50 na transakcję / $200 dziennie**, wszystkie integracje **domyślnie OFF**, twardy **opt-in per app** i obowiązkowa konfirmacja przed wydaniem pieniędzy lub wysłaniem maila na zewnątrz.
- Spark jest **tylko US** — EU, UK, Kanada, Brazylia, Indie i Japonia w blokadzie. EU/UK ma czekać na zgodność z **AI Act** (analitycy typują **Q3 2026**), bo obowiązki transparencyjne dla agentów wchodzą **2 sierpnia 2026**.

## Co potrafi Spark — Tasks, Skills, Schedules

Architektura Sparka stoi na trzech filarach:

- **Tasks** — jednorazowe, wieloetapowe zadania ("znajdź i monitoruj staże w designie wnętrz w Nowym Orleanie na lato").
- **Skills** — reużywalne procedury, które uczysz Sparka raz ("przeczytaj moje ostatnie 50 maili, wyprowadź z nich mój styl pisania i używaj go za każdym razem, kiedy redagujesz nową wiadomość").
- **Schedules** — odpalanie cykliczne lub warunkowe (np. każdy poniedziałek rano przeskanuj inbox, wygeneruj listę priorytetów i zablokuj focus time w kalendarzu).

Spark może też **forkować sub-agentów do pracy równoległej** — jeden szuka prospektów, drugi w tym samym czasie redaguje outreach. Każdy sub-agent ma własny zakres narzędzi (tool scope).

## Jak działa MCP w Sparku

MCP (Model Context Protocol) to otwarty standard od Anthropic z listopada 2024, który definiuje ustrukturyzowany, bezpieczny kanał komunikacji między agentem AI a zewnętrznymi serwisami. Spark nie scrapuje stron jak ChatGPT Atlas — łączy się **przez strukturalne API MCP**, co daje większą niezawodność, ale ogranicza zakres do partnerów, którzy formalnie wpięli konektor.

Każda integracja siedzi za jawnym opt-inem w panelu Spark Settings. Domyślnie wszystko jest wyłączone — także Gmail i Calendar. Dla "high-stakes actions" (płatności, wychodzące maile do osób spoza twojego workspace'u) Spark zatrzymuje się i prosi o potwierdzenie.

## Trzech pierwszych partnerów: Canva, OpenTable, Instacart

- **Canva** — Spark może wziąć notatki z Google Docs i sklecić z nich gotową prezentację w Canvie ("prepare a Canva presentation from notes in Google Docs"). To pierwszy realny most między ekosystemem Google a najpopularniejszym narzędziem graficznym dla nie-designerów.
- **OpenTable** — rezerwacje stolików na podstawie kontekstu z twojego inboxa lub kalendarza ("zarezerwuj kolację dla 4 osób w piątek wieczorem w pobliżu miejsca spotkania z mailem od Kasi").
- **Instacart** — kompletowanie zamówień spożywczych. Spark może na podstawie planu posiłków z Docs lub maila z przepisem od mamy złożyć koszyk i czekać na twoje OK przed checkoutem.

W praktyce: zadania, które wcześniej wymagały **3-4 ręcznych przepięć między aplikacjami i wpisywania tych samych danych 3 razy**, teraz załatwia jeden prompt.

## Plan AI Ultra — co realnie dostajesz za $100

- **Gemini Spark** (US-only)
- **5× wyższe limity** użycia w aplikacji Gemini względem Pro
- **Gemini 3.5 Flash** i priorytetowy dostęp do **Google Antigravity** (do testowania, debugowania i budowy własnych agentów)
- **20 TB chmury** w Google One
- **YouTube Premium** w pakiecie
- Limity refreshujące się co **5 godzin** zamiast dziennych — można dokupować pay-as-you-go credits

Wersja $200 dorzuca **20× wyższe limity**, **Project Genie** (generator światów 3D) i ten sam Spark, ale z grubszym capem. Obniżka flagowca z $250 → $200 oraz wstrzelenie taniego progu $100 to wyraźna deklaracja: **Google chce dosypać użytkowników do Sparka, zanim zrobi to ChatGPT Atlas lub Claude Cowork**.

## Porównanie z konkurencją

| Co | Gemini Spark | ChatGPT Atlas | Claude Cowork |
|---|---|---|---|
| Model uruchamiania | dedykowany VM w Google Cloud 24/7 | przeglądarka Chromium z sidebar ChatGPT | działa lokalnie na twoim komputerze (pliki, foldery) |
| Główny use case | Workspace + integracje MCP | nawigacja po stronach, web scraping | praca z lokalnymi plikami, kod, deliverables |
| Dostęp do natywnych danych | Gmail/Docs/Drive/Calendar wbudowane | przez Connectors i web | filesystem, repo |
| Trzeba mieć włączone urządzenie? | NIE | TAK | TAK |
| Liczba partnerów na start | **3 MCP** (rośnie) | 1000+ custom GPTs / plugins | mniej, ale głębokie computer-use |
| Premiera | maj 2026 | październik 2025 | marzec 2026 (enterprise) |

Spark wygrywa **persystencją** (działa, gdy śpisz) i **natywnym dostępem do twojej skrzynki Google**, którego konkurenci nie mają. Przegrywa **ekosystemem** — 3 partnerów to żart przy 1000 customów u OpenAI.

## Dostępność i ograniczenia — co z Polską

- **US-only** na premierę. Bez amerykańskiego konta Google i karty z amerykańskim adresem rozliczeniowym Sparka nie odpalisz. VPN samo nie wystarczy.
- **EU, UK, Kanada, Brazylia, Indie, Japonia** — w kolejce. Analitycy typują **Q3 2026** dla EU, bo obowiązki transparencyjne AI Actu dla agentów wchodzą w życie **2 sierpnia 2026**.
- Limit autoryzacji płatności w becie: **$50 na transakcję, $200 dziennie** — Google nie chce, żeby Spark zamówił komuś przez przypadek 4000 dolarów róż.
- Wszystkie integracje **domyślnie OFF**. Spark "nie czyta twoich maili bezkrytycznie" — każdy serwis odpalasz ręcznie.
- Wymagane konto **18+** i akceptacja warunków testowych.

## Implikacje dla polskiego użytkownika

W praktyce: w maju 2026 z Polski **realnie nie odpalisz Sparka legalnie**. Trzeba czekać do Q3 — i to przy założeniu, że Google zdąży z compliance AI Actu. Co możesz zrobić już teraz: ogarnąć **Antigravity** (dostępne globalnie dla AI Ultra), bo to ten sam silnik agentowy, na którym Spark stoi. Możesz budować własnych agentów ze zbliżoną funkcjonalnością, tylko bez gotowych konektorów do Canvy/OpenTable/Instacart i bez always-on VM.

Dla twórcy contentu: temat działa, bo (1) dramat z obniżką **$250 → $100**, (2) konkretne marki, które polski widz zna (Canva — bo każdy ją zna, Instacart — bo jest amerykańską egzotyką, OpenTable — bo to dobry symbol "AI rezerwuje mi stolik"), (3) wątek "AI pracuje gdy śpisz" działa zawsze.

---

## Potencjalne kąty narracyjne do shorta

1. **"Google obniżył plan AI z $250 na $100 i to nie z dobrego serca — chcą cię wpuścić do Sparka, zanim ChatGPT cię złapie."** Hook na cenę + dramat konkurencji.
2. **"Od dzisiaj Gemini Spark może zamówić ci zakupy na Instacart, zarezerwować stolik na OpenTable i zrobić prezentację w Canvie — bez ciebie. Działa, jak śpisz."** Lista trzech konkretów + persystencja w pierwszych 2 sekundach.
3. **"Google wpuścił AI do Canvy. Wpisujesz: 'zrób mi prezentację z mojego Docsa', zamykasz laptopa, idziesz spać, rano masz gotowe slajdy."** Konkretny use case + flex na 24/7.
4. **"3 partnerów MCP w Gemini Spark vs 1000+ custom GPTs w ChatGPT — Google przegrywa wyścig ekosystemów, ale wygrywa tym, że działa gdy ty nie."** Counterintuitive contrast.
5. **"Z Polski Sparka nie odpalisz do września — AI Act zablokował premierę w EU. Jak to obejść? (Spoiler: legalnie się nie da.)"** Polski kontekst + hook na frustrację.
6. **"Spark może wydać twoje pieniądze, ale tylko do $50 na transakcję i $200 dziennie. Google sam nie ufa swojemu agentowi."** Mało znany detal z guardrails.
7. **"Pierwszy raz w historii AI agent dostał własny adres mailowy w twoim Gmailu. Piszesz do Sparka jak do kumpla — odpisuje gotowymi draftami."** Gmail integration jako pierwsza w branży.

---

## Źródła

- [The Gemini app becomes more agentic, delivering proactive, 24/7 help — Google blog (19.05.2026)](https://blog.google/innovation-and-ai/products/gemini-app/next-evolution-gemini-app/)
- [Everything new in our Google AI subscriptions, fresh from I/O 2026 — Google blog](https://blog.google/products-and-platforms/products/google-one/google-ai-subscriptions/)
- [Gemini Spark – Your 24/7 personal AI agent for productivity — official product page](https://gemini.google/overview/agent/spark/)
- [Gemini Spark: Google's 24/7 Cloud AI Agent Now Executes Tasks in Third-Party Apps — TechTimes (25.05.2026)](https://www.techtimes.com/articles/317144/20260525/gemini-spark-googles-24-7-cloud-ai-agent-now-executes-tasks-third-party-apps.htm)
- [Google introduces Gemini Spark, a 24/7 agentic assistant with Gmail integration — TechCrunch (19.05.2026)](https://techcrunch.com/2026/05/19/google-introduces-gemini-spark-a-24-7-agentic-assistant-with-gmail-integration/)
- [Gemini Spark: Google's Always-On AI Agent Explained — DataCamp](https://www.datacamp.com/blog/gemini-spark)
- [Google's new $100 AI Ultra plan just changed the AI race — Tom's Guide](https://www.tomsguide.com/ai/googles-new-usd100-ai-ultra-plan-just-changed-the-ai-race-and-gemini-spark-is-the-biggest-reason-why)
- [Gemini Spark vs ChatGPT vs Claude (2026 Guide) — Blockchain Council](https://www.blockchain-council.org/agentic-ai/gemini-spark-vs-chatgpt-vs-claude/)
- [Google Cuts AI Ultra Price From $250 To $100 A Month — Dataconomy](https://dataconomy.com/2026/05/20/google-ai-ultra-plan-price-cut-100-usd-subscription-revamp/)
- [Implementation Timeline — EU Artificial Intelligence Act](https://artificialintelligenceact.eu/implementation-timeline/)
