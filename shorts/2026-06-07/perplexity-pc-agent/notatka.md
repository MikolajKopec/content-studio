# Perplexity zapowiada agenta na PC — lipiec, Intel + Nvidia RTX Spark, dane na dysku

**Data:** 2026-06-07
**Temat:** Perplexity ogłasza Personal Computer Agent z hybrydową architekturą lokalno-chmurową, w której wrażliwe dane (finanse, zdrowie, hasła) nigdy nie opuszczają urządzenia użytkownika.

---

## Kluczowe fakty i liczby

- **5 czerwca 2026** — Perplexity oficjalnie zapowiedziało hybrydowy orchestrator inferencji dla Personal Computer, ogłoszony na Computex 2026 razem z Intelem.
- Premiera funkcji hybrydowej w aplikacji Perplexity Computer zaplanowana na **lipiec 2026**, początkowo wyłącznie na **Windows**.
- Agent koordynuje pracę **19–20 modeli AI** w jednym workflow (Model Council uruchamia równolegle **3 frontier modele**).
- Sprzęt demonstracyjny: **Intel Core Ultra Series 3** (demo na keynote Lip-Bu Tana) oraz **NVIDIA RTX Spark**; architektura określana jako "model-agnostic i chip-agnostic".
- Personal Computer już działa na Macu od **16 kwietnia 2026**; wymaga subskrypcji **Perplexity Max za 200 USD/mies.** z pulą **10 000 kredytów obliczeniowych miesięcznie**.
- Comet (przeglądarka Perplexity) wystartowała **9 lipca 2025** na Windows/Mac, na iOS dotarła **18 marca 2026**; Personal Computer ją integruje, nie zastępuje.
- Aravind Srinivas na CNBC (3 czerwca): **"Data center is coming to your laptop"** — value-per-watt ma decydować o wygranej w wyścigu AI.
- Konkurencyjne Anthropic Computer Use działa na **Claude Opus 4.7** (premiera **16 kwietnia 2026**), a OpenAI Codex Computer Use korzysta z **GPT-5.4** z oknem **1 mln tokenów** — oba przepuszczają wszystko przez chmurę.

## Co potrafi agent (lista zadań)

- **Sterowanie aplikacjami Microsoft Office** na Windows: Word, Excel, PowerPoint, Outlook (integracja zapowiedziana na premierę Windows).
- **Edycja plików lokalnych** na dysku użytkownika bez wysyłania ich treści do chmury, jeśli zostaną sklasyfikowane jako wrażliwe.
- **Lokalne przeglądanie webu** przez przeglądarkę Comet — agent klika, scrolluje, wypełnia formularze.
- **Automatyzacja długich procesów** 24/7 (na Macu rekomendowany dedykowany Mac mini jako always-on host).
- **Orkiestracja zewnętrznych usług**: Gmail, Slack, GitHub, Notion, Salesforce.
- **Voice orchestration** — wydawanie poleceń głosem.
- **Klasyfikacja wrażliwości danych w locie** — kompaktowy lokalny model działa jak "traffic cop" decydujący, co zostaje, a co leci do chmury.
- **Audit trail i kill switch** — każda sesja generuje pełny zapis, wrażliwe akcje wymagają explicit approval.

## Architektura hybrydowa (co lokalnie, co w chmurze)

**Lokalnie (na PC użytkownika):**
- **Kompaktowy router-model** klasyfikujący każdy subtask po wrażliwości danych i wymaganiach obliczeniowych.
- Wrażliwe pliki: dokumenty finansowe, dane medyczne, hasła, prywatne pliki.
- Proste zadania: streszczenie własnego dokumentu, formatowanie tekstu, lekka klasyfikacja, OCR, parsowanie lokalnych plików.
- Sama treść tych danych nigdy nie opuszcza urządzenia — w chmurze może lądować co najwyżej metadana lub zapytanie kontekstowe.

