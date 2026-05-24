# Anthropic Project Glasswing — AI znalazł 10 000 krytycznych dziur w oprogramowaniu

**Data:** 2026-05-24
**Temat:** Anthropic ogłosił, że jego niepubliczny model Claude Mythos Preview w ramach Project Glasswing w ciągu zaledwie miesiąca znalazł **ponad 10 000 podatności o wysokim lub krytycznym poziomie** w najważniejszych systemach świata — od Firefoksa po infrastrukturę Cloudflare.

---

## Kluczowe fakty i liczby

- Anthropic uruchomił **Project Glasswing w kwietniu 2026**, a **22 maja 2026** opublikował pierwszy duży update z wynikami — Claude Mythos Preview pomógł partnerom znaleźć **ponad 10 000 podatności high/critical** w miesiąc.
- **Cloudflare** wykrył wewnętrznie **~2 000 błędów**, z czego **400 high/critical**, przy **mniejszej liczbie false positive** niż przy testach prowadzonych przez ludzi.
- **Mozilla** załatała w **Firefox 150 aż 271 podatności** zidentyfikowanych przez Mythos Preview — dla porównania w poprzednim wydaniu **Firefox 148** załatano tylko **22 błędy security**.
- Niektóre z bugów znalezionych przez Mythos w Firefoxie czekały na odkrycie **ponad 15 lat** (od 2011 roku), mimo działania klasycznych skanerów.
- Trzy publicznie ujawnione i załatane przykłady z Glasswing: **27-letnia luka w OpenBSD** umożliwiająca zdalny crash, **16-letnia luka w FFmpeg**, której nie wykryły fuzzery przy **5 milionach** testów, oraz **chain w jądrze Linuksa** pozwalający na privilege escalation.
- Mythos Preview bije Claude Opus 4.6 na benchmarkach: **CyberGym 83,1% vs 66,6%**, **SWE-bench Verified 93,9% vs 80,8%**, **Terminal-Bench 2.0 82% vs 65,4%**, **SWE-bench Pro 77,8% vs 53,4%**.
- W programie uczestniczy **ok. 50 partnerów** (12 oficjalnych launch partners): **Amazon Web Services, Apple, Broadcom, Cisco, CrowdStrike, Google, JPMorganChase, Linux Foundation, Microsoft, NVIDIA, Palo Alto Networks** oraz Cloudflare i Mozilla.
- Anthropic przeznaczył **do 100 mln USD** w kredytach na model dla uczestników Glasswing, **2,5 mln USD** dla Alpha-Omega/OpenSSF i **1,5 mln USD** dla Apache Software Foundation.
- W skanie **1 000+ projektów open-source** Mythos znalazł szacunkowo **6 202 high/critical** błędów na **23 019** wszystkich findings; firmy weryfikujące **1 752 zgłoszenia** potwierdziły **90,6%** jako prawdziwe podatności, a **62,4%** jako high/critical.
- Niektórzy partnerzy raportują **10x wzrost wykrywalności** błędów w stosunku do poprzedniej generacji modeli.

## Czym jest Mythos i dlaczego nie zobaczymy go publicznie

**Claude Mythos Preview** to wewnętrzny, niepubliczny model Anthropic wyspecjalizowany w cyberbezpieczeństwie i analizie kodu. Według własnych benchmarków przewyższa wszystkich poza najlepszymi ludzkimi pentesterami w wyszukiwaniu i eksploitowaniu podatności. Anthropic deklaruje, że **prawie wszystkie znalezione bugi Mythos odkrył w pełni autonomicznie**, bez ludzkiego prowadzenia.

Anthropic wprost mówi: **"We do not plan to make Claude Mythos Preview generally available"** — model jest zbyt potężny ofensywnie. Zamiast tego firma chce wbudować "Mythos-class" zdolności w przyszłe publiczne wersje Claude Opus z dodatkowymi safeguards. Docelowo program ma zostać rozszerzony o **rządy USA i sojuszników**.

## Wyniki u partnerów i porównanie z tradycyjnym pentestingiem

- **Cloudflare:** ~2 000 bugów, 400 high/critical, mniej false positive niż przy ludziach.
- **Mozilla / Firefox 150:** 271 podatności — **12x więcej** niż w poprzednim cyklu. Bobby Holley (Firefox Security Lead) komentuje: *"Defenders finally have a chance to win, decisively"* oraz *"So far we've found no category or complexity of vulnerability that humans can find that this model can't."*
- **OpenBSD, FFmpeg, Linux kernel:** dekady starych dziur znalezione w godziny.
- W jednej ze spraw Glasswing udało się **zapobiec wyłudzeniu 1,5 mln USD** przez przejęty wire transfer.

