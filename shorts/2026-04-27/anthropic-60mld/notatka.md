# Google+Amazon 60 mld w Anthropic — notatka researchowa

## Kluczowe fakty
- **24 kwietnia 2026** — Google ogłasza inwestycję do 40 mld USD w Anthropic (10 mld natychmiast + do 30 mld przy spełnieniu kamieni milowych związanych ze zużyciem compute)
- **20 kwietnia 2026** — Amazon ogłasza inwestycję do 25 mld USD w Anthropic (5 mld natychmiast + do 20 mld przy spełnieniu "certain commercial milestones")
- Łącznie Google + Amazon mogą wpompować **do 65 mld USD** w Anthropic (nie 60 mld jak w przybliżeniu podawano)
- Amazon do tej pory zainwestował już łącznie **8 mld USD** (poprzednie rundy), Google jest wcześniejszym inwestorem
- Wycena Anthropic przy nowych inwestycjach: **350–380 mld USD** (oficjalna, z serii G w lutym 2026)
- Na rynku wtórnym (Forge Global) wycena Anthropic sięga już **1 biliona USD** (kwiecień 2026), oficjalnie wyprzedzając OpenAI
- ARR Anthropic w marcu 2026: **30+ mld USD** (wzrost z 9 mld na koniec 2025, czyli 3x+ w 4 miesiące)
- 8 z Fortune 10 to klienci Claude; ponad 500 firm wydaje ponad 1 mln USD rocznie na Claude
- Anthropic zobowiązał się wydać **ponad 100 mld USD na AWS** przez dekadę oraz ponad 100 mld USD na infrastrukturę Google Cloud w postaci 5 GW mocy obliczeniowej

## Inwestycja Google — szczegóły

**Data:** 24 kwietnia 2026

**Struktura:**
- 10 mld USD natychmiast (cash + compute) — wycena 350 mld USD (zbieżna z wyceną z serii G z lutego 2026)
- Do 30 mld USD w kolejnych transzach, uzależnionych od kamieni milowych dotyczących **zużycia TPU/Google Cloud** przez Anthropic

**Infrastruktura:**
- Google dedykuje Anthropicowi dostęp do **5 GW mocy obliczeniowej** przez 5 lat (pojemność wchodzi od 2027)
- Anthropic ma dostęp do **do 1 miliona TPU** (Google Tensor Processing Units)
- Inwestycja to największa jednorazowa finansowa inwestycja w startup AI poza partnerstwem Microsoft–OpenAI

**Mechanizm:** Google daje pieniądze → Anthropic wydaje je na Google Cloud (TPU) → de facto "circular finance", nie klasyczna inwestycja gotówkowa

**Kontekst:** Google wcześniej był jednym z pierwszych inwestorów w Anthropic (seria A/B) i już miał umowę na dostarczanie TPU, ogłoszoną w październiku 2025.

## Inwestycja Amazon — szczegóły

**Data:** 20 kwietnia 2026

**Struktura:**
- 5 mld USD natychmiast (wycena 380 mld USD, tj. wycena z serii G)
- Do 20 mld USD w przyszłości, uzależnionych od "certain commercial milestones" (niesprecyzowane publicznie)
- Łącznie do 25 mld USD — na tle poprzednich 8 mld USD zainwestowanych przez Amazon (2023–2025) daje potencjalne **33 mld USD** całkowitej ekspozycji Amazona

**Umowa o chmurę (kluczowe warunki):**
- Anthropic deklaruje wydanie **ponad 100 mld USD na AWS w ciągu dekady** — największy indywidualny kontrakt klienta w historii AWS
- AWS = **primary training partner** Anthropic
- Anthropic uruchomi ~1 GW mocy Trainium2 i Trainium3 do końca 2026
- Projekt Rainier — gigantyczny klaster z setkami tysięcy chipów AI w wielu centrach danych w USA
- 100 000+ klientów AWS korzysta z modeli Claude przez Amazon Bedrock

