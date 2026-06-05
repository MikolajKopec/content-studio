# Meta po raz kolejny opóźnia API Muse Spark — własnego modelu AI ciągle nie ma

**Data:** 2026-06-05
**Temat:** Meta od kwietnia 2026 nie potrafi wypuścić developerom API swojego flagowego modelu Muse Spark — pierwszego dużego dzieła Meta Superintelligence Labs, na które firma wydała ~**14,3 mld USD** tylko na sprowadzenie Alexandra Wanga. WSJ informuje o trzecim z kolei poślizgu, bez konkretnej daty premiery.

---

## Kluczowe fakty i liczby

- **3 czerwca 2026** Wall Street Journal opublikował tekst stwierdzający, że Meta **wielokrotnie przekładała** publiczne udostępnienie API Muse Spark — i na tę chwilę **nie ma żadnej zaplanowanej daty** premiery.
- Pierwotnie API miało wyjść w **kwietniu 2026** (razem z modelem). Termin przesunięto na **maj**, potem na **czerwiec**. Mamy 5 czerwca — wciąż go nie ma.
- Powód oficjalny: **bugi w oprogramowaniu + braki w infrastrukturze** wykryte podczas testów wewnętrznych (informacja z WSJ powtórzona przez Seeking Alpha, Sherwood, Implicator).
- Rzeczniczka Mety dla **Reutersa**: API jest "testowane z **early partners**" i firma "nadal celuje w czerwiec" — bez konkretnego dnia.
- Muse Spark zadebiutował **8 kwietnia 2026** jako pierwszy duży model **Meta Superintelligence Labs** (MSL), code name **Avocado**, budowany przez 9 miesięcy przez zespół Wanga.
- Meta zapłaciła **~14,3 mld USD** w czerwcu 2025 za **49% niegłosujących udziałów** w Scale AI, sprowadzając jej współzałożyciela **Alexandra Wanga** na nowo utworzone stanowisko **Chief AI Officer**.
- Budżet na infrastrukturę: capex Mety na **2026** podniesiono do widełek **125–145 mld USD** (poprzednio 115–135 mld). Po tej rewizji w kwietniu akcje META spadły **~8%** jednego dnia.
- Meta AI app po premierze Muse Spark podskoczyło z **#57 na #5** w US App Store; **~46 000** instalacji iOS w dniu launchu (Sensor Tower, +87% d/d).
- Suma instalacji Meta AI app globalnie (App Store + Google Play): **~60,5 mln**, z czego **25 mln** w samym 2026 (Appfigures).
- Łączny zasięg Muse Spark przez Facebook/Instagram/WhatsApp/Messenger: deklarowane **>3 mld** użytkowników.
- Zespół **TBD Lab** (rdzeń MSL) liczy **~50 osób**; pakiety dla kluczowych badaczy sięgały **setek mln**, w jednym przypadku raportowanych **~1,5 mld USD** (były założyciel Thinking Machines).
- W trakcie tej operacji Meta **zwolniła ~600 badaczy FAIR** (jesień 2025) i ogłosiła **8 000 cięć** od **20 maja 2026** w ramach restrukturyzacji wokół MSL.

---

## Oś czasu: od $14B na Wanga do dzisiaj

