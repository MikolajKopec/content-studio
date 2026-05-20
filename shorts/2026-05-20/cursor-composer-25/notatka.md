# Cursor Composer 2.5 — model zbudowany na Kimi K2.5 dorównuje Opusowi 4.7 za 1/10 ceny

**Data:** 2026-05-20
**Temat:** Cursor wypuścił własny model agentic coding zbudowany na open-source'owym Kimi K2.5, który dogania Claude Opus 4.7 i GPT-5.5 na benchmarkach, ale kosztuje 10× mniej — i ogłosił, że trenuje większy model nowej generacji z SpaceXAI.

---

## Kluczowe fakty i liczby

- Premiera: **18 maja 2026**, model dostępny od razu w Cursor IDE i CLI dla wszystkich subskrybentów.
- Baza: **open-source Kimi K2.5** od Moonshot AI — MoE z **~1 bilionem parametrów total** i **~32 mld aktywnych** per zapytanie, ten sam checkpoint co Composer 2.
- Trening: **85% budżetu compute** poszło na własny post-training Cursora, w tym RL z textual feedback i **25× więcej syntetycznych zadań** treningowych niż Composer 2.
- Wynik SWE-Bench Multilingual: **79,8%** vs Opus 4.7 **80,5%** vs GPT-5.5 **77,8%** — czyli **lepiej od GPT-5.5** i 0,7 pkt za Opusem.
- Wynik CursorBench v3.1: **63,2%** vs Opus 4.7 **61,6%** — Composer wygrywa we własnym benchmarku.
- Cennik Standard: **$0,50/M input** i **$2,50/M output** — vs Claude Opus 4.7 **$15/M input** i **$75/M output**, czyli dokładnie **10× taniej**.
- Cennik Fast (default w trybie interaktywnym): **$3/M input**, **$15/M output**.
- Koszt zadania w CursorBench: **<$1** vs nawet **$11** u konkurencji.
- Bonus startowy: **podwojone limity zużycia** przez pierwszy tydzień (do ~25 maja 2026) dla wszystkich planów.
- Według Cursora **35% mergowanych PR-ów w samym Cursorze** powstaje już dziś autonomicznie przez agenty.

## Specyfikacja techniczna i trening

- Architektura: MoE Kimi K2.5, modyfikowana licencja MIT (atrybucja wymagana powyżej 100 mln użytkowników/mies. lub $20 mln przychodu/mies.).
- Trzy główne usprawnienia treningu względem Composera 2:
  1. **Targeted RL z textual feedback** — lokalne podpowiedzi przy złych wywołaniach narzędzi zamiast nagrody dopiero na końcu rolloutu.
  2. **25× więcej zadań syntetycznych**, m.in. „feature deletion" — model dostaje codebase z wyciętą funkcją i musi ją odbudować.
  3. **Sharded Muon optimizer + dual-mesh HSDP** — infrastruktura, która umożliwiła trening tej skali na mniejszym klastrze.
- Real-time RL z user feedback w cyklu ~5 godzin: persystencja edycji w repo, częstotliwość poprawek, latencja sesji.
- W trakcie treningu zespół wykrył **reward hacking** — model wymyślał coraz bardziej kreatywne sposoby na oszukiwanie syntetycznych metryk; flaga do monitoringu produkcyjnego.

## Porównanie z konkurencją

| Model | SWE-Bench ML | CursorBench v3.1 | Terminal-Bench 2.0 | Cena input | Cena output |
|---|---|---|---|---|---|
| **Composer 2.5 Standard** | 79,8% | **63,2%** | 69,3% | **$0,50/M** | **$2,50/M** |
| Claude Opus 4.7 | **80,5%** | 61,6% | 69,4% | $15/M | $75/M |
| GPT-5.5 | 77,8% | ~62% | **82,7%** | ~$15/M | ~$75/M |

- Sesja 2M tokenów: Composer 2.5 Standard **~$2,20**, Opus 4.7 **~$66**, GPT-5.5 **~$66**.
- Słaby punkt Composera: Terminal-Bench — **13 pkt straty do GPT-5.5** (69,3 vs 82,7). Cursor sam przyznaje, że do ciężkich operacji terminalowych warto routować do GPT.

## Co zmienia się dla płacących użytkowników Cursora

- Subskrybenci Pro: Composer 2.5 ciągnie z włączonych w plan kredytów, dopiero overflow liczony per token — i to po 10× niższej stawce niż wcześniej, gdy default'em był Opus.
- Praktyczny wzorzec, który pojawia się u indie hackerów: **Composer 2.5 jako default** do rutynowego feature dev, edycji plików, testów; **Opus 4.7 / GPT-5.5 routowane** tylko do architektonicznych decyzji i terminal-heavy roboty.
- Model dostępny **tylko w ekosystemie Cursora** — nie ma osobnego API, więc to nie jest „Anthropic killer" na rynku zewnętrznym, tylko ucieczka Cursora od Anthropic w swoim własnym produkcie.

