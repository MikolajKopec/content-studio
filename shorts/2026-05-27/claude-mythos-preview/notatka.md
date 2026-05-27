# Anthropic wypuszcza preview Claude Mythos — model znajdujący zero-daye

**Data:** 2026-05-27
**Temat:** Anthropic odsłania Claude Mythos — model, który w miesiąc znalazł ponad **10 000** krytycznych podatności i samodzielnie zbudował **181** działających exploitów na Firefoxie, a publicznie dostępny w pełni jeszcze nie jest.

---

## Kluczowe fakty i liczby

- Anthropic potwierdził istnienie **Claude Mythos** publikacją na red.anthropic.com **26 maja 2026** — string `claude-mythos-1-preview` przeciekł w UI Claude Code już **24-25 maja**, zanim firma oficjalnie wcisnęła przełącznik.
- Mythos w ramach **Project Glasswing** oznaczył **23 019** potencjalnych podatności w **1 000+** projektach open-source, z czego **6 202** sklasyfikowano jako high/critical-severity.
- Wśród **1 752** wyników zweryfikowanych przez niezależne firmy security: **90,6%** to prawdziwe positives, a **62,4%** potwierdzono jako high/critical (**1 094** błędów).
- Partnerzy Glasswing (Cloudflare, Mozilla, Microsoft, Oracle, Cisco, Palo Alto Networks, JPMorganChase, AWS, Apple, NVIDIA, Linux Foundation, CrowdStrike — łącznie **~50 firm**) znaleźli **10 000+** high/critical bugów w **pierwszym miesiącu** — tempo wykrywania wzrosło u nich **ponad 10×**.
- Cloudflare zgłosił **2 000** błędów (w tym **400** krytycznych), Mozilla znalazła **271** zero-dayów w Firefox 150 (vs. znacznie mniej w Firefox 148 testowanym Opus 4.6).
- Mythos zbudował **181** działających exploitów na silniku JavaScript Firefoksa — Opus 4.6 osiągnął w tym samym benchmarku **2 z kilkuset prób**.
- Cena znalezienia podatności w OpenBSD: **<50 USD** za sukces, **~20 000 USD** za 1 000 runów; pełny exploit chain w przypadku n-day kosztuje **1 000–2 000 USD**.
- API Mythosa kosztuje **25/125 USD** za milion tokenów input/output (Anthropic API, AWS Bedrock, Vertex AI, Microsoft Foundry) — ale dostęp ograniczony do zweryfikowanych partnerów.
- W banku partnerskim Mythos pomógł zatrzymać przelew oszukańczy na **1,5 mln USD**.

## Co odróżnia Mythosa od Opus 4.7 (i 4.6)

- **SWE-bench Verified**: Mythos **93,9%** vs. Opus 4.6 **80,8%**.
- **SWE-bench Pro**: Mythos **77,8%** vs. Opus 4.6 **53,4%**.
- **Terminal-Bench 2.0**: Mythos **82,0%** vs. Opus 4.6 **65,4%**.
- **CyberGym** (reprodukcja podatności): Mythos **83,1%** vs. Opus 4.6 **66,6%**.
- **GPQA Diamond** (reasoning): Mythos **94,6%** vs. Opus 4.6 **91,3%**.
- Opus 4.6 miał **prawie 0%** skuteczności w autonomicznym pisaniu exploitów — Anthropic sam pisze, że Mythos to "different league".
- Mythos działa autonomicznie: łączy **2-4 oddzielne podatności** w pełne łańcuchy privilege escalation na jądrze Linuksa.

## Project Glasswing — wyniki bezpieczeństwa

- **27-letni** bug w OpenBSD (SACK TCP) — system znany głównie z bezpieczeństwa.
- **17-letni** RCE w FreeBSD NFS (CVE-2026-4747) — root jednym ruchem.
- **16-letnia** podatność w FFmpeg (kodek H.264), pominięta mimo **5 milionów** uruchomień fuzzingu.
- CVE-2026-5194 w wolfSSL (CVSS **9,3**) — pozwala podrabiać certyfikaty kryptograficzne.
- W OSS-Fuzz: **595** crashy w tierach 1-2 i pełna kontrola flow na **10** zupełnie aktualnie połatanych targetach.
- **530** high/critical bugów zgłoszonych już maintainerom; **75** połatanych, **65** z publicznymi advisory.
- **~99%** wszystkich znalezisk wciąż nie jest połatanych w momencie publikacji.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| Kwiecień 2026 | Wewnętrzny start Project Glasswing, Mythos Preview dostępny dla partnerów |
| 24-25 maja 2026 | `claude-mythos-1-preview` mignął w UI Claude Code |
| 26 maja 2026 | Oficjalna publikacja red.anthropic.com + update Glasswing |
| Q4 2026 – Q2 2027 | Anthropic celuje w "general release" (6-12 mies.), gdy dojrzeją safeguardy |

