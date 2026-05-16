# GPT-5.5 "Spud" — notatka badawcza
Data opracowania: 2026-04-30

---

## Podstawowe fakty

- Data premiery: 23 kwietnia 2026 ("Spud" — wewnętrzna nazwa kodowa)
- Opisany przez OpenAI jako "pierwszy w pełni przetrenowany model bazowy od czasu GPT-4.5"
- Dostępny od 24 kwietnia 2026 w ChatGPT (Plus, Pro, Business, Enterprise) i Codex
- API: $5/$30 za milion tokenów wejściowych/wyjściowych (2x drożej niż GPT-5.4: $2.50/$5)
- GPT-5.5 Pro (wyższy tier): $30/$180 za milion tokenów

---

## 1. Benchmarki i porównania

### Gdzie GPT-5.5 prowadzi:
- **Terminal-Bench 2.0:** 82.7% — najlepsza archiwizacja w testach realnych workflow terminalowych
- **ARC-AGI-2:** 85.0% (vs GPT-5.4: 73.3%) — wzrost o 11.7 punkta
- **MRCR v2 (1M tokenów, długi kontekst):** 74.0% (vs GPT-5.4: 36.6%) — ponad dwukrotny wzrost
- **GDPval-AA i APEX-Agents-AA:** lider w kategorii agentic workflows

