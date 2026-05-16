# Notatka badawcza: Google Gemini 3

## Kluczowe fakty

- Gemini 3 Pro ogłoszony 18 listopada 2025, szeroko dostępny na wiosnę 2026
- Rodzina modeli: **Gemini 3 Pro** (flagowy), **Gemini 3 Flash** (szybki/tani), **Gemini 3 Deep Think** (tryb zaawansowanego rozumowania, tylko dla abonentów Ultra)
- Wynik **1501 Elo** na LMArena — pierwszy model w historii, który przekroczył próg 1500; poprzedni lider Gemini 2.5 Pro miał ok. 1370 Elo
- **37,5%** na Humanity's Last Exam (wersja Pro bez narzędzi); Deep Think osiąga 41%
- **91,9%** na GPQA Diamond (wersja Pro); Deep Think osiąga 93,8%
- **76,2%** na SWE-bench Verified (kodowanie) — skok o ok. 10 punktów vs Gemini 2.5 Pro
- **87,6%** na Video-MMMU — dominacja w rozumieniu wideo
- Gemini Robotics-ER 1.6 (ogłoszony 15-16 kwietnia 2026): czytanie wskazań przemysłowych manometrów 98% skuteczność vs 23% u poprzednika ER 1.5
- Gemini 3 Flash dostępny bezpłatnie w aplikacji Gemini i AI Mode w Google Search
- Google integruje Gemini 3 z Search, Gmail, Docs, Workspace — dla 2 mld użytkowników Search i 650 mln użytkowników aplikacji Gemini
- Cena API: $2/$12 za milion tokenów (wejście/wyjście) — wyżej niż Gemini 2.5

## Wyniki benchmarków (wyjaśnione dla laika)

**LMArena (1501 Elo)** — to coś w rodzaju rankingu szachowego dla modeli AI. Tysiące ludzi porównuje odpowiedzi różnych modeli nie wiedząc, który to który, i głosuje na lepszy. Gemini 3 Pro zdobył 1501 punktów — nikt wcześniej nie przekroczył 1500. Poprzedni lider (Gemini 2.5 Pro) miał ok. 1370, co oznacza, że skok jest bardzo duży.

**Humanity's Last Exam (37,5%)** — test stworzony przez Center for AI Safety i Scale AI: 2500 pytań z matematyki, fizyki, biologii, chemii i innych dziedzin, pisanych przez doktorantów i specjalistów. Pytania są tak trudne, że zwykły człowiek z dostępem do internetu udzielał poprawnej odpowiedzi tylko w 34% przypadków. Eksperci z doktoratem — ok. 65-69%. Gemini 3 Pro osiąga 37,5% bez żadnych narzędzi, a w trybie Deep Think — 41%. To nie znaczy, że model jest głupi; to znaczy, że test jest ekstremalnie trudny i dobrze rozróżnia najlepsze systemy.

**GPQA Diamond (91,9%)** — "Graduate-Level Google-Proof Q&A": 198 pytań z biologii, fizyki i chemii, celowo tak skonstruowanych, żeby nie dało się ich rozwiązać przez wyszukiwanie w Google. Autorami są doktoranci. Przypadkowe zgadywanie daje 25%, przeciętny człowiek z dostępem do internetu — ok. 34%, ekspert z doktoratem — ok. 65-70%. Gemini 3 Pro z wynikiem 91,9% wyraźnie przewyższa przeciętnego specjalistę dziedzinowego.

## Co nowego vs Gemini 2

Gemini 2.5 Pro był już mocnym modelem, ale Gemini 3 to kilka wyraźnych przełomów:

- **Rozumowanie**: głębszy, wieloetapowy tok myślenia — model potrafi śledzić długie łańcuchy przesłanek bez gubienia wątku, co poprzednicy robili gorzej
- **Multimodalność**: obsługa tekstu, zdjęć, audio i wideo w jednym modelu — wynik 87,6% na Video-MMMU to wyraźna dominacja nad konkurencją (następny rywal ma ok. 71%)
- **Kodowanie**: skok o ok. 10 punktów procentowych na SWE-bench (zadania polegające na naprawianiu prawdziwych bugów w prawdziwych repozytoriach GitHub)
- **Robotyka**: model ER 1.6 skonfigurowany pod fizyczne roboty czyta wskazania manometrów z dokładnością 98% — poprzednik osiągał 23%; to przełom dla zastosowań przemysłowych
- **Dokładność faktyczna**: SimpleQA Verified 72,1% — mniejsza halucynacja niż wcześniej (choć nadal nie idealna)
- **Agentyczność**: lepsze planowanie długoterminowe i możliwość autonomicznego wykonywania wieloetapowych zadań

## Co to zmienia dla zwykłego użytkownika

Zmiany są widoczne głównie w miejscach, gdzie użytkownicy Google już są — nie trzeba pobierać czegoś nowego:

**Google Search**: AI Mode (tryb AI w wyszukiwarce) teraz korzysta z Gemini 3 Flash i potrafi generować interaktywne odpowiedzi z wykresami, kalkulatorami i innymi narzędziami w locie — zamiast prostej listy linków

**Gmail**: streszczenia długich wątków mailowych, funkcja "Help Me Write" do pisania maili od zera, zaawansowane wyszukiwanie naturalne ("Kto był hydraulikiem, który dał mi wycenę rok temu?") — to ostatnie dostępne dla płatnych abonentów. Uwaga: użytkownicy zgłaszają błędy, np. zapisywanie treści do Google Keep zamiast Docs

