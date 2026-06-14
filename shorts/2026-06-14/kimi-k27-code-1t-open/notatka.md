## 2. Moonshot wypuszcza Kimi K2.7-Code — bilion parametrów open-weight za 95 centów / mln tokenów

**Data:** 2026-06-14
**Temat:** Chiński Moonshot dropnął open-weight model kodujący 1T parametrów (MoE) po cenie 5x niższej niż Claude Opus, ale wszystkie pokazane benchmarki to autorskie testy Moonshota, nie SWE-Bench.

---

## Kluczowe fakty i liczby

- **12 czerwca 2026** — Moonshot AI publikuje **Kimi K2.7-Code**, otwarty model kodujący na HuggingFace (waga ok. **595 GB**) i platformie platform.moonshot.ai.
- Architektura: **Mixture-of-Experts**, **1 bln parametrów total**, **32 mld aktywnych** per token, **384 ekspertów** (8 wybieranych + 1 shared), **61 warstw**, attention MLA + SwiGLU, 64 attention heads, vocab 160K.
- Context window: **256K tokenów** (262 144). Wbudowany vision encoder **MoonViT (400M parametrów)** — multimodalny input (tekst + obraz + video; video tylko via oficjalne API).
- Cennik API: **$0,95 za 1M tokenów input** (cache miss), **$0,19** przy cache hit, **$4,00 za 1M output**. Plan Kimi Code od **$19/miesiąc**.
- Porównanie cenowe vs konkurencja: Claude Opus 4.8 — **$5 / $25 per 1M tokenów**, GPT-5.5 — **~$5 / $15**. Kimi K2.7-Code jest więc **~5x tańszy na input i ~6x tańszy na output niż Opus**.
- Moonshot deklaruje: **+21,8% na Kimi Code Bench v2**, **+11% na Program Bench**, **+31,5% na MLS Bench Lite**, **+11,4% na MCP Mark Verified** vs K2.6.
- Redukcja "thinking tokens": **~30% mniej** reasoning tokenów na średnim taskcie vs K2.6 — Moonshot reklamuje to jako fix na "overthinking".
- Tryb thinking jest **wymuszony** (API zwraca błąd jeśli go wyłączysz). Temperature też **zafiksowana na 1.0** — nie można jej tunować.
- Licencja: **Modified MIT** — wagi open, można komercyjnie, ale z dodanymi restrykcjami (sygnowane przez Moonshot, w teorii brak ograniczeń na commercial use).

---

## Architektura — co siedzi pod maską

| Komponent | Wartość |
|---|---|
| Typ | Mixture-of-Experts (MoE) |
| Parametry total | **1 000 000 000 000 (1T)** |
| Aktywne per token | **32 mld** |
| Eksperci | 384 routed (8 wybieranych) + 1 shared |
| Warstwy | 61 (w tym 1 dense) |
| Attention | MLA (Multi-head Latent Attention), 64 heads |
| Hidden dim attention | 7168 |
| Hidden dim MoE per ekspert | 2048 |
| Vocab | 160K |
| Vision encoder | MoonViT, 400M params |
| Context | **256K tokenów** |
| Max output default | 32 768 tokenów |

K2.7-Code dzieli architekturę z K2.6 (poprzednikiem z kwietnia 2026) — to nie jest nowy szkielet, tylko **trening na lepszych danych + tuning reasoning paths** dla mniejszej liczby thinking tokenów.

---

## Modified MIT — co konkretnie zmodyfikowano

Standardowy MIT pozwala na praktycznie wszystko (komercja, modyfikacja, redystrybucja) wymagając tylko zachowania copyright notice. "Modified MIT" Moonshota dodaje:

- **Wymóg branded attribution** dla dużych deployów (typowa klauzula "powered by Kimi" w produktach komercyjnych powyżej progu użytkowników — analogicznie do licencji Llama 3 / Llama 4 od Mety).
- Brak ograniczeń na samodzielne dostrojenie (fine-tuning) i komercyjne wykorzystanie — w przeciwieństwie do np. licencji Tongyi Qianwen czy DeepSeek RAIL.

Praktycznie: dla małych devs i indie shopów to **de facto MIT**. Dla giganta typu AWS/Azure pojawiają się obowiązki attribution. Dokładne brzmienie modyfikacji w pliku LICENSE na HuggingFace.

---

## Deployment — gdzie odpalisz

| Środowisko | Status | Uwaga |
|---|---|---|
| **vLLM** | Native, recommended | `vllm serve moonshotai/Kimi-K2.7-Code` |
| **SGLang** | Native | dla agentic workflows |
| **KTransformers** | Native | dla CPU+GPU hybrid |
| **Docker Model Runner** | Wspierany | konteneryzacja |
| **HuggingFace Transformers** | >=4.57.1, <5.0.0 | |
| **ModelScope** | Tak | dystrybucja w Chinach |
| **Ollama** | **Nie natywnie** | tylko via quantizations community, oficjalnie nieoficjalne |
| **llama.cpp, LM Studio, Jan** | Via quantizations | nie z oryginalnych wag |

