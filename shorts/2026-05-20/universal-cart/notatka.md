# Universal Cart Google — jeden koszyk dla Search, Gemini, YouTube i Gmail

**Data:** 2026-05-20
**Temat:** Google wprowadza Universal Cart — międzyplatformowy koszyk zakupowy oparty na Gemini i nowym standardzie Universal Commerce Protocol, który ma być „PSD2 dla agentic commerce".

---

## Kluczowe fakty i liczby

- Universal Cart ogłoszony na **Google I/O 2026 dnia 19 maja 2026**; start dla użytkowników w USA **latem 2026** w Search i aplikacji Gemini, później YouTube i Gmail.
- Koszyk integruje **4 powierzchnie Google**: Search, Gemini, YouTube i Gmail — dorzucasz produkt w jednym, wraca w drugim.
- Działa na bazie **Shopping Graph z 60 miliardami listingów produktów** (wzrost z 50 mld na początku 2026 r.).
- Skala potencjalnego zasięgu: **ponad 1 miliard sesji zakupowych dziennie** w produktach Google.
- Partnerzy startowi z one-step checkout: **Walmart, Target, Nike, Sephora, Ulta Beauty, Wayfair** plus merchanci na Shopify (m.in. **Fenty, Steve Madden**).
- Universal Commerce Protocol (UCP) jako wspólny standard checkoutu: rozszerza się na **Kanadę i Australię** w najbliższych miesiącach, później **UK**; nowe wertykały: **rezerwacje hoteli i delivery jedzenia**.
- W **kwietniu 2026** do UCP Tech Council dołączyli **Amazon, Meta, Microsoft, Salesforce i Stripe** — czyli wszyscy duzi gracze siedzą przy jednym stole z Google, Shopify, Etsy, Target i Wayfair.
- Agent Payments Protocol (AP2) — siostrzany protokół autoryzujący agentów AI do robienia zakupów — Google **donuje do FIDO Alliance** dla neutralności; ma **ponad 100 organizacji** w endorsemencie.
- Anthropic w grze przez **Model Context Protocol (MCP)** otwarty w listopadzie 2024 — MCP = dostęp do narzędzi/danych, AP2 = płatności, A2A = komunikacja między agentami; pełny stack agentic commerce.
- Zakupy to dzisiaj **~2% ruchu ChatGPT** — Google liczy, że Universal Cart to się zmieni.

## Architektura — trzy warstwy stosu

