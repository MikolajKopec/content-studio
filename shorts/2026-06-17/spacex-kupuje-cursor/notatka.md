# 1. SpaceX kupuje Cursor (Anysphere) za $60 mld

**Data:** 2026-06-17
**Temat:** Cztery dni po rekordowym IPO SpaceX wykonuje opcję z kwietnia i kupuje Cursor za $60 mld all-stock — Musk wchodzi w dev tools z pełnym stosem: compute + IDE + model.

---

## Kluczowe fakty i liczby

- **All-stock deal o wartości $60 mld** — spółka SpaceX X67 Inc. wchłonie Anysphere, które stanie się whollyowned subsidiary. Wymiana akcji po seven-day VWAP ceny SpaceX przed zamknięciem.
- **Umowa podpisana 16 czerwca 2026**, zamknięcie planowane na **Q3 2026**, pod warunkiem zgód regulacyjnych.
- **4 dni po IPO** SpaceX — debiut na Nasdaq 12 czerwca po **$135/akcję**, do 16 czerwca kurs przebił **$192–200**. Wzrost market capu (~**$740 mld w 4 dni**, do **~$2,51 bln**) pokrył całą cenę Cursora w godzinach handlu.
- **Cursor ARR: $2 mld w lutym 2026, $3 mld w kwietniu, ~$4 mld w czerwcu** — wzrost z $100M (styczeń 2025) i $500M (czerwiec 2025). Najszybciej rosnąca firma B2B SaaS w historii (szybciej niż Snowflake).
- **15x–23x revenue multiple** (zależnie czy liczyć $2,6 mld czy $4 mld ARR) — premium uzasadnione tylko vertical integration z compute SpaceX.
- **3 000+ klientów enterprise płacących $100k+ rocznie**, **50 000 firm**, **67% Fortune 500** używa Cursora, który produkuje **~150 mln linii kodu enterprise dziennie**.
- **Opcja z kwietnia 2026**: $60 mld na przejęcie ALBO $10 mld za narrow partnership na compute. SpaceX wybrał twardszy wariant.
- **Break fees**: **$10 mld** general termination fee + **$4 mld** osobno za blokadę antitrustową — sygnał, że prawnicy SpaceX traktują regulatory risk jak żywy scenariusz.
- **Cursor preempted Series E** na $50 mld od a16z, Thrive Capital i Nvidia — SpaceX wszedł między Anysphere a rundę.
- **Michael Truell (25 lat), CEO Cursora**, staje się jednym z najmłodszych miliarderów na papierze w historii. Pozostała trójka founderów MIT (Sualeh Asif, Aman Sanger, Arvid Lunnemark) również.
- **~312 mln akcji SpaceX Class A** wyemitowanych na rzecz akcjonariuszy Cursora (Accel, Thrive, a16z, DST Global, Coatue, **Nvidia, Google**).

## Oś czasu

- **2022** — Anysphere założone przez 4 absolwentów MIT.
- **Sierpień 2024** — wycena $400M.
- **Czerwiec 2025** — Cursor Ultra plan ($200/mc) launch.
- **Listopad 2025** — Series D $2,3 mld przy $29,3 mld post-money. Premiera **Composer** (własny in-house inference model do kodu), który wypchnął gross margins z break-even na plus.
- **Luty 2026** — xAI łączy się z SpaceX.
- **Kwiecień 2026** — SpaceX bierze opcję: $60 mld akwizycja LUB $10 mld partnerstwo.
- **12 czerwca 2026** — IPO SpaceX na Nasdaq ($135/akcję, największy IPO w historii).
- **16 czerwca 2026** — definitywna umowa, exercise opcji.
- **Q3 2026** — planowane zamknięcie.

## Model integracji z xAI i Grokiem

