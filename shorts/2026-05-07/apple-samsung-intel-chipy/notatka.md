# Apple rozmawia z Samsungiem i Intelem o produkcji chipów w USA — notatka badawcza

## Kluczowe fakty

- **4-5 maja 2026** — Bloomberg opublikował artykuł "Apple Explores Using Intel and Samsung to Build Main Device Chips in the US" (autorzy: Mark Gurman i inni, powołanie na anonimowe źródła zaznajomione ze sprawą)
- Rozmowy są na **wczesnym etapie — żadnych zamówień nie złożono**; Apple "exploruje" opcje
- Apple odwiedziło fabrykę Samsunga w budowie w **Taylor, Texas**
- Apple rozmawiało z Intelem o usługach odlewni (Intel Foundry Services / IFS)
- Przedmiotem rozmów są **główne procesory urządzeń Apple** — serie A (iPhone) i M (Mac, iPad)
- TSMC pozostaje głównym i jedynym dostawcą zaawansowanych chipów Apple (od 2016, od A10)
- TSMC Arizona produkuje już chipy dla Apple — **ponad 100 mln sztuk w 2026 roku**
- **Intel skoczył 13%** w ciągu jednej sesji (5 maja 2026), osiągając historyczne ATH na poziomie **113 USD** — wzrost o ~170% od początku roku 2026
- **Akcje TSMC spadły ok. 2%** po publikacji; szybko odbiły biorąc pod uwagę ekspansję wartą 56 mld USD
- Tim Cook podczas wyników Q2 2026 potwierdził, że **dostępność zaawansowanych węzłów produkcyjnych to największe ograniczenie łańcucha dostaw Apple** — bezpośrednio wpływające na Mac mini i Mac Studio
- Apple ogłosiło w lutym 2025 plan inwestycji **500 mld USD w USA przez 4 lata** i zatrudnienia 20 000 osób
- Trump wprowadził **25% cło na zaawansowane chipy** (obowiązuje od 15 stycznia 2026) z wyłączeniem dla firm produkujących w USA; grozi też cłem 100%

---

## Szerszy kontekst

### Historia zależności Apple od TSMC

Apple jest fabless — projektuje chipy, ale nie produkuje. Do 2016 roku Apple korzystało zarówno z TSMC, jak i Samsunga (Apple A9 w 2015 był ostatnim wspólnym chipem). Od A10 Fusion (2016, iPhone 7) Apple korzysta **wyłącznie z TSMC**.

Kluczowe kamienie milowe partnerstwa:
- **2020** — Apple ogłasza przejście Mac z Intel na własne chipy ARM (WWDC, czerwiec 2020); pierwsze Mace z M1 w listopadzie 2020; TSMC produkuje M1 na węźle 5nm (N5)
- **2023** — A17 Pro (iPhone 15 Pro) — pierwszy mobilny chip na 3nm (TSMC N3B); M3 — pierwszy 3nm dla Mac
- **2024** — A18 i M4 na TSMC N3E (ulepszony 3nm)
- **2025** — A19 (iPhone 17) na **TSMC N2 (2nm)**; M5 na N2 lub N3P
- **2026** — TSMC Fab 21 Phase 1 w Arizonie produkuje chipy dla Apple na węźle 4nm; Phase 2 (N3) uruchomienie 2027; Phase 3 (N2/A16) planowane na ~2029

TSMC kontroluje ponad **65% globalnej zaawansowanej produkcji półprzewodników**. Apple to największy klient TSMC. Dla Apple oznacza to pełne uzależnienie od jednej firmy, w jednym kraju — Tajwanie.

### Ryzyko geopolityczne — Tajwan i Chiny

Tajwan i Chiny Ludowe od dziesięcioleci pozostają w konflikcie o suwerenność. Scenariusz chińskiej inwazji lub blokady Tajwanu jest traktowany jako Tier 1 zagrożenie dla bezpieczeństwa narodowego USA (ocena Departamentu Obrony). Dyrektor CIA William Burns stwierdził, że zakłócenie produkcji TSMC wywołałoby **największe szkody ekonomiczne od II wojny światowej**. Dywersyfikacja produkcji to kwestia nie tylko biznesowa, ale i strategiczna.

### Taryfowa presja Trumpa

- Trump wielokrotnie krytykował CHIPS Act — uważając, że zamiast dotacji wystarczyłyby cła na importowane chipy
- Styczeń 2026: cło 25% na zaawansowane chipy obliczeniowe (Nvidia H200, AMD MI325X); zwolnienie dla firm produkujących w USA
- Trump groził cłem **100% na chipy** importowane przez firmy niemające produkcji w USA
- Apple ogłosiło 500 mld USD inwestycji (luty 2025) częściowo jako odpowiedź na tę presję

### Niedobory i AI

