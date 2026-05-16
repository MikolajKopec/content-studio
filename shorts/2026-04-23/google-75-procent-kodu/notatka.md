# Notatka badawcza: Google — 75% kodu pisze AI

## Kluczowe fakty
- 75% całego nowego kodu w Google jest teraz generowane przez AI i zatwierdzane przez inżynierów (kwiecień 2026)
- Wzrost z 50% jesienią 2025, z ponad 30% wiosną 2025 i 25% jesienią 2024 — tempo przyspieszenia jest ogromne
- Ogłoszono 22 kwietnia 2026 podczas Google Cloud Next 2026 w Las Vegas
- Słowa Sundara Pichai: "75% of all new code at Google is now AI-generated and approved by engineers, up from 50% last fall"
- Google używa wewnętrznie platformy agentic o nazwie **Antigravity** — agent-first IDE z Gemini 3 i Claude Opus wbudowanym
- Przykład: budowa aplikacji Gemini na macOS — od koncepcji do natywnego prototypu w Swift w ciągu dni (nie tygodni)
- Jeden złożony projekt migracji kodu ukończony przez agentów + inżynierów **6 razy szybciej** niż poprzedniego roku
- Google ma 750 mln użytkowników Gemini, backlog Cloud: $240 mld, przychód Cloud: $70+ mld przy wzroście 48%
- CapEx Google: $175-185 mld w 2026 (w 2022 było to $32 mld — wzrost 5-6x w 4 lata)

## Skąd ta liczba — kontekst wypowiedzi

Sundar Pichai ujawnił tę liczbę 22 kwietnia 2026 w swoim blogu opublikowanym z okazji Google Cloud Next 2026 — największej corocznej konferencji Google dla klientów chmury. To nie był wywiad ani konferencja prasowa — to był oficjalny post CEO otwierający konferencję, więc liczba jest przemyślana i weryfikowana wewnętrznie. Kontekst był celowo optymistyczny: Pichai przedstawiał Google jako lidera "eryi agentycznej". Wcześniej podobne liczby pojawiały się w wynikach kwartalnych (CFO Alphabet Anat Ashkenazi powiedziała o "almost 50%" jesienią 2025) i na Google I/O 2025 ("well over 30%"). Trajektoria: 25% (jesień 2024) → 30%+ (wiosna 2025) → ~50% (jesień 2025) → 75% (kwiecień 2026).

## Co to znaczy w praktyce