**Google Docs/Workspace**: lepsza pomoc przy pisaniu, streszczenia dokumentów, integracja z danymi z całego ekosystemu Google

**Aplikacja Gemini**: Flash (darmowy) to wyraźnie mocniejszy model niż rok temu; Ultra daje dostęp do Deep Think z najbardziej zaawansowanym rozumowaniem

Ogólnie: integracja z produktami, z których 2 miliardy ludzi korzysta codziennie, to przewaga, której OpenAI ani Anthropic nie mają

## Jak wypada vs GPT-5 i Claude 4

Według porównań z kwietnia 2026 nie ma jednego zwycięzcy w każdej kategorii:

- **Gemini 3 Pro / 3.1 Pro**: wygrywa w naukach ścisłych (GPQA), multimodalności (wideo, obrazy), rozumieniu długich dokumentów i cenie (ok. 5x tańszy od Claude Opus 4.6)
- **Claude Opus 4.6**: wygrywa w kodowaniu (Arena code Elo 1548), pisaniu i długich rozmowach wymagających niuansu
- **GPT-5.4**: wygrywa w zadaniach na komputerze (computer use, 75% na OSWorld) i środowiskach deweloperskich/terminalowych
- Gemini 3 był pierwszy z wynikiem 1501 Elo na LMArena (surpassing GPT-5.1 i Claude 4.5 w momencie premiery), ale konkurencja nadgoniła kolejnymi aktualizacjami

## Gemini Robotics-ER 1.6 vs poprzednik

Robotics-ER 1.6 (16 kwietnia 2026) to specjalizowany model do sterowania robotami fizycznymi, stworzony we współpracy z Boston Dynamics:

- Czytanie wskazań manometrów i urządzeń przemysłowych: **98% dokładności** vs **23% u ER 1.5** — skok z poziomu bezużytecznego na poziom produkcyjny
- Nowa funkcja "agentic vision": robot wielokrotnie patrzy na obiekt z różnych kątów, zanim podejmie decyzję
- Bezpieczeństwo: ER 1.6 lepiej przestrzega instrukcji bezpieczeństwa fizycznego i o 10% lepiej identyfikuje zagrożenia z wideo vs Gemini 3 Flash
- Wykrywanie sukcesu z wielu punktów widzenia: model ocenia, czy zadanie zostało wykonane prawidłowo, patrząc na scenę z kilku pozycji jednocześnie

## Potencjalne haki do shorta

- "Pierwszy model w historii powyżej 1500 punktów Elo — skala, której nie rozumiemy, bo nie mamy porównania do człowieka"
- "37,5% na teście, który tworzyli doktoranci żeby AI nie mogło go zdać — co to mówi o tempie rozwoju?"
- "Robot czytający manometry z 98% dokładnością — i rok temu ten sam system miał 23%. To nie ewolucja, to zmiana gatunkowa"
- "Gemini 3 jest już w Twojej wyszukiwarce, w Gmailu, w Docs — bez żadnego przycisku do kliknięcia"
- "Google ma 2 miliardy użytkowników Search. To nie wyścig na benchmarki — to kwestia kto dotrze do wszystkich jako pierwszy"
- "Pytanie do widzów: czy zauważyliście już Gemini 3 w codziennym korzystaniu z Google?"

## Źródła

- [Gemini 3: Introducing the latest Gemini AI model from Google — Google Blog](https://blog.google/products/gemini/gemini-3/)
- [Introducing Gemini 3 Flash: Benchmarks, global availability — Google Blog](https://blog.google/products/gemini/gemini-3-flash/)
- [Gemini Robotics-ER 1.6 — Google DeepMind](https://deepmind.google/blog/gemini-robotics-er-1-6/)
- [Gemini 3 Crushes Benchmarks: 1501 Elo Score — Liberty News Network](https://libertynewsnetworks.com/gemini-3-crushes-benchmarks-1501-elo-score-and-next-level-multimodal-understanding/)
- [Google Gemini 3 Benchmarks (Explained) — Vellum AI](https://www.vellum.ai/blog/google-gemini-3-benchmarks)
- [Google releases Gemini 3.0 Pro, arguably the best AI system yet — BDTechTalks](https://bdtechtalks.substack.com/p/google-releases-gemini-30-pro-arguably)
- [Google unveils Gemini 3 claiming the lead — VentureBeat](https://venturebeat.com/ai/google-unveils-gemini-3-claiming-the-lead-in-math-science-multimodal-and)
- [Humanity's Last Exam — Wikipedia](https://en.wikipedia.org/wiki/Humanity's_Last_Exam)
- [GPQA: A Graduate-Level Google-Proof Q&A Benchmark — arXiv](https://arxiv.org/abs/2311.12022)
- [Gmail Gemini 3 Update: Real World Performance — Remio](https://www.remio.ai/post/gmail-gemini-3-update-real-world-performance-and-feature-breakdown)
- [Gemini Robotics-ER 1.6: 98% Accurate AI for Robot Inspections — GeekQu](https://www.geekqu.com/gemini-robotics-er-1-6-98-accurate-ai-for-robot-inspections/)
- [LLM Benchmarks 2026: 30+ Models Ranked — Iternal AI](https://iternal.ai/llm-selection-guide)
- [Gemini 3.1 Pro vs Claude 4.6 vs GPT-5.4 — LumiChats Blog](https://lumichats.com/blog/gemini-3-1-pro-vs-claude-sonnet-46-vs-gpt-54-april-2026-real-comparison)
- [Arena Leaderboard — LMArena](https://arena.ai/leaderboard)
