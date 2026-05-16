# ChatGPT Images 2.0 — OpenAI wypuszcza model gpt-image-2
**Data:** 2026-04-22
**Temat:** chatgpt-images-2

## Kluczowe fakty

- OpenAI ogłosiło ChatGPT Images 2.0 w oparciu o model gpt-image-2 w dniu 21 kwietnia 2026
- Dostępne od razu dla wszystkich użytkowników ChatGPT i Codex; zaawansowane funkcje (tryb myślenia, web search) tylko dla Plus, Pro i Business
- Rozdzielczość do 2K (2000 pikseli po dłuższej krawędzi) — poprzednik gpt-image-1 obsługiwał maksymalnie 1024 px
- Obsługiwane proporcje: 1:1, 3:2, 2:3, 16:9, 9:16, 3:1 i 1:3
- Native reasoning: model "myśli" przed generowaniem — analizuje prompt, planuje kompozycję, może przeszukać web, potem rysuje
- Dwa tryby: Instant (szybki, bez deliberacji) i Thinking (wolniejszy, z planowaniem i self-correction)
- Spójność między wieloma obrazami: do 8 (lub 10 wg części źródeł) spójnych wizualnie wyników z jednego promptu — ta sama postać, styl, oświetlenie
- Znacznie lepsza obsługa tekstu w obrazkach: łacina, cyrylica, japońskie kanji, koreański hangul, chiński, hindi, bengali — wcześniej generatory produkowały "enchuita" zamiast "enchilada"
- Pozycjonowanie przez OpenAI: "visual thought partner" — nie narzędzie do renderowania, lecz "wizualny partner do myślenia"
- Wyprzedza Nano Banana 2 (Gemini 3.1 Flash Image od Google) o 242 punkty na LM Arena — wynik 1512 vs 1271; luka bezprecedensowa w historii rankingu
- API: model ID `gpt-image-2`, endpoint `/v1/images/generations` i `/v1/images/edits`
- Pricing API: $8/M tokenów wejściowych, $15/M tokenów wyjściowych; ~$0.006–$0.21 za obraz zależnie od jakości i rozdzielczości; tryb instant 1024px ~$0.21 (ok. 60% drożej niż gpt-image-1)
- Cena wysokiej jakości 4K beta przez API: do $0.41 za obraz
- Wcześniej testowany anonimowo na LM Arena pod kryptonimami: maskingtape-alpha, gaffertape-alpha, packingtape-alpha (społeczność nazwała to "Duct Tape")
- Architektura: OpenAI nie ujawniło, czy to model dyfuzyjny czy autoregresywny; podkreśla "thinking capabilities"
- Kontekst (według OpenRouter, gdzie model funkcjonuje jako gpt-5.4-image-2): 272 000 tokenów
- Knowledge cutoff modelu: grudzień 2025

## Szerszy kontekst

ChatGPT Images 2.0 to więcej niż kolejna wersja generatora obrazków — OpenAI przesuwa całą kategorię. Do tej pory generowanie obrazów AI działało jak wyszukiwarka: wpisz prompt, dostaniesz wynik, jeśli zły — próbuj jeszcze raz. gpt-image-2 wprowadza pętlę weryfikacji wewnątrz samego modelu: zanim pojawi się pierwszy piksel, system rozumuje o strukturze obrazu, sprawdza własną interpretację, może zajrzeć do sieci po kontekst i dopiero potem generuje. To bezpośrednia odpowiedź na największy ból użytkowników AI image generation — wielokrotne "rerolowanie" bo model policzył palce, napisał głupoty albo nie zrozumiał intencji.

Jednocześnie wynik na LM Arena — przewaga 242 punktów nad Google Nano Banana 2 — to zdarzenie rzadkie w historii rankingów. Modele na szczycie zwykle walczą o pojedyncze punkty; taka przepaść sugeruje skok jakości podobny do przejścia z GPT-3 na GPT-4 w generowaniu tekstu.

Dla twórców treści i projektantów zmiana jest realna: tworzenie spójnego zestawu grafik (np. 8 wariantów outfitu tej samej postaci, trzy plansze komiksu z tym samym bohaterem) przestało wymagać wielogodzinnej pracy ręcznej.

## Ciekawe detale

- **Kryptonim "Duct Tape"**: Społeczność odkryła model na LM Arena 4 kwietnia 2026 (17 dni przed oficjalnym ogłoszeniem) po tym, jak trzy anonimowe modele z motywem taśmy klejącej zaczęły dominować ranking — użytkownicy sami doszli do tego, że to nadchodzący produkt OpenAI
- **Demo "tekst na ziarnie ryżu"**: OpenAI demonstrowało zdolność modelu do renderowania czytelnego tekstu na pojedynczych ziarnach ryżu w skali mikroskopowej — pokazywano to jako benchmark precyzji
- **Demo QR kody**: Model może generować funkcjonalne kody QR w ramach plakatu — z integracją web searcha tworzy plakat, sprawdza co ma linkować i wstawia działający kod
- **Demo lookbook**: Z jednego zdjęcia selfie generuje kompletny lookbook z 8 różnymi strojami na tej samej twarzy
- **Demo manga**: 3-stronicowa historia z konkretnymi postaciami z realnego zdjęcia — spójność wyglądu postaci między kadrami
- **Reakcja Canva strategist**: "Model nie tylko renderował obrazy. Interpretował briefy, rozumiał grupy docelowe i podejmował decyzje kreatywne."
- **Limitacja wg Ethana Mollicka (AI researcher)**: Iteracyjna edycja po kilku rundach zaczyna dawać malejące zwroty — model gubi wcześniejszy kontekst przy wielokrotnych poprawkach
- **Limitacja ogólna**: Trudności z dokładnym rozumowaniem fizycznym i bardzo gęstymi teksturami
- **Tryb Instant testowany pod kryptonimem "duct tape"** — wcześniejsze testy na LM Arena z tym samym modelem w trybie szybkim, zanim pojawił się tryb z myśleniem
- OpenAI odmówiło potwierdzenia czy model używa architektury dyfuzyjnej czy autoregresywnej — co samo w sobie jest sygnałem czegoś nieoczywistego

