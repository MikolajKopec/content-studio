# Microsoft pokazuje MAI-Code-1-Flash: własny model wjeżdża do Copilota

**Data:** 2026-06-03
**Temat:** Microsoft uderza w GitHub Copilota własnym modelem kodowym MAI-Code-1-Flash, ogłaszając jednocześnie pierwszą rodzinę 7 modeli MAI trenowanych bez destylacji z OpenAI — co kończy erę monopolu OpenAI w produktach Microsoftu.

---

## Kluczowe fakty i liczby

- **2 czerwca 2026** w Fort Mason Center w San Francisco Satya Nadella otworzył **Microsoft Build 2026**, ogłaszając **siedem własnych modeli MAI** trenowanych od zera, bez destylacji z modeli stron trzecich (w tym GPT od OpenAI).
- **MAI-Code-1-Flash** ma zaledwie **~5 mld parametrów**, ale na **SWE-Bench Pro** osiąga **51,2%**, czyli o **+16 punktów** więcej niż **Claude Haiku 4.5 (35,2%)**.
- Model rozwiązuje trudne zadania zużywając **do 60% mniej tokenów** na **SWE-Bench Verified** przy tej samej dokładności — co w nowym usage-based billingu GitHub Copilota oznacza, że pakiet **Pro za $10/mc** może wystarczyć na **5 dni agentic workflows** zamiast **2 dni** z konkurencją.
- Rollout ruszył **2 czerwca 2026** we **wszystkich planach Copilota — Free, Pro, Pro+ i Max** — w VS Code, zarówno w model pickerze, jak i pod default auto-pickerem; równolegle udostępniono trzecio-stronny dostęp przez **Fireworks AI**, **Baseten** i **OpenRouter**.
- Flagowy MAI-Thinking-1 to **sparse MoE z 35 mld parametrów aktywnych i ~1 bilionem total**, z oknem kontekstu **256 000 tokenów** (~600 stron dokumentu) — w ślepych testach na **1 276 zadań** ludzcy oceniający preferowali go nad **Claude Sonnet 4.6**, a na **SWE-Bench Pro** dorównuje **Claude Opus 4.6**.
- Mustafa Suleyman (CEO Microsoft AI) deklaruje wprost: kierunek to **„Anthropic-style direction — enterprise, developers, coding"** i obiecuje **do 10× lepszy stosunek koszt/efekt** wobec **GPT-5.5**.

---

## Rodzina modeli MAI — wszystkie 7 modeli

| Model | Typ | Kluczowy fakt |
|---|---|---|
| **MAI-Thinking-1** | reasoning (MoE) | 35B aktywnych / ~1T total, 256k kontekst, **97,0% na AIME 2025**, **94,5% AIME 2026** |
| **MAI-Code-1-Flash** | coding | ~5B params, **51,2% SWE-Bench Pro**, **71,6% SWE-Bench Verified**, **65,5% Multilingual** |
| **MAI-Image-2.5** | text-to-image + img2img | **3. miejsce** w Arena AI leaderboard, integracja PowerPoint/OneDrive |
| **MAI-Image-2.5 Flash** | image (efficient) | **2. miejsce** w Arena AI, optymalizacja kosztu/latency |
| **MAI-Transcribe-1.5** | speech-to-text | **43 języki**, **5× szybszy** od konkurencji |
| **MAI-Voice-2** | speech generation | **15+ języków**, fine-grained voice control |
| **MAI-Voice-2 Flash** | speech (low-latency) | speed/latency-first wariant do rozmów w czasie rzeczywistym |

---

## Specyfikacja MAI-Code-1-Flash

