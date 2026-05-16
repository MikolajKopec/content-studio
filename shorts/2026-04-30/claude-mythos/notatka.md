# Claude Mythos — notatka badawcza
Data: 2026-04-30

---

## 1. Podstawowe fakty

- **7 kwietnia 2026** — Anthropic ogłosiło Claude Mythos Preview
- Model NIE jest dostępny publicznie — Anthropic go zbudowało i jednocześnie zatrzymało
- Ostatni raz coś takiego zrobiło duże lab AI: OpenAI z GPT-2 w 2019 roku (7 lat temu)
- Kluczowa różnica vs GPT-2: GPT-2 zatrzymano z obawy o dezinformację (teorytyczna); Mythos zatrzymano na podstawie udokumentowanego zachowania w testach

---

## 2. Możliwości techniczne

### Co Mythos potrafi
- Autonomicznie wykrywa i exploituje zero-day vulnerabilities w każdym głównym systemie operacyjnym i przeglądarce
- Napisał exploit do przeglądarki, który połączył **4 luki naraz** (complex JIT heap spray, który zbiegł zarówno z sandbox renderera jak i z sandbox OS)
- Na zadaniach eksperckich z cyberbezpieczeństwa (których żaden wcześniejszy model nie umiał wykonać przed kwietniem 2025) — **73% skuteczności**
- W testach kontrolowanych z dostępem do sieci — wykonuje wieloetapowe ataki na sieci z lukami, odkrywa i exploituje podatności autonomicznie (co człowiekowi zajmuje dni pracy)

### Benchmark "181 razy"
- Anthropic testował Mythos na konkretnym benchmarku: Firefox 147 z lukami łatanymi w Firefox 148
- **Poprzedni model (Opus 4.6):** z kilkuset prób — **2 działające exploity**
- **Claude Mythos Preview:** — **181 działających exploitów** (ok. 90x więcej)
- Dodatkowo: 29 prób osiągnęło pełną kontrolę nad rejestrami (register control = możliwość manipulowania przeglądarką i całym systemem)
- Skuteczność zamieniania znanych luk Firefoksa w działające exploity: **72,4%**

### Metoda działania (workflow modelu)
Anthropic uruchamiał Claude Code z Mythos Preview z promptem w stylu "znajdź lukę bezpieczeństwa w tym programie". Typowy przebieg:
1. Model czyta kod i formułuje hipotezy o potencjalnych lukach
2. Uruchamia program, żeby potwierdzić lub obalić hipotezy (powtarza w pętli, dodaje własny kod debugujący, używa debuggerów)
3. Wypisuje albo "brak błędu", albo raport z opisem luki + proof-of-concept exploit + kroki reprodukcji

### Konkretne znaleziska
- Najstarsza znaleziona luka: **27-letni bug w OpenBSD** (już załatany)
- 16-letnia luka w FFmpeg (kod do kodowania wideo)
- Nowe zestawy chainowanych exploitów w jądrze Linux — umożliwiają eskalację uprawnień od zwykłego użytkownika do root
- Tysiące luk o wysokiej wadze we wszystkich głównych systemach operacyjnych i przeglądarkach

---

## 3. Polityka bezpieczeństwa Anthropic — RSP i ASL-4

### Responsible Scaling Policy (RSP)
- RSP to wewnętrzna polityka Anthropic definiująca kiedy model jest bezpieczny do wydania
- Definiuje poziomy AI Safety Levels (ASL), wzorowane luźno na rządowych standardach biosafety (BSL)
- Wyższy ASL = bardziej rygorystyczne wymogi bezpieczeństwa

### ASL-4 i Mythos
- Według dostępnych źródeł: Anthropic oceniło, że Claude Mythos przekracza próg **ASL-4**
- ASL-3 zostało aktywowane dla wcześniejszych modeli w maju 2025
- RSP v3.0 — opublikowane 24 lutego 2026 (przed premierą Mythos)
- Mythos wykazuje też "tacit, hands-on knowledge" protokołów laboratoryjnych, które mogłyby pomóc niedoświadczonej osobie w tworzeniu niebezpiecznych biologicznych agentów (dodatkowy powód zatrzymania)
- Decyzja o zatrzymaniu opisywana jako pierwsza realna aktywacja trybu ASL-4 — wcześniej zasady istniały, ale nie było modelu, który by je uruchomił

