# Newsy technologiczne — 31 maja 2026

---

## 1. Claude Opus 4.8 wjeżdża z Effort Controls i Dynamic Workflows w Claude Code

**Źródło:** Anthropic blog (2026-05-28), Fortune (2026-05-29), gHacks (2026-05-30), Axios (2026-05-28)

Anthropic wypuścił Claude Opus 4.8 z globalną dostępnością od **29 maja 2026**. Cena bez zmian wobec 4.7: **$5/$25 za milion tokenów (input/output)**. Model jest **4× rzadziej** pomija błędy we własnym kodzie niż poprzednik, scoruje **84% na Online-Mind2Web** i jako pierwszy przekroczył 10% na Legal Agent Benchmark "all-pass".

Nowe na claude.ai i Cowork: suwak **Effort Controls** — wybór low/medium/high/extra/max kontroluje, ile tokenów Claude zużyje na odpowiedź. W Claude Code pojawia się **Dynamic Workflows** w research preview (Enterprise/Team/Max) — jeden agent planuje zadanie, fanuje się na **setki równoległych sub-agentów**, weryfikuje wyniki i raportuje. Kontekst **1M tokenów** jest teraz domyślny. Fast mode dla Opus 4.8 jest **3× tańszy** niż dla poprzednich modeli, przy 2,5× prędkości.

> **Potencjał contentowy:** wysoki — dev-tools wars, konkretne benchmarki, ulubione narzędzie devów dostaje "dynamic workflows" jako odpowiedź na Antigravity 2.0.

---

## 2. Anthropic za 965 mld dolarów. Mythos znajduje "tysiące zero-dayów"

**Źródło:** Fortune (2026-05-29), Anthropic Series H blog (2026-05-28), Bloomberg (2026-05-28), CNBC (2026-05-28)

Anthropic ogłosił runda **Series H: $65 miliardów przy post-money $965 mld** — to **przeskoczenie OpenAI** (wycena $852 mld) i **najwyższa wycena prywatnej spółki AI w historii**. Annualized run-rate revenue: **$47 mld** (z $10 mld na koniec 2025). Lead investors: Altimeter, Dragoneer, Greenoaks, Sequoia.

Razem z rundą Anthropic potwierdził: model klasy **"Mythos"** ma trafić do wszystkich klientów **"w nadchodzących tygodniach"**. Mythos już teraz, w preview "Project Glasswing", działa u wybranych firm cyber: na USAMO 2026 robi **97,6%** (vs. 42,3% dla Opus 4.6, **+55 punktów procentowych**), znajduje **"tysiące zero-day vulnerabilities"** w realnym oprogramowaniu i potrafi je łańcuchowo łączyć w ataki. Dlatego rollout opóźniony — Anthropic czeka na safeguardy.

> **Potencjał contentowy:** wysoki — drama wycenowa + cyber-security thriller. "AI od Anthropic znalazł tysiące dziur w prawdziwym sofcie" to gotowy hook.

---

## 3. OpenAI Codex steruje Windowsem — z poziomu telefonu w ChatGPT

**Źródło:** OpenAI Codex changelog (2026-05-29), Neowin (2026-05-29), Thurrott (2026-05-29), Windows News (2026-05-29)

Codex 26.527, wydany **29 maja 2026**, dodaje **Computer Use na Windows**. Codex widzi pulpit, klika, pisze i przejmuje fokus, żeby testować apki na żywo — autonomicznie. Działa **na aktywnym pulpicie** (nie w tle), więc kursor będzie się ruszał sam.

Druga połowa update'u: **remote continuation z telefonu**. Startujesz pracę na Windowsie, a w ChatGPT na iOS/Android (lub Codex na Macu) sprawdzasz progress, dajesz follow-upy, akceptujesz akcje, oglądasz diffy, terminal output i screenshoty — bez podchodzenia do biurka. Codex w ChatGPT mobile rolluje się **na wszystkie plany, włącznie z Free i Go**. Nowe **Codex Profiles** pokazują usage i token activity. **Computer Use na Windows niedostępne w EEA, UK i Szwajcarii** na starcie.

