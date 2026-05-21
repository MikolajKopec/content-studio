# Universal Cart — Google chce być Twoim agentowym koszykiem online

**Data:** 2026-05-21
**Temat:** Google ogłosił na I/O 2026 **Universal Cart** — jeden wspólny koszyk między sklepami, działający w Search, Gemini, YouTube i Gmail, w pakiecie z protokołem płatności AP2, który pozwala agentom AI dokonywać zakupów w imieniu użytkownika w określonych przez niego granicach.

---

## Kluczowe fakty i liczby

- **Universal Cart** to centralny "hub" zakupowy działający w **4 powierzchniach Google**: Search, aplikacji Gemini, YouTube i Gmail — wszystko w jednym koszyku, nawet jeśli produkty pochodzą od różnych sprzedawców.
- W tle Gemini monitoruje **5 rzeczy automatycznie**: spadki cen, historię cen, alerty restock, kompatybilność produktów (np. CPU + płyta główna przy składaniu PC), oraz informacje o kartach lojalnościowych i merchant offers podpięte do **Google Wallet**.
- Partnerzy startowi (verbatim): **Nike, Sephora, Target, Ulta Beauty, Walmart, Wayfair**, plus Shopify merchants — w tym **Fenty** i **Steve Madden**.
- Google Shopping Graph urósł z **50 mld do 60 mld** listingów produktowych od początku 2026 roku.
- Universal Cart rusza w **USA, 19 maja 2026** — najpierw Search, potem Gemini (lato 2026), później YouTube i Gmail.
- **AP2 (Agent Payments Protocol)** w wersji **v0.2.0** (kwiecień 2026) wprowadził funkcję **"Human Not Present"** — agent może kupować autonomicznie (np. limitowane bilety w momencie premiery).
- Google przekazał AP2 organizacji **FIDO Alliance**, żeby stał się standardem branżowym.
- UCP (Universal Commerce Protocol) ma w **Tech Council** od kwietnia 2026: **Amazon, Meta, Microsoft, Salesforce, Stripe**, a wśród processorów płatniczych: **Mastercard, Visa, Stripe, Adyen**.

---

## Jak działa Universal Cart

To nie jest zwykły koszyk per sklep — Universal Cart to **persistent layer** nad wszystkimi powierzchniami Google. Dodajesz Nike Air Maxy w Search, dorzucasz tusz Fenty z YouTube Shorts, a w Gmail dokładasz coś z newslettera Sephory — wszystko ląduje w jednym widoku.

Gemini w tle robi 4 rzeczy:

1. **Tracking cen** — historia, alerty o spadkach, "back-in-stock" notyfikacje.
2. **Kompatybilność** — jeśli budujesz PC, koszyk ostrzeże o niedopasowaniu CPU/RAM/płyty.
3. **Loyalty + perks** — przez Google Wallet podpina karty lojalnościowe i sugeruje, która karta da najlepszy cashback / punkty.
4. **One-click checkout** — albo płacisz natywnie przez Google Wallet, albo "transferujesz" koszyk na stronę sprzedawcy.

Co istotne, model jest **agentic by default**: koszyk nie czeka aż klikniesz "monitor", tylko sam decyduje, że warto cię powiadomić o promocji.

---

## Partnerzy startowi + scale (Shopify mlns?)

Lista oficjalnych launch partners:

- **Nike**
- **Sephora**
- **Target**
- **Ulta Beauty**
- **Walmart**
- **Wayfair**
- **Shopify merchants:** publicznie wymienieni **Fenty** i **Steve Madden** (ale Shopify było **współtwórcą UCP** razem z Etsy, Wayfair, Target i Walmart w styczniu 2026 — co teoretycznie otwiera drzwi dla **milionów merchantów Shopify**).

