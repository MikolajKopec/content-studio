# Anthropic za 965 mld dolarów. Mythos znajduje "tysiące zero-dayów"

**Data:** 2026-05-31
**Temat:** Anthropic zamknął rundę Series H na **65 mld USD** przy wycenie **965 mld USD** post-money, przeskakując OpenAI; równolegle ujawnił, że Mythos w preview "Project Glasswing" znalazł **ponad 10 000 zero-dayów** w realnym oprogramowaniu.

---

## Kluczowe fakty i liczby

- **Series H:** **65 mld USD** świeżego kapitału przy wycenie **965 mld USD** post-money — to **2,54x** od Series G z lutego 2026 (wtedy **380 mld USD**).
- **Przebicie OpenAI:** OpenAI w marcu 2026 zamknął rundę **122 mld USD** przy wycenie **852 mld USD**. Anthropic jest dziś **o 113 mld USD wyżej** i staje się najdrożej wycenianą prywatną spółką AI w historii.
- **Run-rate revenue:** **47 mld USD** ARR na maj 2026, w górę z **30 mld USD** "early 2026" i **10 mld USD** rocznego przychodu w 2025. Wzrost **~4,7x rok do roku**.
- **Lead investors:** Altimeter, Dragoneer, Greenoaks, Sequoia (co-leady). Co-leady drugiej linii: Capital Group, Coatue, D1, GIC, ICONIQ, XN. W rundzie także **15 mld USD** wcześniej zakontraktowanych zobowiązań od hyperscalerów, w tym **5 mld USD** od Amazonu oraz partnerzy infrastrukturalni Micron, Samsung, SK hynix.
- **Mythos na USAMO 2026:** **97,6%** vs **42,3%** dla Opus 4.6 — skok **+55,3 punktu procentowego** i **2,4 pp powyżej GPT-5.4** (95,2%).
- **Project Glasswing:** Mythos Preview znalazł **ponad 10 000** zero-dayów w realnym kodzie. Konkretne przykłady: **27-letni bug w OpenBSD**, **16-letni bug w FFmpeg**, **CVE-2026-5194** w wolfSSL pozwalający fałszować certyfikaty. Cloudflare zgłosił **2 000 bugów**, Mozilla **271 luk w Firefoxie**.
- **Łańcuchowanie exploitów:** Na benchmarku silnika JS Firefoxa Opus 4.6 stworzył **2 działające exploity** w setkach prób; Mythos zrobił **181** działających exploitów. W jednym przypadku Mythos połączył **4 luki** w łańcuch ucieczki z sandboxa przeglądarki (JIT heap spray).
- **Patching gap:** mimo **1 596** zweryfikowanych zgłoszeń do maintainerów, załatano **97 luk** i wydano **88 advisory**. **Ponad 99%** znalezisk Mythosa pozostaje niezałatane.
- **Rollout:** Anthropic celuje w "Mythos-class models for all our customers in the coming weeks". Warunek: nowe safeguardy w nadchodzącym Opus, plus **Cyber Verification Program** dla legalnych security researcherów.
- **Cennik preview:** **25 USD / 125 USD** za milion tokenów input/output (gated preview przez Anthropic API, Bedrock, Vertex AI, Foundry).
- **Commitment Glasswing:** Anthropic przeznacza do **100 mln USD** w credits użytkowych i **4 mln USD** w darowiznach dla open-source security.

## Wycena i inwestorzy

Runda zamyka cykl: Series G (luty 2026) — **380 mld USD**; Series H (maj 2026) — **965 mld USD**. To prawdopodobnie ostatnia prywatna runda przed IPO (TechCrunch, WSJ). WSJ donosi, że Anthropic oczekuje **130% wzrostu przychodów** prowadzącego do pierwszego operating profit.

**Founding partners Glasswing (11 organizacji):** AWS, Anthropic, Apple, Broadcom, Cisco, CrowdStrike, Google, JPMorganChase, Linux Foundation, Microsoft, NVIDIA, Palo Alto Networks. Dostęp rozszerzony na **40+** kolejnych organizacji utrzymujących krytyczną infrastrukturę.