- **Architektura:** model ~5B parametrów, optymalizowany pod inference cost. Wprowadza **adaptive thinking** — krótkie odpowiedzi na proste pytania, więcej budżetu reasoning na trudne.
- **Trening:** „end-to-end by Microsoft using clean and appropriately licensed data". **Brak destylacji z OpenAI** ani innych third-party. Z AI-generated content **excluded from pre-training**.
- **Co kluczowe — nie był tylko ewaluowany pod Copilota; był trenowany wewnątrz GitHub Copilot's production harness.** Czyli widzi te same prompty, te same tool-calls i ten sam loop co realny użytkownik VS Code.
- **Token efficiency:** **-60% tokenów** vs konkurencja w SWE-Bench Verified przy zachowanej dokładności. To bezpośrednio przekłada się na **AI Credits** w nowym usage-based pricing GitHuba.

---

## Porównanie z konkurencją

| Model | Parametry | SWE-Bench Pro | Kluczowa przewaga |
|---|---|---|---|
| **MAI-Code-1-Flash** | ~5B | **51,2%** | -60% tokenów, koszt |
| **Claude Haiku 4.5** | ? (mały) | 35,2% | (poprzedni baseline w Copilocie) |
| **Claude Opus 4.6** | duży | ~58% | nadal lider na pełnym repo-resolution |
| **Kimi K2.6** | duży | ~58,6% | open-weight alternatywa |
| **MAI-Thinking-1** | 35B aktywnych | dorównuje Opusowi 4.6 | rozumowanie, 256k kontekst |

Niezależni recenzenci wskazują, że w **fully autonomous resolution skomplikowanych issue'ów** Kimi K2.6, GLM-5.1 i Opus 4.6 nadal są mocniejsze. MAI-Code-1-Flash błyszczy w **inline chat, autocomplete i quick-fix** — czyli tam, gdzie pracuje 90% deweloperów na co dzień.

---

## Implikacje dla relacji Microsoft–OpenAI

- **Microsoft nie zrywa z OpenAI** — Azure pozostaje główną infrastrukturą OpenAI, a GitHub Copilot i M365 Copilot dalej oferują modele OpenAI w pickerze.
- Ale **MAI-Code-1-Flash to pierwszy moment**, w którym Microsoft **w swoim flagowym produkcie dla deweloperów** wjeżdża **z własnym modelem jako default auto-picker** — nie tylko opcją.
- W Microsoft Foundry obok modeli OpenAI, MAI i Anthropic (Opus 4.8/4.7/4.6, Sonnet 4.6, Haiku 4.5) z **unified Azure billing**.
- Strategiczna pointa Nadelli: **„multi-vendor, multi-model"** przeszło z roadmapy w shipping product. Suleyman dodaje, że ekonomika wskazuje teraz na własne modele: **„up to 10× cost efficiency"** vs GPT-5.5 oznacza dramatyczną poprawę marży Microsoftu na każdym wywołaniu Copilota.

---

## Implikacje dla użytkownika

- **Free, Pro ($10/mc), Pro+ ($39/mc), Max** — wszyscy dostają MAI-Code-1-Flash w VS Code, stopniowy rollout od 2 czerwca.
- **W praktyce:** auto-picker zacznie kierować część zapytań do MAI-Code-1-Flash. Użytkownik nie musi nic robić.
- **Dla heavy users agentic workflows:** -60% tokenów = większy zasięg w ramach miesięcznych AI Credits. Z **2 dni do 5 dni** agentic coding na Pro według niezależnych analiz.
- **Dla budujących produkty AI:** Microsoft udostępnia model przez **Fireworks AI, Baseten i OpenRouter** — pierwszy raz model „Copilot-native" jest dostępny poza ekosystemem Microsoftu.
- **Niezależne weryfikacje benchmarków jeszcze nie istnieją** — wszystkie liczby pochodzą z testów Microsoftu i nie przeszły peer-review.

---

## Reakcje branży

