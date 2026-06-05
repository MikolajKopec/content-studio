# OpenAI ubija GPT-4.5 i o3 — GPT-5.5 Instant przejmuje wszystkich userów

**Data:** 2026-06-05
**Temat:** OpenAI oficjalnie wycofuje GPT-4.5 (27 czerwca 2026) i o3 (26 sierpnia 2026) z ChatGPT, a ulepszony GPT-5.5 Instant staje się domyślnym modelem dla wszystkich userów z **52,5%** mniejszą halucynacyjnością w domenach high-stakes.

---

## Kluczowe fakty i liczby

- **3 czerwca 2026** — OpenAI oficjalnie potwierdza wycofanie GPT-4.5 i o3 z ChatGPT (gHacks, The Decoder, Bleeping Computer).
- **GPT-4.5** znika z ChatGPT **27 czerwca 2026** — okno przejściowe tylko **30 dni**.
- **o3** znika z ChatGPT **26 sierpnia 2026** — okno przejściowe **90 dni** (OpenAI sam przyznaje, że o3 ma "głębsze zakorzenienie w workflowach").
- GPT-4.5 w API zostało już wyłączone wcześniej (**lipiec 2025**) — czerwcowa data dotyczy wyłącznie interfejsu ChatGPT.
- o3 **zostaje w API na razie** — developerzy mają oddech, konsumenci nie.
- GPT-5.5 Instant po upgradzie **2 czerwca 2026**: **52,5%** mniej halucynacji vs GPT-5.3 Instant w medycynie/prawie/finansach (z **18,7%** do **8,9%**).
- **37,3%** redukcja błędnych claimów w konwersacjach oflagowanych przez userów jako faktualnie błędne.
- Benchmarki vs GPT-5.3 Instant: AIME 2025 (matma) **65,4% → 81,2%** (+15,8 pkt), GPQA (PhD science) **78,5% → 85,6%**, MMMU-Pro (multimodal) **69,2% → 76,0%**, CharXiv (wykresy) **75,0% → 81,6%**.
- W API GPT-5.5 Instant dostępny jako `chat-latest`.
- Liczba modeli wycofanych w 2026 przez OpenAI **przekracza sumę wszystkich poprzednich lat** — cykl życia modelu skrócił się z 18 do ok. **6 miesięcy**.

## Oś czasu wycofania

| Data | Wydarzenie |
|------|------------|
| **lipiec 2025** | GPT-4.5 wyłączone z API |
| **5 maja 2026** | GPT-5.5 Instant startuje jako nowy default (replace GPT-5.3 Instant) |
| **28 maja 2026** | Update GPT-5.5 Instant — readability fix, Canvas removed |
| **2 czerwca 2026** | Drugi upgrade GPT-5.5 Instant — accuracy + style |
| **3 czerwca 2026** | OpenAI potwierdza retirement GPT-4.5 i o3 z ChatGPT |
| **27 czerwca 2026** | GPT-4.5 znika z ChatGPT (30-dniowe okno) |
| **26 sierpnia 2026** | o3 znika z ChatGPT (90-dniowe okno) |
| **TBD** | o3 deprecation w API (jeszcze nieogłoszone) |

## Co konkretnie zmienia się w GPT-5.5 Instant

- **Dokładność faktyczna** — halucynacje cięte o połowę w domenach high-stakes (medycyna, prawo, finanse). OpenAI sam przyznaje, że to ich wewnętrzny benchmark — czekamy na niezależną weryfikację.
- **Mniej overformattingu** — krótsze odpowiedzi, mniej bulletów, mniej "gratuitous emoji", więcej konwersacyjnego tonu. OpenAI cytuje feedback userów typu "ChatGPT za bardzo formatuje".
- **Lepsza analiza obrazów** (+6,8 pkt na MMMU-Pro) i wykresów naukowych (+6,6 pkt CharXiv).
- **Sprytniejsza decyzja o web search** — model sam wybiera kiedy "wyjść do internetu".
- **Personalizacja z passed chats, plików i Gmaila** (jeśli podpięty) dla Plus/Pro na webie — rolling out na mobile i pozostałe tiery (Free, Go, Business, Enterprise) w kolejnych tygodniach.
- **Memory sources** — nowy UI pokazujący, *która* poprzednia rozmowa, plik czy email wpłynął na konkretną odpowiedź (edytowalne, usuwalne).
- **Canvas wyłączony** w GPT-5.5 Instant i GPT-5.5 Thinking — pisanie i kod teraz inline przez "writing blocks" i "code blocks".

