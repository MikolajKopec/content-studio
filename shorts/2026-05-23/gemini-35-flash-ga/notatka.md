# Gemini 3.5 Flash dostępny dla wszystkich — w aplikacji i w Google Search

**Data:** 2026-05-23
**Temat:** Google wypuścił Gemini 3.5 Flash jako domyślny model w aplikacji i w Search — tańszy "Flash" bije zeszłorocznego flagowca Gemini 3.1 Pro na większości benchmarków agentic/coding i jest 4× szybszy od konkurencyjnych modeli frontier.

---

## Kluczowe fakty i liczby

- **22 maja 2026** Google ogłosił generalną dostępność Gemini 3.5 Flash — od razu jako **domyślny model w aplikacji Gemini i w AI Mode w Google Search**, globalnie. Premiera odbyła się na **Google I/O 2026** (19 maja), a "GA dla wszystkich" dopina się tego samego tygodnia.
- Aplikacja Gemini ma teraz **ponad 900 mln użytkowników miesięcznie** w **230 krajach** i **ponad 70 językach** — to **wzrost z ~400 mln rok temu** (×2,25).
- Model **bije Gemini 3.1 Pro** na 11 z 15 opublikowanych benchmarków: **Terminal-Bench 2.1 76,2%** (vs 70,3% u 3.1 Pro), **GDPval-AA 1656 Elo** (vs 1314), **MCP Atlas 83,6%** (vs 78,2%), **CharXiv Reasoning 84,2%** (multimodal — najwyższy notowany wynik).
- **Prędkość: ponad 280 tokenów wyjścia na sekundę** — ok. **70% szybciej niż Gemini 3 Flash** i wg Google **4× szybciej niż inne modele frontier**.
- W rankingu **Artificial Analysis Intelligence Index: 55 punktów** — **w odległości 2 punktów od Claude Opus 4.7** i **5 punktów od GPT-5.5**, przy ułamku ceny.
- **Cennik API: $1,50 / $9,00 za 1 mln tokenów** (input/output), **$0,15 za 1 mln** dla cached input. To **1/3 ceny GPT-5.5** ($5/$30) i **ok. 1/3 ceny Claude Opus 4.7** ($5/$25 — Opus jest 10× droższy na inpucie i ~2,8× droższy na outpucie).
- Jednocześnie 3.5 Flash jest **3× droższy od Gemini 3 Flash Preview** i **6× droższy od Gemini 3.1 Flash-Lite** — "Flash" przesuwa się cenowo bliżej "Pro" ($2/$12).
- **Context window: 1 048 576 tokenów** (≈1 mln) na wejściu, **65 536** na wyjściu. Multimodalność: tekst, obraz, audio, wideo, PDF.
- **Hallucination rate spadł o 31 punktów** względem poprzednika (do 61%).
- Wjeżdża też **Neural Expressive** — nowy język wizualny aplikacji (animacje, kolory, haptyka, nowa typografia) — odpowiedzi nie są już ścianą tekstu, tylko mają pogrubione kluczowe info, inline obrazy, narrated video, timeline i interaktywne wizualizacje. Rolluje się **dziś na Android, iOS i web**.
- **Gemini Omni** (video model) startuje równocześnie dla **subskrybentów Plus / Pro / Ultra globalnie** w aplikacji Gemini i Google Flow, **plus za darmo na YouTube Shorts i YouTube Create**.
- **Gemini Spark** — agent działający 24/7 na chmurze Google, zbudowany na Gemini 3.5 i harnessie Antigravity — rusza **w przyszłym tygodniu dla Google AI Ultra w USA**.
- **Daily Brief** (poranne podsumowanie z Gmail/Calendar/Tasks) — od dziś dla **Plus, Pro i Ultra w USA**.
- **Gemini 3.5 Pro** jest w testach wewnętrznych — premiera **za miesiąc**.

## Porównanie z konkurencją

| Model | Intelligence Index | Input $/M | Output $/M | Speed (tok/s) |
|---|---|---|---|---|
| **Gemini 3.5 Flash** | **55** | **$1,50** | **$9,00** | **~280** |
| Claude Opus 4.7 | 57 | $5,00 | $25,00 | wolniej |
| GPT-5.5 | 60 | $5,00 | $30,00 | wolniej |
| Gemini 3.1 Pro | ~52 | $2,00 | $12,00 | ~165 |
| Grok 4.3 | 53 | — | — | — |

Komentarz: 3.5 Flash to pierwszy "tani Flash", który realnie ociera się o flagowce — różnica z Opusem to **2 punkty IQ benchmarku** przy **~10× tańszym wejściu**.

## Co się rusza w aplikacji

- **Neural Expressive** — pill-shaped prompt box, Gemini Live inline zamiast fullscreena, nowy navigation drawer, odpowiedzi w formacie "key info bold + inline media".
- **Spark** — 24/7 cloud agent dla AI Ultra, dostęp przez app/mail/text i wkrótce Chrome, integracje z Salesforce Agentforce, Xero, Shopify, Macquarie Bank, Ramp, Databricks. Na Androidzie pokazuje "Halo interface" z live progress.
- **Daily Brief** — "top of mind" + "looking ahead" sekcje, skróty do reminderów i draftów wiadomości.

