# Google Gemini 3 — notatka badawcza

**Data:** 2026-04-23
**Temat:** Premiera Gemini 3, nowy lider rankingów AI

---

## Kluczowe fakty

- **Data premiery:** 18 listopada 2025 — Gemini 3 Pro w preview
- **Producent:** Google DeepMind
- **Tryb zaawansowany:** Deep Think — dostępny dla subskrybentów AI Ultra (rollout od początku grudnia 2025)
- **Kontekst wejściowy:** 1 milion tokenów; wyjście: do 64 000 tokenów
- **Dostępność w produktach:** Gemini app, Google AI Studio, Vertex AI, Gemini CLI, NotebookLM (Pro i Ultra)
- **Gemini 3.1 Pro:** kolejna aktualizacja, ogłoszona 19 lutego 2026 (preview)
- **Gemini Robotics-ER 1.6:** ogłoszony równolegle, dostępny przez Gemini API od kwietnia 2026

---

## Benchmarki i wyniki

### Gemini 3 Pro (premiera, listopad 2025)

| Benchmark | Gemini 3 Pro | Uwagi |
|---|---|---|
| LMArena Elo | **1501** | Pierwszy model przekraczający próg 1500 |
| Humanity's Last Exam (bez narzędzi) | **37,5%** | Standard mode |
| Humanity's Last Exam (Deep Think, bez narzędzi) | **41,0%** | Najwyższy opublikowany wynik |
| GPQA Diamond | **91,9%** | Pytania na poziomie doktora z nauk ścisłych |
| GPQA Diamond (Deep Think) | **93,8%** | |
| MMMU-Pro | **81%** | Multimodalne rozumowanie |
| Video-MMMU | **87,6%** | Rozumienie wideo |
| SWE-bench Verified | **76,2%** | Rozwiązywanie prawdziwych zgłoszeń GitHub |
| AIME 2025 (bez narzędzi) | **95%** | Matematyka olimpijska |
| AIME 2025 (z wykonaniem kodu) | **100%** | |
| ARC-AGI-2 (Deep Think) | **45,1%** | Z wykonaniem kodu |
| SimpleQA Verified | **72,1%** | |
| MathArena Apex | **23,4%** | |

**Dodatkowe osiągnięcia:**
- Złote medale w sekcjach pisemnych Olimpiady Fizycznej i Chemicznej 2025 (IPhO, IChO)
- Złoty medal na Międzynarodowej Olimpiadzie Matematycznej (IMO)
- Zwycięstwo w International Collegiate Programming Contest World Finals

### Porównanie z konkurencją (stan na Q1–Q2 2026, dla Gemini 3 Pro i 3.1 Pro)

| Benchmark | Gemini 3.1 Pro | Claude Opus 4.6 | GPT-5.4 |
|---|---|---|---|
| GPQA Diamond | **94,3%** | ~90% | ~93% |
| HLE (z narzędziami) | 51,4% | **53,1%** | ~50% |
| SWE-bench Verified | 80,6% | **80,9%** | wyżej (GPT-5.4) |
| ARC-AGI-2 (Pro) | 77,1% | ~37,6% | **54,2% (GPT-5.2)** |
| LMArena Elo | wysoki | wysoki | wysoki |
| Video-MMMU | **~78%** | znacznie niżej | niżej |

**Gdzie Gemini 3.1 Pro wygrywa:** multimodal (szczególnie wideo), rozumowanie naukowe, koszt (7x tańszy od Claude Opus 4.6 za zapytanie), agentic tasks.
**Gdzie przegrywa lub remisuje:** pisanie kreatywne (Claude), terminal coding (GPT-5.3-Codex), ARC-AGI-2 (GPT-5.2 liderem przy 52-54%).

---

## Możliwości i nowości

