# 1. Claude Fable 5: Anthropic wypuszcza najpotężniejszy model 4 dni po wezwaniu do globalnej pauzy

**Data:** 2026-06-11
**Temat:** Anthropic publicznie udostępnia model klasy Mythos (Claude Fable 5) ledwie 4 dni po tym, jak sam wezwał branżę do skoordynowanej pauzy w rozwoju AI — i bije rekordy benchmarków przy dwukrotnie wyższej cenie niż Opus 4.8.

---

## Kluczowe fakty i liczby

- **9 czerwca 2026** Anthropic publicznie uruchomił Claude Fable 5 — pierwszy ogólnie dostępny model klasy **Mythos** (wcześniej zarezerwowanej dla Project Glasswing).
- **80.3%** na SWE-Bench Pro — kolejny model w rankingu (Opus 4.8) ma **69.2%**, czyli o **ok. 11 punktów mniej**. GPT-5.5 ma **58.6%**, Gemini 3.1 Pro **54.2%**.
- Cennik: **$10 za milion tokenów wejściowych, $50 za milion wyjściowych** — **dwa razy drożej** niż Opus 4.8, ale o **ponad 50% taniej** niż wcześniejszy Mythos Preview.
- Kontekst: **500K tokenów** standardowo, do **2M tokenów** w wersji enterprise na Azure.
- Do **22 czerwca 2026** Fable 5 jest **darmowy** w planach Pro / Max / Team / Enterprise (seat-based). Od **23 czerwca** — tylko za usage credits.
- **5 czerwca 2026** (4 dni przed premierą) Anthropic publicznie wezwał wszystkie globalne laby AI do skoordynowanej pauzy w rozwoju, ostrzegając przed "recursive self-improvement".
- Według Anthropica, **ponad 80% kodu** mergowanego do ich własnego repo pisze już Claude. Inżynierowie shipują **8x więcej kodu na kwartał** niż przed 2025 r.
- Twarde safety limits: w obszarach **cyber / biologia / chemia / distillation** Fable 5 odmawia i robi fallback do Claude Opus 4.8. Anthropic twierdzi, że trigger odpala się w **<5% sesji**.
- Wycena Anthropica przed IPO: **~$965 mld** (zbliżona do triliona).

## Specyfikacja i benchmarki

| Benchmark | Claude Fable 5 | Claude Opus 4.8 | GPT-5.5 | Gemini 3.1 Pro |
|---|---|---|---|---|
| SWE-Bench Pro | **80.3%** | 69.2% | 58.6% | 54.2% |
| Hex analytics (core) | **~90%** (pierwszy model w historii) | — | — | — |
| FrontierCode (Cognition) | **najwyższy wynik** wśród modeli frontier | — | — | — |
| Hebbia (finanse, senior reasoning) | **najwyższy wynik** | — | — | — |

- **Kontekst:** 500K tokenów standard / 2M tokenów enterprise (Azure).
- **Output:** do 128K tokenów na odpowiedź.
- **Vision:** SOTA — potrafi czytać liczby ze skomplikowanych wykresów naukowych i odtwarzać webaplikacje ze screenshotów.
- **Stripe:** Fable 5 "skompresował miesiące pracy inżynierskiej w dni" na migracji 50-milionowego repo Ruby.
- **Mythos 5** (dla Project Glasswing — cyberdefenderzy + biolodzy) raportuje **10x acceleration** w drug-design i 80% preferencji naukowców dla hipotez generowanych przez model.

## Cennik i dostępność

- **API:** $10 / 1M input, $50 / 1M output. Dla porównania: Opus 4.8 to $5 / $25, czyli Fable 5 jest **2x droższy**.
- **Mythos Preview** kosztował dwukrotnie więcej — Fable 5 jest **<50% ceny** poprzednika klasy Mythos.
- **AWS Bedrock:** dostępny od dnia premiery w US East (Wirginia) i EU (Sztokholm). Smart routing: jeśli zapytanie odpadnie do Opus 4.8 z powodu safety, płacisz cenę Opusa.
- **Azure:** wersja z kontekstem **2M tokenów** dla enterprise.
- **Free trial:** Pro / Max / Team / Enterprise — od 9 do **22 czerwca**, potem credits.

## Drama: "kazaliście światu się zatrzymać, a sami wypuszczacie"

- **5 czerwca 2026** — Marina Favaro i Jack Clark (Anthropic) publikują manifest "When AI builds itself". Wzywają OpenAI, Google, xAI i Meta do skoordynowanej pauzy nad frontier models. Argument: "recursive self-improvement" może nadejść w ciągu **2 lat** i wymknąć się ludzkiej kontroli.
- **9 czerwca 2026** — Anthropic wypuszcza Fable 5, "najpotężniejszy publicznie dostępny model" w swojej historii.
- Warunek pauzy w manifeście był warunkowy: "**tylko jeśli inne laby też się zatrzymają** pod weryfikowalnymi warunkami". Krytycy wskazują, że to wygodna klauzula ucieczki.
- **Timing dodatkowy:** wezwanie do pauzy padło tuż przed poufnym filingiem IPO i tuż po rundzie finansowania przy wycenie ~$1T. Komentatorzy (Fortune, PYMNTS) sugerują, że to **safety-washing** w celu pozycjonowania przed wejściem na giełdę.
- TechCrunch wprost: "Anthropic właśnie wypuścił swój najpotężniejszy publiczny model dni po ostrzeżeniu, że AI staje się zbyt niebezpieczne".

