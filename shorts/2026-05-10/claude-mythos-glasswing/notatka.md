# Claude Mythos / Project Glasswing — notatka researchu

Data: 2026-05-10  
Temat: Anthropic uruchamia Project Glasswing z Claude Mythos Preview — AI autonomicznie szuka luk w oprogramowaniu

---

## Co wiadomo na pewno

### Podstawowe fakty
- **Claude Mythos Preview** — nowy, niepubliczny model frontierowy Anthropic (ogłoszony 7 kwietnia 2026)
- Model jest **najlepszy z kiedykolwiek opublikowanych przez Anthropic** w zadaniach kodowania i agentic reasoning
- Jego zdolności cybersecurity to **bezpośredni produkt uboczny** ogólnych zdolności kodowania — nie jest to model specjalizowany
- Anthropic **nie planuje publicznego udostępnienia** Mythos Preview ze względu na potencjał ofensywny

### Project Glasswing — struktura
- Inicjatywa do obrony infrastruktury krytycznej przed exploitami AI
- **12 partnerów launch**: Amazon Web Services, Anthropic, Apple, Broadcom, Cisco, CrowdStrike, Google, JPMorganChase, Linux Foundation, Microsoft, NVIDIA, Palo Alto Networks
- **Ponad 40 dodatkowych organizacji** z dostępem do modelu (łącznie ok. 48 podmiotów)
- Anthropic przekazuje **$100M w kredytach API** dla uczestników
- Dotacje: **$2.5M dla Alpha-Omega i OpenSSF** (przez Linux Foundation) + **$1.5M dla Apache Software Foundation**

### Odkryte luki — skala i konkrety
- **"Tysiące" zero-day vulnerabilities** w każdym głównym systemie operacyjnym i przeglądarce — to oficjalne twierdzenie Anthropic (patrz: kontrowersje poniżej)
- Wszystkie luki w głównych OS i przeglądarkach zostały **zgłoszone i załatane** przez maintainerów przed ogłoszeniem
- Zakres: każdy główny OS, każda główna przeglądarka, plus szereg innych krytycznych projektów open-source

### Najgłośniejsze odkrycia (zweryfikowane technicznie)

**CVE-2026-4747 — FreeBSD NFS, 17 lat** ★ (najgłośniejszy case)
- Stack overflow w ścieżce autentykacji RPCSEC_GSS serwera NFS FreeBSD
- Błąd napisany w **2009 roku**, obecny przez 17 lat
- Mythos **autonomicznie** znalazł, opracował exploit i udowodnił wykonalność ataku
- Exploit: 20-gadżetowy ROP chain rozłożony na 6 sekwencyjnych pakietów RPC (żeby obejść limit 200 bajtów)
- Efekt: nieunauthentykowany atakujący z dowolnego miejsca w internecie **uzyskuje root access** — dopisując swój klucz SSH do `/root/.ssh/authorized_keys`
- Dotyczy: serwery plików, NAS, firewalle bazujące na FreeBSD (pfSense, OPNsense, TrueNAS)

**27-letni bug w OpenBSD** ★★ (najstarszy znaleziony)
- Implementacja TCP SACK — signed integer overflow → null-pointer dereference
- Umożliwia **zdalne crashowanie serwera** (denial-of-service)
- OpenBSD to jeden z najbardziej zahartowanych systemów na świecie pod kątem bezpieczeństwa

**FFmpeg — 16 lat**
- H.264 decoder: mismatch między 32-bitowym licznikiem slice'ów a 16-bitowymi wpisami tabeli
- Przy > 65,536 slice'ów w jednej klatce: heap out-of-bounds write
- Przeszedł przez miliony testów automatycznych (5 milionów hits w OSS-Fuzz) bez wykrycia

**Łańcuchy exploitów w przeglądarkach**
- Mythos napisał exploit na Firefox 147 łączący **4 podatności** w jeden atak
- Obejmował: JIT heap spray + ucieczkę z renderer sandbox + ucieczkę z OS sandbox
- Poprzednia wersja (Opus 4.6) znalazła 2 exploity z setek prób; Mythos: **181 działających exploitów** + 29 przypadków kontroli rejestru

**Linux kernel**
- Łańcuchy 2-4 podatności umożliwiające eskalację uprawnień od user do root
- Bypass KASLR (kernel randomization)

---

## Kontekst i tło

