# Pentagon AI bez Anthropic — notatka badawcza

## Kluczowe fakty

- **1 maja 2026** Pentagon ogłosił umowy z 7 (według niektórych źródeł 8) firmami AI umożliwiające wdrożenie modeli na tajnych sieciach wojskowych: SpaceX, OpenAI, Google, Nvidia, Reflection AI, Microsoft, Amazon Web Services — oraz Oracle (dodane tego samego dnia).
- Anthropic zostało celowo pominięte — w wyniku sporu z administracją Trumpa o warunki korzystania z modeli przez wojsko.
- Pentagon wcześniej (marzec 2026) oficjalnie oznaczył Anthropic jako **"supply chain risk"** (ryzyko dla łańcucha dostaw) — pierwsza taka decyzja wobec amerykańskiej firmy w historii. Wcześniej tego narzędzia używano wyłącznie wobec podmiotów powiązanych z wrogimi państwami.
- Federalny sąd w Kalifornii zablokował ten zakaz injunkcją (kwiecień 2026), ale Pentagon nadal nie podpisał umów z Anthropic.
- Równocześnie NSA (Agencja Bezpieczeństwa Narodowego) potajemnie testuje najnowszy model Anthropic — **Mythos** — pomimo oficjalnego zakazu DOD.
- **17 kwietnia 2026** Dario Amodei (CEO Anthropic) spotkał się w Białym Domu z szefową gabinetu Susie Wiles, National Cyber Director Sean Cairncross i sekretarzem skarbu Scott Bessent — oficjalnie "produktywna" rozmowa.
- Trump zapytany przez dziennikarzy o to spotkanie powiedział: "Who?" (nie miał pojęcia).
- Biały Dom pracuje nad draft executive order, który pozwoliłby agencjom federalnym ominąć zakaz DOD i korzystać z modeli Anthropic.

---

## Szerszy kontekst

### Administracja Trumpa vs. Big Tech
Trump po powrocie do władzy forsuje wizję USA jako lidera militarnego AI bez ograniczeń etycznych. Strategia: AI ma być narzędziem siły, a firmy technologiczne mają udostępniać modele "dla wszystkich zgodnych z prawem celów" — bez wyjątków.