> **Potencjał contentowy:** wysoki — "telefon jako kierownica do Twojego PC" + agent-wars vs. Antigravity/Claude Code = klikalne dla devów.

---

## 4. Firma spaliła 500 milionów dolarów na Claude w 30 dni — bo zapomnieli ustawić limitów

**Źródło:** Axios (2026-05-28), Tech Startups (2026-05-28), BusinessToday (2026-05-29), Yahoo Finance (2026-05-29)

Konsultant AI ujawnił Axios: jeden z enterprise klientów Anthropica **przepalił $500 mln na Claude w ciągu jednego miesiąca**. Powód: dali pracownikom **nieograniczony dostęp** — bez spending caps, bez usage limits, bez real-time dashboardów.

Pracownicy ruszyli na **agentic workflows** zamiast zwykłych promptów. Różnica: agent działa w pętli ciągłej i konsumuje **do 1000× więcej tokenów** niż jeden chatbot query. **Microsoft niedawno anulował większość wewnętrznych licencji Claude Code** — według AI Weekly to "najwyraźniejsze cofnięcie się w wydatkach AI w 2026". **Uber wypalił cały budżet AI na 2026 już do kwietnia**, po szerokim wdrożeniu AI-coding tools.

> **Potencjał contentowy:** wysoki — pół miliarda dolarów wypłukane przypadkiem, idealny hook + szersza historia o enterprise AI bubble.

---

## 5. Samsung wysyła próbki HBM4E. 3,6 TB/s, sześć miesięcy przed SK Hynix

**Źródło:** Samsung / Seoul Economic Daily (2026-05-29), TechTimes (2026-05-30), Sammobile (2026-05-29), Korea Herald (2026-05-29), Seeking Alpha (2026-05-29)

Samsung **29 maja 2026** wysłał **pierwsze próbki HBM4E 12-warstwowego** do Nvidii, AMD i Google — jako **pierwsza firma na świecie**. Specyfikacja: **3,6 TB/s przepustowości na stack** (+20% vs. HBM4), pin speed **14 Gbps** z drogą do 16 Gbps, pojemność **48 GB na stack** (+30%).

Samsung wyprzedził SK Hynix o **co najmniej 6 miesięcy** — to znaczy, że następna generacja akceleratorów Nvidii/AMD prawdopodobnie pojedzie na pamięci Samsunga. Mass production ma być zsynchronizowana z timeline klientów (czyli z premierami nowych GPU). W planach warianty **32 GB i 64 GB**. Akcje Samsunga skoczyły po ogłoszeniu.

> **Potencjał contentowy:** średni — niche dla hardware enthusiasts, ale "Samsung wyprzedził konkurencję o pół roku w wyścigu o AI" da się sprzedać.

---

## 6. Microsoft + Nvidia teasują "nową erę PC". Dell XPS z ARM-em Nvidii leci jutro

**Źródło:** Windows Central (2026-05-29), Tom's Hardware (2026-05-29), VideoCardz (2026-05-30), TechTimes (2026-05-30)

**29 maja 2026** Microsoft i Nvidia opublikowały bliźniacze posty na X z hasłem **"a new era of PC"** i współrzędnymi **25.0528 / 121.5990** — to dokładnie Taipei Music Center, gdzie odbywa się Computex. To pierwszy **wspólny tease** w historii dotyczący chipa **N1X** — pierwszego procesora Nvidii dla laptopów konsumenckich.

Specyfikacja przeciekła: **20 rdzeni ARM + 6144 CUDA cores (Blackwell)**, **RTX 5070-class graphics** w laptopie. Dell ma **embargowane ogłoszenie XPS z N1X na 31 maja** (czyli dziś), keynote Jensena Huanga z oficjalnym reveal **1 czerwca 11:00 Taipei time**. Lenovo szykuje **Legion 7 15N1X11** (245W zasilacz), IdeaPad Slim 5, Yoga Pro 7, Yoga 9 2-in-1. Asus i MSI też w grze. Pierwsze Windows ARM laptopy z pełnym stackiem CUDA.

> **Potencjał contentowy:** wysoki — "Nvidia robi swoje pierwsze CPU, do laptopów" + drama tease + "RTX-y w ARM-ie" = clickbait i jeszcze prawdziwy.

---