- **UCP (Universal Commerce Protocol)** — wspólny język merchant ↔ agent. Open-source, sterowany przez Tech Council. Sklep deklaruje capabilities (cart, catalog, checkout, loyalty), agent je odkrywa i negocjuje.
- **AP2 (Agent Payments Protocol)** — rozszerzenie A2A (Agent2Agent). Wprowadza **Mandates**: kryptograficznie podpisane, tamper-proof cyfrowe kontrakty. **Intent Mandate** = pierwotna instrukcja użytkownika („kup mi buty Nike do 600 zł"), **Cart Mandate** = finalna akceptacja konkretnego koszyka.
- **Universal Cart** — warstwa konsumencka. UI łączy stos UCP + AP2 + Gemini + Google Wallet w jeden interfejs.

## Co potrafi Universal Cart

- **Historia cen** dla każdego dorzuconego produktu.
- **Alarmy spadku ceny** i deal detection w tle (Gemini orze 24/7).
- **Restock alerts** — monitoruje sklepy jak Wayback dla półek; kiedy wraca SKU, dostajesz ping.
- **Compatibility check** — np. składasz PC: koszyk flaguje, że RAM nie pasuje do płyty i proponuje alternatywę.
- **One-step checkout** przez Google Pay dla partnerów UCP — kupujesz produkty z **kilku sklepów jednym kliknięciem**.
- **Loyalty linking** — UCP teraz pozwala podłączyć konto lojalnościowe sklepu i dostawać members-only ceny w koszyku Google.
- **Live catalog access** — agent pyta sklep o real-time inventory, warianty i cenę.

## Oś czasu

| Data | Wydarzenie |
|------|------------|
| Listopad 2024 | Anthropic publikuje MCP — fundament agentic stack |
| Październik 2025 | PayPal + Google Cloud — Conversational Commerce Agent na AP2 |
| Kwiecień 2026 | Amazon, Meta, MS, Salesforce, Stripe dołączają do UCP Tech Council |
| 19 maja 2026 | Google I/O — ogłoszenie Universal Cart |
| Lato 2026 | Roll-out: USA, Search + Gemini |
| H2 2026 | YouTube + Gmail; UCP w Kanadzie i Australii |
| 2027? | UK; więcej wertykałów (hotele, food delivery) |

## Porównanie z konkurencją

| Gracz | Pozycja w agentic commerce |
|------|----------------------------|
| **Google** | Pełny stack: UCP + AP2 + Universal Cart + Shopping Graph 60 mld SKU |
| **Amazon** | Dołączył do UCP Tech Council ALE blokuje agentów zewnętrznych na własnej platformie, pozwał Perplexity. Gra defensywnie. |
| **OpenAI / ChatGPT** | Próbował in-chat checkout w 2025, wycofał się do redirectów. Shopping ~2% ruchu. |
| **Perplexity** | Własny shopping surface, walka prawna z Amazonem. |
| **Microsoft Copilot** | Własna powierzchnia, dołączył do UCP. |
| **Anthropic** | Warstwa MCP — protokół narzędzi, nie własny checkout. Komplementarny do AP2. |

## Reakcje branży i implikacje biznesowe

- **Dla reklamodawców**: Google ściąga shopping „do siebie" zamiast wysyłać outbound do sklepów — atrybucja się komplikuje, ale jakość Merchant Center data staje się waluta.
- **Dla retailerów na Shopify/Salesforce/Stripe**: integracja UCP załatwiona platformowo, nie musisz pisać własnego connectora.
- **Dla Amazona**: konflikt strukturalny — sklep który nie chce być widoczny dla agentów Google staje się ślepym punktem w „agentic web".
- **Dla EU/PL**: brak konkretnej daty wjazdu; UCP po US idzie do Kanady, Australii, UK. PL może czekać 2-3 lata, ale **UCP jako otwarty standard** mógłby być implementowany przez polskie e-commerce (Allegro?) jeszcze szybciej, gdyby chcieli.
- **Pytanie regulacyjne**: Google buduje warstwę pomiędzy konsumentem a sklepem dla zakupów online — analogia do PSD2 dla bankowości (open banking) jest celna, ale tu nie ma regulatora, jest sam Google + FIDO Alliance.

## Implikacje dla użytkownika

- **Plus**: jeden koszyk, jeden checkout, AI dba o cenę i compatibility, wystarczy jedno Google Pay.
- **Minus**: Google ma teraz pełną widoczność cyklu **discovery → consideration → purchase → post-purchase** — privacy/competition watchdogs na pewno spojrzą.
- **Plus**: AP2 daje twarde guardrails — agent kupi tylko jak spełni zdefiniowane kryteria, każda transakcja zostawia tamper-proof zapis dla returnów.
- **Minus**: jeśli partnerzy Google to Walmart/Target/Nike — produkty spoza tej listy wymagają nadal redirect do sklepu; fragmentacja UX.

---

## Potencjalne kąty narracyjne do shorta

- **„Google właśnie zbudował PSD2 dla zakupów online"** — analogia do open banking, mocny biznesowy hook, kto pierwszy zrozumie wygrywa.
- **„Amazon, Meta i Microsoft podpisali standard Google'a — i nikt nie zauważył"** — paradoks: kwiecień 2026, cisza w mainstreamie, a to jest fundament agentic commerce.
- **„Jeden koszyk dla Search, Gemini, YouTube i Gmail — Google chce, żebyś nigdy nie wyszedł"** — proste, wizualne, pokazuje skalę.
- **„60 miliardów produktów w Shopping Graph, 1 miliard sesji dziennie — Google odpalił największy sklep świata"** — konkretne liczby, skala.
- **„AI sam kupi ci buty — Google wprowadza autonomic checkout z guardrailami"** — AP2 jako story, drama autonomii vs kontroli.
- **„Zakupy to 2% ruchu ChatGPT. Google chce być pierwszym 50%"** — kontrast i ambicja.
- **„Składasz PC, koszyk Google ostrzega: ten RAM nie pasuje. Tak działa Universal Cart"** — konkretny przypadek, easy do zobrazowania.

---

## Źródła

- [Google Shopping introduces Universal Cart, agentic shopping (oficjalny blog Google)](https://blog.google/products-and-platforms/products/shopping/google-shopping-cart/)
- [Universal Commerce Protocol updates improve AI shopping for retailers (Google blog)](https://blog.google/products-and-platforms/products/shopping/ucp-updates/)
- [Google donates Agent Payments Protocol to FIDO Alliance (Google blog)](https://blog.google/products-and-platforms/platforms/google-pay/agent-payments-protocol-fido-alliance/)
- [Google's new Universal Cart wants to follow you across the entire internet (TechCrunch)](https://techcrunch.com/2026/05/19/googles-new-universal-cart-wants-to-follow-you-across-the-entire-internet/)
- [Google Announces New Universal Cart At I/O (Search Engine Journal)](https://www.searchenginejournal.com/google-announces-new-universal-cart-at-i-o/575301/)
- [Google's Universal Cart Pushes AI Deeper Into Checkout (Tech Times)](https://www.techtimes.com/articles/316867/20260519/googles-universal-cart-pushes-ai-deeper-checkout-race-it-hasnt-won-yet.htm)
- [Google's 'Universal Cart' lets Gemini help you shop the web (9to5Google)](https://9to5google.com/2026/05/19/google-gemini-universal-cart-web-shopping-tool/)
- [Google's Universal Cart will keep an eye on your shopping (Engadget)](https://www.engadget.com/2176633/google-universal-cart-will-keep-an-eye-on-your-shopping/)
- [Amazon, Meta, Microsoft, Salesforce, and Stripe Join the UCP Tech Council (Newsfile)](https://www.newsfilecorp.com/release/294133/Amazon-Meta-Microsoft-Salesforce-and-Stripe-Join-the-Universal-Commerce-Protocol-Tech-Council)
- [Google Search Universal Cart, expands UCP and AP2 (Search Engine Land)](https://searchengineland.com/google-search-universal-cart-expands-ucp-and-ap2-477989)
