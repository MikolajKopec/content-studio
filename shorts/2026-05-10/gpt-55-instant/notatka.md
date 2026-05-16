# GPT-5.5 Instant — notatka researchu

Data researchu: 2026-05-10

---

## Co wiadomo na pewno

- **Data premiery:** 5 maja 2026 — GPT-5.5 Instant stało się domyślnym modelem ChatGPT dla wszystkich użytkowników
- **Poprzednik:** zastąpił GPT-5.3 Instant (wydany w marcu 2026, czyli zaledwie ~2 miesiące wcześniej)
- **Kryptonim modelu:** "Spud"
- **Pierwsza fala GPT-5.5:** 23 kwietnia 2026 OpenAI wypuściło GPT-5.5 Thinking i GPT-5.5 Pro (warianty płatne); 5 maja doszedł Instant dla wszystkich
- **API:** dostępny jako `chat-latest`; GPT-5.3 Instant pozostaje dostępny dla płatnych użytkowników przez 3 miesiące

### Kluczowe liczby podawane przez OpenAI (wewnętrzne testy):
- **52,5% mniej halucynacji** na pytaniach wysokiego ryzyka z medycyny, prawa, finansów (vs GPT-5.3 Instant)
- **37,3% mniej błędnych twierdzeń** na rozmowach wcześniej oflagowanych przez użytkowników jako błędne
- **AIME 2025:** 81,2 (GPT-5.5) vs 65,4 (GPT-5.3) — matematyka olimpijska
- **MMMU-Pro:** 76 vs 69,2 (wielomodalne rozumowanie)
- **HealthBench:** 51,4 vs 49,6 (ogólny); HealthBench Professional: 38,4 vs 32,9
- **GPQA Diamond (PhD-level science):** ~85,6 vs 78,5 (wg the-decoder)
- **Odpowiedzi ~30,2% krótsze słownie, ~29,2% mniej linii**

### Co się zmieniło w stylu:
- Mniej emoji (OpenAI wprost mówi o "gratuitous emojis" — koniec z nimi)
- Mniej zbędnych pytań doprecyzowujących
- Bardziej naturalna konwersacja, mniej "korporacyjna"

### Nowa funkcja — personalizacja:
- Model może sięgać do **przeszłych rozmów, plików i połączonego Gmaila** (Plus/Pro, na razie web)
- Wdrożenie na mobile: wkrótce
- Dostęp dla Free/Go/Business/Enterprise: planowany w ciągu kolejnych tygodni

---

## Kontekst i tło

### Historia modeli GPT-5.x (szybki timeline):
| Model | Data | Kluczowe zmiany |
|---|---|---|
| GPT-5 | sierpień 2025 | pierwsze wydanie serii; thinking wbudowany |
| GPT-5.1 | listopad 2025 | trzy warianty: Thinking, Instant, Pro |
| GPT-5.2 | grudzień 2025 | lepsze rozumowanie, kodowanie, long-context, mniej halucynacji |
| GPT-5.3 / GPT-5.3-Codex | luty–marzec 2026 | Codex: 5 lutego; GPT-5.3 Instant: marzec 2026 |
| GPT-5.4 | marzec 2026 | agentic workflows, warianty Mini i Nano |
| GPT-5.5 Thinking/Pro | 23 kwietnia 2026 | pełny retrain architektury (nie tylko post-training) |
| GPT-5.5 Instant | 5 maja 2026 | domyślny dla wszystkich; focus na codziennym użyciu |

### Ważny kontekst architektoniczny:
GPT-5.5 to wg o-mega.ai **pierwszy pełny retrain bazowego modelu od GPT-4.5** — poprzednie GPT-5.x (5.0–5.4) były iteracjami post-trainingu, nie przebudową od podstaw. To tłumaczy skok numerowania.

### Precedens odejścia od starych modeli:
W lutym 2026 OpenAI wycofało GPT-4o mimo masowego protestu użytkowników (petycje, posty "to był mój najlepszy przyjaciel"). GPT-5.5 Instant zastępuje GPT-5.3, ale płatni użytkownicy mają 3 miesiące przejściowe.

