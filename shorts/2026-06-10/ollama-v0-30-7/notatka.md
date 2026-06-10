# Ollama v0.30.7 — Hermes Desktop i Gemma 4 z optymalizacją QAT

**Data:** 2026-06-10
**Temat:** Ollama w ciągu dwóch dni wypuszcza v0.30.6 i v0.30.7 — wprowadza natywny desktop dla agenta Hermes i pełną rodzinę Gemma 4 QAT, która tnie wymagania VRAM o ~72%.

---

## Kluczowe fakty i liczby

- **v0.30.6 wyszło 7 czerwca 2026**, a **v0.30.7 dzień później (8 czerwca 2026)** — błyskawiczny patch wymuszony przez dorzucenie Hermes Desktop i poprawkę listy modeli w API OpenAI-compatible.
- Ollama dodała **5 wariantów Gemma 4 QAT**: `gemma4:e2b-it-qat`, `e4b-it-qat`, `12b-it-qat`, `26b-a4b-it-qat`, `31b-it-qat`.
- Google DeepMind opublikował checkpointy Gemma 4 QAT **5 czerwca 2026** — twierdzi, że QAT obniża zużycie VRAM o **~72%** względem BF16 przy zachowaniu jakości oryginału.
- W formacie mobilnym (specjalny schemat 2-bitowy dla warstw generujących tokeny) **Gemma 4 E2B zmieściła się w 1 GB RAM** — wobec **9,6 GB w pełnym BF16**.
- **Gemma 4 31B (dense)** w QAT mieści się w **~18 GB VRAM** zamiast wcześniejszych **80–96 GB w BF16** (plik 61,4 GB) — to różnica między kartą H100 a zwykłym RTX 4090.
- **Gemma 4 31B osiąga 87,1% MMLU** i **76,8% HumanEval** — według benchmarków twórcy zajmuje #3 wśród open-weight modeli na świecie.
- Ollama oficjalnie pozycjonuje się jako runtime dla: **Kimi-K2.6, GLM-5.1, MiniMax M2.7, DeepSeek V4, gpt-oss, Qwen3.5, Gemma 4** — README repo zostało przepisane.
- Cloud catalog Ollama ma **ok. 20 modeli** (m.in. Qwen3-Coder-Next, DeepSeek V4 Pro/Flash, Gemini 3 Flash Preview, Nemotron 3 Super).

## Co dokładnie dowozi v0.30.6 (7 czerwca)

- **Pełna rodzina Gemma 4 QAT** w domyślnym registry Ollama — pull `ollama pull gemma4:31b-it-qat` działa od razu.
- **Oh My Pi** — integracja agenta kodującego z funkcjonalnością IDE bezpośrednio nad Ollamą.
- **MLX embedding layers** — warstwy embeddingowe na Apple Silicon przeszły na **NVFP4 global scale**, co poprawia kwantyzację i wydajność na M-series.
- **Cline CLI auto-install docs** — instrukcje, jak postawić agenta Cline (open-source coding agent z VS Code, **5 mln instalacji, 58 tys. gwiazdek**, finansowanie **32 mln USD Series A od Emergence Capital**) na lokalnym modelu z Ollamą.

## Co dowozi v0.30.7 (8 czerwca)

- **`ollama launch hermes-desktop`** — natywny launcher dla aplikacji Hermes Desktop od NousResearch.
- **Windows config path** — natywna obsługa ścieżek konfiguracyjnych Windows (PowerShell installer).
- **OpenAI-compatible `/v1/models`** — końcówka teraz zwraca dokładną listę aktywnych tagów modeli (wcześniej rozjeżdżała się ze stanem registry).
- **Aktualizacja Zod schema examples** — przykłady używają natywnego `toJSONSchema` helpera (przykład API dla TypeScripta).
- **Dokumentacja procesu update'u llama.cpp** — przejrzysty workflow dla maintainerów.

## Gemma 4 QAT — wymagania VRAM (porównanie)

| Model | BF16 (plik) | BF16 (safer VRAM) | Q4_K_M (plik) | Q4_K_M (safer VRAM) |
|---|---|---|---|---|
| **E2B** | 9,31 GB | 16 GB | 3,11 GB | 8 GB |
| **E4B** | 15,05 GB | 24 GB | 4,98 GB | 12 GB |
| **26B-A4B (MoE)** | 50,51 GB | 80 GB | 16,87 GB | 24 GB |
| **31B (dense)** | 61,41 GB | 96 GB | 18,32 GB | 32 GB |