Paradoksalnie jednym z powodów, dla których Apple szuka nowych dostawców, jest… boom AI. Centra danych AI wykupują moce produkcyjne TSMC (Nvidia, AMD, Google, Microsoft) — przez co Apple ma problem z zamawianiem wystarczającej liczby chipów dla konsumenckich urządzeń. Tim Cook publicznie przyznał to na wynikach Q2 2026.

---

## Szczegóły techniczne / biznesowe

### Samsung Foundry — fabryka w Taylor, Texas

- Łączna zadeklarowana inwestycja: **44 mld USD** (podwojona w stosunku do pierwotnych planów)
- Lokalizacja: Taylor, Texas (okolice Austin)
- Technologia: zrewidowana z pierwotnego 4nm na **2nm GAA (SF2)**
- Pierwsze urządzenia produkcyjne dostarczone: marzec 2026; **rysk produkcji od Q2 2026**; pełna masa produkcyjna: **2027**
- Docelowa przepustowość: **50 000 waferów miesięcznie**
- Samsung stosuje technikę **GAA (gate-all-around)** od węzła 3nm — wcześniej niż TSMC (TSMC wdraża GAA dopiero na 2nm)
- Fabryka była **opóźniana z powodu braku klientów** (2024-2025); umowa z Tesla (AI6, 16,5 mld USD) poprawiła sytuację
- Uzyski Samsunga na 2nm: ~55-60% (TSMC na 2nm: ~65-75%) — Samsung wciąż trochę za TSMC
- Udział Samsunga w rynku odlewni: ~7,3% vs TSMC ~70%
- Samsung produkuje już dla Apple sensory obrazu (CIS) w Austin, Texas

### Intel Foundry (IFS) — węzeł 18A

- Intel 18A — technologia klasy 1,8 nm, pierwsza zaawansowana technologia odlewni zbudowana **w całości w USA** (fabryki w Oregonie i Arizonie)
- Intel wrócił do masowej produkcji po 5-letniej trudnej restrukturyzacji
- Strata operacyjna IFS w Q1 2026: **2,4 mld USD** (ale stopniowo maleje)
- Apple jest zainteresowane węzłem **18A-P** (ulepszona wersja 18A) — potwierdziło Commercial Times w kwietniu 2026
- Apple ponoć już **wzięło PDK (Process Design Kit) dla 18A-P** — to techniczny krok przygotowawczy przed zleceniem produkcji
- Możliwe produkty Apple na 18A: **entry-level chipy serii M** (nie flagowe A-series iPhone)
- Potencjalna data pierwszych produktów: **2027 lub później**
- Inne klienci 18A: Google (eksploruje zaawansowane pakowanie), Elon Musk (25 mld USD fabryka wokół procesu 18A), Amazon
- Rząd USA posiada **8,9 mld USD udziałów w Intelu**; Intel traktowany jako zasób strategiczny

### Porównanie dostawców

| Kryterium | TSMC | Samsung Foundry | Intel Foundry |
|-----------|------|-----------------|---------------|
| Udział w rynku | ~70% | ~7% | <1% |
| Węzeł dla Apple | N2 (2nm) | SF2 (2nm GAA) | 18A-P (~1,8nm) |
| Lokalizacja US | Arizona (Fab 21) | Taylor, Texas | Oregon + Arizona |
| Wydajność (uzysk) | 65-75% (2nm) | 55-60% (2nm) | Rośnie (18A) |
| Status zamówień Apple | Jedyny dostawca; 100M+ chipów/rok | Wczesne rozmowy | Wczesne rozmowy |
| Masa produkcyjna US | Od 2024 (4nm), 2027 (3nm) | 2027 (planowana) | 2026+ |

---

## Potencjał contentowy

### Co jest najciekawsze dla widza niezajmującego się branżą

1. **Paradoks uzależnienia**: cały iPhone jest przez jedną firmę na jednej wyspie — to coś, czego większość ludzi nie wie. Gdyby coś się stało z Tajwanem, iPhone zniknąłby ze sklepów.

2. **Niezamierzone konsekwencje AI bumu**: sztuczna inteligencja (centra danych) dosłownie konkuruje z twoim telefonem o miejsce w fabryce — i wygrała. Tim Cook publicznie przyznał, że przez AI boom nie miał wystarczająco chipów na Mac mini.

3. **Intel — gigant wskrzeszony**: Intel przez lata był uważany za skończoną firmę w wyścigu chipowym. Wiadomość, że Apple może być ich klientem, wywindowała akcje do historycznego szczytu. To historia zmartwychwstania.

4. **Samsung szuka klientów do swojej fabryki za 44 mld USD**: wybudowali ogromną halę produkcyjną w Teksasie i nie mieli komu sprzedawać produkcji. Apple to potencjalny ratunek.

5. **Polityczny kontekst**: Trump grozi 100% cłem na chipy z zagranicy — nagle każda duża firma technologiczna musi myśleć o przenoszeniu produkcji do USA. Apple już obiecało 500 mld USD inwestycji.