### AI w cybersecurity — dotychczasowy stan
- Przez lata AI był używany głównie do **triage i skanowania** (pattern matching) — nie do autonomicznego znajdowania i eksploatowania luk
- Tradycyjne narzędzia (fuzzing, static analysis, SAST) świetnie radzą sobie z prostymi błędami, ale zawodzą na złożonych wieloetapowych podatnościach
- Mythos to przeskok jakościowy: model **rozumuje o semantyce kodu** i śledzi przepływ danych przez warstwy abstrakcji

### Dlaczego teraz?
- W 2025 roku odnotowano pierwszy potwierdzony przypadek: chińska group state-sponsored użyła AI agentów do infiltracji ~30 globalnych celów
- Anthropic prywatnie ostrzegło rząd USA, że Mythos zwiększa prawdopodobieństwo **dużoskalowego cyberataku w 2026 roku**
- "Okno" między odkryciem luki a jej exploitacją przez atakujących: z miesięcy skurczyło się do **minut**

### Kontekst biznesowy (ważny dla wiarygodności)
- Ogłoszenie nastąpiło podczas prowadzonej przez Anthropic **rundy finansowania $900B+ i przygotowań do IPO**
- Akcje firm cybersecurity (CrowdStrike, Palo Alto) **spadły 5-11%** po ogłoszeniu — rynek zinterpretował to jako zagrożenie dla ich core business
- Ceny modelu po zakończeniu preview: **$25/mln tokenów input, $125/mln output**

---

## Szczegóły techniczne

### Jak Mythos autonomicznie szuka luk — metodologia
1. Model umieszczany w **izolowanym kontenerze** z kodem źródłowym
2. Rankinguje pliki pod kątem podatności na exploitację (skala 1-5)
3. Priorytetyzuje wysokoryzykowny kod
4. Autonomicznie pisze i testuje exploity
5. Osobny **validation agent** filtruje wyniki i eliminuje false positives

### Benchmarki — skala przeskoku
| Benchmark | Opus 4.6 | Mythos Preview |
|-----------|----------|----------------|
| SWE-bench Verified | 80.8% | **93.9%** |
| SWE-bench Multilingual | 77.8% | **87.3%** |
| CyberGym (vuln reproduction) | 66.6% | **83.1%** |
| Terminal-Bench 2.0 | — | **82.0%** |
| GPQA Diamond | 91.3% | **94.6%** |

**Firefox exploit test (Opus 4.6 vs Mythos):**
- Opus 4.6: 2 exploity z setek prób
- Mythos: **181 działających exploitów** (90x więcej)

**OSS-Fuzz (7,000 entry points):**
- Opus/Sonnet 4.6: tier-5 control flow hijack w 1 przypadku każdy
- Mythos: **10 tier-5** + 595 crashy na tier 1-2

### Koszt operacji
- Pełny scan OpenBSD przez tysiąc uruchomień scaffoldu: **poniżej $20,000**
- Koszt jednego konkretnego znaleziska w hindsight: **poniżej $50**
- Kompleksowy exploit: **poniżej $2,000** (vs. $20,000-120,000 za human pentest)

### Kluczowy przeskok jakościowy
Mythos potrafi:
- Rozumować o **wieloetapowych podatnościach** (gdzie jeden bug jest banalny, ale kombinacja 4 daje RCE)
- Pisać exploity bez ludzkiej pomocy przy orkiestracji
- Działać skutecznie w **"one-shot prompting"** bez złożonych pipeline'ów

---

## Implikacje i reakcje

### Stanowisko Anthropic
- Mythos to pierwszy model który **Anthropic celowo ograniczył** ze względu na potencjał destrukcyjny w cybersecurity
- Podejście: "defenders must move faster than adversaries" — stąd selektywny dostęp dla obrońców
- Plan: wnioski z Glasswing trafią do przyszłych modeli Claude Opus jako zintegrowane safeguards
- Raport publiczny zaplanowany na **lipiec 2026**
- Rozmowy z rządem USA w toku

### Bruce Schneier — główny głos sceptyczny
Schneier opublikował kilka tekstów; jego pozycja jest zniuansowana:

**Co przyznaje:** Modele rzeczywiście robią jakościowy skok — piszą exploity bez ludzkiej orkiestracji, łączą złożone łańcuchy podatności. Postęp jest realny.

**Główna krytyka:** *"This is very much a PR play by Anthropic — and it worked. Lots of reporters breathlessly repeating Anthropic's talking points, without engaging with them critically."*