Format mobilny (osobny od Q4_0) obniża E2B do **~1 GB RAM** — to model, który mieści się w pamięci telefonu.

## Gemma 4 — benchmarki

| Model | MMLU | HumanEval |
|---|---|---|
| Gemma 4 E2B | 68,2% | 54,3% |
| Gemma 4 E4B | 73,9% | 62,1% |
| Gemma 4 26B-A4B | 82,7% | 73,2% |
| Gemma 4 31B | **87,1%** | **76,8%** |

- Gemma 4 31B wyprzedza Llamę 4 na MMLU o ~3,4 pp, traci do GPT-4 ~2,1 pp.
- **MT-Bench 8,52/10** — #3 wśród open-source.
- **GSM8K 91,2%** z chain-of-thought.
- W stosunku do Gemmy 3 raportowana poprawa **+8,7% na HumanEval** przy tym samym sprzęcie.

## Hermes Desktop — co to dokładnie jest?

- Natywny desktop **NousResearch** (twórcy Hermes Agent — agentowy core z CLI/SDK), zbudowany na React + backend `hermes dashboard` rozmawiający przez gateway API.
- **macOS, Windows, Linux** — pełne wsparcie trzech platform.
- **Cmd/Ctrl+K command palette**, rebindable shortcuty, custom zoom — UX bliższe Linear/Raycast niż klasycznym launcherom LLM.
- Wbudowany **file browser** (`hermes desktop --cwd <path>`), live tool activity w prawym panelu, preview rail dla stron www i outputów narzędzi.
- **Voice mode** — rozmowa głosowa z agentem (mikrofon prompt na macOS).
- Settings GUI dla providerów, kluczy, modeli, toolsetów, **MCP serwerów** — bez grzebania w YAML.
- **Session sync** między CLI, TUI i desktopem (`@session` linki cross-profile).
- **Remote backend** — można podpiąć agenta z innej maszyny (user/pass na zaufanej sieci, OAuth w publicznym internecie).
- Pakuje runtime Hermes do `HERMES_HOME` w tym samym layout co CLI — instalacje są wymienne.

## Hermes Desktop vs LM Studio vs Jan

| | Hermes Desktop | LM Studio | Jan |
|---|---|---|---|
| Natywne 3 OS | tak (macOS/Win/Linux) | tak | tak |
| Agentowy core (nie tylko chat) | **tak** (Hermes Agent) | nie | częściowo |
| MCP serwery natywnie w UI | **tak** | nie (eksperymentalnie) | tak |
| Plugins/Skills | **tak (Python, shell, MCP, gateway hooks)** | extensions beta | extensions |
| Command palette | **tak (Cmd+K)** | nie | nie |
| Voice mode | **tak** | nie | nie |
| Sync CLI ↔ desktop | **tak** | nie | nie |
| Remote backend | **tak (OAuth)** | nie | częściowo |

Czyli Hermes Desktop to nie kolejny chat-wrapper na modele — to GUI nad pełnym agentem z toolsami, MCP i pluginami.

## Cline CLI integration — kto i po co

- **Cline** = open-source autonomous coding agent (VS Code, JetBrains, headless CLI), konkurent Cursora/Continue.
- **5 mln instalacji, 58 000+ gwiazdek** (kwiecień 2026), **$32 M Series A** od Emergence Capital.
- W v0.30.6 Ollama dorzuciła **oficjalne docsy auto-install** — jeden CLI command stawia Cline'a podpiętego do lokalnego runtime.
- Rekomendowany context window: **min. 32K tokenów** (coding tools tego potrzebują).
- Rekomendowane modele przez ollama.com: **`qwen3-coder:480b`** i **`deepseek-v3.1:671b`** (cloud) lub lokalnie Gemma 4 31B / Qwen3.

## Polski kontekst (Bielik, PLLuM)

- **Bielik** (SpeakLeash + ACK Cyfronet AGH) — rodzina **1,5 B – 11 B parametrów**, najnowsza wersja **Bielik 11B v3** dostępna w Ollamie przez `SpeakLeash/bielik-11b-v3.0-instruct` (oraz starsze tagi `mwiewior/bielik`, `SpeakLeash/bielik-7b-instruct-v0.1-gguf`).
- **PLLuM** — narodowy projekt MCiR (konsorcjum HIVE), trenowany na **140 mld tokenów** polskiego korpusu, warianty **8 B – 70 B**, dostępny w Ollamie przez `PRIHLOP/PLLuM`.
- Oba modele lecą jako społecznościowe paczki (nie ma ich w README "Get up and running with..."), ale działają od ręki przez `ollama pull` — niska bariera dla polskich devów testujących stacka Hermes Desktop + lokalny model PL.