## Co tracą power-userzy o3 / GPT-4.5 (workflowy, customGPT, API)

- **o3 fani** — "o3 było natywnym pure reasoning modelem", komentowano na X. Nowsze modele "thinking" są szybsze i tańsze, ale część userów twierdzi, że nie odtwarzają charakteru rozumowania o3 (długie chain-of-thought, agresywne sprawdzanie hipotez).
- **GPT-4.5 fani** — model był bliższy stylowi GPT-4o (cieplejszy, bardziej "ludzki" ton). OpenAI sam mówi, że "GPT-4.5 ma bardziej oddanego followingu" niż o3 — stąd jednak tylko 30 dni okna (vs 90 dla o3) i głośne zażalenia.
- **Workflowy w ChatGPT** zbudowane wokół konkretnych modeli (custom instructions tuningowane pod o3, prompty pod GPT-4.5) — wszystko do przepisania.
- **Custom GPTs** używające o3 lub GPT-4.5 jako backend — automatyczna migracja na GPT-5.5, brak kontroli nad tym, jak nowy model zinterpretuje stary system prompt.
- **API users** — GPT-4.5 już dawno poza API (od lipca 2025), o3 **na razie zostaje** w API. Czyli devs łapią deadline'y wolniej niż konsumenci.
- **Migracje rekomendowane przez community**: GPT-5.3 Instant jako tani default, GPT-5.3-Codex do agentic/coding, GPT-5.4 do reasoning, GPT-5.5 do top capability.

## Reakcje branży / społeczności

- **Powtórka z deja-vu** — w sierpniu 2025 OpenAI wyłączyło GPT-4o przy launchu GPT-5 *bez okna przejściowego*. Reddit eksplodował, Sam Altman musiał na żywo pisać "ok, we hear you all on 4o; thanks for the time to give us the feedback (and the passion!)" i przywracać GPT-4o dla paid userów (Simon Willison). Tym razem OpenAI gra ostrożniej — daje 30/90 dni i komunikuje wcześniej.
- **Tempo retirementów** — branża (m.in. ByteIota, Method Shop) zauważa, że OpenAI w 2026 wycofało **więcej modeli niż w całej historii firmy razem wziętej**. Cykl życia modelu spadł z 18 do ok. 6 miesięcy.
- **Krytyka stylu komunikacji** — niektórzy devs na X zarzucają OpenAI, że ChatGPT retirement i API deprecation idą *osobnymi torami*, co utrudnia planowanie (model żyje w API, umarł w ChatGPT — albo odwrotnie).
- **Pozytywy** — pochwały za odchudzenie odpowiedzi (mniej bulletów, mniej emoji) i benchmark halucynacji — jeśli się potwierdzi niezależnie, to faktyczny skok jakościowy.

## Implikacje dla polskiego usera (kto i co odczuje)

- **Casual user ChatGPT (Free/Plus)** — w praktyce nic nie odczuje. Domyślny model zmienił się już 5 maja, teraz dostaje tylko cichy upgrade jakości. Krótsze odpowiedzi mogą być nawet plusem (mniej "Sprawdziłem, oto co znalazłem:" + emoji 🚀).
- **Polscy power-userzy z subem Plus/Pro**, którzy używali o3 do analizy długich dokumentów PL (umowy, raporty, dokumentacja) — muszą przetestować GPT-5.5 Thinking jako zamiennik *przed* 26 sierpnia.
- **Polscy developerzy na API** — bez paniki: o3 zostaje w API, GPT-4.5 i tak nie było dostępne od roku. Ale warto przejść na konfigurację modelu jako zmienną środowiskową (env var), bo retirementy będą coraz szybsze.
- **Custom GPT creators** na polskim rynku (firmy używające ChatGPT do botów) — sprawdzić, czy ich GPT nie były hardcodowane pod konkretny model.
- **Polski rynek Plus/Pro** — personalizacja z Gmaila jest po angielsku flagowo, ale działa też dla polskich userów (jeśli mają podpięte Google) — to spory upgrade UX dla osób żyjących w Workspace.
- **Edukacja / studenci** — GPT-5.5 Instant z benchmarkiem AIME **81,2%** jest mocniejszy w matmie niż większość darmowych alternatyw; warto wspomnieć w shortcie.