### Emocje i reakcje, jakie może wywołać

- **Strach/zaskoczenie**: "Nie wiedziałem, że mój iPhone zależy od jednej tajwańskiej firmy"
- **Ironia**: AI zabiera Ci moce produkcyjne, przez które masz gorzej działający Mac
- **Nadzieja/niedowierzanie**: Intel znowu jest ważny?
- **Skala**: 500 mld USD inwestycji Apple w USA — ta liczba sama w sobie zatrzymuje myśl

### Haki komentarzowe (organiczne)

- "Gdybyś miał wybierać — czy wolisz, żeby Twój chip robił Samsung, Intel czy TSMC?"
- "Jak myślisz, ile lat zajmie Apple uniezależnienie się od Tajwanu?"
- "Czy wiesz, że Intel miał kiedyś własny procesor w MacBooku?" (kontekst historyczny dla starszych widzów)

---

## Źródła

- [Bloomberg: Apple Explores Using Intel and Samsung to Build Main Device Chips in the US (5 maja 2026)](https://www.bloomberg.com/news/articles/2026-05-05/apple-explores-using-intel-and-samsung-to-build-main-device-chips-in-the-us)
- [MacRumors: Apple Eyes Intel and Samsung as Backup US Chipmakers](https://www.macrumors.com/2026/05/05/apple-talks-intel-samsung-us-chipmakers/)
- [9to5Mac: Apple considers Intel and Samsung to diversify chip manufacturing away from TSMC](https://9to5mac.com/2026/05/04/report-apple-considers-intel-and-samsung-to-diversify-chip-manufacturing-away-from-tsmc/)
- [CNBC: Intel soars 13% on report of Apple chip talks, hits new all-time high](https://www.cnbc.com/2026/05/05/intel-intc-stock-apple-talks-report.html)
- [TrendForce: Intel Foundry Gains Momentum — Apple Reportedly Eyes 18A-P (29 kwietnia 2026)](https://www.trendforce.com/news/2026/04/29/news-intel-foundry-gains-momentum-apple-reportedly-eyes-18a-p-as-google-explores-advanced-packaging/)
- [Tom's Hardware: Intel moves closer to building Apple's entry-level M-series chips on 18A](https://www.tomshardware.com/tech-industry/semiconductors/intel-moves-closer-to-building-apples-entry-level-m-series-chips-on-18a)
- [Tom's Hardware: Samsung's Taylor Texas fab — 2026 risk production, 50,000 WSPM target](https://www.tomshardware.com/tech-industry/semiconductors/samsungs-taylor-texas-fab-could-herald-a-breakthrough-for-the-chipmaker-company-plans-2026-risk-production-new-production-flows-pellicles-for-euv-patterning-as-site-targets-50-000-wspm)
- [Seoul Economic Daily: Samsung Foundry May Win Apple's iPhone Brain Chip Deal](https://en.sedaily.com/finance/2026/05/05/samsung-foundry-may-win-apples-iphone-brain-chip-deal)
- [Benzinga: TSMC Stock Holds Firm As $56 Billion AI Expansion Defies Apple Supply Chain Rumors](https://www.benzinga.com/markets/tech/26/05/52282399/tsmc-stock-holds-firm-as-56-billion-ai-expansion-defies-apple-supply-chain-rumors)
- [FX Leaders: INTC Stock Up 13%, Hits All-Time High](https://www.fxleaders.com/news/2026/05/06/intc-stock-up-13-hits-all-time-high-as-apple-chip-manufacturing-talks-ignite-a-historic-rally/)
- [Apple Newsroom: Apple will spend more than $500 billion in the US over the next four years (luty 2025)](https://www.apple.com/newsroom/2025/02/apple-will-spend-more-than-500-billion-usd-in-the-us-over-the-next-four-years/)
- [CNBC: Trump vows 100% tariff on chips unless companies building in the US](https://www.cnbc.com/2025/08/06/trump-tariffs-chips-companies.html)
- [Digitimes: Why Apple's Intel and Samsung talks remain preliminary — and what that means for TSMC](https://www.digitimes.com/news/a20260506VL224/ic-manufacturing-capacity-apple-samsung-intel-tsmc.html)
- [AppleInsider: Advanced Apple Silicon remains tied to Taiwan despite Arizona fab expansion (luty 2026)](https://appleinsider.com/articles/26/02/25/advanced-apple-silicon-remains-tied-to-taiwan-despite-arizona-fab-expansion)
- [TrendForce: The 2nm Foundry Battle — TSMC Leads, Can Samsung and Intel Catch Up?](https://www.trendforce.com/news/2025/02/19/news-the-2nm-foundry-battle-tsmc-leads-can-samsung-and-intel-catch-up/)
- [Arizona Tech Council: Apple to buy more than 100 million chips from TSMC's Arizona fab by year's end](https://www.aztechcouncil.org/apple-chips-tsmc-fab/)