### Multimodalność
- Analiza tekstu, obrazów, audio, wideo i kodu jako jednej przestrzeni — natywna multimodalność
- **Video-MMMU: 87,6%** — dominacja w rozumieniu wideo, przewaga nad konkurencją (kolejny model ~71%)
- Szkic w 3D → plik do druku 3D: analiza rysunku, modelowanie kształtu, generowanie pliku STL

### Rozumowanie (Deep Think)
- Równoległe eksplorowanie wielu hipotez jednocześnie — "parallel reasoning"
- Najsilniejszy na rynku w HLE bez narzędzi (41% w Deep Think)
- Rozwiązywanie zadań z chemii, fizyki na poziomie olimpijskim

### Agentyczność
- Project Mariner: 10 równoległych zadań agentic browser (dla subskrybentów AI Ultra)
- Narzędzia: Deep Research, Canvas, połączenie z Google Workspace, live web browsing
- BrowseComp: 85,9% (Gemini 3.1 Pro vs 59,2% poprzednio)
- APEX-Agents: 33,5% (vs 18,4%)
- Terminal-Bench: 68,5% (vs 56,9%)

### Kontekst i wydajność
- 1 milion tokenów kontekstu wejściowego
- Integracja z ekosystemem Google: Gmail, Docs, Sheets, YouTube, Android Studio

---

## Gemini Robotics-ER 1.6

**Co to jest:**
Model reasoningowy dla robotyki fizycznej — specjalizuje się w rozumieniu przestrzennym, wielowidokowym i planowaniu zadań w świecie rzeczywistym. Poprzednia wersja: Gemini Robotics-ER 1.5.

**Kluczowe możliwości:**
- **Precision pointing:** wykrywanie i liczenie obiektów, relacje przestrzenne ("od–do"), trajektorie ruchu, optymalne punkty chwytu
- **Multi-view reasoning:** wiele strumieni kamer jednocześnie, nawet w dynamicznych lub zasłoniętych środowiskach
- **Instrument reading (nowe):** czytanie wskazań mierników, termometrów, wzierników chemicznych (sight glass) — dokładność wzrosła z 23% do 93% (przy agentic vision)
- **Task success detection:** autonomiczne wykrywanie, czy zadanie zostało wykonane poprawnie
- Bezpieczniejszy niż poprzednie wersje — lepsza zgodność z politykami bezpieczeństwa Gemini w adversarial tasks

**Partnerstwo z Boston Dynamics:**
- Integracja z Spot robota i produktem Orbit AIVI-Learning
- Spot autonomicznie patroluje zakłady przemysłowe i odczytuje dane z manometrów, termometrów
- Live od 8 kwietnia 2026 dla wszystkich klientów AIVI-Learning

**Dostępność:**
- Od kwietnia 2026: Gemini API i Google AI Studio

---

## Dostępność i cennik

### Subskrypcje konsumenckie

| Plan | Cena | Co zawiera |
|---|---|---|
| **Google AI Pro** | $19,99/mies. | Gemini 3 Pro, wyższe limity, 2 TB cloud storage, integracja Google Workspace |
| **Google AI Ultra** | $249,99/mies. (intro: $124,99/mies. przez 3 miesiące) | Gemini 3 Pro + Deep Think z max limitami, Veo 3.1, Project Mariner (10 równoległych zadań), 30 TB cloud storage, YouTube Premium |

### API (deweloperzy)
- Gemini API przez Google AI Studio (model ID: `gemini-3-pro-preview`, `gemini-3.1-pro-preview`)
- Vertex AI — dla enterprise
- Gemini Enterprise
- OpenRouter

### Status dostępności
- **Gemini 3 Pro:** preview od listopada 2025; enterprise GA w późniejszym terminie
- **Gemini 3.1 Pro:** preview od 19 lutego 2026
- **Deep Think:** rollout do subskrybentów AI Ultra od grudnia 2025
- **Gemini Robotics-ER 1.6:** API od kwietnia 2026

---

## Reakcje społeczności i ekspertów