Google nie podał na razie konkretnej liczby Shopify sellers, ale jeśli rolloutem zostanie objęty cały Shopify (ok. **5+ mln sklepów** globalnie), Universal Cart natychmiast skaluje się do największego pool merchantów w agentic commerce. To kluczowa różnica wobec ChatGPT — który po 6 miesiącach Instant Checkout miał tylko **~30 sprzedawców live**.

---

## AP2 — Agent Payments Protocol

AP2 to **warstwa bezpieczeństwa** pod Universal Cart i innymi agentowymi zakupami:

- Definiujesz **brand, produkt, max kwotę** — agent kupi tylko jeśli wszystkie warunki spełnione.
- Każda transakcja podpisana **cryptographically signed "Mandate"** — tamper-proof audit trail.
- Tworzy weryfikowalny link między **kupującym ↔ merchantem ↔ payment processor** z privacy-preserving tech.
- **v0.2.0** dodał "Human Not Present" — agent kupuje sam (np. bilety na koncert w sekundę po dropie).
- Google donate'uje AP2 do **FIDO Alliance** — chce, żeby został otwartym standardem.
- Pierwsza integracja w Google: **Gemini Spark** "w najbliższych miesiącach".

To strategiczny ruch — Google nie chce, żeby każdy LLM-vendor (OpenAI, Perplexity, Anthropic) wymyślał własny protokół płatności. Stawia na **interoperability + bezpieczeństwo** jako moat.

---

## Konkurencja: Amazon Rufus, ChatGPT Shopping, Perplexity

| Gracz | Status (maj 2026) | Scale merchantów | Protokół | Kluczowy ruch |
|---|---|---|---|---|
| **Google Universal Cart** | Launch 19 maja 2026 (USA) | 7 launch + Shopify (mln?) | **UCP + AP2** | Multi-surface (Search/Gemini/YT/Gmail) + Google Wallet |
| **Amazon Alexa for Shopping** (ex-Rufus) | Rebranding 13 maja 2026 | Cały Amazon (300 mln klientów, ~**$12 mld** incremental sales/rok) | **Proprietary** (zamknięty) | Zablokował crawlery OpenAI — usunął **600 mln produktów** z ChatGPT |
| **ChatGPT Shopping / Instant Checkout** | Pivot w marcu 2026 | Tylko **~30 merchantów** live po 6 mies. — pivot do "dedicated apps" | **ACP** (OpenAI + Stripe) | Target, Sephora, Nordstrom, Lowe's, Best Buy, Home Depot feedują dane do ACP |
| **Perplexity Shopping** | "Buy with Pro" od XI 2024 | **5 000+ merchantów** przez PayPal | Własny | Amazon **pozwał Perplexity** za unauthorized purchases |