Asymetria kosztu: tradycyjny audyt komercyjnego pentestera to **tygodnie pracy i dziesiątki tysięcy dolarów** za projekt — Mythos przeskanował **1 000+ projektów open-source w miesiąc**.

## Reakcje branży i sceptycy

- **Mozilla sama studzi entuzjazm:** Holley przyznaje, że *"haven't seen any bugs that couldn't have been found by an elite human researcher"* — Mythos nie odkrywa nowych kategorii podatności, tylko **automatyzuje to, co potrafi elita** ludzkich badaczy.
- **The Register** zwraca uwagę, że narzędzia AI do bug-huntingu sprawiają, iż listy security w jądrze Linuksa stają się *"almost entirely unmanageable"* z powodu zalewu zgłoszeń.
- **Picus Security:** *"vulnerability discovery has decoupled from patching capacity"* — według ich analiz **mniej niż 1% podatności znalezionych przez Mythos zostało załatanych**. Sam Anthropic w update mówi, że bottleneckiem nie jest już *finding*, tylko weryfikacja, koordynacja disclosure i deployment patchy.
- **Constellation Research:** Glasswing to *"good for both the industry and great marketing for Claude"* — niektórzy łączą go z planowanym IPO Anthropic.
- **Speed asymmetry:** *"defenders must work at calendar speed while attacks happen at machine speed"* — przy autonomicznych atakach kompromitujących **2 500 organizacji w 106 krajach w mniej niż godzinę**, defensywne AI musi nadgonić ofensywne.
- Pojawiły się też doniesienia o niezależnych badaczach, którzy mieli już wykorzystać capability Mythos do **macOS exploit**.

---

## Potencjalne kąty narracyjne do shorta

1. **"AI Anthropic znalazł **10 000 dziur** w miesiąc. Pentesterzy potrzebowali na to dekad."**
2. **"Mozilla załatała **271 błędów w Firefoxie** dzięki AI. Niektóre czekały **15 lat**."**
3. **"Cloudflare puścił AI na swój kod. Znalazł **2 000 bugów** — z mniej fałszywymi alarmami niż ludzie."**
4. **"Anthropic ma model tak groźny, że **NIE WYDA** go publicznie. Nazywa się Mythos."**
5. **"AI znalazł lukę w **OpenBSD sprzed 27 lat** i w **FFmpeg sprzed 16 lat** — fuzzery testowały to 5 mln razy i nic."**
6. **"**Mniej niż 1%** dziur znalezionych przez AI Anthropic zostało załatanych. To większy problem niż brzmi."**
7. **"Zawód pentestera kończy się w 2026? Mythos bije ludzi na **10x szybkości** wykrywania."**

---

## Źródła

- [Project Glasswing — Anthropic (oficjalna strona)](https://www.anthropic.com/glasswing)
- [Anthropic's Project Glasswing Finds 'More Than 10,000' Critical Bugs — Benzinga](https://www.benzinga.com/markets/private-markets/26/05/52759147/anthropics-project-glasswing-finds-more-than-10000-critical-bugs-expands-to-additional-pa)
- [Anthropic says Mythos has already found more than 10,000 vulnerabilities — Engadget](https://www.engadget.com/2180028/anthropic-claude-mythos-preview-project-glasswing-update/)
- [The zero-days are numbered — Mozilla Blog (Bobby Holley)](https://blog.mozilla.org/en/privacy-security/ai-security-zero-day-vulnerabilities/)
- [Mythos found 271 Firefox flaws — none a human couldn't spot — The Register](https://www.theregister.com/2026/04/22/mozilla_firefox_mythos_future_defenders/)
- [Claude Mythos Finds 271 Firefox Vulnerabilities — SecurityWeek](https://www.securityweek.com/claude-mythos-finds-271-firefox-vulnerabilities/)
- [What Is Project Glasswing? Anthropic's AI Misuse Research Initiative Explained — Picus Security](https://www.picussecurity.com/resource/blog/anthropics-project-glasswing-paradox)
- [Anthropic says Claude found 10,000 critical software flaws in a month — Interesting Engineering](https://interestingengineering.com/ai-robotics/anthropic-project-glasswing-10000-software-vulnerabilities)
