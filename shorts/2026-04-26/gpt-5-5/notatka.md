# GPT-5.5 — notatka badawcza

## Kluczowe fakty

- Ogłoszono 23 kwietnia 2026; dostępny w API od 24 kwietnia 2026
- Pierwszy w pełni przetrenowany model bazowy od GPT-4.5 — nie jest to patch ani finetune, to retrain od podstaw
- Trzy warianty: GPT-5.5 (ogólny), GPT-5.5 Thinking (extended chain-of-thought, lepsza matematyka), GPT-5.5 Pro (najwyższa dokładność dla enterprise)
- Kontekst: 1 milion tokenów (GPT-5 miał 128k–256k)
- Natively omnimodal: tekst, obrazy, audio i wideo w jednym ujednoliconym systemie
- Sam Altman nazwał go "ostatnim kluczowym kamieniem milowym przed AGI"
- Greg Brockman: "big advancement towards more agentic and intuitive computing"
- OpenAI uruchomiło go przyspieszając — GPT-5.4 pojawił się zaledwie kilka tygodni wcześniej

## Czym różni się od GPT-5

- GPT-5.5 to pierwszy model OpenAI projektowany **agentowo od podstaw** — poprzednie wersje były modelami konwersacyjnymi z doklejonymi narzędziami; tu architektura zakłada autonomiczne działanie wieloetapowe jako punkt wyjścia
- 60% redukcja halucynacji względem GPT-5.4
- Terminal-Bench 2.0: 82.7% (GPT-5.4: 75.1%)
- OSWorld-Verified: 78.7% (GPT-5.4: 75.0%) — mierzy zdolność do samodzielnego obsługiwania komputera
- SWE-Bench Verified: 88.7%
- MMLU: 92.4%
- Przy podobnym czasie odpowiedzi co GPT-5.4 (latency per token bez regresu), ale drastycznie wyższa zdolność
- Używa ~40% mniej tokenów wyjściowych do tych samych zadań w Codex vs GPT-5.4 — efektywnie zadanie za 1000 tokenów na 5.4 → 600 tokenów na 5.5

## Możliwości agentowe

- Zamiast prowadzenia za rękę przez każdy krok: dajesz nieustrukturyzowane, wieloczęściowe zadanie i model sam planuje, używa narzędzi, weryfikuje pracę, nawiguje przez niejednoznaczność i kontynuuje do końca
- "Computer use" natywnie: model potrafi operować interfejsem graficznym, klikać przez UI, reprodukować błędy wizualne, weryfikować fixy w przeglądarce
- W Codex: asystent kodujący który sam otwiera przeglądarkę, testuje lokalny serwer, identyfikuje błędy, poprawia się — bez interwencji użytkownika
- GDPval: 84.9% (zadania z dziedziny wiedzy generalnej wymagające wieloetapowego działania)
- Tau2-bench Telecom: 98.0% bez prompt-tuningu
- NVIDIA wdrożyło osobne cloud VM dla każdego pracownika żeby uruchamiać agenta GPT-5.5 bezpiecznie i z pełną audytowalnością
- Można "sterować" agentem w trakcie pracy bez utraty kontekstu — jak praca z kolegą, nie z botą

## Reakcje rynku i ekspertów

- W ciągu 48 godzin: jednocześnie GPT-5.5 (23 IV) i DeepSeek V4 (24 IV) — "dwa najważniejsze launche modeli AI w 2026 roku" wg VentureBeat
- Pytanie, które dominuje dyskusje enterprise: "przy jakiej różnicy benchmarków 7-krotna różnica cen przestaje mieć znaczenie?"
- Counterpoint Research (Wei Sun): DeepSeek V4 oferuje "excellent agent capability at significantly lower cost"
- Fortune: "AI model launches are starting to look like software updates" — tempo jest tak szybkie, że rynek przestaje nadążać z oceną
- Seeking Alpha: ChatGPT i DeepSeek **tracą** udziały w mobile market share w USA mimo premiery nowych modeli — konkurencja jest bardzo szeroka
- TechCrunch: GPT-5.5 zbliża OpenAI do "super app" — jednej aplikacji która zastępuje wiele narzędzi
- Kluczowa dynamika kosztowa: krzywa kosztów DeepSeek idzie w dół (własne chińskie chipy Huawei Ascend 950), a OpenAI/Anthropic/Google płacą NVIDIA-GPU ceny które są flat lub rosną — luka cenowa prawdopodobnie będzie się powiększać przez 2026

## Ceny i dostępność

**Dostępność:**
- ChatGPT: Plus, Pro, Business, Enterprise od 23 kwietnia
- GPT-5.5 Pro: tylko Pro, Business, Enterprise
- API: od 24 kwietnia