| Data | Wydarzenie |
|------|------------|
| **VI 2025** | Meta wpłaca **~14,3 mld USD** za 49% Scale AI; Alexandr Wang zostaje **Chief AI Officer** Meta |
| **Lato 2025** | Powstaje **Meta Superintelligence Labs** (4 zespoły: TBD Lab, FAIR, Products & Applied Research, MSL Infra) |
| **IX 2025** | Zuckerberg w Fortune: MSL ma "płaską" strukturę, brak top-down |
| **XI 2025** | **Yann LeCun** rezygnuje — nie chce raportować do Wanga |
| **III 2026** | Restrukturyzacja: równoległy **Applied AI Engineering** pod Maherem Sabą (raport do CTO **Andrew Bosworth**) — Wang **traci wyłączną autonomię** |
| **8 IV 2026** | Premiera **Muse Spark** (kod **Avocado**); API obiecane "wkrótce" |
| **IV→V 2026** | Pierwsze opóźnienie API — bugi + infra |
| **30 IV 2026** | Meta podnosi capex 2026 do **125–145 mld USD**; akcje −8% |
| **V→VI 2026** | Drugie opóźnienie API — bez konkretu |
| **20 V 2026** | Meta startuje z falą **8 000 zwolnień**, część FAIR |
| **VI 2026** | Raporty (eWeek) o **min. 8 odejściach** z MSL od lipca, część wraca do **OpenAI** (Avi Verma, Ethan Knight); Rishabh Agarwal do Periodic Labs |
| **1 VI 2026** | Chiński **MiniMax M3** ląduje z **1M kontekstu**, otwartymi wagami i benchmarkami bijącymi GPT-5.5/Gemini 3.1 Pro na SWE-Bench Pro |
| **3 VI 2026** | **WSJ**: trzeci poślizg API Muse Spark, bez daty |
| **5 VI 2026** | Dziś — wciąż brak publicznego API |

---

## Co miało Muse Spark robić (capability claims z kwietnia)

- **Natywnie multimodalny** model rozumowania: wejście tekst/obraz/głos, wyjście tylko tekst.
- Obsługa **tool-use**, **visual chain-of-thought**, **multi-agent orchestration**.
- Wynik **52** na Artificial Analysis Intelligence Index v4.0 — **4. miejsce** za Gemini 3.1 Pro (57), GPT-5.4 (57), Claude Opus 4.6 (53). Wyprzedza Llamę 4 Maverick (**18**) o **34 punkty** — kolosalny skok dla Mety, ale wciąż poniżej frontier.
- **80,5%** na MMMU-Pro (multimodal) — drugi po Gemini 3.1 Pro (82,4%).
- **HealthBench Hard: 42,8** vs Gemini 3.1 Pro 20,6 — Meta chwali się współpracą z **>1000 lekarzami** przy danych treningowych.
- "Contemplating mode": **58%** na Humanity's Last Exam, **38%** na FrontierScience Research.
- **Cloud-only**, brak downloadable weights — zerwanie z linią Llamy. Pierwszy **closed-source** model Mety od lat.
- Darmowy w meta.ai i Meta AI app (z rate limitami), wdrożony równolegle w FB/IG/WhatsApp/Messenger.

**Problem:** wszystkie te liczby są deklarowane przez Metę, a developerzy od dwóch miesięcy nie mogą tego sprawdzić — bo API nie istnieje.

---

## Co tymczasem dowieźli konkurenci (kwiecień–czerwiec 2026)

- **OpenAI — GPT-5.5** (23 IV 2026): pierwszy "full retrain" od GPT-4.5, natywnie omnimodalny, SOTA w agentic/coding/computer use. **$5 / $30** za 1M tokenów (input/output). **API od dnia premiery.**
- **Google — Gemini 3.5 Flash** (19 V 2026, Google I/O): "Flash-tier" bije zeszłorocznego flagowego Gemini 3.1 Pro na coding/agentic. **$1,50 / $9** za 1M tokenów. **API od dnia premiery.**
- **Anthropic — Claude Opus 4.8** (28 V 2026): 41 dni po Opus 4.7. Lider w coding benchmarks. **$5 / $25** za 1M tokenów. **API od dnia premiery.**
- **MiniMax — M3** (1 VI 2026, Szanghaj): **open weights**, **1M tokenów kontekstu**, native multimodal (text/image/video), **59% na SWE-Bench Pro** (przed GPT-5.5 i Gemini 3.1 Pro, za Opus 4.7), MSA = compute **1/20** poprzedniej generacji, **9× szybszy prefill**, **15× szybsze decoding**. API live od premiery, wagi i raport w 10 dni.