- SpaceX deklaruje na X: *"jointly training a model with Cursor over the past several months, plan to release it in both Cursor and Grok Build"* (xAI's coding agent).
- Musk twierdzi, że **nowsze wersje Groka znacząco poprawiły się po treningu na "dużej ilości" danych z Cursora** (prompts + acceptance signals).
- Anysphere posiada również **własną firmę rekrutacyjną AI talent** (która rekrutowała m.in. dla OpenAI) — bonus po stronie xAI, które straciło **wszystkich 11 co-founderów do marca 2026** i dziesiątki inżynierów.
- Cursor zyskuje dostęp do **Colossus datacenter** i stosu chipów SpaceX (~$26 mld rocznych compute commitments).

## Co z partnerstwami Anthropic / OpenAI / Google?

- Cursor ma **multi-year deale z OpenAI, Anthropic, Google i xAI** na bazowe modele dla Ultra ($200/mc).
- **Jared Kaplan (Anthropic)**: spodziewa się "long working relationship" z Cursorem nawet po deal. Oficjalnie nic się nie zmienia w krótkim terminie.
- SpaceX ma **90-day termination clauses** na compute leases z Anthropic i Google — teoretycznie szybkie wyjście, w praktyce migration cost "nine figures and 6–12 miesięcy".
- **Konflikt interesów stoi w pełnym świetle**: SpaceX = (1) cloud vendor dla Anthropic/Google, (2) właściciel IDE którego używają ich inżynierowie, (3) konkurent przez xAI/Grok.

## Antitrust i ryzyko regulacyjne

- $4 mld antitrust break fee = sygnał, że SpaceX **modeluje blokadę jako live scenario**, nie remote risk.
- Koncentracja w jednym podmiocie Muska: **AI infrastructure + model development + dev tooling + kontrakty rządowe USA** = wektor zainteresowania FTC/DOJ.
- IPWatchdog (maj 2026) argumentuje obronę: deal jest **pro-competitive**, bo wprowadza trzeciego gracza obok Microsoft–OpenAI i Anthropic w segmencie coding agents.
- FTC/DOJ "won't move at Q3 pace" — timeline regulacyjny to **zmienna decydująca**, czy deal zamyka się w Q3, czy staje się pierwszym wielkim case'm vertical integration w AI.

## Porównanie z konkurencją

- **Claude Code** (Anthropic) — natywny CLI od oryginalnego dostawcy modeli, ale bez własnego compute layera.
- **Codex/OpenAI** — niedawno OpenAI kupiło **Ona** (cloud dev platform), ale brak własnej infrastruktury chipów.
- **Cursor pod SpaceX** = **jedyny stack pełen vertical** (chipy → Colossus → model → IDE → dystrybucja do 67% Fortune 500).
- xAI dotychczas **lagowało** Anthropic, OpenAI i Google w coding capabilities — deal to "catch-up gambit".

## Reakcje branży i kąty kontrowersji

- **Michael Truell na X**: "Lots to do together. Excited to be joining forces with SpaceX to build useful AI."
- Społeczność dev: zaniepokojenie o **data privacy** (prompts trenują Groka?), **vendor lock-in** i polityzację narzędzia.
- Enterprise buyers muszą przed Q3 ocenić: czy zmiana właściciela wymaga update'u policy, czy są data handling conflicts (gdy konkurują ze SpaceX/Starlink), czy AI laby z compute leases SpaceX mają nowe disclosure obligations.
- **xAI loss of talent**: po odejściu 11 co-founderów i deepfake controversies, akwizycja to też talent grab.

---

## Potencjalne kąty narracyjne do shorta

1. **"Musk właśnie kupił Cursora za $60 mld — i zapłacił za to akcjami, które urosły mu o tę kwotę w 4 godziny handlu."** (kontrast: stock surge pokrywa całą cenę)
2. **"25-letni CEO Cursora właśnie został miliarderem. A jego inwestorzy — Nvidia i Google — dostali akcje SpaceX zamiast cashu."** (paradoks: Google teraz akcjonariuszem konkurenta)
3. **"SpaceX miał dwie opcje: zapłacić $10 mld za partnerstwo z Cursorem albo $60 mld i go kupić. Wybrali drogi wariant. Dlaczego?"** (klif decyzyjny)
4. **"Cursor ma deale z OpenAI, Anthropic, Google i xAI. Teraz należy do xAI. Co to znaczy, że Twoje prompty trafiają do Groka?"** (data privacy hook)
5. **"$4 miliardy. Tyle SpaceX zapłaci, jeśli FTC zablokuje przejęcie Cursora. To nie pomyłka — to live scenario w umowie."** (regulatory risk shock)
6. **"Cursor robi 150 milionów linii kodu dziennie dla 67% Fortune 500. Od Q3 wszystkie te firmy pracują na narzędziu Muska."** (skala zależności)
7. **"Najszybciej rosnąca firma B2B w historii — od zera do $4 mld ARR w 3 lata. Zniszczyła rekord Snowflake'a. I właśnie ją przejął Elon."** (rekord + przejęcie)

---

## Źródła

- [SpaceX to acquire the AI coding startup Cursor for $60 billion — CNBC](https://www.cnbc.com/2026/06/16/spacex-spcx-cursor-acquisition-ipo.html)
- [SpaceX to acquire Cursor for $60B in stock, days after blockbuster IPO — TechCrunch](https://techcrunch.com/2026/06/16/spacex-to-acquire-cursor-for-60b-in-stock-days-after-blockbuster-ipo/)
- [SpaceX bets $60 billion on Cursor to catch OpenAI and Anthropic — The Decoder](https://the-decoder.com/spacex-bets-60-billion-on-cursor-to-catch-openai-and-anthropic/)
- [SpaceX buys Cursor-maker Anysphere for $60B in enterprise AI push — TechFundingNews](https://techfundingnews.com/spacex-buys-anysphere-cursor-60b-all-stock-xai-enterprise-ai/)
- [SpaceX makes its $60bn Cursor takeover official — The Next Web](https://thenextweb.com/news/spacex-cursor-acquisition-official-60-billion)
- [Elon's super currency: SpaceX' surging stock paid for the $60 billion Cursor acquisition — Fortune](https://fortune.com/2026/06/16/elon-musk-spacex-ipo-ai-coding-startup-cursor-acquisition/)
- [SpaceX Now Owns the Compute Layer AND the Dev Tool — Tech Jacks Solutions](https://techjacksolutions.com/ai-brief/spacex-now-owns-the-compute-layer-and-the-dev-tool-what-that/)
- [Re-Spacing Cursor in the AI Stack: Antitrust Implications — IPWatchdog](https://ipwatchdog.com/2026/05/21/re-spacing-cursor-in-the-ai-stack-the-antitrust-implications-of-a-spacex-cursor-collab/)
- [Cursor CEO 'excited to join forces' with SpaceX — The National](https://www.thenationalnews.com/future/technology/2026/06/16/cursor-ceo-spacex-elon-musk-aquisition/)
- [Cursor AI Valuation Hits $60B: Anysphere's $2B Revenue Surge — Tech-Insider](https://tech-insider.org/cursor-60-billion-valuation-anysphere-ai-coding-2026/)
- [Who Is Michael Truell? The 25-Year-Old Cursor CEO — IBTimes UK](https://www.ibtimes.co.uk/spacex-acquires-cursor-ai-startup-1803139)
- [SpaceX $60 Billion Deal for Cursor Makes Four MIT Co-Founders Billionaires — Bloomberg](https://www.bloomberg.com/news/articles/2026-06-16/spacex-60-billion-deal-for-cursor-makes-four-mit-co-founders-billionaires)