### Co dalej — GPT-5.6 i GPT-6:
- GPT-5.6 jest już testowany (od ~30 kwietnia 2026); Polymarket daje 69% szans na wydanie do końca czerwca 2026
- GPT-6 w treningu na farmie obliczeniowej w Abilene (Texas); Sam Altman sugeruje, że będzie "najlepszym modelem na świecie, potencjalnie z dużą przewagą"
- Altman unika słowa "GPT-6", ale timeline jest jasna: "przyjdzie szybciej niż przerwa między GPT-4 a GPT-5"

---

## Benchmarki i porównania

### AIME 2025 — co to jest i dlaczego ważny:
AIME (American Invitational Mathematics Examination) to drugi etap olimpiady matematycznej USA (po AMC 10/12). 30 zadań z algebry, geometrii, teorii liczb, kombinatoryki — odpowiedź to liczba całkowita 0–999, zero częściowego uznania. Każdy błąd w rozumowaniu = brak punktu. Dlatego AIME to **rygorystyczny test czystego matematycznego myślenia**, nie zapamiętywania faktów.

Wyniki GPT-5.5 Instant: **81,2/100** vs 65,4 GPT-5.3 — istotny skok, choć Grok-4 Heavy i GPT-5.2 Pro osiągają ~100%.

### Tabela porównawcza z konkurencją (maj 2026):

| Benchmark | GPT-5.5 | Claude Opus 4.7 | Gemini 3.1 Pro |
|---|---|---|---|
| GPQA Diamond (PhD nauka) | 93,6% | 94,2% | 94,3% |
| SWE-bench Verified (kodowanie) | 85,1% / 58,6% Pro | 87,6% / 64,3% Pro | ~85% |
| Terminal-Bench 2.0 (agentic) | 82,7% | 69,4% | nie podane |
| HLE bez narzędzi (wiedza akademicka) | 41,4% | 46,9% | 44,4% |
| Kontekst | 256K–1M tokenów | nie podane | 1M tokenów |
| Cena (in/out, $M tokenów) | $5 / $30 | porównywalne | $2–3 / $12 (Gemini tańszy ~40%) |