Wzorzec jest brutalny: **wszyscy traktują API jako część launchu, a nie afterthought**. Meta nie. To kosztuje firmę narrację "wracamy do gry" zaledwie dwa miesiące po niej.

---

## Wewnętrzne tarcia w Meta Superintelligence Labs

Raporty (eWeek, CNBC, Medium/Write A Catalyst, WION) wskazują na **strukturalną dysfunkcję**:

- **Min. 8 odejść** z MSL od lipca 2025. Część to **długoletni Meta employees**, ale są też świeże transfery wracające do OpenAI po **kilku tygodniach** (Avi Verma <1 mies., Ethan Knight wraca do OpenAI, Rishabh Agarwal do Periodic Labs po ~5 mies.).
- **Yann LeCun** (Chief AI Scientist, lider FAIR od 2013) odszedł w **XI 2025** raczej niż raportować do Wanga — głośny sygnał kulturowy.
- **Konflikt strategiczny** wewnątrz: Wang chce gonić OpenAI/Google na frontier; **Chris Cox (CPO) + Andrew Bosworth (CTO)** chcą produktów konsumenckich na danych FB/IG. Marzec 2026 — Bosworth dostaje równoległy pion **Applied AI Engineering** pod **Maherem Sabą**. Wang formalnie nadal CAIO, faktycznie z obciętą autonomią.
- **600 cięć w FAIR** jesienią 2025 + fala **8 000 zwolnień od 20 V 2026** — całkowity reset wokół MSL, ale przy jednoczesnym kupowaniu pojedynczych badaczy za **setki mln–1,5 mld USD**. Społeczność wewnętrzna ma poczucie kasty.
- Capex **125–145 mld USD** w 2026 + **27 mld USD JV z Nebius** na gigawatt data center — przy braku publicznego API model wygląda jak kolejny **demo-ware**, nie produkt.

---

## Implikacje dla rynku i Polski

- **Dla rynku:** Meta ma wycenę zbudowaną częściowo na narracji "też mamy frontier AI". Brak API = brak monetyzacji enterprise = brak realnego kontrprzykładu wobec OpenAI/Anthropic/Google. Analityk S&P Visible Alpha (Otto): "społeczność inwestycyjna jest sfrustrowana ilością gotówki, którą palą".
- **Dla developerów:** w ekosystemie LLM API jest *wszystkim*. Kto nie ma API w dniu launchu, nie istnieje w pipeline'ach RAG, agentów, narzędzi. Meta robi sobie **dziurę dwóch miesięcy** w momencie, gdy MiniMax wypuszcza open weights z 1M kontekstu, a Gemini 3.5 Flash bije ceną.
- **Dla strategii open-source:** porzucenie Llamy boli osobno. Polscy zespoły fine-tuning'ujące Llamę 3/4 (PLLuM, Bielik itp.) tracą "darmową" ścieżkę modernizacji. Muse Spark jest cloud-only, więc dane nie zostają w PL/UE — to też temat dla regulatorów.
- **Dla Mety jako brandu:** dotąd "lider open source AI" → teraz "**Mark Zuckerberg wydał 14 mld na faceta i nadal ma poślizgnięte API**". To narracja przeciwko Mecie na rok.
- **Dla Polski PR-owo:** historia "amerykański Big Tech przepala $145 mld i nie potrafi wydać jednego API" świetnie rezonuje w kontekście dyskusji o suwerenności technologicznej i tym, że *każdy* się męczy, nie tylko my.

---

## Potencjalne kąty narracyjne do shorta