**Ceny API:**
- GPT-5.5: $5 / $30 za milion tokenów input/output (poprzednio GPT-5.4: $2.50 / $15 — podwójna cena nominalna)
- GPT-5.5 Pro: $30 / $180 za milion tokenów — bez zmian względem GPT-5.4 Pro
- Realne wzrost kosztów wg OpenAI: ~20% (po uwzględnieniu 40% lepszej efektywności tokenowej)

**Porównanie z konkurencją (ceny API):**
- DeepSeek V4 Pro: $0.145 / $3.48 za milion tokenów — ok. 8.6x taniej niż GPT-5.5
- DeepSeek V4 Flash: $0.14 / $0.28 — najtańszy na rynku, bije GPT-5.4 Mini i Gemini Flash

## Potencjalne haki do shorta

1. **"Sam Altman powiedział coś, co wszyscy zapamiętają"** — CEO OpenAI nazwał GPT-5.5 ostatnim krokiem przed AGI. Jeden z największych claims w historii AI.

2. **"Ten model nie pyta co dalej — po prostu to robi"** — konkretny przykład: dajesz wielogodzinne zadanie z 10 krokami, wychodzisz, wracasz — jest zrobione. To nie jest ChatGPT, to jest pracownik.

3. **"W ciągu 48h dwa największe AI tego roku — i jeden kosztuje 8 razy mniej"** — DeepSeek V4 vs GPT-5.5 to historia o tym, że chińska firma robi podobne wyniki za ułamek ceny.

4. **"Kontekst 1 milion tokenów — co to w ogóle znaczy?"** — 1M tokenów to ok. 750 tysięcy słów. Możesz wrzucić całą bazę kodu, rok korespondencji mailowej, dziesiątki dokumentów — i model to "pamięta" przez całą rozmowę.

5. **"Benchmark 78.7% na obsłudze komputera — czemu to ważne?"** — model potrafi klikać interfejsy, otwierać aplikacje, testować oprogramowanie. To nie jest AI które doradza — to AI które robi.

## Źródła

- [Introducing GPT-5.5 | OpenAI](https://openai.com/index/introducing-gpt-5-5/)
- [OpenAI releases GPT-5.5, bringing company one step closer to an AI 'super app' | TechCrunch](https://techcrunch.com/2026/04/23/openai-chatgpt-gpt-5-5-ai-model-superapp/)
- [GPT-5.5 Review: Benchmarks, Pricing & Vs Claude (2026)](https://www.buildfastwithai.com/blogs/gpt-5-5-review-2026)
- [GPT-5.5: Pricing, Benchmarks & Performance | llm-stats.com](https://llm-stats.com/models/gpt-5.5)
- [GPT-5.5 Review: 88.7% SWE-Bench, 92.4% MMLU, 2x Price Tag | TokenMix](https://tokenmix.ai/blog/gpt-5-5-spud-review-88-swe-bench-2026)
- [GPT-5.5 is here — and AI model launches are starting to look like software updates | Fortune](https://fortune.com/2026/04/23/openai-releases-gpt-5-5/)
- [OpenAI's New GPT-5.5 Powers Codex on NVIDIA Infrastructure | NVIDIA Blog](https://blogs.nvidia.com/blog/openai-codex-gpt-5-5-ai-agents/)
- [OpenAI Debuts GPT-5.5 Claiming Agentic Coding and Research Gains | MacRumors](https://www.macrumors.com/2026/04/24/openai-gpt-5-5-research-gains/)
- [Sam Altman calls ChatGPT 5.5 the last major milestone before AGI | Startup Fortune](https://startupfortune.com/sam-altman-calls-chatgpt-55-the-last-major-milestone-before-agi-and-the-ai-world-is-taking-him-seriously/)
- [DeepSeek V4 vs GPT-5.5: 7x Price Gap Explained | Oplexa](https://oplexa.com/deepseek-v4-vs-gpt-5-5/)
- [DeepSeek-V4 arrives with near state-of-the-art intelligence at 1/6th the cost | VentureBeat](https://venturebeat.com/technology/deepseek-v4-arrives-with-near-state-of-the-art-intelligence-at-1-6th-the-cost-of-opus-4-7-gpt-5-5)
- [GPT-5.5 (xhigh) - Intelligence, Performance & Price Analysis | Artificial Analysis](https://artificialanalysis.ai/models/gpt-5-5)
- [OpenAI Releases GPT-5.5 With Stronger Agentic Coding | gHacks Tech News](https://www.ghacks.net/2026/04/24/openai-releases-gpt-5-5-with-stronger-agentic-coding-computer-use-and-scientific-research-capabilities/)
- [GPT-5.5: The Complete Guide (2026) | o-mega.ai](https://o-mega.ai/articles/gpt-5-5-the-complete-guide-2026)
