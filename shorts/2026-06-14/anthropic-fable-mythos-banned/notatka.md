# ## 1. Trump nakazał Anthropic odciąć Fable 5 i Mythos 5 — wszyscy Polacy bez dostępu

**Data:** 2026-06-14
**Temat:** Administracja Trumpa pierwszy raz w historii objęła export controls model AI (nie chip) i odcięła wszystkich obcokrajowców świata od najmocniejszego Claude'a — w tym własnych pracowników Anthropic bez obywatelstwa USA.

---

## Kluczowe fakty i liczby

- Anthropic otrzymał dyrektywę export-control w **piątek 12 czerwca 2026 o 17:21 ET** — wykonanie nastąpiło w **sobotę 13 czerwca**, czyli niecałe **24 godziny** później.
- Ban obejmuje **Fable 5** (czołowy ogólnodostępny model) i **Mythos 5** (restricted/highest-capability). Pozostałe modele — **Opus 4.8, Sonnet, Haiku** — działają normalnie.
- Zakres: **wszyscy obcokrajowcy na świecie** — "any foreign national, whether inside or outside the United States, including foreign national Anthropic employees" (cytat z dyrektywy).
- Fable 5 osiąga **80,3% na SWE-Bench Pro** — vs Opus 4.8 (**69,2%**), GPT-5.5 (**58,6%**), Gemini 3.1 Pro (**54,2%**). Najlepszy ogólnodostępny model coding na rynku.
- Model został wydany **9 czerwca 2026** — między 9 a 22 czerwca miał być **darmowy dla Claude Pro/Max/Team/Enterprise**. Ban wpadł w sam środek darmowego okna.
- Ceny Fable 5: **10 USD / mln tokenów input**, **50 USD / mln tokenów output** — dwukrotność cen Opus 4.8.
- Pierwsza w historii sytuacja, gdy USA stosuje export controls do **modelu AI** zamiast chipów (Nvidia H100 itd.).
- Anthropic publicznie zapowiedział pozew przeciwko administracji Trumpa o cofnięcie dyrektywy — sprawa **w toku**.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| **9.06.2026** | Anthropic wydaje Fable 5 i Mythos 5 — darmowy dostęp dla Pro/Max do 22.06 |
| ~10–11.06 | Amazon researchers używają Fable 5 do uzyskania informacji "weaponizable in cyberattacks" |
| ~11–12.06 | **Andy Jassy (CEO Amazon)** kontaktuje Sekretarza Skarbu **Scotta Bessenta** i innych urzędników z ostrzeżeniem o ryzyku bezpieczeństwa |
| **12.06, 17:21 ET** | Anthropic otrzymuje dyrektywę export-control |
| **13.06** | Anthropic publicznie ogłasza wyłączenie Fable 5 i Mythos 5 dla wszystkich klientów |
| 13.06 | Reakcje europejskich polityków — "wake-up call" dla sovereign AI |

## Powód oficjalny vs Anthropic vs zakulisowo

**Wersja rządu USA:** wykryto sposób na "jailbreak" Fable 5 — bezpieczeństwo narodowe.

**Wersja Anthropic (cytat ze statementu):**
> "We disagree that the finding of a narrow potential jailbreak should be cause for recalling a commercial model deployed to hundreds of millions of people. If this standard was applied across the industry, we believe it would essentially halt all new model deployments for all frontier model providers."

Anthropic twierdzi, że demo polegało na **"asking the model to read a specific codebase and fix any software flaws"** — funkcja "widely available from other models (including OpenAI's GPT-5.5)" używana codziennie przez defenderów cyberbezpieczeństwa.

**Wersja zakulisowa (Wall Street Journal):**
- **Andy Jassy (CEO Amazon)** — paradoksalnie głównego inwestora Anthropic — osobiście zaalarmował **Sekretarza Skarbu Scotta Bessenta** po tym, jak researcherzy Amazon używali Fable 5 do pozyskania informacji "weaponizable in cyberattacks".
- **David Sacks** (były AI Czar Trumpa) publicznie twierdzi, że **Dario Amodei (CEO Anthropic) odmówił naprawienia jailbreaka przed deploymentem** — to według niego prawdziwy trigger.

## Porównanie benchmarków Fable 5

| Model | SWE-Bench Pro | FrontierCode | GDP.pdf (vision) |
|---|---|---|---|
| **Fable 5** | **80,3%** | **29,3%** | **29,8%** |
| Mythos Preview | 77,8% | — | — |
| Opus 4.8 | 69,2% | 13,4% | — |
| GPT-5.5 | 58,6% | — | 24,9% |
| Gemini 3.1 Pro | 54,2% | — | — |

Fable 5 prowadził w SWE-Bench Pro o **+11 pkt procentowych** nad następcą.

## Reakcje europejskich polityków

