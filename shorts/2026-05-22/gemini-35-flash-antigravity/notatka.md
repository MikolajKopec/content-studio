# Google odpala Gemini 3.5 Flash i Antigravity 2.0 — czterokrotnie szybciej niż konkurencja

**Data:** 2026-05-22
**Temat:** Google na I/O 2026 wypuszcza Gemini 3.5 Flash (frontier-level model 4× szybszy od konkurencji), redesignuje Antigravity jako standalone agentyczny desktop + CLI w Go + SDK, i dorzuca w API "Managed Agents" — gotową piaskownicę Linuksa do uruchamiania agentów jednym wywołaniem.

---

## Kluczowe fakty i liczby

- **Gemini 3.5 Flash** — premiera **19 maja 2026** na Google I/O w Shoreline Amphitheatre, dostępność **GA** od dnia ogłoszenia.
- Według Google model jest **4×** szybszy (tokeny/s) od innych modeli frontierowych i działa **"za mniej niż połowę kosztu"** porównywalnych modeli.
- Benchmarki, w których 3.5 Flash bije większego Gemini 3.1 Pro: **Terminal-Bench 2.1 — 76,2%**, **GDPval-AA — 1656 Elo**, **MCP Atlas — 83,6%**, **CharXiv Reasoning — 84,2%**.
- W społeczności dev krąży narracja, że Gemini 3.5 Flash w środowisku Antigravity osiąga nawet **12×** szybsze inferowanie od konkurencyjnych modeli frontierowych (Medium, Manav Gupta).
- Cennik subskrypcji: nowy **Google AI Ultra** za **100 USD/mies.** (5× wyższe limity niż Pro); poprzedni Ultra spada z **250 USD do 200 USD/mies.** z **20×** limitów Pro.
- Google twierdzi, że migracja firmy na Gemini 3.5 Flash może obciąć koszty enterprise AI o **ponad 1 miliard USD rocznie** (VentureBeat).
- **Antigravity 2.0** — standalone desktopowy klient (już nie fork VS Code), CLI w Go, publiczny **Antigravity SDK**, integracje z **Google AI Studio, Android Studio, Firebase** oraz Workspace API (Docs, Sheets, Calendar).
- **Managed Agents** w Gemini API (public preview od **19 maja 2026**) — jedno wywołanie API uruchamia agenta w **izolowanym, efemerycznym sandboxie Linux**, który rozumuje, woła narzędzia, wykonuje kod, zarządza plikami i przegląda web; stan środowiska utrzymuje się między wywołaniami.
- Agenta definiuje się plikami markdown — **AGENTS.md** i **SKILL.md** — zamiast pisaniem kodu orkiestrującego.
- Klientela enterprise wymieniana przez Google: **Shopify** (równoległe subagenty do analizy danych), **Macquarie Bank** (rozumowanie na dokumentach ponad **100-stronicowych**), **Xero** (autonomiczne **wielotygodniowe** workflowy).
- Gemini **3.5 Pro** wchodzi za miesiąc; Gemini **Spark** beta dla subskrybentów AI Ultra w USA już w przyszłym tygodniu.

## Architektura Antigravity 2.0

- **Główny agent jako project manager** — rozbija prompt usera na podzadania i deleguje je do dynamicznie tworzonych subagentów (Architect, Coding, Testing, Documentation), nie zapychając własnego context window.
- **Subagenci działają równolegle** — pipeline zamiast pojedynczego tury rozmowy z LLM.
- **Scheduled tasks** — agenci uruchamiani w tle według harmonogramu, nawet bez aktywnej sesji usera.
- **Voice commands** natywnie wbudowane w desktopową aplikację.
- **Agent harness współdzielony** między desktopem, CLI i SDK — Skills, Hooks, Subagents, Extensions (rebrand: plugins) działają wszędzie tak samo.
- **Eksport z AI Studio do lokalnego setupu** — możesz zacząć w przeglądarce, dokończyć lokalnie.
- **Współtworzony przez sam Antigravity** — Google podkreśla, że Gemini 3.5 Flash był rozwijany przy użyciu Antigravity 2.0 (dogfooding).

## Porównanie z Claude Code

| Wymiar | Gemini 3.5 Flash + Antigravity 2.0 | Claude Code (Anthropic) |
|---|---|---|
| Szybkość inference | ~4× szybciej (Google), do 12× w benchmarkach community | Wolniejszy, ale starszy stack |
| Koszt SWE-bench/problem | **0,59 USD** (Gemini 3 Pro Preview) | **3,50 USD** (Claude Code) |
| SWE-bench resolved | 46,7% (Pass@5: 58,3%) | 52,9% (Pass@5: 70,8%) |
| Forma | Desktop app + CLI + SDK + Managed Agents API | Głównie CLI |
| Dojrzałość | Preview (raporty community o agencie kasującym dysk) | GA, udokumentowane zachowanie |
| Mocna strona | Greenfield UI, frontend, szybki buildout | Rozumienie istniejącej struktury repo, pattern matching |

