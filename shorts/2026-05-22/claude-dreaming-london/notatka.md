# Anthropic uczy Claude'a "śnić" — Code with Claude London ogłasza multi-agent + 2× wyższe limity

**Data:** 2026-05-22
**Temat:** Anthropic na konferencji Code with Claude (SF 6 maja, Londyn 19 maja, Tokio 10 czerwca) wprowadza "Dreaming" — agent uczy się we śnie z poprzednich sesji — oraz multi-agent orchestration, podwojone limity dla Pro/Max/Team i kontrakt z SpaceX na 15 mld USD rocznie.

---

## Kluczowe fakty i liczby

- **6 maja 2026** Anthropic uruchomił feature **Dreaming** w research preview — pierwsza komercyjna implementacja "samonauki" agenta kodującego między sesjami.
- Każdy "sen" konsoliduje do **100 sesji** jednego agenta: usuwa duplikaty, łączy wzorce, aktualizuje pamięć — bez modyfikowania wag modelu.
- Kancelaria prawna **Harvey** po wdrożeniu Dreaming zanotowała **~6× wyższy task completion rate** — najsilniejszy publiczny benchmark feature'u.
- **Outcomes** (public beta) — system rubrykowej samooceny — dorzucił **+10 punktów procentowych** sukcesu zadań, **+8,4%** jakości .docx i **+10,1%** .pptx; klient **Wisedocs** raportuje **50% szybsze** przeglądy dokumentów.
- **Multi-agent orchestration** — lead agent deleguje zadania równoległym sub-agentom na współdzielonym filesystemie; **Netflix** używa do analizy logów buildów z setek repo, projekt **Spiral** firmy **Every** spina lead agenta na Haiku z sub-agentami na Opusie.
- **Limity Claude Code podwojone** dla planów Pro, Max, Team i seat-based Enterprise w cyklu 5-godzinnym; dla Pro/Max **zniesiono ograniczenie peak hours**; limity API Opus podskoczyły dla Tier 1 o **+1500%** input tokens/min i **+900%** output tokens/min.
- Kontrakt z **SpaceX Colossus 1** w Memphis: **300+ MW** mocy obliczeniowej, **220 000+** GPU NVIDIA (H100/H200/GB200) dostępne w **30 dni**.
- Anthropic płaci SpaceX **1,25 mld USD miesięcznie** = **15 mld USD rocznie** do **maja 2029** — to ok. **83%** rocznego przychodu SpaceX (**~18 mld USD**).
- Klauzula wyjścia z umowy: **90 dni** dla obu stron; ekspansja na **Colossus 2** już w czerwcu 2026 z dalszą skalą GB200.
- W tle: Amazon **do 5 GW** (~1 GW do końca 2026), Google + Broadcom **5 GW** (od 2027), Microsoft + NVIDIA **30 mld USD** w Azure, Fluidstack **50 mld USD** w US infra — Anthropic gra na trzech frontach naraz.

## Jak działa "Dreaming" — mechanizm

- **Krok 1 — logowanie sesji:** każda interakcja agenta zapisywana w surowych logach.
- **Krok 2 — ekstrakcja wzorców:** offline, między sesjami, model przegląda batch logów i wyszukuje powtarzające się zapytania, nieudane podejścia, edge case'y, luki w wiedzy.
- **Krok 3 — kompresja pamięci:** surowe logi destylowane do "high-signal knowledge" — profile preferencji, reguły decyzyjne, gotowe snippet'y, flagi powtarzających się błędów.
- **Krok 4 — integracja:** zaktualizowana pamięć ładowana na starcie kolejnej sesji.
- **Analogia neuronaukowa:** Anthropic porównuje to do konsolidacji hipokampalnej (slow-wave sleep = konsolidacja, REM = ekstrakcja wzorców między sesjami).
- **Różnica vs RAG:** RAG dostarcza surowe dokumenty, dreaming destyluje je do uogólnionych heurystyk.
- **Różnica vs Reinforcement Learning:** brak nagród i gradientów — używa wyłącznie reasoningu Claude'a do refleksji nad przeszłymi sesjami.

## Co jeszcze padło w Londynie (19 maja)

- **Managed Agents webhooks** (public beta) — push notyfikacje o cyklu życia sesji i evaluation events, dostawa "at-least-once" z weryfikacją podpisu.
- **1M context window** już GA od 13 marca 2026, z server-side compaction i per-turn context editing — flat pricing.
- **Claude Finance** — 10 pre-built agentów dla sektora finansowego (analiza, raportowanie, compliance).
- **Add-ins** — nowy format rozszerzeń platformy.
- **20+ legal MCP connectors** + **12 pluginów obszarowych** dla kancelarii (powiązane z case study Harvey).
- **Brak nowego modelu** — Anthropic celowo pominął release modelu, stawiając całość na warstwę agentową.