## Możliwości Mythos / co znajduje

- Autonomicznie produkuje **działający RCE** bez nadzoru człowieka — zostawiony na noc przez inżynierów bez backgroundu w security, rano oddał gotowy exploit.
- Łączy 4 luki w jeden łańcuch ataku na browser sandbox.
- Znajduje błędy, które **dekady** przetrwały code review i automated testing (OpenBSD 27 lat, FFmpeg 16 lat).
- Palo Alto Networks: Mythos znajduje "complex vulnerabilities that prior-generation models missed entirely".

## Implikacje

- **Cyber:** asymetria attacker/defender przesuwa się — defender z Mythosem może audytować legacy code w tempie, którego nie da się dogonić ręcznie; equally attacker z porównywalnym modelem dostaje arsenał zero-dayów. Stąd safeguardy.
- **Biznes/IPO:** **47 mld USD** ARR przy wycenie **965 mld USD** daje multiple **~20,5x ARR** — agresywnie, ale niżej niż OpenAI (**~26x** przy **33 mld USD** ARR i **852 mld USD** wyceny).
- **Open-source overload:** **99%** znalezisk niezałatane, **1 596 → 97** patchy. Mythos już teraz przerasta capacity społeczności open-source.

---

## Potencjalne kąty narracyjne do shorta

1. **"965 miliardów. Większa niż OpenAI. Większa niż Tesla była rok temu."** — skala wyceny w jednym ciosie.
2. **"Inżynierowie wyszli z biura. Rano AI miało gotowy hack."** — dramatyczne wejście w autonomię Mythosa.
3. **"42% → 97%. Jeden model. Sześć miesięcy."** — przepaść Opus 4.6 vs Mythos na USAMO.
4. **"AI znalazło bug, który przeżył 27 lat code review."** — OpenBSD jako konkret.
5. **"10 000 zero-dayów. 97 załatanych. Reszta krąży."** — patching gap jako dramatyczny cliffhanger.
6. **"Anthropic właśnie zarobił 47 miliardów rocznie. W 2025 było 10."** — krzywa przychodu jako shock.
7. **"Mythos połączył 4 luki w jeden atak. Sam."** — łańcuchowanie exploitów jako horror story.

---

## Źródła
- [Anthropic Series H announcement](https://www.anthropic.com/news/series-h) — primary, lista inwestorów i kwoty
- [Project Glasswing — Anthropic](https://www.anthropic.com/project/glasswing) — primary, partnerzy i wyniki
- [Claude Mythos Preview — red.anthropic.com](https://red.anthropic.com/2026/mythos-preview/) — primary, capabilities i safeguardy
- [Anthropic tops OpenAI as most valuable AI startup — CNBC](https://www.cnbc.com/2026/05/28/anthropic-open-ai-startup-value.html) — porównanie z OpenAI
- [Anthropic raises $65 billion, nears $1T valuation ahead of IPO — TechCrunch](https://techcrunch.com/2026/05/28/anthropic-raises-65-billion-nears-1t-valuation-ahead-of-ipo/) — IPO timeline
- [Anthropic confirms Mythos-class models will roll out — BleepingComputer](https://www.bleepingcomputer.com/news/artificial-intelligence/anthropic-confirms-claude-mythos-class-models-will-roll-out-to-the-public/) — rollout w nadchodzących tygodniach
- [Claude Mythos Preview Uncovers 10,000+ 0-Days — Cybersecurity News](https://cybersecuritynews.com/anthropics-claude-mythos-preview-0-days/) — CVE-2026-5194, Cloudflare/Mozilla numbery
- [Anthropic's run-rate revenue hits $47 billion — Simon Willison](https://simonwillison.net/2026/May/29/anthropic/) — ARR weryfikacja
- [Anthropic Mythos identified 10,000+ software flaws — Help Net Security](https://www.helpnetsecurity.com/2026/05/26/anthropic-project-glasswing-update/) — patching gap (1 596 → 97)
- [Claude Mythos Benchmarks Explained — NxCode](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026) — USAMO 97,6%