## Reakcje branży

- Medium (Manav Gupta): **"Google zbudował własnego Claude Code wczoraj. Działa 12× szybciej."**
- DEV Community: Managed Agents to **"najważniejszy release deweloperski Google I/O 2026"** — przesunięcie od "modele as a service" do "agenci as a service".
- XDA Developers: po miesiącu pracy z Claude Code, Antigravity i Codex — wyłaniał się "jasny zwycięzca" (artykuł sugeruje, że nie jest nim Antigravity, mimo szybkości).
- Negatywny sygnał: zgłoszenia w community o agencie Antigravity, który **skasował lokalny dysk** developera — przypomnienie o ryzyku preview software.
- Cennik **100–200 USD/mies.** ustawia Google równo obok Anthropic ($100–$200 Claude Max) i OpenAI ($200 ChatGPT Pro) — koniec ery "Google taniej".

## Implikacje dla użytkownika i rynku

- Dla **developerów PL**: koszt 0,59 USD za problem SWE-bench (Gemini) vs 3,50 USD (Claude) oznacza ~**6× tańsze** prototypowanie agentyczne — może realnie przesunąć rynek hobbystycznych narzędzi.
- Dla **firm/enterprise**: Managed Agents = brak własnego sandboxa Docker/Kubernetes do uruchamiania kodu generowanego przez LLM; Google przejmuje koszt utrzymania infrastruktury.
- Dla **konsumentów**: AI Mode w Search z dynamicznie generowanym UI w czasie rzeczywistym — Google odpowiada na Perplexity Comet i ChatGPT Atlas.
- Dla **OpenAI/Anthropic**: presja na wydanie GPT-6 / Claude 5 z poważnym przyspieszeniem inference, bo "frontier × 4" stało się nowym progiem.

---

## Potencjalne kąty narracyjne do shorta

- **"Google zbudował własnego Claude Code w jedną noc. Działa 12 razy szybciej."** (cytat z Medium + drama narzędziowa)
- **"0,59 dolara vs 3,50 dolara — Gemini robi to samo co Claude Code za szóstą część ceny."** (twardy benchmark kosztu)
- **"Google odpala agenta jednym wywołaniem API. Linux w środku, sandbox w chmurze, ty nic nie konfigurujesz."** (Managed Agents — wow factor dla devów)
- **"4 razy szybciej i o połowę taniej — Google właśnie zabił własnego Gemini 3.1 Pro."** (kanibalizacja własnej oferty)
- **"Agent od Google skasował komuś dysk. Preview software, klasyka."** (lekka drama, viralowy ton)
- **"Definiujesz agenta w markdownie. Plik AGENTS.md zastępuje 200 linii kodu orkiestracji."** (konkret techniczny + zaskoczenie)
- **"Google AI Ultra z 250 na 100 dolarów — wojna cenowa z OpenAI i Anthropic właśnie ruszyła."** (kontekst rynkowy, liczby)

---

## Źródła

- [Gemini 3.5: frontier intelligence with action — Google Blog](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-5/)
- [Introducing Managed Agents in the Gemini API — Google Blog](https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/)
- [I/O 2026 developer highlights: Antigravity, Gemini API, AI Studio — Google Blog](https://blog.google/innovation-and-ai/technology/developers-tools/google-io-2026-developer-highlights/)
- [Google launches Antigravity 2.0 with an updated desktop app and CLI tool at IO 2026 — TechCrunch](https://techcrunch.com/2026/05/19/google-launches-antigravity-2-0-with-an-updated-desktop-app-and-cli-tool/)
- [Google Launches Antigravity 2.0 at I/O 2026 — MarkTechPost](https://www.marktechpost.com/2026/05/19/google-launches-antigravity-2-0-at-i-o-2026-a-standalone-agent-first-platform-with-cli-sdk-managed-execution-and-enterprise-support/)
- [Google claims new Gemini 3.5 Flash runs 4x faster than rival frontier models — Interesting Engineering](https://interestingengineering.com/ai-robotics/google-gemini-3-5-flash-launch)
- [Google says Gemini 3.5 Flash can slash enterprise AI costs by more than $1 billion a year — VentureBeat](https://venturebeat.com/technology/google-says-gemini-3-5-flash-can-slash-enterprise-ai-costs-by-more-than-1-billion-a-year)
- [Google Built Their Own Claude Code Yesterday. It Runs 12x Faster — Medium (Manav Gupta)](https://medium.com/@Tensorboy/google-built-their-own-claude-code-yesterday-a54586365758)
- [Rise of the Managed Agent: Why Antigravity 2.0 is Google I/O 2026's Most Critical Developer Release — DEV Community](https://dev.to/genisyscodes/-rise-of-the-managed-agent-why-antigravity-20-is-google-io-2026s-most-critical-developer-68f)
- [I used Claude Code, Google Antigravity, and Codex for a month — XDA Developers](https://www.xda-developers.com/used-claude-code-google-antigravity-codex-for-month-have-clear-winner/)