## Implikacje dla branży i użytkownika

- **Dla developerów:** skok z 69% → 80% na SWE-Bench Pro to największa różnica między modelami frontier od premiery GPT-4. Realnie zmienia ekonomię "agentic coding".
- **Dla portfela:** cena 2x wyższa niż Opus 4.8 — Anthropic stawia na klientów, którzy zapłacą premium za jakość. Model nie dla hobbystów.
- **Dla narracji bezpieczeństwa AI:** wiarygodność apeli o pauzę z ust laba, który równolegle wypuszcza najpotężniejszy model na rynku, jest mocno nadszarpnięta.
- **Dla GPT-5.5 i Gemini 3.1:** Anthropic właśnie ustawił nową poprzeczkę — 80%+ na SWE-Bench Pro to nowy benchmark "frontier".
- **Dla cyberbezpieczeństwa:** Mythos 5 w rękach "small group of cyberdefenders and infrastructure providers" oznacza, że najpotężniejsze AI offensive/defensive zostało faktycznie udostępnione — choć tylko wybranym.

---

## Potencjalne kąty narracyjne do shorta

1. **"4 dni temu prosili świat o pauzę. Dziś wypuścili najpotężniejszy model w historii."** — clash dat 5 vs 9 czerwca, czysty paradoks.
2. **"80.3% na SWE-Bench Pro. Konkurencja: 11 punktów niżej. GPT-5.5: 22 punkty niżej."** — konkretne liczby, ranking widać od razu.
3. **"$50 za milion tokenów. Dwa razy drożej niż poprzedni model. I tak go kupują."** — szok cenowy + insight.
4. **"Stripe: Fable 5 skompresował miesiące pracy inżynierskiej w dni. Na repo z 50 milionów linii kodu."** — konkretny case study, liczby brzmią jak film SF.
5. **"Anthropic mówi: 80% kodu w naszej firmie pisze AI. I dlatego prosimy świat o pauzę."** — autosabotujący się argument, doskonały hook.
6. **"Do 22 czerwca darmowy. Od 23 czerwca tylko za pieniądze. Klasyczny lock-in."** — praktyczna informacja + cynizm.
7. **"Wycena Anthropica: bilion dolarów. Wezwanie do pauzy: 4 dni przed IPO."** — teoria spiskowa z konkretnymi liczbami.

---

## Źródła

- [Anthropic: Claude Fable 5 and Claude Mythos 5](https://www.anthropic.com/news/claude-fable-5-mythos-5) (9.06.2026, primary)
- [Anthropic: When AI builds itself](https://www.anthropic.com/institute/recursive-self-improvement) (5.06.2026, primary — wezwanie do pauzy)
- [TechCrunch: Anthropic released Claude Fable 5, its most powerful model publicly, days after warning AI is getting too dangerous](https://techcrunch.com/2026/06/09/anthropic-released-claude-fable-5-its-most-powerful-model-publicly-days-after-warning-ai-is-getting-too-dangerous/) (9.06.2026)
- [Yahoo Finance: Anthropic's Claude Fable 5 and Mythos 5 Launch: What To Know](https://finance.yahoo.com/markets/crypto/articles/anthropic-claude-mythos-launches-today-142844796.html) (9.06.2026)
- [AWS Blog: Anthropic Claude Fable 5 on AWS](https://aws.amazon.com/blogs/aws/anthropic-claude-fable-5-on-aws-mythos-class-capabilities-with-built-in-safeguards-now-available/) (9.06.2026, primary)
- [Codersera: Claude Fable 5 — Benchmarks, Pricing & What's New](https://codersera.com/blog/claude-fable-5-launch-guide-2026/) (9.06.2026 — szczegółowe liczby benchmarków)
- [Fortune: Anthropic warns AI could soon build itself — and urges a global pause](https://fortune.com/2026/06/05/anthropic-ai-pause-development-recursive-self-improvement/) (5.06.2026)
- [Scientific American: Anthropic warns AI may soon begin recursive self-improvement](https://www.scientificamerican.com/article/anthropic-warns-ai-may-soon-begin-recursive-self-improvement/) (5.06.2026)
- [9to5Google: Claude Mythos goes public in new Fable 5 model](https://9to5google.com/2026/06/09/anthropic-claude-mythos-fable-5-model-release/) (9.06.2026)
- [PYMNTS: Anthropic Wants a Global AI Pause If Everyone Else Does](https://www.pymnts.com/artificial-intelligence-2/2026/anthropic-wants-a-global-ai-pause-if-everyone-else-does/) (5.06.2026 — kontekst krytyki)