**Kluczowe zastrzeżenie techniczne:** Firma Aisle była w stanie **zreplikować część odkrytych podatności używając starszych, tańszych, publicznych modeli.** To sugeruje, że Mythos nie jest tak unikalny jak twierdzi Anthropic.

**Strukturalna krytyka:** Anthropic ustanowił precedens, że **prywatna firma może jednostronnie zdecydować**, że jakaś zdolność jest zbyt niebezpieczna dla publiczności, przyznać selektywny dostęp największym graczom w branży i zbudować równoległy system disclosure poza jakąkolwiek demokratyczną odpowiedzialnością.

**Werdykt Schneira:** Project Glasswing to ważny krok, ale *"ultimately a reactive approach — racing to patch holes before attackers adapt."* Fundamentalny problem bezpieczeństwa wymaga zmiany systemowej.

### Inne reakcje eksperckie

**Melissa Bischoping (SANS / Tanium):**
- Kluczowa obserwacja: *"Skok z prawie zerowego sukcesu do ~72% wskazuje, że exploit development nie jest już wąskim gardłem"*
- Problem: polityki organizacyjne i change control nie działają z prędkością AI
- Wąskie gardło przeniosło się z **discovery** na **remediation** — patchowanie

**Gary Marcus (AI skeptyk):**
- *"Model jest stopniowo lepszy od poprzednich, ale nie jest przełomem z gatunku off-the-charts"*
- Charakteryzuje ogłoszenie jako strategic marketing

**Elia Zaitsev (CTO CrowdStrike):**
- *"Okno między odkryciem podatności a jej exploitacją przez atakującego skurczyło się — co zajmowało miesiące, teraz dzieje się w minutach z AI"*

**AISI (UK AI Safety Institute):**
- Przeprowadzili niezależną ewaluację możliwości Mythos w cybersecurity
- Wyniki dostępne publicznie

### Kontrowersja: "Tysiące CVE" vs. rzeczywistość
The Register i CSO Online przeprowadziły dziennikarskie fact-checking:

- Researcher Patrick Garrity (VulnCheck) przeszukał bazę CVE: znalazł tylko **40 potencjalnych CVE** powiązanych z Anthropic
- Bezpośrednio potwierdzony z Glasswing: **1 CVE (CVE-2026-4747)**
- 28 z 40 CVE dotyczy Firefoksa, 9 — biblioteki wolfSSL
- Anthropic **nie ma dedykowanej strony z security advisories**
- Pełny obraz będzie dopiero po raporcie w lipcu 2026
- Możliwe wyjaśnienie: wiele luk jest łatanych bez numerów CVE (szczególnie w projektach open-source przez maintainerów)

### Implikacje dla infrastruktury krytycznej
- Organizacje z FreeBSD (NAS, firewalle, storage): **krytyczna pilność patchowania**
- Użytkownicy pfSense, OPNsense, TrueNAS: sprawdzenie aktualności wersji
- Systemy NFS narażone w sieciach wewnętrznych: segment z dostępem zewnętrznym
- Szpitale, sieci energetyczne, systemy płatności: potencjalne cele drugiego rzędu

### Co to oznacza dla zwykłych użytkowników
- Bezpośrednie ryzyko: **krótkoterminowo niskie** — Mythos jest ograniczony do zaufanych partnerów
- Pośrednie ryzyko: modele o podobnych możliwościach pojawią się wkrótce na otwartym rynku
- Praktyczne działanie: **aktualizuj oprogramowanie natychmiast** — okno między ogłoszeniem patcha a atakiem to już minuty, nie miesiące
- Przeglądarki i OS są teraz patchowane szybciej niż kiedykolwiek

### Porównanie AI vs. ludzcy pentesterzy
| Wymiar | Człowiek | Claude Mythos |
|--------|----------|---------------|
| Koszt pentestu | $20,000-120,000 | <$2,000 za exploit |
| Czas na znalezisko | Dni-tygodnie | Minuty-godziny |
| Pokrycie kodu | Selektywne | Systematyczne |
| Złożone chain exploits | Najlepsi specjaliści | Autonomicznie |
| Kontekst biznesowy | Tak | Ograniczony |
| Odpowiedzialność prawna | Tak | Brak |

---

## Potencjał contentowy — haki i kąty