Konkretna odpowiedź na pytanie zlecającego: **nie ma jeszcze oficjalnego supportu Ollamy** dla K2.7-Code w dniu launchu. Tylko **vLLM + SGLang + KTransformers** są w "official inference engines" sekcji model card. Społeczność najpewniej zrobi kwantyzacje GGUF dla Ollamy w ciągu tygodnia, ale 595 GB wag oznacza, że odpalenie lokalnie nawet w Q4 i tak wymaga sprzętu klasy serwerowej (minimum 200+ GB VRAM).

---

## Benchmark scores vs krytyka VentureBeat

**Moonshot oficjalnie raportuje (vs K2.6):**

| Benchmark | K2.6 | K2.7-Code | Delta |
|---|---|---|---|
| Kimi Code Bench v2 | 50,9 | 62,0 | **+21,8%** |
| Program Bench | 48,3 | 53,6 | +11,0% |
| MLS Bench Lite | 26,7 | 35,1 | +31,5% |
| MCP-Atlas | — | 76,0 | — |
| MCP Mark Verified | 72,8 | 81,1 | +11,4% |

Na MCP Mark Verified K2.7-Code **bije Claude Opus 4.8 (81,1 vs 76,4)**.

**Co podnosi VentureBeat i praktycy:**

1. **Wszystkie pokazane benchmarki to autorskie testy Moonshota** — Kimi Code Bench v2, Program Bench, MLS Bench Lite, MCP-Atlas, MCP Mark Verified są wewnętrzne, nie były niezależnie reproduktowalne na dzień launchu.
2. **Brak SWE-Bench Verified, SWE-Bench Pro, Terminal-Bench, LiveCodeBench, Aider, GPQA Diamond, AIME, MMLU-Pro.** Czyli żadnego standardowego publicznego testu.
3. **Sugumaran Balasubramaniyan** (twórca model-routera opartego o DeepSWE): *"Respectfully, every model 'improves' double digits on its own test suite."* Przypomina, że K2.6 robił **24% na DeepSWE** — tied z GPT-5.4-mini.
4. **Elliot Arledge** uruchomił K2.7-Code vs K2.6 na **KernelBench-Hard**: K2.7 **zregresował z 0,222 do 0,157** na MoE kernel. Wniosek Arledge: *"K2.7 is more honest but not more capable."* Model pisał prawdziwe Triton kernele (zamiast wrapperów do bibliotek), ale **dwa z nich miały bugi** powodujące failure.
5. **DeepSWE** (niezależny benchmark z 70-punktowym spreadem między modelami) — Moonshot **nie złożył submission**. Spread na DeepSWE jest 2,3x większy niż na SWE-Bench Pro, więc to ostrzejszy test.

Podsumowanie krytyki: ~30% mniej thinking tokenów może być realne, ale wzrost jakości na autorskich testach Moonshota nie został potwierdzony niezależnie.

---

## Porównanie z konkurencją

| Model | Architektura | Context | Input $/1M | Output $/1M | Open? |
|---|---|---|---|---|---|
| **Kimi K2.7-Code** | MoE 1T/32B | 256K | **$0,95** | **$4,00** | **Tak, Mod-MIT** |
| Claude Opus 4.8 | Dense | 200K | $5,00 | $25,00 | Nie |
| Claude Sonnet 4.7 | Dense | 1M | ~$3 | ~$15 | Nie |
| GPT-5.5 | Dense | 400K | ~$5 | ~$15 | Nie |
| Kimi K2.6 (prev) | MoE 1T/32B | 256K | tańszy | tańszy | Tak |

Kontekstowo: na 1M output tokenów Opus kosztuje **$25**, K2.7-Code **$4** — różnica **21 dolarów na każdy milion**. Dla agentic loopów wykonujących setki kroków to ogromna oszczędność.

---

## MCP tool use — agentic claims

K2.7-Code reklamowany jako "tools-first" model do agentic coding. Konkretne liczby:

- **MCP-Atlas: 76,0** (Claude Opus: 81,3 — Opus wygrywa)
- **MCPMark-Verified: 81,1** (Claude Opus: 76,4 — Kimi wygrywa)
- Multi-step tool calling — standard MCP protocol
- Sustained tool calls (przez kilka godzin agentic execution) — Moonshot reklamuje, ale niezależnie nie zweryfikowane dla K2.7
- W K2.6 chwalono się **4000+ tool calls** przez 12+ godzin pracy ciągłej — K2.7 dziedziczy ten setup