## Porównanie do v0.30.5

- v0.30.5 koncentrował się na Qwen3 finetuning workflow, naprawach Vulkana i embeddingach gpt-oss.
- v0.30.6 i v0.30.7 razem to dramatyczne pchnięcie w stronę **agent-first** (Hermes Desktop, Cline, MCP) i **memory-efficient on-device** (Gemma 4 QAT, Apple NVFP4).
- Tempo: dwa releasy w 24 h to znak, że Ollama goni Hermes Agent jako pełnoprawny "okienkowy" lokalny stack AI — bezpośrednie wejście w segment LM Studio / Jan.

## Implikacje dla użytkownika

- Modele klasy **MMLU 87%** dało się dotąd odpalić tylko na hardware za $30k+. Z QAT — RTX 4090 (24 GB) wystarczy.
- Telefon z **1 GB RAM** dla E2B = realna LLM-owa inferencja na entry-level Androidach.
- Lokalne agenty (Hermes + Cline + MCP) wchodzą do mainstreamu — Ollama staje się nie runtime'em do chatu, tylko platformą dla on-device automation.
- Polacy mogą uruchomić Bielika/PLLuM-a w Hermes Desktop z natywnym GUI — bez konfiguracji, bez YAML.

---

## Potencjalne kąty narracyjne do shorta

- **"Model AI za 30 tysięcy dolarów odpalisz teraz na karcie do gier"** — Gemma 4 31B z VRAM 96 GB → 18 GB, paradoksalny kontrast hardware'owy.
- **"Google zmniejszył model AI z 9,6 GB do 1 GB — bez utraty jakości"** — czysty konkretny number drop, idealny opening.
- **"Ollama wypuściło dwa releasy w 24 godziny"** — drama tempa rozwoju, prowadzi do Hermes Desktop.
- **"87% na MMLU — open-source model goni GPT-4 na 2 punkty"** — benchmark hook, mocny dla nerd-audiencji.
- **"Telefon z gigabajtem RAM-u potrafi teraz odpalić model AI"** — emocjonalny, dotyczy każdego.
- **"NousResearch zbudował konkurenta LM Studio z głosem i MCP"** — branżowy hook, dla widzów znających temat.
- **"Coding agent z 32 milionami dolarów dofinansowania działa offline na twojej Gemmie"** — pieniądze + lokalność, paradoks.

---

## Źródła

- [Release v0.30.7 — ollama/ollama (GitHub)](https://github.com/ollama/ollama/releases/tag/v0.30.7)
- [Ollama Release Notes — Releasebot (v0.30.6 i v0.30.7)](https://releasebot.io/updates/ollama)
- [Gemma 4 with quantization-aware training — Google blog](https://blog.google/innovation-and-ai/technology/developers-tools/quantization-aware-training-gemma-4/)
- [Hermes Desktop App — Nous Research docs](https://hermes-agent.nousresearch.com/docs/user-guide/desktop)
- [Hermes Agent Plugins — Nous Research docs](https://hermes-agent.nousresearch.com/docs/user-guide/features/plugins/)
- [Cline integration — Ollama docs](https://docs.ollama.com/integrations/cline)
- [Gemma 4 VRAM by quantization — knightli.com](https://knightli.com/en/2026/05/01/gemma-4-local-vram-quantization-table/)
- [Gemma 4 Benchmarks 2026 — gemma4-ai.com](https://gemma4-ai.com/blog/gemma4-benchmark)
- [ollama/ollama README (Kimi-K2.6, GLM-5.1, MiniMax, DeepSeek, gpt-oss, Qwen, Gemma)](https://github.com/ollama/ollama)
- [Bielik 11B v3 — SpeakLeash na Ollama](https://ollama.com/SpeakLeash/bielik-11b-v3.0-instruct)
- [PLLuM — PRIHLOP na Ollama](https://ollama.com/PRIHLOP/PLLuM)
- [Cline GitHub — autonomous coding agent](https://github.com/cline/cline)
