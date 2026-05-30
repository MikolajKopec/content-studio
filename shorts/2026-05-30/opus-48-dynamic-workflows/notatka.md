# Anthropic wypuszcza Opus 4.8 i Dynamic Workflows — Bun przepisany z Ziga do Rusta w 11 dni

**Data:** 2026-05-30
**Temat:** Anthropic skraca cykl wydań do 41 dni, daje Claude'owi możliwość pisania własnych skryptów orkiestrujących setki subagentów i pokazuje killer-demo: Jarred Sumner przepisuje cały runtime Bun z Ziga do Rusta używając Claude Code w 11 dni.

---

## Kluczowe fakty i liczby

- Claude Opus 4.8 wypuszczony **28 maja 2026** — **zaledwie 41 dni** po Opus 4.7, najkrótszy cykl wydań Anthropic w historii.
- Ceny standardowe **bez zmian** wobec 4.7: **$5/M input tokens**, **$25/M output tokens**. Fast mode (2,5× szybszy) potaniał **3-krotnie** względem poprzedniej generacji ($30/$150 za MTok).
- Dynamic Workflows (research preview): Claude pisze skrypty JS orkiestrujące subagentów, limit **16 równolegle** i **1000 łącznie** na uruchomienie. Wymaga **Claude Code v2.1.154+**, dostępne na planach Max, Team, Enterprise.
- Bun port Zig → Rust: PR #30412 zmergowany **14 maja 2026**, **~750 000 linii** Rusta (raport prasowy; commit zawiera 1 009 257 dodanych linii, 4024 usuniętych w **2188 plikach** rozłożone na **6755 commitów**), **99,8% pass rate** na istniejącym test suite (Linux x64 glibc).
- Od pierwszego commita do merge'a: **11 dni** wg MarkTechPost i Anthropic blog (część źródeł podaje 6 dni licząc od otwarcia PR-a 8 maja do merge'a 14 maja).
- Binarka Buna zmniejszona o **3-8 MB**, ale w nowym kodzie zostało **13 044 bloków `unsafe`** vs **73** w typowym ręcznie pisanym projekcie Rusta porównywalnej wielkości — „safety debt" szybkiej translacji AI.
- Opus 4.8 jako pierwszy model przekroczył **10% na Legal Agent Benchmark** i osiągnął **84% na Online-Mind2Web** (computer use), z poprawami w kodowaniu i agentowych zadaniach.
- Anthropic podaje, że Opus 4.8 jest **~4× rzadziej** pomija błędy w kodzie bez flagowania niż Opus 4.7.
- W GitHub Copilot dostępny od razu na planach **Pro+, Business, Enterprise** z mnożnikiem **15× premium request** do startu Usage Based Billing **1 czerwca 2026**.

## Specyfikacja techniczna Dynamic Workflows

- Claude **dynamicznie planuje** z promptu, dzieli zadanie na subzadania.
- Subagenci pracują **równolegle**, każdy atakuje problem z innego kąta.
- Inne agenty próbują **obalić** ustalenia poprzedników (adversarial loop).
- Iteracja trwa, **aż odpowiedzi się zbiegną** (convergence).
- Działa w CLI, Desktop, rozszerzeniu VS Code; dostępny przez Claude API, Amazon Bedrock, Vertex AI i Microsoft Foundry.

## Oś czasu Bun rewrite

- **2 grudnia 2025**: Anthropic przejmuje Bun.
- **~3 maja 2026**: pierwszy commit na branchu `claude/phase-a-port` (na bazie ~600-liniowego dokumentu mapującego typy i idiomy Zig → Rust).
- **7 maja 2026**: Jarred Sumner tweetuje o **~4000 commitach**, **960 000 linii** kodu, **3 błędach kompilacji**.
- **8 maja 2026**: PR #30412 otwarty.
- **11 maja 2026**: Bun 1.3.14 wypuszczony — ostatnia wersja w Zigu.
- **14 maja 2026**: PR zmergowany. **99,8% pass rate**. GitHubowy detector AI slop flaguje commit jako podejrzany.

## Implikacje dla developerów