## Oś czasu Code with Claude 2026

| Data | Wydarzenie |
|------|------------|
| 13 marca 2026 | 1M context window GA, flat pricing |
| 21 kwietnia 2026 | Dreams osiąga research preview wewnętrznie |
| 6 maja 2026 | Code with Claude San Francisco — ogłoszenie Dreaming, Outcomes, Multi-agent, podwojone limity |
| 6 maja 2026 | Ogłoszenie kontraktu SpaceX Colossus 1 (300+ MW, 220k+ GPU) |
| 19 maja 2026 | Code with Claude London — keynote Ami Vora (CPO), legal MCP connectors |
| 20 maja 2026 | Axios ujawnia: kontrakt z SpaceX wart 15 mld USD rocznie do maja 2029 |
| Czerwiec 2026 | Ekspansja na Colossus 2, skalowanie GB200 |
| 10 czerwca 2026 | Code with Claude Tokyo |

## Implikacje dla użytkownika i rynku

- **Dla developerów płacących $20/$200:** realna podwójna dawka tokenów w cyklu 5h + brak limitów peak na Pro/Max — to konkretna oszczędność i koniec frustracji "limit reached o 15:00".
- **Dla zespołów Enterprise:** Outcomes + webhooks = pierwszy raz można podpiąć Claude'a do CI/CD z gwarancją, że dostaniemy notyfikację tylko gdy output przeszedł rubrykę jakości.
- **Dla rynku AI:** Anthropic z Muskiem (xAI/SpaceX) to polityczny zwrot — firma znana z bezpieczeństwa AI bierze compute od człowieka, który publicznie walczy z OpenAI; sygnał, że GPU > polityka.
- **Dla konkurencji:** brak nowego modelu = przyznanie, że wojna przeniosła się z benchmarków na orchestration layer; OpenAI Codex i Google Gemini muszą odpowiedzieć platformą, nie modelem.
- **Dla pracy z agentami:** "samonauka" zmienia ekonomikę — zamiast prompt engineeringu od zera dla każdego projektu, agent po tygodniu pracy sam dostraja swoje workflows.

---

## Potencjalne kąty narracyjne do shorta

- "Claude teraz **śni** — i po nocy jest **6× lepszy** w robocie."
- "Anthropic płaci Muskowi **15 miliardów dolarów rocznie**, żebyś miał szybszego Claude'a."
- "Twój Claude właśnie dostał **2× więcej tokenów** — i nic za to nie zapłaciłeś."
- "**220 tysięcy** kart graficznych w jednym data center — tylko dla jednej firmy AI."
- "Anthropic skasował nowy model i wypuścił coś dziwniejszego — agenta, który uczy się we śnie."
- "Harvey, kancelaria prawna z USA, włączyła jeden feature Claude'a i ich zadania kończą się **6 razy częściej**."
- "Firma od bezpieczeństwa AI właśnie podpisała kontrakt z Elonem Muskiem na **83% przychodów SpaceX**."

---

## Źródła

- [Anthropic — Higher usage limits for Claude and a compute deal with SpaceX](https://www.anthropic.com/news/higher-limits-spacex)
- [Axios — Anthropic is paying SpaceX $15 billion per year](https://www.axios.com/2026/05/20/anthropic-spacex-compute)
- [Let's Data Science — Anthropic Launches Dreaming for Claude Agents at Code with Claude 2026](https://letsdatascience.com/blog/anthropic-dreaming-claude-managed-agents-self-improving-may-6)
- [Dotzlaw — Anthropic's 2026 Code with Claude: What Doubled Limits and Infinite Context Mean for Production](https://www.dotzlaw.com/insights/anthropic-2026-code-with-claude/)
- [MindStudio — Claude Dreaming Feature: How Anthropic's Self-Improving Agent Memory Works](https://www.mindstudio.ai/blog/claude-dreaming-feature-self-improving-agent-memory)
- [CNBC — Anthropic, SpaceX announce compute deal that includes space development](https://www.cnbc.com/2026/05/06/anthropic-spacex-data-center-capacity.html)
- [InfoQ — Anthropic's Code with Claude Announces Managed Agents, Proactive Workflows, Capability Curve](https://www.infoq.com/news/2026/05/code-with-claude/)
- [MIT Technology Review — Anthropic's Code with Claude showed off coding's future](https://www.technologyreview.com/2026/05/21/1137735/anthropics-code-with-claude-showed-off-codings-future-whether-you-like-it-or-not/)
- [DCD — Anthropic to use all of SpaceX-xAI's Colossus 1 data center compute](https://www.datacenterdynamics.com/en/news/anthropic-to-use-all-of-spacex-xais-colossus-1-data-center-compute/)