---

## Oś czasu Kimi family

| Data | Model | Co nowego |
|---|---|---|
| 2025 Q3 | Kimi K1.5 | pierwszy publicznie chwalony model |
| 2025 Q4 | Kimi K2 | przejście na MoE 1T |
| 2026 Q1 | Kimi K2.5 | iteracja |
| 2026 kwiecień | Kimi K2.6 + Kimi Code | SWE-Bench Pro 58,6%, Terminal-Bench 66,7% |
| **2026-06-12** | **Kimi K2.7-Code** | -30% thinking tokens, +21,8% Kimi Code Bench v2 |

---

## Implikacje dla rynku

- **Cena bije Anthropica brutalnie**: $0,95 input vs $5 Opus. Dla bootstrappujących indie devs i open-source projektów to game-changer.
- **Modified MIT + 595 GB wag** = w teorii self-hosting jest możliwy, ale tylko dla firm z DC. W praktyce większość będzie używać Moonshot API albo Fireworks/Together.
- **Polityka i tarcie**: chiński model, dane w US mogą być uznane za sensitive. Niektóre firmy nie wpuszczą tego do produkcji niezależnie od ceny.
- **Otwarte pytanie**: czy "30% mniej thinking tokens" oznacza realnie szybsze i tańsze loopy, czy też model po prostu rezygnuje z głębszego rozumowania? Praktycy będą testować przez najbliższe 2 tygodnie.
- **Wymuszony thinking mode + fixed temperature 1.0** = mniej kontroli dla devs. Niektóre use case'y (np. deterministyczne generowanie schemas) tu nie zadziałają out-of-the-box.

---

## Potencjalne kąty narracyjne do shorta

1. **"95 centów za milion tokenów. Claude Opus kosztuje pięć razy więcej."** — kontrast cenowy uderza od razu, każdy kto kiedyś otworzył fakturę Anthropica zrozumie.
2. **"Chińczycy pokazali bilion parametrów za darmo. Anthropic pokazał fakturę."** — drama open vs closed, mocna polaryzacja.
3. **"Moonshot mówi że jego model jest lepszy. Pokazuje benchmarki, które sam wymyślił."** — counterintuitive, hook na sceptyczność, brzmi jak żart, a jest prawdą.
4. **"Bilion parametrów, które same skracają myślenie o 30%."** — paradoks: model AI rezygnuje z myślenia, żeby być lepszy.
5. **"Trenowali na 100 GPU. Wagę modelu pobierzesz przez 6 godzin."** (595 GB) — konkretny detal, każdy programista zna ból ściągania dużej paczki.
6. **"Nowy model bije Claude Opusa w tool use. Na własnych benchmarkach."** — drama claim + asterisk, idealny clickbait z gwiazdką.
7. **"Open-source model za 95 centów. Brak Ollamy w day one."** — niszowy hook dla self-hosting community, kontrast hype vs reality.

---

## Źródła

- [HuggingFace — moonshotai/Kimi-K2.7-Code (model card)](https://huggingface.co/moonshotai/Kimi-K2.7-Code)
- [Kimi.com — oficjalna strona K2.7-Code](https://www.kimi.com/resources/kimi-k2-7-code)
- [VentureBeat — "K2.7-Code cuts thinking tokens 30% — but practitioners say benchmarks don't check out" (12.06.2026)](https://venturebeat.com/technology/kimi-k2-7-code-cuts-thinking-tokens-30-practitioners-say-benchmarks-dont-check-out)
- [MarkTechPost — Moonshot AI Releases Kimi K2.7-Code](https://www.marktechpost.com/2026/06/12/moonshot-ai-releases-kimi-k2-7-code/)
- [LLM Stats — Kimi K2.7 Code Benchmarks, Pricing & Context Window](https://llm-stats.com/models/kimi-k2.7-code)
- [Kimi blog — K2.6 Tech Overview (poprzednik, baseline porównawczy)](https://www.kimi.com/blog/kimi-k2-6)
- [Codersera — Kimi K2.7 Code Complete Guide (deployment, MCP)](https://codersera.com/blog/kimi-k2-7-complete-guide-2026/)
- [Kingy.ai — K2.7 Code Benchmarks & Specs](https://kingy.ai/ai/kimi-k2-7-code-benchmarks-specs/)
- [Cryptobriefing — Kimi K2.7 Code on APIs and HuggingFace](https://cryptobriefing.com/kimi-k2-7-code-open-source-release/)
- [Medium / Chew Loong Nian — "1T-Parameter Coder Thinks 30% Less on Purpose"](https://medium.com/@chewloongnian/moonshots-new-1-trillion-parameter-coder-thinks-30-less-on-purpose-and-you-can-t-turn-it-off-01eec872726d)