**Cytat Andy Jassy (CEO Amazon):** "Anthropic's commitment to run its large language models on AWS Trainium for the next decade reflects the progress we've made together on custom silicon."

**Analogia:** Amazon zrobił podobną strukturę z OpenAI — inwestuje i jednocześnie jest dostawcą chmury.

## Anthropic — wzrost i wycena

**Oś czasu ARR (Annual Recurring Revenue):**
| Data | ARR |
|------|-----|
| 2022 | ~10 mln USD |
| 2023 | ~100 mln USD |
| Grudzień 2024 | 1 mld USD |
| Lipiec 2025 | 4 mld USD |
| Wrzesień 2025 | 7 mld USD |
| Grudzień 2025 | 9 mld USD |
| Luty 2026 | 14 mld USD |
| Marzec 2026 | 19 mld USD → 30 mld USD (Sacra) |

Wzrost: **ok. 1400% rok do roku** (marzec 2026 vs. marzec 2025). Najszybciej rosnąca firma w historii pod względem przychodów.

**Kluczowy driver wzrostu:** Claude Code (produkt dla programistów), uruchomiony publicznie w maju 2025 → do lutego 2026 osiągnął 2,5 mld USD annualized run-rate.

**Wyceny — porównanie:**
| Firma | Wycena oficjalna | Wycena wtórna |
|-------|-----------------|---------------|
| Anthropic (lut 2026, seria G) | 380 mld USD | ~1 bln USD (kwiecień 2026) |
| OpenAI (marzec 2026) | 852 mld USD | porównywalny do Anthropic wtórnego |
| SpaceX | ~350 mld USD | — |

**Seria G (luty 2026):** 30 mld USD, lead investors: GIC i Coatue. Drugi co do wielkości prywatny round w historii tech po OpenAI (40+ mld).

**Enterprise market share:** Claude = 40% enterprise LLM spend (wg Menlo Ventures), Claude Code = 54% rynku kodowania. 8 z Fortune 10 to klienci.

## Paradoks: inwestorzy vs. konkurenci

**Dlaczego to ma sens dla Google:**
1. **Zabezpieczenie przed porażką własnych modeli** — Gemini może nie wygrać; inwestując w Anthropic, Google wygrywa tak czy inaczej
2. **Przychody Google Cloud** — Anthropic wydaje miliardy na TPU = przychody Google Cloud niezależnie od sukcesu modeli
3. **Circular finance** — Google daje 40 mld → Anthropic wydaje je z powrotem na Google Cloud = netto ekspozycja Google jest dużo niższa niż nominalna kwota
4. **Strategiczna opcja** — posiadanie udziałów w najszybciej rosnącej spółce AI świata

**Dlaczego to ma sens dla Amazon:**
1. **AWS zyski z compute** — $100 mld w dekadę to ogromny kontrakt dla AWS; inwestycja 25 mld to "koszt pozyskania klienta"
2. **Bedrock distribution** — Claude jest najpopularniejszym modelem na Amazon Bedrock (ponad 100k klientów)
3. **Dywersyfikacja** — Amazon ma też umowę cloudową z OpenAI, czyli zabezpiecza się na obu frontach
4. **Trainium chip validation** — Anthropic testuje i szkoli na Trainium, co waliduje chipy Amazona jako alternatywę dla NVIDIA

**Wewnętrzna sprzeczność:**
- Gemini (Google) i Claude (Anthropic) bezpośrednio konkurują w enterprise
- Bedrock (Amazon) hostuje Claude, ale Amazon rozwijał też własny model Titan (de facto zaniechany w praktyce)
- Google pracownicy wyrażali niezadowolenie — część nie chce "uzupełniać luki" zostawionej przez Anthropic (Gizmodo, 2026)

## Kontekst — AI race

**Wielkie inwestycje w AI (2025–2026):**
| Inwestor | Target | Kwota |
|---------|--------|-------|
| Microsoft | OpenAI | łącznie ~13 mld USD + 20% udziałów + revenue share |
| Amazon | Anthropic | do 33 mld USD łącznie |
| Google | Anthropic | do 40 mld USD |
| Inwestorzy prywatni | OpenAI (seria 2026) | 40+ mld USD (wycena 852 mld) |