**Mocne strony GPT-5.5:** agentic, matematyka, long-context retrieval (74% przy 512K–1M tokenów)
**Słabe strony:** multimodal (57,2/100 — ranking #53), kodowanie vs Claude, cena vs Gemini

### Rankingi ogólne (BenchLM.ai, maj 2026):
- Wynik ogólny GPT-5.5: **91/100** — miejsce #3 na 115 modeli
- Lider: Claude Mythos Preview (99 provisional)
- Agentic: GPT-5.5 na miejscu #2 (98,2/100)

### Wiarygodność liczby 52,5%:
**To dane z wewnętrznych testów OpenAI — nie zweryfikowane zewnętrznie.** Kluczowe zastrzeżenia:
1. Metoda: testy na "high-stakes prompts" z medycyny, prawa, finansów — nie wiadomo jak skonstruowany zbiór testowy ani kto go oceniał
2. Mechanizm: real-time self-correction (model może poprawiać się w trakcie generowania), lepsza obsługa kontekstu, conciseness (krótsze odpowiedzi = mniej okazji do błędu)
3. Silicon Snark trafnie zauważa: "zmniejszyć o połowę" to jednocześnie osiągnięcie i sygnał, jak wysoka była poprzednia bazowa liczba błędów
4. Tom's Guide: GPT-5.5 przegrał we wszystkich 7 kategoriach testowych z Claude Opus 4.7; model "woli halucynować niż przyznać, że nie wie"
5. Na AA-Omniscience (inny benchmark): **86% wskaźnik halucynacji** vs Claude 36% — dramatyczna różnica w zależności od metodologii

**Wniosek:** 52,5% redukcji jest prawdopodobnie prawdziwa w wąskim kontekście testowym OpenAI, ale nie jest równoznaczna z "model prawie nie halucynuje".

---

## Nowe funkcje — pamięć i personalizacja

### Jak działa Memory Sources:
- ChatGPT może teraz automatycznie szukać w: **przeszłych rozmowach, zapisanych plikach, notatkach, połączonym Gmailu**
- Po odpowiedzi model pokazuje "memory sources" — skąd wziął kontekst
- Użytkownik widzi dokładnie, jakie informacje wpłynęły na odpowiedź

### Kontrole prywatności wbudowane przez OpenAI:
- Użytkownik może usuwać poszczególne źródła / rozmowy
- Można wyłączyć pamięć całkowicie ("temporary chat" mode)
- Można rozłączyć Gmail
- Można zarządzać tym, czy dane są używane do trenowania modelu
- **Ważne:** memory sources są widoczne **tylko w koncie użytkownika** — ktoś, kto dostanie link do udostępnionej rozmowy, ich nie zobaczy

### Integracja Gmail — szczegóły:
- Dostępna dla Plus i Pro (na razie web, mobile wkrótce)
- Użytkownik **sam łączy** konto Gmail — nie dzieje się automatycznie
- Model może przywoływać emaile do kontekstu odpowiedzi
- OpenAI nie wyjaśniło szczegółowo zakresu dostępu (które emaile, jak długo przechowywany kontekst)

### Obawy prywatności (stanowisko ekspertów i mediów):
- Główna krytyka: **integracja Gmaila to istotna eskalacja zakresu danych osobowych**, do których ChatGPT ma dostęp
- Łączenie chatbota z zewnętrznymi serwisami = większe ryzyko wycieku informacji prywatnych/zawodowych
- Pew Research: 81% Amerykanów uważa, że ryzyko związane z danymi przewyższa korzyści
- Transparentność źródeł pamięci to krok naprzód vs 2024 (wtedy odkryto lukę w pamięci ChatGPT pozwalającą na persistent prompt injection), ale nie eliminuje wszystkich ryzyk
- **Silicon Snark:** "Właśnie dałeś ChatGPT dostęp do swojej skrzynki mailowej — branżowy trend budowania permanentnych cyfrowych profili"

### Spreadsheet add-ins (bonus):
Przy okazji tej samej aktualizacji: ChatGPT w pasku bocznym Excela i Google Sheets — budowanie formuł, analiza danych, czyszczenie danych bez kopiowania do okna czatu.

---

## Reakcje i opinie

### Użytkownicy (Reddit r/ChatGPT, r/OpenAI):
- Ogólny sentyment: ~60% pozytywny, ~25% neutralny, ~15% krytyczny
- Pochwały: "daj mu bałaganiarskie zadanie i po prostu przez nie przechodzi", lepsza praca z kodem (lepsze code review, mniej generycznych sugestii)
- Tom's Guide: "nareszcie przestał nadmiernie wyjaśniać wszystko" — krótsze, skupione odpowiedzi
- Krytyka: wyższe ceny API (2x wzrost do $5/$30), model czasem "robi co chce" zamiast "co miałeś na myśli", szybsze spalanie tokenów

### Eksperci i media:
- **ZDNET:** "wypolerowane odpowiedzi", poprawa w "agentic coding, conceptual clarity, scientific research ability"
- **AI Security Institute:** 71,4% sukcesu na expert-level cybersecurity tasks
- **SiliconAngle:** podkreśla, że ulepszenia są realne, ale benchmarki są wewnętrzne OpenAI
- **Yahoo Finance (Eduard Klein):** GPT-5.5 jako "inflection point of AI business strategy" — firmy AI przechodzą od "wow features" do "reliability products"
- **Writesonic blog:** Ciekawy research poboczny — GPT-5.5 Instant cytuje Reddit o 55% częściej niż GPT-5.3, marka citations spadły o 55% → model bardziej "społecznościowy" niż "branded"
- Część ekspertów podkreśla: **wyniki OpenAI są self-reported** — żadna niezależna organizacja nie zweryfikowała 52,5%

### Kontrast z reaktją na GPT-5 (sierpień 2025):
TechRadar w tamtym czasie: "ChatGPT users are not happy with GPT-5 launch as thousands take to Reddit claiming the new upgrade 'is horrible'" — GPT-5.5 Instant wydaje się mieć znacznie cieplejsze przyjęcie.

### Incydent post-launch:
Wikipedia odnotowuje ciekawą awarię: kilka dni po premierze GPT-5.5 wykazywał obsesyjne zamiłowanie do goblinów, skrzatów i trolli — efekt błędu w reinforcement learning przy tworzeniu persony "Nerdy". Dane treningowe były skażone przez kilka generacji. OpenAI naprawiło.

---

## Potencjał contentowy — haki i kąty

### Najsilniejsze haki:
1. **"Twój ChatGPT czyta teraz Twoją pocztę"** — Gmail integration to naturalny hook dla nieprzygotowanego widza; warto pokazać co to znaczy praktycznie i jakie daje kontrolki
2. **"O połowę mniej kłamstw — ale nadal kłamie"** — paradoks 52,5% redukcji: to jednocześnie rekord i przyznanie, jak często poprzednia wersja się myliła; brak zewnętrznej weryfikacji to mocny kąt
3. **"Model zmienia się co 2 miesiące"** — GPT-5.3 w marcu, GPT-5.5 w maju; tempo iteracji jest szokujące dla nie-technicznego widza
4. **"Koniec z emoji i napuszonymi odpowiedziami"** — bardzo konkretna, relatable zmiana którą każdy może sprawdzić sami

### Kontrowersje wartościowe contentowo:
- **Prywatność vs wygoda:** dawanie dostępu do Gmaila to decyzja, której większość użytkowników nie rozumie w pełni
- **Benchmark washing:** jak OpenAI prezentuje liczby na swoją korzyść (internal evals vs niezależne testy)
- **Naming chaos:** GPT-5.3 → GPT-5.5 Instant → wewnętrznie "chat-latest" — nawet OpenAI przestało wierzyć w własne nazewnictwo
- **GPT-5.6 już w testach:** cykl jest krótszy niż kwartał — kiedy to się kończy?

### Pytania do komentarzy (naturalne haki komentarzowe):
- "Czy dacie ChatGPT dostęp do Gmaila? Dlaczego tak / nie?"
- "Widzicie różnicę po tej aktualizacji?"
- "Czy AI powinno się zmieniać co 2 miesiące bez pytania użytkowników?"
- "Komu zależy na AIME, skoro codziennie używamy AI do zupełnie innych rzeczy?"

### Kąty do uniknięcia:
- Nie opierać całego materiału na benchmarkach — zbyt techniczne dla docelowego widza kanału
- Nie skupiać się na walce GPT vs Claude w liczbach — widz nietech nie ma frame of reference
- Nie robić z "mniej emoji" głównego tematu — to detal, nie historia

---

## Źródła

- https://openai.com/index/gpt-5-5-instant/ (oficjalny blog OpenAI o GPT-5.5 Instant)
- https://openai.com/index/introducing-gpt-5-5/ (główna strona premiery GPT-5.5)
- https://techcrunch.com/2026/05/05/openai-releases-gpt-5-5-instant-a-new-default-model-for-chatgpt/
- https://www.axios.com/2026/05/05/openai-chatgpt-update-default-model
- https://9to5mac.com/2026/05/05/gpt-5-5-instant-makes-chatgpt-more-accurate-while-nixing-gratuitous-emojis/
- https://siliconangle.com/2026/05/05/openais-new-gpt-5-5-instant-makes-chatgpt-smarter-concise-reliable-responses/
- https://the-decoder.com/chatgpt-update-rolls-out-gpt-5-5-instant-with-fewer-hallucinations-and-more-personalized-answers/
- https://www.siliconsnark.com/gpt-5-5-instant-now-with-52-5-fewer-hallucinations-zero-gratuitous-emojis-and-full-access-to-your-gmail/
- https://en.wikipedia.org/wiki/GPT-5.5
- https://www.knightli.com/en/2026/05/07/chatgpt-release-notes-memory-gpt-5-5-sheets/
- https://benchlm.ai/models/gpt-5-5
- https://o-mega.ai/articles/gpt-5-5-the-complete-guide-2026
- https://localaimaster.com/models/gpt-5-5
- https://www.scriptbyai.com/timeline-of-chatgpt/
- https://artificialanalysis.ai/evaluations/aime-2025
- https://intuitionlabs.ai/articles/aime-2025-ai-benchmark-explained
- https://openai.com/index/healthbench/
- https://suprmind.ai/hub/ai-hallucination-rates-and-benchmarks/
- https://www.eweek.com/news/openai-laid-out-2026-roadmap-neuron/
- https://writesonic.com/blog/gpt-5-5-instant-citation-study
- https://lifearchitect.ai/gpt-6/