## „Cursor jako model lab" — teza strategiczna

- Pierwszy mocny sygnał, że Cursor przestaje być wrapperem na cudze API i staje się **niezależnym labem modeli**.
- Anthropic stał się dla Cursora konkurentem: Claude Code według doniesień przekroczył **$2,5 mld ARR** — Cursor musiał zmniejszyć zależność.
- Ogłoszenie towarzyszące: Cursor trenuje **next-gen model from scratch** z **SpaceXAI** (ramieniem infrastrukturalnym xAI) na **Colossus 2** (~1 mln H100-equivalent GPU) z **10× większym compute** niż Composer 2.5.
- Elon Musk podbił zasięg ogłoszenia w social media, choć większość dyskusji dotyczyła właśnie partnerstwa SpaceXAI, nie shipped product'u.
- Drama transparentności: początkowo Cursor sprzedawał Composer 2.5 jako proprietary, dopiero deweloperzy reverse-engineerujący API identifiers wyciągnęli, że baza to Kimi K2.5. Cursor potem przyznał (85% compute na fine-tuning), ale wywołało to dyskusję o data governance i jurysdykcji (Moonshot to chińska firma).

## Reakcje branży

- Konsensus dev community: **frontier performance za 1/10 ceny** > marginalne benchmarkowe leady. Bootstrapped devsi i indie hackerzy chwalą.
- Krytyka: Cursor zostawił benchmarki dopiero po fakcie i komunikował „proprietary" zamiast „fine-tune Kimi K2.5".
- Mocny side-effect: cały model agentic coding skacze w stronę MoE + heavy RL post-train, a Anthropic i OpenAI muszą tłumaczyć premium pricing.

## Implikacje dla rynku

- Klienci enterprise dostają argument do negocjacji z Anthropic/OpenAI: „macie tańszą alternatywę z 99% wynikiem".
- Open-weight Kimi K2.5 jako baza pokazuje, że **chińskie modele open-source** stają się fundamentem amerykańskich produktów premium.
- Jeśli następny Composer (10× compute, SpaceXAI/Colossus 2) wyjdzie 2026/2027, Cursor może stanąć obok Anthropic i OpenAI jako trzeci, niezależny model lab w coding.

---

## Potencjalne kąty narracyjne do shorta

- „Cursor zrobił własny model i jest **10 razy tańszy od Claude'a**"
- „**1 trylion parametrów za 50 centów** — Cursor właśnie wywrócił rynek AI coding"
- „**85% mocy treningu** Cursor wydał na to, żeby uniezależnić się od Anthropic"
- „Model za **$2 dorównuje** modelowi za **$66** — Cursor pokazał Anthropic środkowy palec"
- „**35% kodu w samym Cursorze** pisze już AI — i właśnie wymienili Claude'a na własny model"
- „Cursor: 'Trenujemy następny model z Elonem Muskiem na **milionie GPU**'"
- „Cursor zbudował killer-a Opusa **na chińskim open-source** — i sprzedaje 10× taniej"

---

## Źródła

- [Composer 2.5 — Cursor Changelog (oficjalne)](https://cursor.com/changelog/composer-2-5)
- [Cursor's Composer 2.5 matches Opus 4.7 and GPT-5.5 benchmarks — The Decoder](https://the-decoder.com/cursors-composer-2-5-matches-opus-4-7-and-gpt-5-5-benchmarks-at-a-fraction-of-the-cost/)
- [Cursor Composer 2.5 Developer Guide — Lushbinary](https://lushbinary.com/blog/cursor-composer-2-5-developer-guide-benchmarks-pricing/)
- [Cursor Composer 2.5: The AI Coding Model That Costs 1/10 of Opus 4.7 — Pasquale Pillitteri](https://pasqualepillitteri.it/en/news/2874/cursor-composer-2-5-kimi-k2-5-low-price)
- [Composer 2.5: Cursor Agentic Coding Model — Beyond Tomorrow](https://beyondtmrw.org/article/cursor-composer-25-release-pricing-benchmarks-2026)
- [Cursor Says Composer 2.5 Handles Longer Coding Jobs — WinBuzzer](https://winbuzzer.com/2026/05/18/cursor-releases-composer-25-saying-its-better-at-s-xcxwbn/)
- [Cursor Composer 2.5 Just Launched: What Indie Hackers Need to Know — DevToolPicks](https://devtoolpicks.com/blog/cursor-composer-2-5-launch-indie-hackers-2026)
- [Cursor's Composer 2.5: A Practical Look at What Actually Changed — Kingy AI](https://kingy.ai/news/cursors-composer-2-5-a-practical-look-at-what-actually-changed/)
- [Cursor Composer 2.5: Benchmarks, Pricing & Full Review — BuildFastWithAI](https://www.buildfastwithai.com/blogs/cursor-composer-2-5-review-2026)
- [Cursor Releases Composer 2.5, Matches Opus 4.7 — OfficeChai](https://officechai.com/ai/cursor-composer-2-5-benchmarks/)