## Implikacje dla developerów i bezpieczeństwa

- **Bottleneck przesunął się** — Anthropic dosłownie pisze: *"Postęp w bezpieczeństwie software'u był ograniczony tym, jak szybko znajdujemy podatności. Teraz jest ograniczony tym, jak szybko je weryfikujemy, ujawniamy i patchujemy."*
- Palo Alto Networks wypuściło **5× więcej** patchy niż zwykle; niektórzy maintainerzy open-source proszą Anthropic o spowolnienie disclosure.
- Anthropic uruchomił **Claude Security** (public beta) — w 3 tygodnie naprawiła **2 100+** podatności u klientów enterprise.
- Cyber Verification Program pozwala zweryfikowanym security researcherom korzystać z modelu bez standardowych safeguardów.
- **Forrester** ostrzega: ten sam model w rękach atakujących to apokalipsa — Anthropic sam przyznaje, że *"żadna firma, włącznie z nami, nie ma jeszcze safeguardów wystarczająco silnych, by zapobiec misuse"*.
- UK AI Security Institute: Mythos to **pierwszy model**, który ukończył oba ich cyber-ranges end-to-end. XBOW nazwał to "absolutely unprecedented precision".

---

## Potencjalne kąty narracyjne do shorta

**Hook 1:** "Anthropic właśnie potwierdził model, który w miesiąc znalazł **10 tysięcy** krytycznych podatności — i celowo trzymał go w bunkrze."

**Hook 2:** "Model Claude Mythos znalazł **27-letni** bug w OpenBSD — systemie, który całe życie reklamuje się jako najbezpieczniejszy na świecie."

**Hook 3:** "Opus 4.6 pisał exploity z **2 sukcesami na kilkaset prób**. Mythos? **181**. To nie jest update, to inna liga."

**Hook 4:** "Mythos znajduje zero-day za mniej niż **50 dolarów**. Pełny exploit chain za **1000 USD**. Pomyśl, co to znaczy, gdy ktoś ukradnie ten model."

**Hook 5:** "Mozilla testowała Firefox 148 z Opus 4.6 — kilka błędów. Firefox 150 z Mythosem? **271 zero-dayów**. W jednej przeglądarce."

**Hook 6:** "String `claude-mythos-1-preview` mignął w Claude Code dwa dni przed oficjalnym ogłoszeniem. Wpadka czy celowy leak?"

**Hook 7:** "Anthropic sam pisze: **'żadna firma, włącznie z nami, nie ma safeguardów wystarczająco mocnych, by zatrzymać misuse tego modelu'**. I właśnie go wypuszczają."

---

## Źródła

- [Claude Mythos Preview – red.anthropic.com](https://red.anthropic.com/2026/mythos-preview/)
- [Project Glasswing: An initial update – Anthropic](https://www.anthropic.com/research/glasswing-initial-update)
- [Project Glasswing – Anthropic](https://www.anthropic.com/glasswing)
- [Anthropic: Claude Mythos identified 10,000+ software flaws – Help Net Security](https://www.helpnetsecurity.com/2026/05/26/anthropic-project-glasswing-update/)
- [Anthropic says Mythos has already found more than 10,000 vulnerabilities – Engadget](https://www.engadget.com/2180028/anthropic-claude-mythos-preview-project-glasswing-update/)
- [Claude Mythos Preview Identifies Thousands of 0-Day Vulnerabilities – Cyberpress](https://cyberpress.org/claude-mythos-preview-0-day/)
- [Project Glasswing: Anthropic says Claude found 10,000 critical software flaws in a month – Interesting Engineering](https://interestingengineering.com/ai-robotics/anthropic-project-glasswing-10000-software-vulnerabilities)
- [Anthropic prepares Mythos 1 for Claude Code and Claude Security – TestingCatalog](https://www.testingcatalog.com/anthropic-prepares-mythos-1-for-claude-code-and-claude-security/)
- [Claude Mythos: What Does Anthropic's New Model Mean for the Future of Cybersecurity? – CETaS / Alan Turing Institute](https://cetas.turing.ac.uk/publications/claude-mythos-future-cybersecurity)
- [Project Glasswing: The 10 Consequences Nobody's Writing About Yet – Forrester](https://www.forrester.com/blogs/project-glasswing-the-10-consequences-nobodys-writing-about-yet/)