**Pozytywne:**
- Wiele głosów na X i Reddit: "Gemini 3 Pro to inny poziom" — szczególnie w matematyce, naukach ścisłych i logice
- Deweloperzy chwalą multimodalność i zdolności reasoningowe
- Matematyk: model poprawnie rozwiązał 23/25 zadań z kwalifikacji do olimpiady matematycznej
- VentureBeat: "Google unveils Gemini 3 claiming the lead in math, science, multimodal, and agentic AI benchmarks"
- Analitycy: Gemini 3 wymusił na OpenAI tryb "code red" i przyspieszenie prac nad GPT-5.2

**Negatywne / krytyka:**
- Stabilność: raporty o "zapominaniu" historii rozmów w trakcie sesji
- Wyższe latency (często 10–15 s vs konkurencja)
- Kosztowny tryb premium ($249,99/mies. AI Ultra)
- Konserwatywne safety guardrails w niektórych zastosowaniach

**Eksperci:**
- Medium: "Everyone Said AI Hit a Wall. Google Just Smashed Through It with Gemini 3"
- Fortune: OpenAI w trybie "code red" po premierze Gemini 3
- CNN: "Gemini 3 gives Google a boost in the AI race against OpenAI and Nvidia"

---

## Kontekst konkurencji

**Pozycja przed premierą Gemini 3:**
GPT-5 (OpenAI) miał sierpniowy release 2025 opisywany jako "underwhelming"; Claude od Anthropic dominował w pisaniu i zadaniach agentic.

**Po premierze Gemini 3:**
- Gemini 3 Pro przejął #1 na LMArena (1501 Elo) — pierwsza przekroczona granica 1500
- OpenAI przyspieszyło prace wewnętrzne — raporty o "code red" i wstępnym GPT-5.2/6
- Gemini ma 650 mln MAU (lipiec 2025: 450 mln), ChatGPT ~800 mln WAU

**Stan na kwiecień 2026 (Gemini 3.1 Pro):**
- Gemini prowadzi w: multimodal (szczególnie wideo), reasoning science, kosztach API
- Claude Opus 4.6 prowadzi w: pisaniu kreatywnym, preferowaniu przez oceniających ludzkich (47% vs 29% GPT vs 24% Gemini)
- GPT-5.4 prowadzi w: zaawansowanym coding terminal, ARC-AGI-2

**Strategia Google:**
Google gra ekosystemem — Gemini 3 głęboko zintegrowany z Workspace, Android, YouTube, Cloud. Dla firm już na Google Cloud to naturalna ścieżka adopcji AI agentycznej.

---

## Kąty contentowe

