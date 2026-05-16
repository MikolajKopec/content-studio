# Kontrakt Anthropic–Google na 200 miliardów dolarów — notatka badawcza

## Kluczowe fakty

- **5 maja 2026** — The Information jako pierwsze donosi o kontrakcie; Alphabet zyskuje ok. 2% w handlu aftermarket
- **200 miliardów USD** — tyle Anthropic zobowiązał się wydać na Google Cloud w ciągu **5 lat** (od ok. 2027 do 2031)
- Kontrakt obejmuje: usługi Google Cloud + dostęp do chipów TPU (Google Tensor Processing Units) produkowanych we współpracy z Broadcom
- **3,5 gigawata** mocy obliczeniowej TPU — tyle Broadcom dostarczy Anthropicowi od 2027 r. (ujawnione w zgłoszeniu SEC Broadcom z kwietnia 2026)
- Anthropic stanowi **ponad 40%** backlogu przychodów Google Cloud — backlog Google wyniósł w Q1 2026 ok. **462 mld USD** (prawie podwoił się kw./kw.)
- Kontrakt z Anthropicem i OpenAI razem odpowiadają za **ponad połowę** łącznego backlogu 2 bilionów USD na poziomie AWS, Microsoft Azure, Google Cloud i Oracle
- **6 kwietnia 2026** — wcześniejszy, wstępny kontrakt Anthropic–Google–Broadcom ogłoszony oficjalnie (ponad 1 GW mocy; rozszerzony następnie do 3,5 GW)
- **24 kwietnia 2026** — Google/Alphabet ogłasza inwestycję do **40 mld USD** w Anthropic: 10 mld USD od razu (wycena Anthropica: 350 mld USD), kolejne 30 mld USD warunkowo po osiągnięciu celów
- **7 kwietnia 2026** — Anthropic ogłasza, że roczny run rate przychodów przekroczył **30 mld USD** (vs. ~9 mld USD na koniec 2025 r.)
- Anthropic po raz pierwszy **wyprzedził OpenAI** pod względem przychodów (OpenAI: ok. 25 mld USD ARR)
- Wycena Anthropica: 350 mld USD w ostatniej rundzie (luty 2026); inwestorzy składają oferty na rundy po 850–900 mld USD; IPO planowane nawet na **październik 2026**

---

## Szerszy kontekst

### Historia relacji Google–Anthropic

| Data | Zdarzenie |
|------|-----------|
| Październik 2023 | Google inwestuje 500 mln USD w Anthropic, zobowiązuje się do kolejnych 1,5 mld USD |
| Wrzesień 2023 | Amazon inwestuje 1,25 mld USD (plan: 4 mld USD) — AWS jako primary cloud provider Anthropica |
| Marzec 2024 | Amazon uzupełnia inwestycję do 4 mld USD |
| Styczeń 2025 | Google inwestuje kolejny 1 mld USD w Anthropic |
| Październik 2025 | Anthropic i Google Cloud ogłaszają deal na ponad 1 GW mocy TPU |
| Listopad 2025 | Amazon inwestuje kolejne 4 mld USD w Anthropic (łącznie 9 mld USD), deal na 100 mld USD/5 GW przez 10 lat |
| Luty 2026 | Anthropic podnosi rundę przy wycenie 380 mld USD |
| 6 kwietnia 2026 | Anthropic rozszerza kontrakt z Google i Broadcom do 3,5 GW TPU od 2027 |
| 24 kwietnia 2026 | Google/Alphabet ogłasza inwestycję do 40 mld USD w Anthropic |
| 5 maja 2026 | The Information donosi o kontrakcie cloudowym na 200 mld USD |

### Mechanizm „circular deals" — pętla wzajemnych inwestycji

Wielkie firmy AI i dostawcy infrastruktury stworzyli system wzajemnych powiązań:
- Google inwestuje w Anthropic (40 mld USD) → Anthropic kupuje od Google chmurę i chipy (200 mld USD)
- Microsoft inwestuje w OpenAI → OpenAI kupuje od Microsoft usługi (250 mld USD)
- Amazon inwestuje w Anthropic (9 mld USD) → Anthropic kupuje od AWS infrastrukturę (do 100 mld USD)
- Oracle sprzedaje infrastrukturę OpenAI za 300 mld USD