- Sumner: „**nie piszemy ręcznie kodu od wielu miesięcy**" — to już status quo w Bun przed akwizycją.
- Strategia portu unika natywnych frameworków Rusta (Tokio, Rayon) na rzecz callbacków i state machines — bo Claude lepiej tłumaczy 1:1 ze Ziga.
- Społeczność dzieli się na fanów efektu (750k LOC w 11 dni!) i sceptyków: „**Co za uroczy, łatwy do code-review commit. Na pewno nie ma bugów**" (cytat z HN).
- Bridgewater Associates: największą różnicą przy upgrade'ie była **tendencja Opus 4.8 do proaktywnego flagowania problemów** z inputami i outputami analiz — czego konkurenci notorycznie nie łapią.

---

## Potencjalne kąty narracyjne do shorta

1. **„750 000 linii kodu, 11 dni, jeden człowiek. Witaj w 2026."** — Jarred Sumner, twórca Buna, właśnie przepisał cały JS runtime z Ziga do Rusta używając Claude'a. **99,8% testów przechodzi.** I mówi, że ręcznie nie pisze kodu od miesięcy.

2. **„Anthropic właśnie skrócił cykl wydań do 41 dni."** Opus 4.7 → Opus 4.8 w półtora miesiąca, w tej samej cenie. Dla porównania: GPT-4 do GPT-4o to było 14 miesięcy. Tempo robi się brutalne.

3. **„Claude nie pisze już kodu — pisze skrypty, które piszą kod."** Dynamic Workflows: Claude generuje JavaScript orkiestrujący **do 1000 subagentów na uruchomienie**, 16 równolegle. To nie chatbot. To dyspozytor fabryki.

4. **„13 044 bloków `unsafe` w jednym commicie. AI ma safety debt."** Bun przepisany w Rust w 11 dni, ale w kodzie zostało **180× więcej `unsafe` niż w porównywalnym projekcie pisanym ręcznie**. Szybkość ma swoją cenę.

5. **„GitHub flagnął commit Buna jako AI slop. Sumner go zmergował."** PR #30412: ponad **milion dodanych linii**, **6755 commitów**, **2188 plików**. Detector GitHuba: „to wygląda jak AI slop". Maintainerzy: „bo jest. I co?"

6. **„Pierwszy model w historii powyżej 10% na Legal Agent Benchmark."** Opus 4.8 robi to, plus 84% na computer use Mind2Web. Anthropic nie reklamuje SWE-benchu — reklamuje, że model **częściej mówi „nie wiem"**. To strategiczna zmiana.

7. **„$5 in / $25 out. Bez zmiany ceny. Fast mode trzy razy tańszy."** Wcześniej fast mode Opusa kosztował $30/$150 za milion tokenów. Teraz to samo za **1/3 ceny** i **2,5× szybciej**. Anthropic nie tylko goni — schodzi z marży.

---

## Źródła

- [Introducing Claude Opus 4.8 (Anthropic blog)](https://www.anthropic.com/news/claude-opus-4-8)
- [Anthropic releases Opus 4.8 with new 'dynamic workflow' tool (TechCrunch, 28.05.2026)](https://techcrunch.com/2026/05/28/anthropic-releases-opus-4-8-with-new-dynamic-workflow-tool/)
- [Anthropic Ships Claude Opus 4.8 Alongside Dynamic Workflows... Capped at 1,000 Subagents (MarkTechPost, 28.05.2026)](https://www.marktechpost.com/2026/05/28/anthropic-ships-claude-opus-4-8-alongside-dynamic-workflows-and-cheaper-fast-mode-with-workflows-capped-at-1000-subagents/)
- [Claude Opus 4.8 is generally available for GitHub Copilot (GitHub Changelog, 28.05.2026)](https://github.blog/changelog/2026-05-28-claude-opus-4-8-is-generally-available-for-github-copilot/)
- [Anthropic's Bun Rust rewrite merged at speed of AI (The Register, 14.05.2026)](https://www.theregister.com/devops/2026/05/14/anthropics-bun-rust-rewrite-merged-at-speed-of-ai/5240381)
- [Bun's experimental Rust rewrite hits 99.8% test compatibility on Linux x64 glibc (Hacker News dyskusja)](https://news.ycombinator.com/item?id=48073680)
- [Anthropic Releases Claude Opus 4.8 With Dynamic Workflows, Just 41 Days After Opus 4.7 (Technology.org, 29.05.2026)](https://www.technology.org/2026/05/29/anthropic-claude-opus-4-8-dynamic-workflows/)
- [Claude Opus 4.8 Dynamic Workflows: How to Run Hundreds of Parallel Sub-Agents (MindStudio)](https://www.mindstudio.ai/blog/claude-opus-4-8-dynamic-workflows-parallel-sub-agents)
