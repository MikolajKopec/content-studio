# Microsoft Work IQ API w GA — Copilot Credits jako jednolita waluta agentów M365

**Data:** 2026-06-17
**Slug:** microsoft-work-iq-api
**Potencjał contentowy:** średni

---

## Kluczowe fakty

- **16 czerwca 2026** Microsoft przeniósł **Work IQ API** z public preview do **General Availability** (Message Center notice **MC1332672**). Pierwotne ogłoszenie poszło **2 czerwca 2026** na Microsoft 365 Blog.
- Work IQ to nie jest kolejny endpoint na Microsoft Graph — Microsoft pozycjonuje to jako **"the brain behind Copilot, exposed as an API for your agents"**: ciągle aktualizowany, permission-trimmed semantyczny model organizacji (mail, kalendarz, Teams, SharePoint, OneDrive, ludzie), zamiast surowych danych.
- Rozliczenie wyłącznie przez **Copilot Credits** — jednolitą walutę konsumpcyjną wspólną dla Copilot Studio, Dynamics 365 agentów, Microsoft 365 Copilot Chat dla użytkowników bez licencji oraz Work IQ. **Brak osobnego SKU, subskrypcji i licencji per-user.**
- **1 Copilot Credit = $0.01 USD** w modelu PAYG. Prepurchase pack: **$200 za 25 000 kredytów/miesiąc** (efektywnie **~$0.008/credit** przy pełnym wykorzystaniu).
- Praktyczne stawki dla Work IQ wg publikacji Microsoft i hands-on testów:
  - **Tools (10 generycznych verbów)** — stała stawka **0.1 credit = $0.001** za wywołanie.
  - **Chat / Context** — zmienna, **$0.20 – $1.50 za call** zależnie od złożoności scenariusza.
- **Trzy protokoły dostępne w GA:** **A2A** (Agent-to-Agent, JSON-RPC 2.0 over HTTPS), **MCP** (Model Context Protocol, stdio lub remote, endpoint `workiq.svc.cloud.microsoft/a2a/`) oraz **REST API** (na razie tylko odpowiedzi tekstowe).
- Każdy użytkownik wywołujący Work IQ API **musi mieć Microsoft 365 Copilot add-on license** ($30/user/mc). Dla zwykłych użytkowników prebuilt Copilot agentów Work IQ jest pokryty licencją — credity lecą tylko przy custom agentach z third-party platform.
- Admin musi **ręcznie włączyć consumptive billing** w M365 admin center przed GA — inaczej custom agenty przestaną działać.

---

## Architektura Work IQ — co dokładnie dostają deweloperzy

Microsoft buduje Work IQ na **trzech warstwach** (Data + Memory + Inference), wystawionych przez **cztery domeny API**:

| Domena | Co robi | Model kosztu |
|---|---|---|
| **Chat** | Programatyczny dostęp do pełnego Copilota M365 z cytatami | Zmienny (złożoność zapytania) |
| **Context** | Pre-pakowane bloki kontekstu w formacie zoptymalizowanym pod LLM | Zmienny (token depth) |
| **Tools** | **10 generycznych verbów** (fetch, create_entity, do_action, ask...) | Stały per wywołanie |
| **Workspaces** | Trwała pamięć agenta per-tenant (state, memory) | Storage-based |

Filozofia projektowa "fewer tools, more paths" — Microsoft nie dodaje nowych verbów dla każdego workloadu, tylko nowe zasoby wystawiające dodatkowe ścieżki. Microsoft chwali się **2x szybszym przetwarzaniem niż tradycyjne API**, **80% mniej tokenów** niż konwencjonalne podejścia oraz **ultra-low latency** semantycznego indexowania.

### Różnica vs Microsoft Graph

Graph zwraca *transkrypt* (kalendarz, metadane plików, message bodies). Work IQ zwraca *znaczenie*: zapytanie "summarize recent project risks" nie odpala keyword searcha, tylko ocenia historię kolaboracji i wzorce komunikacji. Deweloper przestaje budować własny pipeline: ekstrakcja Graph → vector DB → ACL → ranking. Wszystko leży po stronie Microsoftu, automatycznie permission-trimmed pod ID użytkownika i z wymuszanymi etykietami Purview.

### Autentykacja — wyłącznie delegated

**Brak service principal / app-only auth.** Każde wywołanie musi mieć podpisanego użytkownika via Entra ID delegated flow (MSAL device-code w sample code Microsoftu). To zabija batch i background scenariusze, ale gwarantuje audytowalność i automatyczne permission trimming. Decyzja security-first kosztem flexibility — duży pain point dla devów próbujących migrować backend agentów.