---

## 4. Project Glasswing — szczegóły

### Co to jest
Inicjatywa przemysłowa uruchomiona przez Anthropic, w ramach której Claude Mythos Preview jest używany wyłącznie do celów obronnych — łatania luk, zanim wykorzystają je napastnicy.

### Partnerzy (12 firm launch)
AWS, Apple, Anthropic, Broadcom, Cisco, CrowdStrike, Google, JPMorgan Chase, Linux Foundation, Microsoft, NVIDIA, Palo Alto Networks

(Uwaga: pierwotne doniesienia wymieniały 9 firm — pełna lista to 12, plus ponad 40 dodatkowych organizacji utrzymujących krytyczne oprogramowanie)

### Finansowanie i zasoby
- **$100M** w kredytach użytkowych na Mythos Preview
- **$2,5M** w darowiznach dla Alpha-Omega i OpenSSF przez Linux Foundation
- **$1,5M** dla Apache Software Foundation
- Łącznie: $4M w bezpośrednich darowiznach dla organizacji open source

### Dostęp techniczny
- Mythos dostępny przez Claude API, Amazon Bedrock, Google Cloud Vertex AI, Microsoft Foundry
- Cena: **$25 za milion tokenów wejściowych / $125 za milion tokenów wyjściowych** (tylko dla partnerów)
- Dostęp: 12 partnerów launch + ponad 40 organizacji utrzymujących krytyczne oprogramowanie open source

### Co robią poszczególni partnerzy
- Partnerzy launch: mogą używać Mythos do hardeningu swoich własnych produktów i infrastruktury
- Organizacje open source: mogą skanować swoje kody pod kątem luk
- Linux Foundation / open source maintainerzy: historycznie nie mieli zasobów na security — Glasswing daje im dostęp do AI pierwszej klasy

### Logika inicjatywy
"Żadna firma nie może sama załatać krytycznego oprogramowania całego świata" — luki w współdzielonej infrastrukturze (jądro Linux, popularne biblioteki open source) uderzają w każdego, kto od niej zależy.

### Obszary zastosowań
- Lokalne wykrywanie luk w kodzie
- Black box testing binarek
- Zabezpieczanie endpoints
- Testy penetracyjne systemów

---

## 5. Reakcje branży

### Eksperci ds. bezpieczeństwa

**Sudin Baraokar** (były CTO State Bank of India, ekspert AI i DeepTech):
> "Claude Mythos fundamentalnie przekształcił cyberbezpieczeństwo — zarówno jako broń wykorzystywana przez aktorów sponsorowanych przez państwa, jak i jako rewolucyjne narzędzie obronne."

**Kamal Krishna** (CEO MOBILISE):
> "Organizacje muszą przemyśleć podejście do cyberbezpieczeństwa, partnerstwa i gotowości w świecie, gdzie luki mogą być wykrywane znacznie szybciej. Duże przedsiębiorstwa mają zasoby, żeby szybko reagować — większy problem mają MŚP i firmy średniej wielkości."

**Alan Osborne** (CISO w Paysafe):
> "Mythos nie wprowadza zupełnie nowej kategorii ryzyka — pokazuje krok naprzód w szybkości i autonomii."

### Ogólna ocena ekspertów
- Mythos zmienia **ekonomikę** operacji cybernetycznych, nie tylko jakość narzędzi ofensywnych
- Odkrywanie luk i rozwijanie exploitów staje się tańsze, szybsze i mniej zależne od rzadkich ludzkich ekspertów
- Wzrośnie udział aktorów niepaństwowych w zaawansowanych operacjach cybernetycznych (AI obniża próg wymaganej ekspertyzy)
- Baseline ryzyka cybernetycznego prawdopodobnie wzrośnie trwale wraz z dyfuzją możliwości AI
- UK AISI (AI Safety Institute) przeprowadziło własną niezależną ocenę możliwości Mythos

---

## 6. Szerszy kontekst — AI i cyberbezpieczeństwo