### Gdzie GPT-5.5 przegrywa:
- **HLE (Humanity's Last Exam):** 41.4% — Claude Opus 4.7 osiąga 46.9%, Gemini 3.1 Pro: 44.4%
- **SWE-bench Pro (coding):** 58.6% — Claude Opus 4.7 bije wynikiem 64.3%
- **MCP Atlas (multi-tool orchestration):** 75.3% — Claude Opus 4.7: 79.1%

### Intelligence Index (Artificial Analysis):
- GPT-5.5: 60 pkt
- Gemini 3.1 Pro: 57 pkt (ale przy cenach $2/$12 — 60% tańszy za porównywalną jakość)

### Wniosek z benchmarków:
GPT-5.5 dominuje w agentic tasks, research i automatyzacji terminalowej. Claude Opus 4.7 wygrywa w software engineering i złożonej orkiestracji narzędzi. Gemini 3.1 Pro oferuje podobną jakość rozumowania przy znacznie niższych kosztach.

---

## 2. Architektura — co znaczy "zunifikowana"

- **Natywna omnimodalność** — tekst, obrazy, audio i wideo przetwarzane w jednym modelu (nie jako pipeline osobnych modeli sklejonych razem; wcześniejsze podejścia OpenAI były określane jako "pipelines in a trench coat")
- **Hardware co-design** — model był projektowany razem z infrastrukturą NVIDIA GB200 i GB300 NVL72 (rack-scale systems); pozwoliło to na optymalizację efektywności wnioskowania na poziomie niedostępnym dla poprzednich modeli
- Długi kontekst: do 1 miliona tokenów
- Lepsze kalibrowanie — model rzadziej kontynuuje z błędnym planem ("less likely to proceed confidently with a bad plan")

---

## 3. GPT-5.5 vs GPT-5 — co mówi "5.5" o strategii OpenAI

### Co się zmieniło względem GPT-5.4:
- Lepsza regeneracja po błędach w trakcie długich zadań (mid-task error recovery)
- Bardziej efektywne wywołania narzędzi
- Lepsza spójność na długich kontekstach
- Ulepszenia przede wszystkim w agentic workflows, nie w klasycznym czacie

### Dlaczego "5.5", a nie GPT-6:
- OpenAI zachowało wersjonowanie wewnątrz rodziny GPT-5, żeby sygnalizować istotny, ale ewolucyjny (nie rewolucyjny) postęp
- Ceny wzrosły 2x, co wskazuje na premium positioning w ramach generacji
- To pierwszy model OpenAI pozycjonowany **przede wszystkim jako agent runtime**, nie model czatu

### Tempo wydań:
- W 2024 r. średni odstęp między flagship modelami wynosił 16 tygodni
- W 2026 r. — poniżej 8 tygodni (Anthropic, OpenAI, Google DeepMind)

---

## 4. Opinie deweloperów i early users

### Pozytywne:
- Matt Shumer (X): "MASSIVE leap forward" w złożonych zadaniach agentic
- Deweloperzy doceniają, że model "rozumie kształt systemu" — nie tylko naprawia błąd, ale rozumie, gdzie leży problem i co jeszcze może być dotknięte
- W Codex: "delivers better results with fewer tokens than GPT-5.4 for most users"

### Mieszane / negatywne:
- Matt Shumer zastrzegł: "for 99% of users, it probably won't matter" i wskazał na "one BIG, incredibly frustrating regression" (bez szczegółów)
- Reakcja środowiska deweloperskigo była "split" — część zespołów przeszła natychmiast, inne zostały przy Claude Opus 4.7
- Skargi na: "does not do what you meant" / "gets lazy" w długich zadaniach
- Szybsze spalanie tokenów niż GPT-5.4

### Ogólny werdykt społeczności:
GPT-5.5 to model dla power-userów. Zyski widoczne przede wszystkim w złożonych, wieloetapowych zadaniach agentic. Nie jest bezrefleksyjnym zamiennikiem dla każdego.

---

## 5. Codex — co to i jak GPT-5.5 jest tam zintegrowany

- Codex (2026) to agentic coding application od OpenAI — nie mylić ze starym Codex (model do kodowania z 2021 r.)
- Dostępny jako: CLI, IDE plugin, w ChatGPT, z obsługą "computer-use" (obsługa komputera jak agent)
- 4 miliony deweloperów tygodniowo (wg OpenAI)
- GPT-5.5 jest modelem bazowym dla całego Codex
- Infrastruktura: NVIDIA GB200 NVL72 rack-scale systems
- GPT-5.5 był używany przez sam zespół OpenAI do budowania GPT-5.5 (Codex wspomagał przyspieszenie od pomysłu do implementacji)
- Codex + GPT-5.5 to część szerszej strategii "super-app": OpenAI planuje połączyć ChatGPT, Codex i Atlas browser agent w jedną sesję/aplikację

---

## 6. Kontekst rynkowy — pozycjonowanie względem Anthropic i Google

### Udziały rynkowe (kwiecień 2026):
- Anthropic: ~40% enterprise LLM spending
- OpenAI: ~27% enterprise LLM spending

### GPT-5.5 vs Anthropic Claude Opus 4.7:
- GPT-5.5 wydany kilka dni po premierze Claude Opus 4.7 — jedno z najszybszych konkurencyjnych odpowiedzi w historii AI
- Claude Opus 4.7 wyprzedza GPT-5.5 w SWE-bench Pro (+5.7 pkt) i HLE (+5.5 pkt)
- GPT-5.5 wyprzedza Claude w agentic coding i Terminal-Bench
- Anthropic hold: 40% enterprise vs OpenAI 27% — OpenAI walczy o odzyskanie prowadzenia

### GPT-5.5 vs Google Gemini 3.1 Pro:
- Google prowadzi na zbliżonym poziomie w reasoning benchmarks, ale przy 60% niższej cenie
- Google skupia się na integracji z Search, Android, produktywnością
- OpenAI stawia na "agentic AI" jako autonomiczne narzędzie pracy

### Strategia OpenAI:
- Greg Brockman (president): GPT-5.5 to "new class of intelligence" dla "real, long-horizon work"
- OpenAI buduje wokół GPT-5.5 ujednoliconą "super-app" łączącą ChatGPT + Codex + Atlas
- Główna stawka: leader w agentic AI i automatyzacji zadań, nie tylko w klasycznym czacie

---

## Źródła

- [Introducing GPT-5.5 — OpenAI](https://openai.com/index/introducing-gpt-5-5/)
- [GPT-5.5 System Card — OpenAI Deployment Safety Hub](https://deploymentsafety.openai.com/gpt-5-5)
- [OpenAI's GPT-5.5 is the new leading AI model — Artificial Analysis](https://artificialanalysis.ai/articles/openai-gpt5-5-is-the-new-leading-AI-model)
- [GPT-5.5 Review: Benchmarks, Pricing & Vs Claude — BuildFastWithAI](https://www.buildfastwithai.com/blogs/gpt-5-5-review-2026)
- [Everything You Need to Know About GPT-5.5 — Vellum](https://www.vellum.ai/blog/everything-you-need-to-know-about-gpt-5-5)
- [GPT-5.5 vs Claude Opus 4.7 vs Gemini 3.1 Pro for Builders — MindStudio](https://www.mindstudio.ai/blog/gpt-5-5-review-developers-builders)
- [GPT-5.5: Capabilities and Reactions — Zvi Mowshowitz (Substack)](https://thezvi.substack.com/p/gpt-55-capabilities-and-reactions)
- [OpenAI releases "Spud" GPT-5.5 model — Axios](https://www.axios.com/2026/04/23/openai-releases-spud-gpt-model)
- [How to Use OpenAI Codex: Complete 2026 Guide — Tosea.ai](https://tosea.ai/blog/openai-codex-complete-guide-2026)
- [OpenAI's New GPT-5.5 Powers Codex on NVIDIA Infrastructure — NVIDIA Blog](https://blogs.nvidia.com/blog/openai-codex-gpt-5-5-ai-agents/)
- [OpenAI Launches GPT-5.5 in Enterprise Fight With Anthropic — Implicator](https://www.implicator.ai/openai-launches-gpt-5-5-to-reclaim-enterprise-lead-from-anthropic/)
- [GPT-5.5 Launch: OpenAI Ships Agentic Super-App Engine — The Planet Tools](https://theplanettools.ai/blog/openai-gpt-5-5-launch-super-app-strategy-agentic-model-april-2026)
- [AI Model Benchmarks Apr 2026 — LM Council](https://lmcouncil.ai/benchmarks)
- [TechCrunch — OpenAI ChatGPT GPT-5.5 AI Model Superapp](https://techcrunch.com/2026/04/23/openai-chatgpt-gpt-5-5-ai-model-superapp/)