---

## Potencjalne kąty narracyjne do shorta

1. **"OpenAI ubija dwa modele jednocześnie"** — dramaturgia, liczby (GPT-4.5: 30 dni, o3: 90 dni), countdown na ekranie do 27 czerwca i 26 sierpnia.
2. **"o3 — najbardziej kochany reasoning model umiera"** — kąt nostalgii dla power-userów, pokaz cytatów z X "o3 was a native pure reasoning model".
3. **"Halucynacje cięte o połowę — 52,5%"** — twardy benchmark, pokaz przed/po na konkretnym przykładzie (np. pytanie medyczne / prawne po polsku).
4. **"ChatGPT mniej cringe — koniec ery emoji 🚀 i overformattingu"** — śmieszny kąt, side-by-side stary vs nowy styl odpowiedzi.
5. **"Cykl życia modelu spadł z 18 do 6 miesięcy"** — meta-kąt o tempie zmian w AI, "kupiłeś sub na rok — model umrze dwa razy".
6. **"Custom GPTs zbudowane na o3? Masz 90 dni"** — call to action dla twórców botów, w PL niszowy ale ostry kąt.
7. **"Gmail w ChatGPT — nowa personalizacja dla Plus/Pro"** — przesunięcie kąta z "co umiera" na "co dostaję", pokazanie memory sources.

---

## Źródła

1. gHacks Tech News — "OpenAI Upgrades GPT-5.5 Instant and Confirms Retirement of o3 and GPT-4.5 Models" (3.06.2026): https://www.ghacks.net/2026/06/03/openai-upgrades-gpt-5-5-instant-and-confirms-retirement-of-o3-and-gpt-4-5-models/
2. The Decoder — "OpenAI gives GPT-5.5 Instant a readability upgrade while phasing out two older models": https://the-decoder.com/openai-gives-gpt-5-5-instant-a-readability-upgrade-while-phasing-out-two-older-models/
3. The Decoder — "ChatGPT update rolls out GPT-5.5 Instant with fewer hallucinations and more personalized answers" (benchmarki AIME/GPQA/MMMU-Pro): https://the-decoder.com/chatgpt-update-rolls-out-gpt-5-5-instant-with-fewer-hallucinations-and-more-personalized-answers/
4. AI Weekly — "OpenAI Phases Out GPT-4.5 and o3 From ChatGPT": https://aiweekly.co/alerts/openai-phases-out-gpt-45-and-o3-from-chatgpt
5. Bleeping Computer — "OpenAI upgrades GPT-5.5, as it plans to retire legacy ChatGPT models": https://www.bleepingcomputer.com/news/artificial-intelligence/openai-upgrades-gpt-55-as-it-plans-to-retire-legacy-chatgpt-models/
6. ByteIota — "OpenAI Model Retirements 2026: What Dies Next and What to Use Instead" (daty API + rekomendacje migracji): https://byteiota.com/openai-model-retirements-2026-what-dies-next-and-what-to-use-instead/
7. Technobezz — "OpenAI Releases GPT-5.5 Instant as New Default Model Cutting Hallucinations by Half" (benchmark 52,5%): https://www.technobezz.com/news/openai-releases-gpt-55-instant-as-new-default-model-cutting-hallucinations-by-half
8. Releasebot — "ChatGPT Updates by OpenAI - June 2026" (timeline): https://releasebot.io/updates/openai/chatgpt
9. Simon Willison — "The surprise deprecation of GPT-4o for ChatGPT consumers" (kontekst sierpnia 2025, cytat Altmana): https://simonwillison.net/2025/Aug/8/surprise-deprecation-of-gpt-4o/
10. MacRumors — "ChatGPT Is Smarter, More Accurate, and Less Obsessed With Emojis After Upgrade": https://www.macrumors.com/2026/05/05/openai-gpt-instant-5-5-chatgpt-upgrade/