Analitycy Janus Henderson nazywają to „virtuous circle" — ale krytycy wskazują, że takie pętle mogą maskować rzeczywisty popyt i magnifikować straty, jeśli prognozy wzrostu się nie spełnią.

### Kontekst geopolityczny

- Anthropic aktywnie lobbuje za ograniczeniami eksportu chipów AI do Chin; CEO Dario Amodei porównał sprzedaż zaawansowanych chipów Chinom do sprzedaży broni nuklearnej wrogim państwom
- W lutym 2026 Anthropic oskarżył chińskie firmy (DeepSeek, Moonshot AI, MiniMax) o systematyczne ataki na modele Claude za pomocą ok. 24 000 fałszywych kont i 16 mln interakcji
- OpenAI, Anthropic i Google zjednoczyły się (kwiecień 2026) w walce z kopiowaniem modeli przez chińskie laboratoria
- Amodei negocjuje z Pentagonem możliwości zastosowania Claude w wojsku, ale Anthropic ogranicza użycie w autonomicznej broni i masowej inwigilacji
- Kontrakt z Google (TPU, infrastruktura USA) wpisuje się w strategię utrzymania dominacji USA w AI

---

## Szczegóły techniczne / biznesowe

### Co dokładnie Anthropic kupuje od Google

1. **Usługi Google Cloud** — moc obliczeniowa do trenowania i wnioskowania modeli Claude
2. **Chipy TPU (Tensor Processing Units)** — Google's własne chipy AI, produkowane z Broadcom; alternatywa dla Nvidia GPU
3. **5 gigawatów mocy serwerowej** łącznie w ramach całego pakietu (wg The Decoder)
4. **3,5 GW TPU od Broadcom** — dostępne od 2027, umowa do 2031 (ujawnione w SEC 8-K Broadcom)
5. Infrastruktura lokowana głównie w USA — zgodnie z zobowiązaniem Anthropica do 50 mld USD inwestycji w compute w Stanach (ogłoszonym w listopad 2025)

### Dlaczego TPU, a nie Nvidia?

- Google's TPU są droższe dla Nvidii biznesowo — wyższe marże dla Google niż wynajem serwerów Nvidia
- Anthropic dywersyfikuje: trenuje Claude na AWS Trainium, Google TPU i Nvidia GPU jednocześnie
- TPU są zoptymalizowane pod model pracy Anthropica (wnioskowanie dużych modeli językowych)
- Deal TPU-Broadcom-Anthropic jest postrzegany jako „strukturalna przewaga" nad konkurentami uzależnionymi od Nvidii

### Anthropic: sytuacja finansowa

| Wskaźnik | Wartość |
|----------|---------|
| ARR (kwiecień 2026) | 30+ mld USD (vs. 9 mld na koniec 2025) |
| Wzrost YoY | ~1400% |
| Enterprise klienci (>1 mln USD/rok) | 1000+ (vs. 500 w lutym 2026) |
| Fortune 100 klienci | 70% |
| Mix: enterprise vs. consumer | 80% / 20% |
| Wycena (ostatnia runda) | 380 mld USD (luty 2026) |
| Oferty nowej rundy | 850–900 mld USD |
| Planowane IPO | październik 2026 |

### Google Cloud: wyniki Q1 2026

- Przychody Google Cloud: ponad 20 mld USD kwartalnie, wzrost **63% r/r**
- Backlog Google Cloud Q1 2026: **~462 mld USD** (prawie podwojony kw./kw.)
- Google Cloud = 18% całości przychodów Alphabeta
- Alphabet aktualizuje CapEx 2026 do 180–190 mld USD; 2027 „znacząco wyższy"

### Porównanie kontraktów cloudowych AI