1. **"14 miliardów dolarów za jednego faceta i API którego nie ma"** — Wang + Muse Spark + dwa miesiące poślizgu. Pojedyncza liczba ($14,3 mld) + pojedyncza twarz (Alexandr Wang) + konkretny brak (API) = perfekcyjny hook dramy.
2. **"Mark Zuckerberg vs reszta świata: OpenAI, Google, Anthropic, a nawet Chińczycy dowieźli — Meta nie"** — wymień GPT-5.5, Gemini 3.5 Flash, Claude Opus 4.8, MiniMax M3, wszystko w ciągu 6 tygodni, wszystko z API w dniu launchu. Meta od kwietnia bez.
3. **"145 miliardów na infrastrukturę. Nie potrafią postawić jednego API"** — capex 2026 widełki 125–145 mld vs "bugs and infrastructure issues" jako oficjalny powód poślizgu. Czysty kontrast.
4. **"Meta zabiła Llamę. Co zostało? Demo bez API."** — porzucenie open source + 600 zwolnionych z FAIR + Yann LeCun zwija manatki + Muse Spark cloud-only bez weights. Narracja o końcu pewnej epoki.
5. **"Pracownicy Mety AI wracają do OpenAI. Po miesiącu."** — Avi Verma <30 dni, Ethan Knight wraca, 8+ odejść od lipca. Ludzie biorą bonusy i uciekają.
6. **"Meta AI app ma 3 miliardy użytkowników. I tylko jeden problem: developerzy nie mogą tego użyć."** — kontrast skali konsumenckiej vs zerowy ekosystem developerski.
7. **"Zuckerberg zapłacił $1,5 mld za jednego inżyniera. Nadal nie ma API."** — pakiet dla byłego założyciela Thinking Machines jako ekstremum talent war + brak deliverable. Drama liczbą, drama nazwiskiem.

---

## Źródła

- Wall Street Journal (przekazane wtórnie przez): WHBL (3.06.2026), KFGO, Sherwood News, Seeking Alpha, Implicator.ai, TipRanks, Invezz
- TechCrunch, "Meta debuts the Muse Spark model in a 'ground-up overhaul' of its AI" (8.04.2026)
- TechCrunch, "Meta AI app climbs to No. 5 on the App Store after Muse Spark launch" (9.04.2026)
- CNBC, "Meta debuts new AI model, attempting to catch Google, OpenAI after spending billions" (8.04.2026)
- CNBC, "Meta's layoffs starting this week underscore Zuckerberg's AI reality" (18.05.2026)
- Fortune, "Meta unveils Muse Spark, its first new AI model since hiring Alexandr Wang" (8.04.2026)
- Fortune, "Mark Zuckerberg says Meta Superintelligence Labs has a 'flat' leadership" (19.09.2025)
- Axios, "Meta debuts Muse Spark, first AI model under Alexandr Wang" (8.04.2026)
- Reuters (via WHBL/KFGO) — komentarz rzeczniczki Mety o early partners
- eWeek, "Meta's Superintelligence Labs Losing Key Staff Months After Launch"
- The New Stack, "Meta abandons open-source Llama for proprietary Muse Spark"
- Artificial Intelligence News, "Did Meta Sacrifice Its Open-Source Identity for a Competitive AI Model?"
- Meta blog, "Introducing Muse Spark: Scaling Towards Personal Superintelligence" (ai.meta.com)
- about.fb.com, "Introducing Muse Spark: Meta's Most Powerful Model Yet"
- Built In, "Meta Superintelligence Labs: What We Know So Far" / "Meta's AI Reorg"
- Wikipedia, "Meta Superintelligence Labs"
- Storyboard18 / WION / mlq.ai — restrukturyzacja Bosworth/Saba, marzec 2026
- Medium (Write A Catalyst), "The Meta Restructuring No One Is Talking About"
- Sensor Tower, Appfigures — dane o instalacjach Meta AI app
- Yahoo Finance / 24/7 Wall St. — capex 125–145 mld USD, reakcja akcji META
- DataCamp, NeuralCoreTech, BuildFastWithAI, OfficeChai — benchmarki Muse Spark
- South China Morning Post / The Decoder / Pandaily / TechTimes — MiniMax M3 (1.06.2026)
- Orbilon Tech / Vasundhara / Apidog / Lushbinary / FindSkill — porównania GPT-5.5 / Gemini 3.5 Flash / Claude Opus 4.8 (kwiecień–maj 2026)
- TheNextWeb — Meta hires Thinking Machines founders ($1,5 mld engineer)