**W chmurze (Perplexity + frontier models):**
- Ciężkie rozumowanie wymagające frontier-class modeli (Claude Opus, GPT-5.4, Sonar i in.).
- Web search, deep research, multi-step reasoning na danych publicznych.
- Generacja długich odpowiedzi i kodu.

**Klucz**: orchestrator rozdziela jeden task na podzadania mid-flight, bez ręcznej konfiguracji użytkownika. To inaczej niż Copilot+ PC od Microsoftu, które wybiera albo–albo na poziomie aplikacji.

## Wymagania sprzętowe (RTX Spark, Intel — które laptopy?)

- **Intel Core Ultra Series 3** — laptopy nowej generacji z dedykowanym NPU pokazane na Computex 2026 (keynote Lip-Bu Tana).
- **NVIDIA RTX Spark** — układ AI-PC od Nvidii, projektowany pod lokalną inferencję modeli **10–20B parametrów**.
- Perplexity nie podało jeszcze **minimalnego progu TOPS** (dla porównania Microsoft Copilot+ PC wymaga **40+ TOPS NPU**).
- Architektura ma być **chip-agnostic** — w teorii zadziała też na innych NPU/GPU spełniających wymagania kompaktowego modelu lokalnego.
- Na Macu (gdzie Personal Computer już istnieje) bazą jest **Apple Silicon (M-series)** z Neural Engine.
- **Waitlista na Windows** otwarta od 2–3 czerwca 2026 — wymagana rejestracja, brak publicznej ceny dla wersji konsumenckiej hybrydy.

## Porównanie z ChatGPT/Anthropic Computer Use

| Cecha | Perplexity Personal Computer | OpenAI Codex Computer Use | Anthropic Claude Computer Use |
|---|---|---|---|
| Model bazowy | 19+ modeli (Model Council, multi-router) | GPT-5.4 (1M token context) | Claude Opus 4.7 |
| Architektura | Hybrydowa lokalno-chmurowa | Czysto chmurowa | Czysto chmurowa (sandbox po stronie dewelopera) |
| Wrażliwe dane lokalnie | **TAK** — finanse, zdrowie, hasła zostają na dysku | Nie — wszystko leci do OpenAI | Nie — wszystko leci do Anthropic |
| Sprzęt dedykowany | Intel Core Ultra Series 3 / RTX Spark | Dowolny (chmura) | Dowolny (chmura) |
| OS premierowy | Mac (od kwietnia), Windows (lipiec 2026) | Wszędzie, gdzie działa ChatGPT | API + Claude Code |
| Cena | Perplexity Max **200 USD/mies.** (Mac); waitlista Windows | Wliczone w ChatGPT Plus/Pro/Codex | Po tokenach przez API; Claude Code w planie |
| Audit trail / kill switch | Pełny, plus reversible actions | Captures & replays w in-app browser pane | Po stronie dewelopera |
| Hasło marketingowe | "Twoje dane nie opuszczają komputera" | Generalny agent w przeglądarce | Generalny agent dla deweloperów |

## Implikacje dla użytkownika (prywatność vs wygoda)

- **Pierwszy konsumencki agent AI** z eksplicytnym marketingiem "data stays on device" — dotąd lokalność oznaczała self-hosted Llama/Mistral, nie pełnoprawny produkt z UX.
- **Trade-off**: trzeba kupić nowy laptop z Intel Core Ultra Series 3 lub RTX Spark, żeby skorzystać z hybrydy — wykluczeni są właściciele starszego sprzętu.
- **Otwarte pytania bezpieczeństwa**: heise wskazuje, że nie wiadomo, jak dokładnie router decyduje, co jest "wrażliwe", ani jakie metadane mimo wszystko trafiają na serwery Perplexity.
- **Ryzyko prompt injection** — Zenity Labs już opisała atak "PerplexedBrowser" pozwalający wyciągnąć lokalne pliki przez Comet; hybrydowy agent ten attack surface poszerza.
- **Dla biznesu** — argument compliance: finanse, healthcare, prawo mogą sięgnąć po agenta bez audytu zgodności wysyłania danych do chmury.
- **Konkurencja ChatGPT/Anthropic** musi odpowiedzieć — albo własną hybrydą, albo agresywniejszym sandboxingiem.
- **Aravind Srinivas**: zwycięży ten, kto da najwięcej **"value per watt"** — czyli najwięcej AI na jednostkę energii. Lokalne NPU wbija się w tę narrację.