**Wniosek:** Google ma w tym momencie **najszerszy stack** (UCP + AP2 + Wallet + 4 surface'y), Amazon zamyka się we własnym ogrodzie, ChatGPT się przegrupowuje, a Perplexity ma kłopoty prawne. Strategicznie — Google wygrywa, ale dopóki nie ma EU rolloutu, dla nas to dalej "look-from-the-sidelines".

---

## Polska / EU — kiedy

Krótko: **nie wiadomo i raczej nieprędko**.

- Faza 1 (maj 2026): **USA only**.
- Faza 2 (najbliższe miesiące): **Kanada, Australia**.
- Faza 3 (później): **Wielka Brytania**.
- **EU / Polska:** brak w komunikatach. Przy DMA, Digital Services Act i unijnych regulacjach o AI agentach (AI Act + planowane przepisy o "autonomous purchasing") realny rollout w PL to **2027+**.
- **Allegro** nie jest w żadnej liście partnerów UCP — co oznacza, że jak Universal Cart wejdzie do EU, polski e-commerce może być w defensywie.

---

## Implikacje dla e-commerce

1. **Coupon sites i deal aggregatory w niebezpieczeństwie.** Jeśli Universal Cart sam stosuje promocje, po co odwiedzać Pepper, RetailMeNot, Honey? Glenn Gabe wprost: "If it automatically finds the best deals... why would anyone need to visit those sites?"
2. **Last-click affiliate marketing pod presją.** Jeśli koszyk Google znajdzie deal **zanim** użytkownik trafi na stronę afilianta — prowizja przepada.
3. **Shopify staje się "wejściówką" do Universal Cart.** Małe DTC brandy na Shopify dostają potencjalnie ogromny boost — bez własnego dealu z Google.
4. **Loyalty programs przechodzą do Google Wallet.** Sklep, który nie spina karty lojalnościowej z Wallet, traci visibility wartości dla użytkownika.
5. **Privacy concern.** Universal Cart "śledzi twoją podróż zakupową w całym internecie" (TechCrunch) — to argument dla regulatorów EU. Polska część dyskusji o AI Act i Digital Markets Act zyska nowy front.
6. **Dla polskich brandów** — czas zacząć myśleć o **structured product data** i o tym, czy UCP/AP2 będą fizycznie wspierane przez polskie bramki płatnicze (PayU, Przelewy24, BLIK).

---

## Potencjalne kąty narracyjne do shorta

1. **"Google chce robić Twoje zakupy ZA Ciebie"** — hook na agentic commerce, AP2, "Human Not Present".
2. **"Jeden koszyk między Nike, Walmart i Sephorą — wreszcie"** — UX angle dla mainstreamu.
3. **"Amazon Rufus umarł 6 dni temu, a Google już przejmuje grę"** — kontekst Alexa for Shopping rebrand + Google reaguje natychmiast.
4. **"Pepper i RetailMeNot mogą szukać nowej pracy"** — disruption angle, coupon sites.
5. **"5 000 merchantów Perplexity vs miliony Shopify u Google"** — scale comparison, dlaczego Google wygrywa.
6. **"AP2 — protokół, który pozwala AI wydawać Twoje pieniądze (z limitem)"** — technical/safety angle.
7. **"A kiedy w Polsce? Allegro nie ma nawet zaproszenia na imprezę"** — lokalny kąt, FOMO + krytyka.

---

## Źródła

1. **blog.google** — "Google Shopping introduces Universal Cart, agentic shopping" (19 maja 2026): https://blog.google/products-and-platforms/products/shopping/google-shopping-cart/
2. **TechCrunch** — "Google's new Universal Cart wants to follow your entire shopping journey across the internet" (19 maja 2026): https://techcrunch.com/2026/05/19/googles-new-universal-cart-wants-to-follow-your-entire-shopping-journey-across-the-internet/
3. **The Next Web** — "Google launches Universal Cart and updates AP2 at I/O 2026" (19 maja 2026): https://thenextweb.com/news/google-universal-cart-agent-payments-shopping-io-2026
4. **Winbuzzer** — "Google Debuts Universal Cart For AI Powered Online Shopping" (20 maja 2026): https://winbuzzer.com/2026/05/20/google-unveils-universal-cart-a-shopping-assistant-xcxwbn/
5. **Search Engine Land** — "Google Search Universal Cart, expands UCP and AP2" (19 maja 2026): https://searchengineland.com/google-search-universal-cart-expands-ucp-and-ap2-477989
6. **Search Engine Journal** — "Google Announces New Universal Cart At I/O" (19 maja 2026): https://www.searchenginejournal.com/google-announces-new-universal-cart-at-i-o/575301/
7. **PPC Land** — "Google's Universal Cart may quietly kill coupon and deal sites" (20 maja 2026): https://ppc.land/googles-universal-cart-may-quietly-kill-coupon-and-deal-sites/
8. **CNBC** — "Amazon ditches Rufus chatbot, launches Alexa shopping agent" (13 maja 2026): https://www.cnbc.com/2026/05/13/amazon-ditches-rufus-ai-chatbot-in-favor-of-alexa-shopping-agent.html