---

## Model cenowy — co naprawdę kosztuje

### Tabela kosztów Copilot Credits (kontekst)

| Akcja | Credits | Koszt PAYG |
|---|---|---|
| Classic answer | 1 | $0.01 |
| Generative answer | 2 | $0.02 |
| Agent action | 5 | $0.05 |
| **Tenant graph grounding** | **10** | **$0.10** |
| Agent flow actions | 13 / 100 | ~$0.0013 each |
| Content processing | 8 / page | $0.08 |
| Voice (classic → premium) | 10–75 / min | $0.10–$0.75 |
| Premium AI tools | 100 / 10 responses | $1.00 |

### Konkretny przykład kosztu Work IQ

Hands-on test (A Guide to Cloud, day-1 GA): **50-osobowy pilot z porannymi briefami** (1 lekkie zapytanie Chat + 2 wywołania Tools dziennie) = **$220–$442/miesiąc** w samym Work IQ, plus **$1 500/miesiąc** za M365 Copilot dla 50 użytkowników (50 × $30).

Klasyfikacja zadań w Cowork frameworku Microsoftu:
- **Light task** (~100–300 credits): **$1–$3** (proste single-step)
- **Medium task** (~400–700 credits): **$4–$7** (multi-output, structured reasoning)
- **Heavy task** (700+ credits): **$7+** (broad aggregation, deep analysis)

### Próg opłacalności prepurchase

Prepaid pack ($200 / 25 000 credits) staje się tańszy niż PAYG po **>20 000 credits/miesiąc** — czyli ~2 000 średnich Chat calls albo ~200 000 wywołań Tools.

---

## Admin dashboard — Cost Management w M365 admin center

Microsoft wystawił **nowy cost management dashboard** w M365 admin center pod sekcją **Agents and Tools**. Funkcjonalność:

- **Control:** "Off by default" — admin musi włączyć consumptive billing. Spending limits na poziomie **tenant / group / user** (mapowane na Entra ID groups), customowe usage alerts.
- **Visibility:** real-time snapshoty konsumpcji, drill-down po user / group / service / agent. Trace logs tool calls dostępne via **Microsoft Defender → Advanced Hunting**.
- **Efficiency:** wybór modelu (cheaper vs premium), wybór PAYG vs prepaid P3, prepaid credits konsumowane first, potem auto-rollover na PAYG.
- **Server-level allow/block:** admin może zablokować konkretny Work IQ MCP server (Mail, Calendar, Teams, custom) dla całej organizacji.
- **Scoped permissions:** każdy Work IQ tool to oddzielne permission na aplikacji Agent 365 — agent dostaje dostęp dopiero po explicit consent admina.

Microsoft Foundry oraz Copilot Studio mają **wbudowany integrated dev experience** via Agent 365 SDK i CLI. Cztery ścieżki instalacji: Copilot CLI plugin (najszybciej), VS Code, Scout, npm.

---

## Implikacje strategiczne

### Dla deweloperów / ISVs

Work IQ rozwiązuje największy pain point budowania enterprise AI agentów na M365: **przestajesz utrzymywać własny pipeline indeksowania + ACL + ranking**. Dostajesz pre-packaged semantic context z auto-enforced permissions i Purview labels. Cena: zamknięcie w stack Microsoftu plus **delegated-only auth** odcina background workery i app-only scenariusze.

### Dla Microsoftu — strategicznie

Unified Copilot Credits = **vendor lock-in nowej generacji**: jeden licznik dla Copilot Studio, Work IQ, Dynamics agentów, M365 Copilot Chat dla nielicencjonowanych userów. Microsoft przenosi monetyzację z **predictable per-seat ($30/user/mc)** w stronę **consumption-based** — co przy agentach autonomicznie wywołujących API może oznaczać **kilkukrotnie wyższy ARPU per tenant**.

### Dla CSP partnerów

Trzy nowe revenue lanes: (1) konfiguracja consumptive billing + payment setup, (2) custom agent development, (3) ongoing cost governance. Partnerzy ostrzegają, że **bez właściwych spending limits klient dostanie szok na fakturze** — typowy problem każdego consumption-based modelu wystawionego nietechnicznym adminom.

### Krytyczne ograniczenia GA

- **Delegated auth only** — brak service principal eliminuje wiele production scenariuszy.
- **REST tylko tekst** — nie wyślesz maila, nie utworzysz meetingu, nie zrobisz long-running task przez REST. Musisz iść A2A albo MCP.
- **AADSTS650052 error** częsty podczas admin consent — fix wymaga uruchomienia `Enable-WorkIQToolsForTenant.ps1` (PowerShell) do provisioningu brakujących service principals. **Day-1 friction.**