---

## Potencjalne kąty narracyjne do shorta

1. **"Pierwszy agent AI, który nie wysyła twoich haseł do chmury"** — clean kontrast z ChatGPT i Claude'em, które przepuszczają wszystko przez serwer.
2. **"Perplexity: kup nowy laptop, a my obiecujemy, że twoje dane medyczne tu zostaną"** — gorzki realizm: prywatność za cenę nowego sprzętu.
3. **"200 dolarów miesięcznie za agenta, który mieszka na twoim Mac mini i pracuje 24/7"** — konkretna liczba + always-on jako produkt.
4. **"Aravind Srinivas: 'data center przeprowadza się na twojego laptopa'"** — wizja dyrektora w jednym zdaniu, łatwa do zacytowania.
5. **"Demo Perplexity na Computex: agent klasyfikuje twoje pliki jak celnik na granicy"** — "traffic cop" metafora dla lokalnego routera modeli.
6. **"19 modeli AI w jednym agencie — Perplexity gra inaczej niż OpenAI i Anthropic"** — multi-model orchestration jako wyróżnik.
7. **"Microsoft wymaga 40 TOPS, Perplexity jeszcze nie powiedział — i już ma waitlistę"** — branżowy kontrast, hint na exclusivity.

---

## Źródła

- [Perplexity AI Introduces Hybrid Local-Server Inference Orchestrator for Personal Computer — MarkTechPost](https://www.marktechpost.com/2026/06/05/perplexity-ai-introduces-hybrid-local-server-inference-orchestrator-for-personal-computer-automatic-on-device-and-cloud-task-routing/)
- [Perplexity AI unveils hybrid local-cloud inference system at Computex 2026 — VentureBeat](https://venturebeat.com/technology/perplexity-ai-unveils-hybrid-local-cloud-inference-system-at-computex-2026)
- [Perplexity Wants Your Laptop to Do Part of the AI Work — Decrypt](https://decrypt.co/369941/perplexity-hybrid-ai-local-cloud-mode)
- [Perplexity automatically distributes AI computing power between device and cloud — heise online](https://www.heise.de/en/news/Perplexity-automatically-distributes-AI-computing-power-between-device-and-cloud-11318703.html)
- [Perplexity Brings Orchestrator Agent Personal Computer to Windows — OpenTools](https://opentools.ai/news/perplexity-personal-computer-windows-launch)
- [Perplexity CEO: Value Per Watt Will Define AI Winners — AI Magazine](https://aimagazine.com/news/perplexity-ceo-value-per-watt-will-define-ai-winners)
- [Perplexity turns your Mac mini into a 24/7 AI agent — The Next Web](https://thenextweb.com/news/perplexity-personal-computer-enterprise)
- [Perplexity vs Codex vs Claude Computer Use: Best Mac AI Agent — AI Catchup](https://aicatchup.com/comparisons/perplexity-vs-codex-vs-claude-computer-use)
- [Perplexity & Intel Unveil Hybrid AI — H2S Media](https://www.how2shout.com/ai/perplexity-intel-hybrid-inference-orchestrator-computex-2026.html)
- [PerplexedBrowser: Perplexity's Agent Browser Can Leak Your Personal PC Local Files — Zenity Labs](https://labs.zenity.io/p/perplexedbrowser-perplexity-s-agent-browser-can-leak-your-personal-pc-local-files)