### Historia sporu
- **Luty 2026**: Negocjacje Pentagonu z Anthropic zrywają się. Pentagon żąda, by Anthropic usunął klauzule bezpieczeństwa ograniczające użycie Claude'a. Anthropic odmawia.
- **Koniec lutego 2026**: Sekretarz "Obrony" Pete Hegseth ogłasza decyzję o oznaczeniu Anthropic jako supply chain risk. Używa określenia "Department of War" (nie "Defense") — sygnał retoryczny o zmianie doktryny.
- **Marzec 2026**: Zakaz wchodzi w życie. Firmy z sektora defense-tech (używające Claude'a przez Palantir/Maven) zaczynają rezygnować z modeli Anthropic. Anthropic pozbywa się dostępu do rządowych kontraktów.
- **9 marca 2026**: Anthropic składa dwa pozwy sądowe przeciwko Pentagonowi — zarzucając naruszenie I Poprawki i przekroczenie uprawnień rządowych.
- **Kwiecień 2026**: Sąd federalny wydaje injunkcję blokującą zakaz. Równolegle wycieka informacja o NSA testującym Mythos.
- **17 kwietnia 2026**: Spotkanie Amodei w Białym Domu.
- **1 maja 2026**: Pentagon podpisuje umowy z 7 firmami, Anthropic nadal na czarnej liście.

### Kontekst polityczny
Administracja Trumpa wyraźnie sygnalizuje: albo pełna współpraca bez warunków, albo wykluczenie. OpenAI, Google, Microsoft wybrały współpracę bez zastrzeżeń. Anthropic jako jedyna duża firma postawiła warunki i zapłaciła cenę — przynajmniej tymczasowo.

---

## Szczegóły techniczne / biznesowe

### Program: GenAI.mil
Platforma GenAI.mil to centralna platforma AI Pentagonu dla pracowników DOD. Dotychczas obsługiwała zadania na niesklasyfikowanym poziomie (pisanie dokumentów, analiza danych, research). Nowe umowy rozszerzają dostęp na:
- **Impact Level 6 (IL6)** — sieci obsługujące dane tajne (secret)
- **Impact Level 7 (IL7)** — systemy obsługujące dane ściśle tajne (top secret), najwyższy poziom klasyfikacji wojskowej

### Zakres wdrożeń
- Synteza danych wywiadowczych
- Wspomaganie decyzji operacyjnych żołnierzy
- Poprawa świadomości sytuacyjnej
- Augmentacja planowania misji

### Skala
Ponad **1,3 miliona pracowników DOD** ma dostęp do GenAI.mil dla zadań niesklasyfikowanych. Nowe umowy dają dostęp do modeli na poziomie tajnym.

### Kwoty
Wartości kontraktów nie zostały ujawnione.

### Reflection AI
Mało znana firma — **Reflection AI** (wspierana przez Nvidia) to startup, który znalazł się na liście obok gigantów. Jej obecność sygnalizuje, że Pentagon świadomie dywersyfikuje dostawców (w tym startupów).

### Dawna rola Claude'a
Przed zakazem Claude był używany przez wojsko za pośrednictwem **Palantir** i programu **Maven** (wywiadowczy AI toolkit armii USA). Ta integracja skończyła się wraz z zakazem.

---

## Klauzule bezpieczeństwa Anthropic

Anthropic zażądało od Pentagonu **dwóch konkretnych wyłączeń** ze standardowej klauzuli "wszystkich zgodnych z prawem celów":

### 1. Zakaz masowej krajowej inwigilacji Amerykanów
Anthropic uznało, że użycie Claude'a do masowej inwigilacji obywateli USA naruszałoby fundamentalne prawa cywilne. Firma nie chciała, żeby jej model był narzędziem do śledzenia własnych obywateli przez rząd.

### 2. Zakaz w pełni autonomicznych systemów broni
Anthropic argumentowało, że "dzisiejsze modele AI nie są wystarczająco niezawodne" do podejmowania autonomicznych decyzji o użyciu śmiercionośnej siły. Firma chciała, żeby zawsze w pętli decyzyjnej znajdował się człowiek ("human in the loop").

### Stanowisko Pentagonu
Pentagon stwierdził, że to nie dostawca (contractor) decyduje, jak rząd używa zakupionej technologii — i że AI firmy muszą być dostępne "dla wszystkich zgodnych z prawem celów". Hegseth użył klauzul prawnych:
- **10 U.S.C. § 3252** — daje Sekretarzowi Obrony prawo do wykluczenia dostawcy z zamówień wojskowych jeśli stanowi ryzyko dla łańcucha dostaw systemów bezpieczeństwa narodowego
- **Federal Acquisition Supply Chain Security Act (FASCSA)** — dodatkowa podstawa prawna do wykluczenia

Anthropic w oświadczeniu zaznaczyło, że te dwa wyjątki "nie wpłynęły na żadną misję rządową" — innymi słowy, wojsko nigdy faktycznie nie potrzebowało Claude'a do autonomicznych dronów bojowych ani masowej inwigilacji. Pentagon odrzucił ten argument, traktując samo stawianie warunków jako problem.

---

## Zwrot akcji — Mythos i powrót Anthropic

### Co to jest Mythos
**Claude Mythos Preview** — ogłoszony **7 kwietnia 2026**, ujawniony wcześniej przez wyciek danych (**26 marca 2026**). Anthropic opisało go jako "by far the most powerful AI model we've ever developed" — i "step change" (przełomowy skok, nie ewolucja).

Kluczowe możliwości:
- **Cyberbezpieczeństwo**: zdolność do autonomicznego znajdowania i eksploatowania luk w oprogramowaniu na poziomie lepszym niż większość ludzkich specjalistów
- **Reverse engineering**: rekonstrukcja kodu źródłowego z binarnych plików bez kodu źródłowego
- **Multi-stage attacks**: w kontrolowanych testach Mythos przeprowadzał wieloetapowe ataki na podatne sieci i odkrywał luki autonomicznie — w zadaniach, które człowiekowi zajmowałyby dni
- **Znalezione luki**: tysiące podatności wysokiego ryzyka, w tym w każdym głównym systemie operacyjnym i przeglądarce

Anthropic uruchomiło równolegle **Project Glasswing** — inicjatywę wykorzystania Mythos do ochrony krytycznej infrastruktury. Model nie jest dostępny publicznie.

### Dlaczego wznowiono rozmowy
Mythos zmienił kalkulację strategiczną — nie ma on sobie równych jako narzędzie ofensywne i defensywne w cyberprzestrzeni. Wykluczenie Anthropic nagle oznaczało, że USA rezygnuje z najbardziej zaawansowanego narzędzia cyber dla potrzeb narodowego bezpieczeństwa.

**NSA (National Security Agency)** zaczęło potajemnie testować Mythos — mimo oficjalnego zakazu DOD — do znajdowania luk w oprogramowaniu Microsoftu i innych systemów. Dla NSA cyberzdolności Mythos były zbyt wartościowe, żeby ignorować model z powodów politycznych.

**17 kwietnia 2026**: Dario Amodei spotkał się w Białym Domu z:
- Susie Wiles (szefowa gabinetu)
- Sean Cairncross (National Cyber Director)
- Scott Bessent (sekretarz skarbu)

Obie strony nazwały rozmowę "produktywną". Trump zapytany o spotkanie odpowiedział: "Who?" (nie wiedział, że się odbyło).

**Aktualny status (1 maja 2026)**:
- Pentagon CTO Emil Michael publicznie podtrzymuje stanowisko: Anthropic nadal jest "supply chain risk"
- Ale: Biały Dom pracuje nad executive order dającym agencjom możliwość ominięcia zakazu DOD
- Mythos jest traktowany jako "osobna kwestia bezpieczeństwa narodowego" — nie jako zwykła sprawa procurement
- Trump powiedział, że "możliwa jest umowa" między Anthropic a DOD

---

## Potencjalne kąty do wideo

1. **"Jedyna firma, która powiedziała NIE Pentagonowi"** — Anthropic dostało czarną listę za stawianie warunków etycznych. OpenAI, Google, Microsoft — wszyscy się zgodzili. Co to mówi o tym, kto faktycznie kontroluje AI w wojsku?

2. **"NSA łamie zakaz własnego rządu"** — Departament Obrony zakazał Anthropic. Agencja wywiadu tego samego rządu potajemnie używa zakazanego modelu, bo jest za dobry żeby go ignorować. Absurd systemu na żywo.

3. **"AI które samo może zaatakować każdy komputer na świecie"** — Mythos znalazło tysiące luk w każdym popularnym systemie operacyjnym i przeglądarce. Dlaczego rząd chce go mieć tak bardzo, że omija własne zakazy?

4. **"Autonomiczne drony bez pilota — czy na to pozwoliły OpenAI i Google?"** — Antropic jako jedyna firma odmówiła podpisania umowy bez klauzuli zakazującej autonomicznych decyzji o zabijaniu. Czy inne firmy taką zgodę de facto podpisały?

5. **"Pentagon na wojnie z własnym dostawcą"** — Bezprecedensowe: USA blacklistuje własną firmę AI używając narzędzi prawnych stworzonych przeciwko Chinom i Rosji. Sędzia to blokuje. NSA ignoruje. Biały Dom pracuje nad obejściem. Chaos decyzyjny jako historia o słabości regulacji AI.

---

## Źródła

- [Pentagon strikes deals with 7 Big Tech companies after shunning Anthropic — CNN Business](https://www.cnn.com/2026/05/01/tech/pentagon-ai-anthropic)
- [Pentagon inks deals with Nvidia, Microsoft, and AWS to deploy AI on classified networks — TechCrunch](https://techcrunch.com/2026/05/01/pentagon-inks-deals-with-nvidia-microsoft-and-aws-to-deploy-ai-on-classified-networks/)
- [Pentagon Signs AI Deals With Google, OpenAI, Nvidia, Microsoft, Amazon and SpaceX — Decrypt](https://decrypt.co/366351/pentagon-ai-deals-google-openai-nvidia-microsoft-amazon-spacex)
- [Pentagon makes agreements with 7 companies to add AI to classified networks — Nextgov/FCW](https://www.nextgov.com/artificial-intelligence/2026/05/pentagon-makes-agreements-7-companies-add-ai-classified-networks/413264/)
- [Pentagon clears 8 tech firms to deploy their AI on its classified networks — Breaking Defense](https://breakingdefense.com/2026/05/pentagon-clears-7-tech-firms-to-deploy-their-ai-on-its-classified-networks/)
- [Pentagon inks AI procurement deals with seven companies, leaves out Anthropic — SiliconANGLE](https://siliconangle.com/2026/05/01/pentagon-inks-ai-procurement-deals-seven-companies-leaves-anthropic/)
- [Deadline looms as Anthropic rejects Pentagon demands it remove AI safeguards — NPR](https://www.npr.org/2026/02/26/nx-s1-5727847/anthropic-defense-hegseth-ai-weapons-surveillance)
- [Anthropic rejects latest Pentagon offer: 'We cannot in good conscience accede to their request' — CNN](https://www.cnn.com/2026/02/26/tech/anthropic-rejects-pentagon-offer)
- [Pentagon-Anthropic AI standoff is real-time testing balance of power in future of warfare — CNBC](https://www.cnbc.com/2026/02/27/defense-anthropic-ai-war-risks-hegseth-amodei.html)
- [Pentagon Designates Anthropic a Supply Chain Risk — Mayer Brown](https://www.mayerbrown.com/en/insights/publications/2026/03/pentagon-designates-anthropic-a-supply-chain-risk-what-government-contractors-need-to-know)
- [Anthropic sues Pentagon over rare "supply chain risk" label — Axios](https://www.axios.com/2026/03/09/anthropic-sues-pentagon-supply-chain-risk-label)
- [Statement on the comments from Secretary of War Pete Hegseth — Anthropic](https://www.anthropic.com/news/statement-comments-secretary-war)
- [Pentagon tech chief says Anthropic is still blacklisted, but Mythos is a separate issue — CNBC](https://www.cnbc.com/2026/05/01/pentagon-anthropic-blacklist-mythos-michael.html)
- [Scoop: NSA using Anthropic's Mythos despite Defense Department blacklist — Axios](https://www.axios.com/2026/04/19/nsa-anthropic-mythos-pentagon)
- [NSA spies are reportedly using Anthropic's Mythos, despite Pentagon feud — TechCrunch](https://techcrunch.com/2026/04/20/nsa-spies-are-reportedly-using-anthropics-mythos-despite-pentagon-feud/)
- [Exclusive: Anthropic 'Mythos' AI model representing 'step change' in capabilities — Fortune](https://fortune.com/2026/03/26/anthropic-says-testing-mythos-powerful-new-ai-model-after-data-leak-reveals-its-existence-step-change-in-capabilities/)
- [Claude Mythos Preview — Anthropic Red Team](https://red.anthropic.com/2026/mythos-preview/)
- [Anthropic's Mythos AI Used by NSA to Probe Microsoft Security Vulnerabilities — Bloomberg](https://www.bloomberg.com/news/articles/2026-04-30/nsa-testing-anthropic-s-mythos-to-find-flaws-in-microsoft-tech)
- [Trump officials draft plan to bring Anthropic back amid Pentagon fight — Axios](https://www.axios.com/2026/04/29/trump-anthropic-pentagon-ai-executive-order-gov)
- [CEO of blacklisted Anthropic and White House hold 'productive' discussions on AI — CNN](https://www.cnn.com/2026/04/17/business/anthropic-white-house-meeting-dario-amodei)
- [Anthropic's Dario Amodei meets with White House about Mythos — CNBC](https://www.cnbc.com/2026/04/17/anthropic-dario-amodei-trump-mythos.html)
- [Scoop: Bessent and Wiles met Anthropic's Amodei in sign of thaw — Axios](https://www.axios.com/2026/04/17/anthropic-white-house-wiles-bessent-amodei)
- [Pentagon keeps Anthropic barred despite Mythos interest — The Register](https://www.theregister.com/2026/05/01/mythos_complicates_anthropic_us_gov_breakup/)
- [How to Think About the Anthropic-Pentagon Dispute — TechPolicy.Press](https://www.techpolicy.press/how-to-think-about-the-anthropic-pentagon-dispute/)
- [Anthropic's case against the Pentagon could open space for AI regulation — Al Jazeera](https://www.aljazeera.com/economy/2026/3/25/anthropics-case-against-the-pentagon-could-open-space-for-ai-regulation/)
- [Washington has a new Anthropic problem — Axios](https://www.axios.com/2026/05/01/washington-new-anthropic-problem)
- [Microsoft and Amazon join Pentagon's push to build AI-first military with classified network deals — GeekWire](https://www.geekwire.com/2026/microsoft-and-amazon-join-pentagons-push-to-build-ai-first-military-with-classified-network-deals/)
- [Seven AI firms agree to deploy tech in Pentagon classified networks — The Hill](https://thehill.com/policy/technology/5858995-pentagon-ai-companies-classified-work-deal/)
