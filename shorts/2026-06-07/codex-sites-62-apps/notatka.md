# Codex robi strony i łączy się z 62 aplikacjami — OpenAI atakuje no-coderów

**Data:** 2026-06-07
**Temat:** OpenAI rozszerza Codex poza programistów: wtyczka Sites deployuje gotowe aplikacje webowe z promptu, a 6 nowych pluginów spina 62 aplikacje (Salesforce, Figma, Snowflake, HubSpot, Tableau) z 110 gotowymi skillami dla analityków, marketerów, sprzedawców i bankierów.

---

## Kluczowe fakty i liczby

- OpenAI ogłosił aktualizację **2 czerwca 2026** w poście „Codex for every role, tool, and workflow" — Sites, 6 pluginów branżowych i rozszerzone Annotations w jednym pakiecie.
- Codex ma już **5 mln użytkowników tygodniowo** — to **ponad 6x więcej** niż w momencie startu desktopowego klienta w lutym 2026.
- **20%** użytkowników Codeksa to osoby spoza inżynierii (analitycy, marketerzy, sprzedaż, bankierzy, inwestorzy, designerzy), a ta grupa rośnie **3x szybciej** niż programiści.
- Nowe pluginy spinają **62 aplikacje** i **110 zautomatyzowanych skilli** w jeden pakiet instalowany jednym kliknięciem — bez kodu.
- Wtyczka **Sites** jest dostępna wyłącznie w preview dla planów **Business i Enterprise** — Plus (**20 USD/mies.**) i Pro (**100–200 USD/mies.**) nie mają do niej dostępu.
- Sites generuje aplikacje webowe deployowane na infrastrukturze OpenAI w runtime kompatybilnym z **Cloudflare Workers**, z bazą **D1** (relacyjna) i storage **R2** (pliki, obrazy, audio, wideo).
- OpenAI zapowiedział **5 kolejnych pluginów** na roadmapie: Corporate Finance, Private Equity Investing, Marketing Strategy, Strategy Consulting i Legal.
- Wśród partnerów ekosystemu Sites znalazły się m.in. **Vercel, Wix, Replit, Lovable, Figma, Webflow, Base44, Emergent** — czyli częściowo bezpośredni konkurenci.

## Nowe pluginy i integracje

Sześć pluginów branżowych instaluje się jednym kliknięciem i zamienia Codex w specjalistę z gotowym zestawem narzędzi:

| Plugin | Główne aplikacje | Co automatyzuje |
|---|---|---|
| **Data Analytics** | Snowflake, Tableau, Hex, Databricks Genie, Deepnote, Amplitude, PostHog, Statsig, Alation, Metabase, ThoughtSpot | Eksploracja danych, wyjaśnianie zmian metryk, budowa dashboardów i raportów |
| **Creative Production** | Figma, Canva, Shutterstock, Picsart, Fal | Kampanie z briefa, warianty reklam display, product shoty, gotowe zestawy obrazów e-commerce |
| **Sales** | Salesforce, HubSpot, Slack, Outreach, Clay, ZoomInfo, Apollo, Calendly, Gmail | Priorytetyzacja kont, przygotowanie spotkań, follow-upy, plany close'u, wykrywanie deali at-risk |
| **Product Design** | Figma, Canva | Prototypy z URL-a, audyt user flow, klikalne wireframe'y |
| **Public Equity Investing** | Moody's, Daloopa, Datasite, FactSet, LSEG, S&P, PitchBook, Hebbia | Review earningsów, porównania spółek, ocena tezy inwestycyjnej |
| **Investment Banking** | GitHub, Monday, FiscalAI | Pitch decki, comparable companies, due diligence |

## Wtyczka Sites — co potrafi

Sites to „nowy rodzaj kanwy" — Codex bierze prompt lub istniejący arkusz/notatkę i generuje **hostowaną, interaktywną aplikację webową** współdzieloną w workspace przez URL.

**Co da się zbudować z promptu:**
- Dashboardy menedżerskie i scenario plannery z modelu finansowego
- Project boardy, galerie, hub recenzji klientów, repozytoria briefów
- Lightweight wewnętrzne narzędzia (formularze, kalkulatory, trackery)
- Konwersja statycznego spreadsheeta w „live web application" w jednym kroku

**Specyfikacja techniczna:**
- Output jako ES modules zgodne z **Cloudflare Worker**
- Storage: **D1** (SQL) + **R2** (object storage)
- Logowanie tylko przez „Sign in with ChatGPT" — **brak SAML/zewnętrznych IdP**
- Tryby dostępu: `admins_only`, `workspace_all`, `custom`
- Deploy dwustopniowy: save -> deploy (review gate przed produkcją)
- Każdy URL jest **production-live** — brak środowiska staging
- Source pod kontrolą Git, sekrety przez panel Sites
- **Brak custom domain** i brak publicznego URL — wszystko zostaje w workspace OpenAI

## Porównanie z v0, Lovable, Bolt

| Cecha | Codex Sites | v0 / Lovable / Bolt |
|---|---|---|
| Prompt-to-app | tak | tak |
| Hosting | infra OpenAI, automatyczny | własny (Vercel, Netlify, VPS) |
| Eksport kodu | nie | tak, pełny |
| Custom domain | nie | tak |
| Publiczny URL bez logowania | nie | tak, domyślnie |
| Code ownership | ograniczony | pełny |
| Dostępność | Business + Enterprise preview | każdy plan, w tym solo |
| Cena wejścia | **25 USD/seat/mies.** (Business, min. 2 seaty) | od **0–20 USD/mies.** |
| Integracje z apkami biznesowymi | **62 apki** przez pluginy | brak natywnych |
| Tryb używania | wewnętrzne narzędzia firmowe | publiczne MVP, projekty solo |