**OpenAI vs Anthropic — przychody:**
- OpenAI: ~25 mld USD ARR (koniec lutego 2026)
- Anthropic: ~30 mld USD ARR (marzec 2026) — **Anthropic wyprzedziło OpenAI w przychodach**
- Anthropic rośnie szybciej i efektywniej: wg SaaStr trenuje modele 4x taniej niż OpenAI

**Microsoft i OpenAI:** Microsoft zainwestował łącznie ponad 13 mld USD, posiada ~27% udziałów, otrzymuje 20% przychodów OpenAI i ma wyłączność na infrastrukturę cloudową.

**OpenAI o Anthropic:** Executives OpenAI krytykowali Anthropic za "strategic misstep — not acquiring enough compute". Po nowych dealach z Amazon i Google ta krytyka brzmi anachronicznie.

**Sytuacja po dealach:** Komentatorzy piszą o końcu "ery Wielkiej Trójki AI" — rynek to teraz wyraźnie dwubiegunowa walka Anthropic vs. OpenAI, gdzie Google i Meta grają role satellite players.

## Cytaty kluczowych osób

**Dario Amodei (CEO Anthropic)** — przy ogłoszeniu dealu z Amazonem:
> "Our users tell us Claude is increasingly essential to how they work, and we need to build the infrastructure to keep pace with rapidly growing demand."

**Dario Amodei** — o partnerstwie z AWS:
> "Our collaboration with Amazon will allow us to continue advancing AI research while delivering Claude to our customers, including the more than 100,000 building on AWS."

**Andy Jassy (CEO Amazon):**
> "Anthropic's commitment to run its large language models on AWS Trainium for the next decade reflects the progress we've made together on custom silicon."

## Potencjalne kąty do shorta

1. **"Kto tu kogo finansuje?"** — Google daje 40 mld Anthropicowi, Anthropic oddaje je z powrotem Google Cloud za TPU. To nie jest klasyczna inwestycja, to circular finance. Google faktycznie ryzykuje znacznie mniej niż wygląda na papierze.

2. **"Dostawca i klient w jednej osobie"** — Amazon i Google jednocześnie: (a) sprzedają Anthropicowi infrastrukturę za setki miliardów, (b) są jego inwestorami i właścicielami udziałów, (c) konkurują z nim własnymi modelami AI. Taki układ sił nie miał precedensu w historii big tech.

3. **"Najszybszy wzrost w historii"** — 10 mln ARR w 2022, 30 mld ARR w marcu 2026. W 4 lata Anthropic urósł 3000x. Żadna firma w historii nie rosła przychodowo tak szybko.

4. **"OpenAI właśnie straciło koronę"** — Przez 2 lata wszyscy mówili o OpenAI jako liderze AI. W marcu 2026 Anthropic oficjalnie wyprzedziło OpenAI w przychodach. A Google i Amazon wybrali stronę.

5. **"Paradoks lojalności: kto tu kogo zdradza?"** — Amazon inwestuje w Anthropic (konkurenta swoich własnych modeli na Bedrock), Google inwestuje w Anthropic (rywala Gemini). A Anthropic wydaje te pieniądze z powrotem na AWS i Google Cloud. Wszyscy zarabiają na wszystkich jednocześnie.

## Źródła