### Precedensy: firmy, które zatrzymały modele ze względów bezpieczeństwa
- **OpenAI — GPT-2 (2019):** Zatrzymany z obawy o dezinformację; powszechnie uznany później za ćwiczenie komunikacyjne, nie prawdziwą decyzję bezpieczeństwa. Po kilku miesiącach model wypuszczono w całości.
- **Claude Mythos (2026):** Pierwszy przypadek w ciągu ok. 7 lat, gdy duże lab publicznie zatrzymuje model z powodów bezpieczeństwa. Kluczowe: podstawą są udokumentowane zachowania, nie obawy hipotetyczne.
- brak danych o innych porównywalnych przypadkach retencji modeli przez inne lab (Google DeepMind, Meta, Mistral)

### Jak AI zmienia cyberbezpieczeństwo
- Tradycyjnie: odkrycie luki zero-day wymagało miesięcy pracy doświadczonego badacza
- Mythos: potrafi wykonać wieloetapowy atak autonomicznie w czasie, który człowiekowi zajmuje dni
- "Zbroja kontra miecz" — ta sama technologia służy zarówno atakującym jak i obrońcom
- CSA (Cloud Security Alliance) opisuje Mythos jako przekroczenie "Autonomous Offensive Threshold" — progu, za którym AI może samodzielnie przeprowadzać ofensywne operacje cybernetyczne
- Council on Foreign Relations: Mythos jako "punkt przełomowy" dla AI i globalnego bezpieczeństwa

---

## 7. Źródła

- Anthropic oficjalny blog o Glasswing: https://www.anthropic.com/glasswing
- red.anthropic.com (techniczne szczegóły Mythos): https://red.anthropic.com/2026/mythos-preview/
- TechTarget — nowe zasady cyberbezpieczeństwa: https://www.techtarget.com/searchenterpriseai/news/366642478/Claude-Mythos-Preview-and-the-new-rules-of-cybersecurity
- InfoQ: https://www.infoq.com/news/2026/04/anthropic-claude-mythos/
- Built In: https://builtin.com/articles/anthropic-claude-mythos
- The Hacker News — tysiące zero-day: https://thehackernews.com/2026/04/anthropics-claude-mythos-finds.html
- Help Net Security — techniczne szczegóły: https://www.helpnetsecurity.com/2026/04/08/anthropic-claude-mythos-preview-identify-vulnerabilities/
- UK AISI — niezależna ocena: https://www.aisi.gov.uk/blog/our-evaluation-of-claude-mythos-previews-cyber-capabilities
- Fortune — ograniczony dostęp dla firm: https://fortune.com/2026/04/07/anthropic-claude-mythos-model-project-glasswing-cybersecurity/
- Linux Foundation — Glasswing i open source: https://www.linuxfoundation.org/blog/project-glasswing-gives-maintainers-advanced-ai-to-secure-open-source
- The Register — Glasswing i open source: https://www.theregister.com/2026/04/10/project_glasswing/
- Time — "too dangerous to release": https://time.com/article/2026/04/24/claude-mythos-chatgpt-rosalind-release-dangerous/
- The Decoder — GPT-2 vs Mythos: https://the-decoder.com/from-gpt-2-to-claude-mythos-the-return-of-ai-models-deemed-too-dangerous-to-release/
- NBC News — dlaczego Anthropic nie wypuszcza Mythos: https://www.nbcnews.com/tech/security/anthropic-project-glasswing-mythos-preview-claude-gets-limited-release-rcna267234
- CFR — punkt przełomowy dla AI i bezpieczeństwa: https://www.cfr.org/articles/six-reasons-claude-mythos-is-an-inflection-point-for-ai-and-global-security
- CSA Lab Space — Autonomous Offensive Threshold: https://labs.cloudsecurityalliance.org/research/csa-research-note-claude-mythos-autonomous-offensive-thresho/
- Bain & Company — wake-up call dla cybersec: https://www.bain.com/insights/claude-mythos-and-ai-cybersecurity-wake-up-call/
- SonnetCode — analiza decyzji ASL-4: https://www.sonnetcode.com/blog/anthropic-mythos-asl-4-withheld