| Para | Kwota | Czas | Moce |
|------|-------|------|------|
| Anthropic → Google | 200 mld USD | 5 lat (2027–2031) | 5 GW (3,5 GW TPU od Broadcom) |
| Anthropic → AWS | do 100 mld USD | 10 lat | 5 GW |
| OpenAI → Oracle | 300 mld USD | 5 lat (2027–2031) | nie ujawniono |
| OpenAI → AWS | 38 mld USD | 7 lat (2025–2031) | setki tys. GPU Nvidia |
| OpenAI → Microsoft | 250 mld USD | (w toku) | nie ujawniono |
| Łączny backlog: AWS+Azure+Google+Oracle | ~2 bln USD | — | — |

### Ryzyko rynkowe: przypadek Oracle–OpenAI

- Oracle ogłosił 300 mld USD kontrakt z OpenAI → akcje Oraclea **spadły 45% od września 2025**
- Rynek zareagował na Anthropic–Google spokojniej (+2% Alphabet): Google ma zdywersyfikowane przychody i silniejszą pozycję finansową niż Oracle
- Zarówno Anthropic, jak i OpenAI są nadal **stratne** — prognozy 20–30x wzrostu przychodów do 2029 są konieczne, żeby te kontrakty miały sens

---

## Potencjał contentowy

### Co jest najbardziej zadziwiające dla widza spoza branży

1. **Skala absurdu** — 200 miliardów dolarów to więcej niż PKB Węgier czy Rumunii. Jedna firma AI zobowiązuje się wydać tyle przez 5 lat na infrastrukturę chmurową.

2. **Pętla pieniędzy** — Google daje Anthropicowi 40 mld USD inwestycji, a Anthropic oddaje 200 mld USD z powrotem do Google. Pytanie, które samo się narzuca: kto tu naprawdę komu płaci?

3. **Koniec dominacji Nvidii?** — Anthropic buduje całą infrastrukturę na chipach Google (TPU), omijając Nvidię. Alphabet jest blisko wyprzedzenia Nvidii jako najcenniejsza spółka na świecie.

4. **Anthropic > OpenAI w przychodach** — mniej znana firma, o której mało kto słyszał rok temu, właśnie wyprzedziła ChatGPT pod względem przychodów. To kontrnarracja do "OpenAI wygra wyścig AI".

5. **Zakład na przyszłość, która jeszcze nie istnieje** — obydwie firmy wyceniają kontrakty zakładając 20–30-krotny wzrost przychodów do 2029. Jeśli się pomylą, mamy bańkę większą niż dotcom.

6. **Geopolityka chipów** — CEO Anthropica mówi, że sprzedaż chipów AI Chinom to jak sprzedaż bomb atomowych terrorystom. A jednocześnie Trump pozwala Nvidii sprzedawać H200 do Chin.

### Emocje, które to może wywołać

- Niedowierzanie wobec skali liczb
- Niepokój: "czy to nie jest kolejna bańka jak dotcom?"
- Zaskoczenie, że Anthropic wyprzedził OpenAI
- Pytanie: "co to w ogóle jest TPU i dlaczego Google wygrywa z Nvidią?"
- Złość/sceptycyzm wobec circular deals — "czy to nie jest pranie pieniędzy korporacyjne?"

### Haki do komentarzy

- "Ile waszym zdaniem z tych 200 miliardów trafi do kieszeni Nvidia, a ile do Google?" 
- "Myślicie, że Anthropic za 5 lat będzie jeszcze istniał?"
- "Wiedziałeś, że Anthropic wyprzedził ChatGPT w przychodach?"

---

## Źródła