"AI pisze kod" w Google oznacza konkretnie: inżynierowie zlecają zadania agentyzmowi (platformie Antigravity lub Gemini Code Assist), agent planuje implementację, wprowadza zmiany w wielu plikach jednocześnie, uruchamia testy, a inżynier zatwierdza rezultat — lub odrzuca i koryguje. Narzędzie główne to **Gemini Code Assist** (dostępny też zewnętrznie) oraz wewnętrzna platforma **Antigravity**, która osiągnęła 76,2% na benchmarku SWE-bench Verified (zdolność do rozwiązywania prawdziwych zgłoszeń błędów w produkcyjnych codebase'ach). Google opisuje nową rolę inżyniera jako "Mission Controller" zamiast "coder" — inżynier formułuje wymagania i weryfikuje wynik, zamiast pisać kod linijka po linijce. Nie ujawniono, jaki procent AI-generowanego kodu jest odrzucany lub wymaga istotnych poprawek przed zatwierdzeniem — to kluczowa luka w raportowanych danych. Złożona migracja kodu wykonana przez agenty + inżynierów zakończyła się 6 razy szybciej niż analogiczna praca rok wcześniej robiona wyłącznie przez inżynierów.

## Szerszy trend w branży

Google jest liderem, ale reszta branży szybko gonią:
- **Microsoft**: ~30% kodu AI-generowanego (kwiecień 2025), CEO Satya Nadella; CTO Kevin Scott przewiduje 95% do 2030
- **Meta**: wybrane zespoły inżynierskie mają osiągnąć 75% AI-kodu do połowy 2026 — identyczny cel co Google teraz
- **Amazon**: buduje Q Developer; przeniósł 30 000 aplikacji Java przy użyciu AI; konkretna liczba % nie podana publicznie
- **Anthropic**: nieoficjalnie blisko 100% kodu generowane przez AI
- **Block (Jack Dorsey's firm)**: 90% zgłoszeń kodu AI-asystowanych (listopad 2025)

Rynek pracy: w Q1 2026 z branży tech zwolniono 78 500 osób, z czego ~48% z powodu AI. Google sam zredukował w 2025 roku 1/3 menedżerów nadzorujących małe zespoły, Google Cloud zlikwidował ponad 100 stanowisk UX/design. Jednocześnie zatrudnienie inżynierów AI/ML rośnie najszybciej w branży, a Google oficjalnie deklaruje, że zamierza zatrudniać więcej inżynierów — tyle że do innych zadań (orchestracja agentów, AI governance). Dane StackOverflow 2025: zaufanie deweloperów do dokładności AI spadło z 40% do 29%, 66% deweloperów twierdzi, że spędza więcej czasu na poprawianiu "prawie dobrych" wyników AI.

### Gemini w Chrome Enterprise — auto browse
Ogłoszono równolegle (22 kwietnia 2026): Chrome Enterprise zyskał funkcję **Auto Browse** napędzaną Gemini. Działanie: użytkownik zleca zadanie (np. "dodaj dane klienta do CRM z tego dokumentu Google"), Gemini analizuje zawartość otwartych kart przeglądarki i wykonuje wieloetapowe akcje — ale przed każdą finalną akcją wymaga ręcznego potwierdzenia. Inne zastosowania: rezerwacja podróży, wypełnianie formularzy, porównywanie cen między kartami, ekstrakcja danych z konkurencyjnych stron, podsumowanie portfolio kandydata przed rozmową. Wyniki można zapisywać jako "Skills" — schematy zadań do wielokrotnego użycia. Enterprise kontrole: administratorzy IT definiują, które strony i zadania kwalifikują się do automatyzacji; dane firmy nie są używane do trenowania modeli; Chrome Enterprise Premium ($6/użytkownika/miesiąc) wykrywa nieautoryzowane narzędzia AI i anomalną aktywność agentów.

## Potencjalne haki do shorta
- Liczba: "Trzy z czterech linijek kodu w Google napisała maszyna" — konkretny obraz skali, który widzowie mogą zrozumieć bez wiedzy technicznej
- Tempo wzrostu: 25% → 75% w 18 miesięcy — to nie jest ewolucja, to transformacja
- Kontrast: Google mówi "zatrudniamy więcej inżynierów", ale jednocześnie likwiduje 1/3 menedżerów i 100 stanowisk UX — komentarze same się napiszą
- Pytanie do widzów: "Czy gdybyś kupował telefon Pixel, chciałbyś wiedzieć, że kod napisała głównie maszyna? Czy to w ogóle ma znaczenie?" — wywoła naturalną debatę
- Benchmark SWE-bench 76,2% — AI rozwiązuje 3 z 4 prawdziwych błędów w produkcyjnym kodzie, o których zgłoszono na GitHubie
- Auto browse w Chrome: przeglądarka, która sama wypełnia formularze i rezerwuje loty — to coś co każdy rozumie, nie tylko developerzy
- Porównanie: "Meta chce tego samego co Google, Microsoft jest w połowie drogi — to nie jest eksperyment jednej firmy"
- Kontr-narracja ekspercka: deweloperzy coraz mniej ufają AI (29% zamiast 40%) i 66% spędza więcej czasu na poprawkach niż rok temu

## Źródła
- [Sundar Pichai — blog Google Cloud Next 2026](https://blog.google/innovation-and-ai/infrastructure-and-cloud/google-cloud/cloud-next-2026-sundar-pichai/)
- [OfficeChai — 75% Of Code At Google Is Now Generated By AI](https://officechai.com/ai/75-of-code-at-google-is-now-generated-by-ai-ceo-sundar-pichai/)
- [Sherwood News — Google: 75% of our new code is written by AI](https://sherwood.news/tech/google-75-of-our-new-code-is-written-by-ai/)
- [TechCrunch — Google turns Chrome into an AI co-worker for the workplace](https://techcrunch.com/2026/04/22/google-turns-chrome-into-an-ai-coworker-for-the-workplace/)
- [The Next Web — Pichai opens Cloud Next 2026 with $240B backlog](https://thenextweb.com/news/google-cloud-next-pichai-agentic-era-scale)
- [Tom's Hardware — Tech industry lays off nearly 80,000 in Q1 2026](https://www.tomshardware.com/tech-industry/tech-industry-lays-off-nearly-80-000-employees-in-the-first-quarter-of-2026-almost-50-percent-of-affected-positions-cut-due-to-ai)
- [The Pragmatic Engineer — When AI writes almost all code](https://newsletter.pragmaticengineer.com/p/when-ai-writes-almost-all-code-what)
- [Google Antigravity — Agentic IDE overview](https://www.index.dev/blog/google-antigravity-agentic-ide)
- [Entrepreneur — AI Is Taking Over Coding at Microsoft, Google, and Meta](https://www.entrepreneur.com/business-news/ai-is-taking-over-coding-at-microsoft-google-and-meta/490896)
- [The Deep Dive — 75% of Google's new code now AI-generated](https://thedeepdive.ca/google-ai-generates-most-code/)
- [Chrome Auto Browse support page](https://support.google.com/chrome/answer/16821166?hl=en)
- [BackBox — Google brings Auto Browse and Skills to Chrome Enterprise](https://news.backbox.org/2026/04/22/google-brings-auto-browse-and-skills-to-chrome-enterprise-and-a-new-gemini-summary/)