## Liczby i dane

| Parametr | gpt-image-1 | gpt-image-2 |
|---|---|---|
| Maks. rozdzielczość | 1024 px | 2000 px (2K) |
| Proporcje | ograniczone | 3:1 do 1:3, 7 opcji |
| Multi-image batch | brak | do 8–10 spójnych |
| Cena ~1024px high quality | ~$0.133 | ~$0.21 (+60%) |
| Cena 4K (beta) | brak | ~$0.41 |
| LM Arena score | poniżej top | 1512 |

**Scoring na LM Arena:**
- gpt-image-2: 1512 pkt
- Nano Banana 2 (Google Gemini 3.1 Flash Image): 1271 pkt
- Przewaga: 242 pkt (rekord historyczny)

**Rate limits API (Tier 1):** 100 000 tokenów/min, 5 obrazów/min

**Data ogłoszenia:** 21 kwietnia 2026
**Data testów na LM Arena (kryptonim):** 4 kwietnia 2026

**Pricing API (token-based):**
- $8 / 1M tokenów wejściowych
- $15 / 1M tokenów wyjściowych

## Kąty contentowe

1. **"AI nauczyło się myśleć zanim narysuje"** — prosty hook o tym, że stare generatory losowały, nowe planuje; kontrast z modelem który "rerolował" przez brak rozumowania

2. **"242 punkty przewagi — co to oznacza?"** — leaderboard angle: co znaczy 242 pkt przewagi nad Google kiedy zwykle walczą o 2-3 punkty; używając analogii sportowych (np. wygrać maraton o 10 minut)

3. **"Designer jest safe? Nie do końca"** — angle dla kreatorów treści: co dokładnie odpadło (8 wariantów grafik, lookbook, komiks z twarzą), co jeszcze wymaga człowieka; bez dramatyzowania, bez "AI zabije designerów" — po prostu co się zmieniło

4. **"Duct Tape — jak użytkownicy złapali OpenAI za rękę"** — story o tym że community samo odkryło model 17 dni przed ogłoszeniem po trzech anonimowych "tape" modelach na arenie

5. **"Napisane na ziarnie ryżu"** — wizualny hook: co to znaczy że AI potrafi napisać tekst na pojedynczym ziarnie ryżu; to benchmark precyzji który widz może łatwo ocenić

6. **"Spójny bohater w 8 kadrach"** — konkretna nowa możliwość: jeden prompt, osiem spójnych obrazów z tą samą twarzą; wcześniej nie było to możliwe bez Photoshopa i godzin pracy

## Źródła

- [Introducing ChatGPT Images 2.0 | OpenAI](https://openai.com/index/introducing-chatgpt-images-2-0/)
- [ChatGPT's new Images 2.0 model is surprisingly good at generating text | TechCrunch](https://techcrunch.com/2026/04/21/chatgpts-new-images-2-0-model-is-surprisingly-good-at-generating-text/)
- [OpenAI's ChatGPT Images 2.0 is here — multilingual text, infographics, manga | VentureBeat](https://venturebeat.com/technology/openais-chatgpt-images-2-0-is-here-and-it-does-multilingual-text-full-infographics-slides-maps-even-manga-seemingly-flawlessly)
- [ChatGPT Images 2.0 is a breakthrough that could fundamentally reshape graphic generation | The Decoder](https://the-decoder.com/openais-chatgpt-images-2-0-thinks-before-it-generates-adding-reasoning-and-web-search-to-image-creation/)
- [With the launch of ChatGPT Images 2.0, OpenAI now "thinks" before it draws | The New Stack](https://thenewstack.io/chatgpt-images-20-openai/)
- [OpenAI Claims ChatGPT Images 2.0 Can Think | PetaPixel](https://petapixel.com/2026/04/21/openai-claims-chatgpt-images-2-0-can-think/)
- [ChatGPT Images 2.0 debuts with reasoning-driven generation, 2K output | Interesting Engineering](https://interestingengineering.com/ai-robotics/chatgpt-images-2-0-2k-output)
- [OpenAI releases GPT-Image-2: Designers' livelihoods may really be at risk | PANews](https://www.panewslab.com/en/articles/019db2ec-b35f-773c-bed5-7e1346eb94bf)
- [What's New in ChatGPT Images 2.0? | Apidog](https://apidog.com/blog/gpt-images-2/)
- [ChatGPT Images 2.0 Tops Arena With Big Jump Over Nano Banana 2 | OfficeChai](https://officechai.com/ai/chatgpt-images-2-0-tops-arena-with-big-jump-over-nano-banana-2/)
- [GPT-5.4 Image 2 - API Pricing & Providers | OpenRouter](https://openrouter.ai/openai/gpt-5.4-image-2)
- [GPT Image 2 Model | OpenAI API Docs](https://developers.openai.com/api/docs/models/gpt-image-2)
- [ChatGPT Images 2.0 | fal.ai](https://fal.ai/gpt-image-2)
- [OpenAI's "Duct Tape" Model Explained | Miraflow](https://miraflow.ai/blog/openai-duct-tape-model-explained-gpt-image-2-already-here-terrifying)