1. **"Pierwszy model powyżej 1500 Elo"** — co to znaczy w praktyce? Czy to już AGI?
2. **Deep Think vs zwykły tryb** — różnica 37,5% vs 41% na HLE. Kiedy warto płacić za Ultra?
3. **Gemini dla zwykłego człowieka** — co zmienia 1 milion tokenów kontekstu? (np. cała seria Harry'ego Pottera w jednym oknie)
4. **Robot czytający manometry** — dlaczego 23% → 93% w instrument reading to przełom dla przemysłu; co to oznacza dla pracy w fabrykach
5. **Google kontra OpenAI — wyścig zbrojeniowy 2025/26** — kto faktycznie prowadzi i po co w ogóle śledzić te benchmarki?
6. **Gemini 3 za darmo vs za 250 dolarów** — co dostaje zwykły użytkownik, a co subskrybent Ultra?
7. **Olimpijczyk AI** — złote medale z fizyki, chemii i matematyki. Kiedy AI zacznie pomagać naukowcom realnie?
8. **Czy Gemini 3 zastąpi ChatGPT?** — dla 650 mln użytkowników miesięcznie kontra 800 mln ChatGPT

---

## Źródła

- [Gemini 3: Introducing the latest Gemini AI model from Google — Google Blog](https://blog.google/products-and-platforms/products/gemini/gemini-3/)
- [Google unveils Gemini 3 — VentureBeat](https://venturebeat.com/ai/google-unveils-gemini-3-claiming-the-lead-in-math-science-multimodal-and)
- [Gemini 3 Deep Think — Google Blog](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-deep-think/)
- [Gemini 3 Deep Think w Gemini app — Google Blog](https://blog.google/products/gemini/gemini-3-deep-think/)
- [Google rolling out Gemini 3 Deep Think to AI Ultra — 9to5Google](https://9to5google.com/2025/12/04/gemini-3-deep-think/)
- [Gemini 3 Benchmarks — Vellum AI](https://www.vellum.ai/blog/google-gemini-3-benchmarks)
- [Gemini 3 Pro: Complete Guide — llm-stats.com](https://llm-stats.com/blog/research/gemini-3-pro-launch)
- [Gemini 3.1 Pro — Google DeepMind](https://deepmind.google/models/gemini/pro/)
- [Gemini 3.1 Pro — Datacamp](https://www.datacamp.com/blog/gemini-3-1)
- [Gemini Robotics-ER 1.6 — Google DeepMind Blog](https://deepmind.google/blog/gemini-robotics-er-1-6/)
- [Gemini Robotics-ER 1.6 — Google Blog](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-robotics-er-1-6/)
- [DeepMind launches Gemini Robotics-ER 1.6 — SiliconANGLE](https://siliconangle.com/2026/04/15/deepmind-launches-gemini-robotics-er-1-6-meet-precise-physical-ai-demands/)
- [Gemini Robotics-ER 1.6 — Humanoids Daily](https://www.humanoidsdaily.com/news/google-deepmind-unveils-gemini-robotics-er-1-6-a-leap-in-spatial-reasoning-and-industrial-utility)
- [Gemini Robotics-ER 1.6 — MarkTechPost](https://www.marktechpost.com/2026/04/15/google-deepmind-releases-gemini-robotics-er-1-6-bringing-enhanced-embodied-reasoning-and-instrument-reading-to-physical-ai/)
- [Google AI Pro & Ultra — subskrypcje](https://gemini.google/subscriptions/)
- [Google AI Ultra $249 — Happycapy Guide](https://happycapyguide.com/blog/google-ai-ultra-249-subscription-tier-gemini-2026)
- [Gemini Pricing 2026 — ScreenApp](https://screenapp.io/blog/gemini-pricing)
- [GPT-5.4 vs Claude Opus 4.6 vs Gemini 3.1 Pro — MindStudio](https://www.mindstudio.ai/blog/gpt-54-vs-claude-opus-46-vs-gemini-31-pro-benchmarks)
- [Gemini 3.1 Pro Leads Most Benchmarks But Trails Claude in Some Tasks — Trending Topics](https://www.trendingtopics.eu/gemini-3-1-pro-leads-most-benchmarks-but-trails-claude-opus-4-6-in-some-tasks/)
- [OpenAI 'code red' po premierze Gemini 3 — Fortune](https://fortune.com/2025/12/17/sam-altman-chatgpt-openai-versus-google-gemini-code-red-strategy/)
- [Gemini 3 gives Google a boost — CNN Business](https://www.cnn.com/2025/11/29/tech/ai-chips-google-gemini-3-tpu-nvidia)
- [Gemini 3 Reddit Reviews — AntigravityAIIDE](https://antigravityaiide.com/gemini-3-reddit)
- [Everyone Said AI Hit a Wall — Medium](https://ninza7.medium.com/everyone-said-ai-hit-a-wall-google-just-smashed-through-it-with-gemini-3-25ef0ebbb0b1)
- [Gemini 3 Developer Guide — Google AI for Developers](https://ai.google.dev/gemini-api/docs/gemini-3)
- [What Gemini features you get with AI Pro & Ultra — 9to5Google](https://9to5google.com/2026/04/11/google-ai-pro-ultra-features/)