### Pytania bez odpowiedzi

- Czy multi-tenant ISV dostanie hurtowe stawki? (na razie brak public discount tier dla heavy users).
- Jak rozliczane są **agentic loops** (agent autonomicznie wywołujący agent autonomicznie wywołujący...)? Każde wywołanie to osobny credit drain.
- Czy konkurencja (Google Workspace AI, Slack Agentforce) odpowie podobną waluta-credits dla agentów własnych ekosystemów.

---

## Hooks contentowe (5–7)

1. **"Microsoft przestał sprzedawać Copilot za $30/usera. Teraz sprzedaje credity — i twój agent może wypalić $1.50 jednym promptem."**
2. **"Work IQ API wszedł w GA. 1 Copilot Credit = $0.01. Pilot z 50 ludźmi: $442/mc w samym Work IQ + $1 500/mc za licencje. Welcome to consumption-based enterprise AI."**
3. **"Microsoft Graph zwraca dane. Work IQ zwraca *znaczenie*. Różnica: przestajesz budować vector DB, ACL i ranking. Lock-in: maksymalny."**
4. **"Najgorsza wiadomość w Work IQ API GA: delegated auth only. Brak service principal = brak background workerów. Każdy call musi mieć podpisanego usera."**
5. **"10 generycznych verbów dla wszystkiego (fetch, create_entity, do_action, ask). Microsoftowa filozofia 'fewer tools, more paths' kontra OpenAI Functions calling z setkami custom toolów."**
6. **"Copilot Credits = jednolita waluta dla Copilot Studio, Work IQ, Dynamics agentów. Microsoft zbudował właśnie *nowy licznik* na całe AI w enterprise."**
7. **"Microsoft Cost Management dashboard 'off by default' — admin musi włączyć consumptive billing ręcznie. Inaczej custom agenty padają 16 czerwca. Ile firm zapomni?"**

---

## Źródła

1. **Microsoft 365 Blog (02.06.2026)** — "Announcing the new Work IQ APIs"
   https://www.microsoft.com/en-us/microsoft-365/blog/2026/06/02/announcing-the-new-work-iq-apis/
2. **Microsoft Learn (16.06.2026)** — "Work IQ MCP overview (preview) - Microsoft Copilot Studio"
   https://learn.microsoft.com/en-us/microsoft-copilot-studio/use-work-iq
3. **Microsoft Learn (16.05.2026)** — "Licensing and Cost Considerations for Copilot Extensibility Options"
   https://learn.microsoft.com/en-us/microsoft-365/copilot/extensibility/cost-considerations
4. **PupuWeb (06.2026)** — "MC1332672: General availability of the Work IQ API with Copilot Credits billing"
   https://pupuweb.com/mc1332672-general-availability-of-the-work-iq-api-with-copilot-credits-billing/
5. **LinkLoot (16.06.2026)** — "Microsoft Work IQ APIs go GA on June 16: what agent builders get"
   https://linkloot.io/blog/microsoft-work-iq-apis-ga-june-2026
6. **A Guide to Cloud & AI (06.2026)** — "Microsoft Work IQ API — Day-1 Hands-On Walkthrough"
   https://www.aguidetocloud.com/blog/microsoft-work-iq-api-day-1-ga/
7. **A Guide to Cloud & AI (06.2026)** — "What Are Copilot Credits? Rates & Costs Explained"
   https://www.aguidetocloud.com/blog/copilot-credits-explained/
8. **A Guide to Cloud & AI (06.2026)** — "Microsoft Copilot Cowork — New 2026 Pricing Guide"
   https://www.aguidetocloud.com/blog/microsoft-copilot-cowork-pricing-cost-management/
9. **Cloud Factory Group Blog (06.2026)** — "Work IQ API Hits General Availability: What CSP Partners Must Know About Consumptive Pricing"
   https://blog.cloudfactorygroup.com/posts/work-iq-api-hits-general-availability-what-csp-partners-must-know-about-consumptive-pricing-1
10. **UltimateInfoGuide (06.2026)** — "Microsoft Work IQ API: Semantic Grounding for AI Agents"
    https://ultimateinfoguide.com/microsoft-work-iq-api/
11. **Schneider IT Management (06.2026)** — "Microsoft Work IQ API: GA and Copilot Credits Pricing"
    https://www.schneider.im/microsoft-work-iq-api-general-availability-and-consumption-based-pricing/