### Dramatyczne momenty / opening hooks
- "Bug czekał w kodzie serwera przez 17 lat. Miliony automatycznych testów go nie znalazły. AI — w kilka godzin."
- "Anthropic ostrzegło prywatnie rząd USA: prawdopodobieństwo dużego cyberataku wzrosło w 2026."
- "Akcje CrowdStrike i Palo Alto spadły 10% w jeden dzień — bo AI może robić to, za co płacili miliardy dolarów."

### Kąty do eksploracji
1. **"Kto decyduje?"** — Prywatna firma bez demokratycznego nadzoru decyduje, kto ma broń cyfrową, a kto nie. To precedens.
2. **Paradoks Glasswinga** — to samo co może zniszczyć internet, ma go naprawić. Czy to nie jest fundamentalny problem?
3. **Wyścig zbrojeń** — Anthropic dał obrońcom zaliczkę. Ale kiedy podobny model trafi do atakujących? (Schneier: "sooner than we are ready for")
4. **17 lat niewidzialności** — jak 17-letni bug przetrwał miliony automatycznych testów i setki ludzkich przeglądów kodu?
5. **Hype vs. rzeczywistość** — "Tysiące luk" a 1 potwierdzony CVE. Gdzie jest prawda?
6. **Koszt kontra wartość** — exploit za $50 vs. pentest za $50,000. Co to robi z bezpieczeństwem jako branżą?

### Haki komentarzowe (organiczne pytania do widzów)
- "Czy AI szukające luk to dobra rzecz, jeśli tylko mega-korporacje mają do niego dostęp?"
- "Wolisz żeby Anthropic to znalazł pierwszy, czy hackerzy ze Wschodu?"
- "Twój router może być oparty na FreeBSD — sprawdziłeś ostatnio czy jest aktualny?"
- "Czy firma prywatna powinna mieć monopol na cyfrową 'broń'?"

### Potencjalne błędy do uniknięcia przy skrypcie
- Nie mylić FreeBSD (NFS exploit, 17 lat) z OpenBSD (TCP SACK, 27 lat) — to dwa różne bugi
- "Tysiące luk" to twierdzenie Anthropic, nie potwierdzona przez CVE baza — warto to zaznaczyć
- Nie twierdzić, że Mythos jest publicznie dostępny lub że hakerzy już go mają — model jest zamknięty
- Nie mieszać Mythos Preview (ten konkretny model) z ogólnymi możliwościami Claude (publiczne API)

---

## Źródła

- https://www.anthropic.com/glasswing — oficjalna strona Project Glasswing
- https://red.anthropic.com/2026/mythos-preview/ — technical writeup Anthropic o możliwościach Mythos
- https://fortune.com/2026/04/07/anthropic-claude-mythos-model-project-glasswing-cybersecurity/ — Fortune, 7 kwietnia 2026
- https://www.schneier.com/blog/archives/2026/04/on-anthropics-mythos-preview-and-project-glasswing.html — Schneier on Security
- https://www.schneier.com/essays/archives/2026/04/mythos-sets-the-world-on-edge-what-comes-next-may-push-us-beyond.html — esej Schneiera o implikacjach
- https://www.theregister.com/2026/04/15/project_glasswing_cves/ — The Register: fact-check CVE
- https://www.csoonline.com/article/4159617/behind-the-mythos-hype-glasswing-has-just-one-confirmed-cve.html — CSO Online: 1 potwierdzone CVE
- https://www.grandlinux.com/en/blogs/project-glasswing.html — szczegóły CVE-2026-4747 (FreeBSD)
- https://thehackernews.com/2026/04/anthropics-claude-mythos-finds.html — The Hacker News
- https://www.theringer.com/2026/05/06/tech/claude-mythos-anthropic-project-glasswing-cybersecurity-threat-ai — The Ringer: implikacje dla zwykłych użytkowników
- https://www.aisi.gov.uk/blog/our-evaluation-of-claude-mythos-previews-cyber-capabilities — UK AISI niezależna ewaluacja
- https://www.nextgov.com/cybersecurity/2026/04/anthropics-glasswing-initiative-raises-questions-us-cyber-operations/412721/ — Nextgov: implikacje dla operacji cyber USA
- https://www.linuxfoundation.org/blog/project-glasswing-gives-maintainers-advanced-ai-to-secure-open-source — Linux Foundation o Glasswing
- https://www.picussecurity.com/resource/blog/anthropics-project-glasswing-paradox — "Paradoks Glasswinga"
- https://simonwillison.net/2026/Apr/7/project-glasswing/ — Simon Willison o ograniczeniu dostępu