## Implikacje dla użytkownika i rynku

- **Dla zwykłego użytkownika**: darmowy upgrade w aplikacji Gemini i w Search — od razu, bez konfiguracji. Model, który rok temu byłby flagowcem (3.1 Pro), dziś ląduje pod nazwą "Flash" w darmowym tierze.
- **Dla deweloperów**: drogi Flash to nowa rzeczywistość — wszystkie trzy laby (Google, OpenAI, Anthropic) podbiły ceny nowych wersji (GPT-5.5 ×2 vs 5.4; Opus 4.7 ×1,46 vs 4.6). Era "darmowego progresu cenowego" się kończy.
- **Dla rynku**: Google jasno mówi "betujemy na agentów, nie na chatboty" — Spark + Antigravity + 24/7 cloud agent + Daily Brief to przesunięcie z reaktywnego asystenta do proaktywnego workera.
- **Dla konkurencji**: Gemini z 900 mln MAU dogania ChatGPT — to pierwszy raz, kiedy Google ma porównywalną skalę zasięgu w consumerze.

---

## Potencjalne kąty narracyjne do shorta

1. **"Google właśnie wypuścił model, który bije zeszłorocznego flagowca — i wrzucił go za darmo wszystkim 900 milionom użytkowników aplikacji Gemini."** — hook na skali i kontraście "Flash bije Pro".
2. **"Nowy Gemini Flash kosztuje $1,50 za milion tokenów. Claude Opus 4.7 kosztuje $5. Różnica w benchmarku inteligencji? Dwa punkty."** — hook na ekonomii, konkretne liczby, zaskakujący wynik.
3. **"Aplikacja Gemini ma więcej miesięcznych użytkowników niż populacja Europy — i właśnie dostała największy upgrade w historii."** — hook na skali (900 mln vs ~750 mln Europy).
4. **"Google twierdzi, że ich nowy model jest 4 razy szybszy od ChatGPT i Claude'a. Sprawdziłem benchmarki — i to nie jest marketing."** — hook na konkretnej liczbie + element weryfikacji.
5. **"Pierwszy raz w historii AI 'tani' model bije 'drogi' model tej samej firmy. Gemini Flash 3.5 wygrywa z Gemini 3.1 Pro na 11 z 15 benchmarków."** — hook na counterintuitive fakcie.
6. **"Aplikacja Gemini wygląda dziś zupełnie inaczej niż wczoraj. Koniec ze ścianami tekstu — Google wprowadził 'Neural Expressive' i odpowiedzi mają teraz animacje, wideo i timeline."** — hook wizualny, idealny dla TikToka.
7. **"Google podwoiło bazę użytkowników Gemini w rok — z 400 mln do 900 mln. ChatGPT po raz pierwszy ma poważnego rywala."** — hook na momentum i konkurencji.

---

## Źródła

- [Gemini 3.5: frontier intelligence with action — Google Blog](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-5/)
- [The next evolution of the Gemini app — Google Blog](https://blog.google/innovation-and-ai/products/gemini-app/next-evolution-gemini-app/)
- [Gemini app rolling out 'Neural Expressive' redesign, 3.5 Flash, 24/7 Spark agent & Daily Brief — 9to5Google](https://9to5google.com/2026/05/19/gemini-app-google-io-2026/)
- [Gemini 3.5 Flash: more expensive, but Google plan to use it for everything — Simon Willison](https://simonwillison.net/2026/May/19/gemini-35-flash/)
- [Gemini 3.5 Flash: The new leader in intelligence versus speed — Artificial Analysis](https://artificialanalysis.ai/articles/gemini-3-5-flash-everything-you-need-to-know)
- [Gemini 3.5 Flash - Model Card — Google DeepMind](https://deepmind.google/models/model-cards/gemini-3-5-flash/)
- [Google says Gemini 3.5 Flash rivals 'large flagship models' — Engadget](https://www.engadget.com/2176592/google-says-gemini-3-5-flash-rivals-large-flagship-models-for-coding-and-agentic-tasks/)
- [Google's Gemini 3.5 Flash scores within two points of Anthropic's flagship at a third of the price — R&D World](https://www.rdworldonline.com/googles-gemini-3-5-flash-scores-within-two-points-of-anthropics-flagship-at-a-third-of-the-price/)
- [Introducing Gemini Omni — Google Blog](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-omni/)
- [Gemini Omni, the 'create anything' model — 9to5Google](https://9to5google.com/2026/05/19/gemini-omni-create-anything-model-video/)
- [The AI War: How Gemini App Doubled Its User Base In One Year To Hit 900M Monthly Users — Business Today](https://www.businesstoday.in/bt-tv/whats-hot/video/the-ai-war-how-gemini-app-doubled-its-user-base-in-one-year-to-hit-900m-monthly-users-532443-2026-05-20)
- [Google Releases Gemini 3.5 Flash, Beats Gemini 3.1 Pro On Many Benchmarks — OfficeChai](https://officechai.com/ai/gemini-flash-3-5-benchmarks/)