- [The Information — Anthropic Commits to Spending $200 Billion on Google's Cloud and Chips](https://www.theinformation.com/articles/anthropic-commits-spending-200-billion-googles-cloud-chips)
- [The Decoder — Anthropic commits $200 billion to Google Cloud over five years](https://the-decoder.com/anthropic-commits-200-billion-to-google-cloud-over-five-years/)
- [Engadget — Anthropic reportedly agrees to pay Google $200 billion](https://www.engadget.com/2165585/anthropic-reportedly-agrees-to-pay-google-200-billion-for-chips-and-cloud-access/)
- [CNBC — Anthropic's $200 billion commitment to Google Cloud narrows Alphabet-Nvidia gap](https://www.cnbc.com/video/2026/05/06/anthropics-200-billion-commitment-to-google-cloud-narrows-alphabet-nvidia-gap.html)
- [CNBC — Anthropic commits to spending $200 billion on Google's cloud and chips](https://www.cnbc.com/video/2026/05/05/anthropic-commits-to-spending-200-billion-on-googles-cloud-and-chips-according-to-the-information.html)
- [TechCrunch — Google to invest up to $40B in Anthropic](https://techcrunch.com/2026/04/24/google-to-invest-up-to-40b-in-anthropic-in-cash-and-compute/)
- [CNBC — Google to invest up to $40 billion in Anthropic](https://www.cnbc.com/2026/04/24/google-to-invest-up-to-40-billion-in-anthropic-as-search-giant-spreads-its-ai-bets.html)
- [TechCrunch — Anthropic ups compute deal with Google and Broadcom (kwiecień 2026)](https://techcrunch.com/2026/04/07/anthropic-compute-deal-google-broadcom-tpus/)
- [Anthropic.com — Official: Anthropic expands partnership with Google and Broadcom](https://www.anthropic.com/news/google-broadcom-partnership-compute)
- [Tom's Hardware — Broadcom to supply Anthropic with 3.5 GW of Google TPU capacity from 2027](https://www.tomshardware.com/tech-industry/broadcom-expands-anthropic-deal-to-3-5gw-of-google-tpu-capacity-from-2027)
- [Data Center Knowledge — Anthropic Secures Multi-Gigawatt TPU Deal With Google, Broadcom](https://www.datacenterknowledge.com/data-center-chips/anthropic-secures-multi-gigawatt-tpu-deal-with-google-broadcom)
- [Google Cloud Press Corner — Anthropic Expands Use of Google Cloud and TPUs (6 Apr 2026)](https://www.googlecloudpresscorner.com/2026-04-06-Anthropic-Expands-Use-of-Google-Cloud-and-TPUs)
- [Yahoo Finance / Alphabet Q1 2026 — Google Cloud revenue up 63%](https://finance.yahoo.com/markets/stocks/articles/alphabet-q1-2026-earnings-google-202101883.html)
- [AI Daily Post — Anthropic's $200B five-year Google Cloud deal makes up 40% backlog](https://aidailypost.com/news/anthropics-usd-200-b-fiveyear-google-cloud-deal-makes-up-40-backlog)
- [Sherwood News — Alphabet gains on Anthropic $200B cloud commitment](https://sherwood.news/markets/alphabet-gains-on-report-that-anthropics-committed-to-spending-200-billion-on-cloud-services-over-the-next-five-years/)
- [TechCrunch — Anthropic could raise $50B at $900B valuation](https://techcrunch.com/2026/04/29/sources-anthropic-could-raise-a-new-50b-round-at-a-valuation-of-900b/)
- [SaaStr — Anthropic Just Passed OpenAI in Revenue](https://www.saastr.com/anthropic-just-passed-openai-in-revenue-while-spending-4x-less-to-train-their-models/)
- [Cloud Wars — $1.63 Trillion Backlog for Microsoft, Oracle, AWS, Google Cloud](https://cloudwars.com/ai/ai-boom-1-63-trillion-backlog-for-microsoft-oracle-aws-google-cloud/)
- [Bloomberg — Anthropic CEO Says Selling AI Chips to China Like Selling Nukes to North Korea](https://www.bloomberg.com/news/articles/2026-01-20/anthropic-ceo-says-selling-advanced-ai-chips-to-china-is-crazy)
- [TechCrunch — Anthropic accuses Chinese AI labs of mining Claude](https://techcrunch.com/2026/02/23/anthropic-accuses-chinese-ai-labs-of-mining-claude-as-us-debates-ai-chip-exports/)
- [US News — Anthropic Commits to Spending $200 Billion on Google's Cloud and Chips](https://www.usnews.com/news/top-news/articles/2026-05-05/anthropic-commits-to-spending-200-billion-on-googles-cloud-and-chips-the-information-reports/)
- [Hey Go Trade — Anthropic-Google $200B Deal + context](https://www.heygotrade.com/en/news/anthropic-google-200-billion-tpu-deal-samsung-trillion-sandisk/)