**Wniosek z analiz branżowych:** Sites i no-code'owi konkurenci na razie celują w różnych kupujących. Sites to **internal tools dla korporacji** z auth ChatGPT, v0/Lovable/Bolt to **publiczne aplikacje i MVP** z pełnym code ownership. Indie hackerzy na Plus/Pro nie mają dostępu do Sites — i analiza devtoolpicks.com radzi im zostać przy obecnym stacku.

## Implikacje dla użytkownika

**Analityk finansowy** dostaje gotowy plugin, który spina Snowflake + Tableau + Hex i potrafi z promptu wytłumaczyć spadek metryki albo zbudować dashboard — bez SQL-a.

**Marketer** otwiera Creative Production, podpina Figmę i Canvę, generuje warianty reklam i product shoty bezpośrednio w briefingu — bez czekania na designera.

**Sales rep** instaluje Sales plugin, dostaje natywne integracje z Salesforce, HubSpot, Slack, Outreach, Apollo, ZoomInfo — Codex sam priorytetyzuje konta, przygotowuje meeting brief i aktualizuje CRM.

**Bankier inwestycyjny** ma plugin spięty z FactSet, S&P, Moody's, PitchBook i Hebbia — pitch decki, comparable companies i due diligence z jednego promptu.

To kontynuacja trendu „**knowledge work jako agent workflow**" — narzędzia, których wcześniej trzeba było uczyć się tygodniami (Snowflake, Salesforce, FactSet), teraz są wywoływane przez prompt. OpenAI mówi wprost: **5 mln użytkowników tygodniowo**, z czego **1 na 5 to nie-deweloper**, i ten segment rośnie **3x szybciej**.

Dla wewnętrznych narzędzi firmowych Sites może zjeść budżet, który wcześniej trafiał do Retool, internal Wikis, custom dashboardów. Dla publicznych MVP — v0, Lovable i Bolt mają jeszcze przewagę: code export, własna domena, własny hosting.

## Reakcje branży i kontekst konkurencyjny

- **Anthropic** wystartował z porównywalnymi agentami enterprise w lutym 2026, co przyspieszyło ruch OpenAI.
- **Microsoft Copilot** wzmocnił wewnętrzną konkurencję w OpenAI — Reuters donosił o realokacji zasobów na Codex.
- OpenAI stworzył **Deployment Company** z finansowaniem **4+ mld USD** dedykowaną wdrażaniu AI w firmach.
- Wewnętrzne case studies: **Zapier, NVIDIA i sama OpenAI** używają Codeksa do postmortemów, akceleracji researchu, wewnętrznych apek i materiałów executive.
- Analitycy devtoolpicks.com i FOMA AI zauważają, że **OpenAI jednocześnie zaprasza Lovable i Replit jako partnerów Sites i konkuruje z nimi** o tych samych użytkowników biznesowych.

## Potencjalne kąty narracyjne do shorta

- „**Codex robi stronę z promptu i sam ją hostuje — bez Vercela, bez Netlify, bez deploy'u**"
- „**OpenAI właśnie spiął 62 apki w jeden plugin i wciska to analitykom**"
- „**1 na 5 użytkowników Codeksa to nie programista — i ta grupa rośnie 3x szybciej**"
- „**5 milionów ludzi tygodniowo pisze kod przez ChatGPT — 6x więcej niż w lutym**"
- „**OpenAI zaprasza Lovable do ekosystemu i jednocześnie buduje konkurenta dla Lovable**"
- „**Bankier inwestycyjny dostał plugin, który spina FactSet, S&P i Moody's — pitch deck z jednego promptu**"
- „**Plus za 20 dolarów nie ma dostępu do Sites — OpenAI celuje wprost w korporacyjne budżety, nie w solo devów**"

## Źródła

- [Codex for every role, tool, and workflow — OpenAI (oficjalny post, 2.06.2026)](https://openai.com/index/codex-for-every-role-tool-workflow/)
- [Plugins — Codex | OpenAI Developers](https://developers.openai.com/codex/plugins)
- [OpenAI Codex Sites Just Launched: What Indie Hackers Actually Need to Know — devtoolpicks](https://devtoolpicks.com/blog/openai-codex-sites-launch-indie-hackers-2026)
- [Codex for Every Role + Codex Sites: 2026 Team Guide — Digital Applied](https://www.digitalapplied.com/blog/openai-codex-every-role-sites-2026-team-guide)
- [OpenAI Codex expands to enterprise with Sites, plugins, non-dev users — The Next Web](https://thenextweb.com/news/openai-codex-enterprise-plugins-sites-non-developers)
- [OpenAI Codex Reaches 5 Million Weekly Users — Bind AI](https://blog.getbind.co/openai-codex-reaches-5-million-weekly-users-and-launches-role-specific-plugins-for-every-knowledge-worker/)
- [OpenAI Adds 6 Role-Specific Plugins to Codex — Reworked](https://www.reworked.co/digital-workplace/openai-adds-plugins-to-codex/)
- [OpenAI Launches Six Job-Specific Plugins for Codex — AutoGPT.net](https://autogpt.net/openai-codex-enterprise-plugins-knowledge-work/)
- [OpenAI putting Codex inside ChatGPT, 6 new business plugins — 9to5Mac](https://9to5mac.com/2026/06/02/openai-putting-codex-inside-chatgpt-app-everywhere-releasing-6-business-plugins/)