- [Google Plans to Invest Up to $40 Billion in Anthropic — Bloomberg](https://www.bloomberg.com/news/articles/2026-04-24/google-plans-to-invest-up-to-40-billion-in-anthropic)
- [Google to invest up to $40B in Anthropic in cash and compute — TechCrunch](https://techcrunch.com/2026/04/24/google-to-invest-up-to-40b-in-anthropic-in-cash-and-compute/)
- [Google to invest up to $40 billion in Anthropic — CNBC](https://www.cnbc.com/2026/04/24/google-to-invest-up-to-40-billion-in-anthropic-as-search-giant-spreads-its-ai-bets.html)
- [Google's $40B Anthropic Investment: TPU Deal Inside — Tech Insider](https://tech-insider.org/google-40-billion-anthropic-investment-tpu-compute-2026/)
- [Google's $40B Anthropic Deal: Circular Finance, Not Investment — HuMAI Blog](https://www.humai.blog/google-just-gave-anthropic-40-billion-anthropic-will-spend-it-on-google/)
- [Amazon to invest up to another $25 billion in Anthropic — CNBC](https://www.cnbc.com/2026/04/20/amazon-invest-up-to-25-billion-in-anthropic-part-of-ai-infrastructure.html)
- [Anthropic takes $5B from Amazon and pledges $100B in cloud spending in return — TechCrunch](https://techcrunch.com/2026/04/20/anthropic-takes-5b-from-amazon-and-pledges-100b-in-cloud-spending-in-return/)
- [Amazon and Anthropic expand collaboration for up to 5 GW — Anthropic](https://www.anthropic.com/news/anthropic-amazon-compute)
- [Anthropic raises $30 billion in Series G at $380B valuation — Anthropic](https://www.anthropic.com/news/anthropic-raises-30-billion-series-g-funding-380-billion-post-money-valuation)
- [Anthropic closes $30 billion funding round at $380 billion valuation — CNBC](https://www.cnbc.com/2026/02/12/anthropic-closes-30-billion-funding-round-at-380-billion-valuation.html)
- [Anthropic ARR surges to $19 billion — threads.com / investing.com](https://www.threads.com/@carnage4life/post/DWyjyEjlA7H/)
- [Anthropic Passed OpenAI in Revenue: $30B ARR April 2026](https://www.the-ai-corner.com/p/anthropic-30b-arr-passed-openai-revenue-2026)
- [Anthropic revenue, valuation & funding — Sacra](https://sacra.com/c/anthropic/)
- [Anthropic's $380B valuation vaults it next to OpenAI, SpaceX — Fortune](https://fortune.com/2026/02/13/anthropics-380-billion-valuation-vaults-it-next-to-openai-spacex-among-largest-ipo-candidates/)
- [Anthropic surpasses OpenAI in secondary market valuation — Tom's Hardware](https://www.tomshardware.com/tech-industry/artificial-intelligence/anthropic-surpasses-biggest-rival-openai-in-secondary-market-valuation-surges-to-usd1-trillion-amid-frantic-investor-interest)
- [Anthropic's rise is giving some OpenAI investors second thoughts — TechCrunch](https://techcrunch.com/2026/04/14/anthropics-rise-is-giving-some-openai-investors-second-thoughts/)
- [Google's $40B Anthropic move is Big Tech's latest huge AI bet — Axios](https://www.axios.com/2026/04/24/google-amazon-anthropic-investment)
- [Is Google Down? $40B Investment Ends AI "Big Three" Era — 36kr](https://eu.36kr.com/en/p/3784243425565953)
- [Google Just Bet $40 Billion on Its Biggest Rival — Here's Why — Inc.](https://www.inc.com/kevin-haynes/google-just-bet-40-billion-on-its-biggest-rival-heres-why/91336276)
- [AI Market Share 2026: ChatGPT, Gemini, Claude — AI Business Weekly](https://aibusinessweekly.net/p/ai-market-share-2026)
- [Claude vs ChatGPT vs Copilot vs Gemini: 2026 Enterprise Guide — IntuitionLabs](https://intuitionlabs.ai/articles/claude-vs-chatgpt-vs-copilot-vs-gemini-enterprise-comparison)
- [Inside Anthropic's Multi-Cloud AI Factory — Data Center Frontier](https://www.datacenterfrontier.com/machine-learning/article/55335703/inside-anthropics-multi-cloud-ai-factory-how-aws-trainium-and-google-tpus-shape-its-next-phase)
- [Amazon doubles down on Anthropic — GeekWire](https://www.geekwire.com/2026/amazon-doubles-down-on-anthropic-with-25b-investment-mirroring-its-openai-cloud-deal/)