- **Wątek 1 — drama:** Microsoft zainwestował dziesiątki miliardów w OpenAI i miliardy w Anthropica, a teraz wjeżdża z własnym modelem konkurującym z obydwoma. Analitycy określają to jako **„most concrete evidence yet"**, że strategia multi-model jest realna, nie PR-owa.
- **Wątek 2 — Suleyman:** CEO Microsoft AI publicznie deklaruje **„Anthropic-style direction"** — to mocny sygnał, że celem nie jest tylko cost-saving, ale konkurencja o developer mindshare.
- **Wątek 3 — sceptycy:** część komentatorów wskazuje, że benchmarki Microsoftu nie zostały zweryfikowane, a w pełni autonomicznych zadaniach (full SWE-Bench) Opus 4.6 i Kimi K2.6 nadal prowadzą.

---

## Potencjalne kąty narracyjne do shorta

1. **„Microsoft właśnie wsadził własny model do Copilota — i nie zapytał OpenAI o zgodę."** Hook na drama, opowieść o 7 modelach MAI od zera, bez destylacji z GPT.
2. **„Twój GitHub Copilot od dziś używa modelu, który zużywa 60% mniej tokenów — i bije Claude Haiku 4.5 o 16 punktów na SWE-Bench Pro."** Hook na konkretną liczbę dla deweloperów.
3. **„5 miliardów parametrów. Pokonuje model Anthropica. I dziś rusza we wszystkich planach Copilota — łącznie z Free."** Hook na kontrast „mały model bije większego", plus „każdy może odpalić od dziś".
4. **„Microsoft zapłacił OpenAI 13 miliardów dolarów. A dziś pokazał, że nie potrzebuje już ich modelu w Copilocie."** Hook na business drama, koniec ery monopolu OpenAI w Microsoft.
5. **„Suleyman powiedział wprost: kopiujemy strategię Anthropica. I oto MAI-Thinking-1 z kontekstem 256 tysięcy tokenów dorównuje Opusowi 4.6."** Hook na cytat CEO + benchmark.
6. **„Z dwóch dni do pięciu — tyle agentic codingu w Pro Plan dasz radę odpalić, jeśli przerzucisz się na MAI-Code-1-Flash."** Hook na bardzo praktyczny pricing-angle, idealny dla audytorium VS Code.
7. **„Microsoft wytrenował model kodowy WEWNĄTRZ produkcyjnego harnessu GitHub Copilota. Po raz pierwszy model widział te same prompty, co Ty."** Hook na techniczną nowość — training-in-production-loop.

---

## Źródła

- [Introducing MAI-Code-1-Flash — Microsoft AI (oficjalnie)](https://microsoft.ai/news/introducingmai-code-1-flash/)
- [Introducing MAI-Thinking-1 — Microsoft AI (oficjalnie)](https://microsoft.ai/news/introducing-mai-thinking-1/)
- [Microsoft Build 2026: MAI-Thinking-1 first in-house reasoning model — TechTimes](https://www.techtimes.com/articles/317631/20260602/microsoft-build-2026-mai-thinking-1-first-house-reasoning-model-trained-without-openai-data.htm)
- [Microsoft unveils new AI models to lessen reliance on OpenAI — CNBC](https://www.cnbc.com/2026/06/02/microsoft-unveils-new-ai-models-lessen-reliance-on-openai-lower-costs.html)
- [Build 2026: Microsoft Launches First Flagship Reasoning AI Model — Thurrott](https://www.thurrott.com/a-i/336960/build-2026-microsoft-launches-first-flagship-reasoning-ai-model-and-more)
- [Microsoft Launches First Homegrown Reasoning Model, Taking Aim at Anthropic — BigGo Finance](https://finance.biggo.com/news/uZ_oiZ4BoicNoOgCA26Y)
- [MAI-Code-1-Flash: Copilot-Native Coding Model — ChatForest analysis](https://chatforest.com/builders-log/microsoft-mai-code-1-flash-github-copilot-coding-model-build-2026/)
- [Everything Microsoft Announced at Build 2026 — The Neuron](https://www.theneuron.ai/explainer-articles/everything-microsoft-announced-at-microsoft-build-2026-explained/)