- **Bruno Retailleau** (francuski MSW, kandydat na prezydenta 2027): *"A nation that depends on others for its technology can be unplugged overnight"* — apel o wsparcie Mistral, OVHcloud, Scaleway.
- **Benjamin Haddad** (francuski minister ds. Europy): nazwał ban *"an accelerator of the geopolitical battle over AI"*.
- **Édouard Philippe** (były premier Francji): porównał AI do **infrastruktury krytycznej jak elektryczność** — można "wyciągnąć wtyczkę" jednostronnie.
- **Jordan Bardella** (Rassemblement National): "AI to suwerenność" — promocja Mistral jako francuskiej alternatywy.
- **Geert Wilders** (PVV, Holandia): apel o przyspieszenie holenderskich modeli AI.
- **Al Carns** (brytyjski poseł, były minister ds. sił zbrojnych): *"The most advanced AI model on the planet got switched off by a foreign government"*.
- **Tom Tugendhat** (brytyjski poseł, były minister bezpieczeństwa): sovereignty teraz to **"code rather than cannons"**.

Brak polskich polityków w cytowanych źródłach — co samo w sobie jest contentowo ciekawe.

## Implikacje dla polskiego widza

- Każdy polski subskrybent **Claude Pro (~20 USD/mies)** i **Max (~100–200 USD/mies)** stracił 13.06 dostęp do najmocniejszego modelu — w trakcie darmowego okresu testowego.
- Polacy pracujący w **Anthropic w USA** — nawet z legalną wizą H-1B — też zostali odcięci od własnego produktu firmy.
- Każdy polski startup, który zdążył zbudować workflow na Fable 5 przez API w ciągu 4 dni (9–12.06), musi natychmiast migrować na Opus 4.8 (gorszy o 11 pkt na SWE-Bench Pro).
- Precedens: jeśli USA może odciąć model AI, może to zrobić z każdym następnym — kwestia **dependency ryzyka** dla polskiego sektora tech.

---

## Potencjalne kąty narracyjne do shorta

- **"Trump właśnie wyłączył ci Claude'a"** — bezpośredni, drugi-osobowy hook, działa na każdego polskiego subskrybenta Pro/Max.
- **"24 godziny. Tyle dał Trump Anthropic na odcięcie wszystkich Polaków od najlepszego AI."** — drama + konkretne liczby + PL angle.
- **"Pierwszy raz w historii USA traktuje model AI jak broń jądrową"** — historyczny ciężar, czytelny dla laika.
- **"Pracownicy Anthropic nie mogą używać własnego produktu — bo nie są Amerykanami."** — paradoks, łatwy do pokazania wizualnie.
- **"Szef Amazona zadzwonił do Skarbu USA. Po 3 dniach najlepszy Claude został zbanowany dla całego świata."** — konspiracyjny ton, prawdziwa historia (WSJ), Big Tech infighting.
- **"Fable 5: 80% na teście kodowania. Opus: 69%. GPT-5.5: 58%. Ty: 0% bo jesteś Polakiem."** — brutalna progresja liczb + PL punchline.
- **"Francuski minister: kraj zależny od cudzej technologii można wyłączyć w jedną noc."** — cytat polityka EU, daje wymiar geopolityczny.

---

## Źródła

- [Anthropic — Statement on the US government directive to suspend access to Fable 5 and Mythos 5](https://www.anthropic.com/news/fable-mythos-access)
- [Bloomberg — Anthropic Says US Orders Halt to Foreign Access for Fable 5, Mythos 5 AI Models](https://www.bloomberg.com/news/articles/2026-06-13/anthropic-says-us-limits-foreign-access-to-fable-5-mythos-5)
- [Time — Anthropic Pulls Its Most Powerful AI Models After U.S. Bars Foreign Access](https://time.com/article/2026/06/13/anthropic-fable-mythos-ban-US-security/)
- [Al Jazeera — US orders Anthropic to disable AI models for all foreign nationals](https://www.aljazeera.com/news/2026/6/13/us-orders-anthropic-to-disable-ai-models-for-all-foreign-nationals)
- [Fortune — Anthropic disables Fable and Mythos AI models following U.S. government export ban](https://fortune.com/2026/06/13/anthropic-disables-fable-mythos-export-controls-national-security-threat/)
- [TechCrunch — Amazon CEO reportedly raised Anthropic model concerns before government crackdown](https://techcrunch.com/2026/06/13/amazon-ceo-reportedly-raised-anthropic-model-concerns-before-government-crackdown/)
- [Euronews — 'Wake-up call': Europe reacts to Anthropic halting access to its Fable 5 and Mythos 5 AI models](https://www.euronews.com/2026/06/13/wake-up-call-europe-reacts-to-anthropic-halting-access-to-its-fable-5-and-mythos-5-ai-mode)
- [Vellum — Claude Fable 5 & Claude Mythos 5 Full Benchmark Breakdown](https://www.vellum.ai/blog/claude-fable-5-and-mythos-5-benchmarks-explained)
- [Crypto Briefing — Anthropic shuts down Fable 5 and Mythos 5 after US export control order](https://cryptobriefing.com/fable-mythos-5-trump-export-controls/)
- [CNBC — Anthropic disables access to Fable 5 and Mythos 5 to comply with government directive](https://www.cnbc.com/2026/06/12/anthropic-disables-access-to-fable-5-and-mythos-5-to-comply-with-government-directive.html)
