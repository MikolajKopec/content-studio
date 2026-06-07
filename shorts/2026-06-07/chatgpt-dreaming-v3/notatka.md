# ChatGPT uczy się „śnić" — nowa pamięć Dreaming V3 rusza w USA

**Data:** 2026-06-07
**Temat:** OpenAI od 4 czerwca 2026 wdraża Dreaming V3 — pamięć ChatGPT, która sama syntetyzuje, koryguje i odświeża to, co model „wie" o użytkowniku.

---

## Kluczowe fakty i liczby

- **4 czerwca 2026** OpenAI ogłosiło Dreaming V3 wpisem „Dreaming: Better memory for a more helpful ChatGPT"; rollout od razu trafił do **ChatGPT Plus i Pro w USA**, a Free, Go i rynki międzynarodowe mają dostać aktualizację „w nadchodzących tygodniach".
- Trafność faktograficzna w wewnętrznym evalu OpenAI wzrosła z **41,5%** (2024) do **82,8%** (2026); zgodność z preferencjami użytkownika podskoczyła z **55,3%** do **71,3%**, a trafność czasowa (odporność na dezaktualizację) z **52,2%** do **75,1%**.
- Compute potrzebny do obsługi „śnienia" dla użytkowników Free spadł ok. **5×** względem poprzedniej generacji — to ekonomiczna przesłanka do rozszerzenia funkcji poza płatne plany.
- Plus i Pro dostają **2× większy budżet pamięci** niż wcześniej; tier Enterprise/Edu pozostaje domyślnie **OFF** (włącza admin), Team ma pamięć ON, ale **wykluczoną z treningu**.
- W panelu transparentności użytkownik widzi pamięć w czytelnych kategoriach (praca, hobby, podróże), może ją edytować, usunąć lub dopisać reguły typu „nie wspominaj o X" — ale OpenAI ostrzega, że strona „nie musi zawierać wszystkiego, co ChatGPT może pamiętać".
- Logi usuniętej pamięci mogą być przechowywane do **30 dni** „ze względów bezpieczeństwa"; usunięcie rozmowy **nie kasuje** automatycznie pamięci z niej zsyntetyzowanej — trzeba zrobić to ręcznie w obu miejscach.
- Badacze Tenable Research pokazali, że złośliwe prompt injection przez treści zewnętrzne może zapisać trwałą pamięć i otworzyć kanał eksfiltracji danych — luka istotna właśnie dlatego, że Dreaming V3 zapisuje w tle, bez potwierdzenia użytkownika.

## Co się zmienia względem starej pamięci

- Stara pamięć (od lutego 2024) była **listą faktów** dopisywaną głównie ręcznie komendą „remember this".
- Dreaming V0 (kwiecień 2025) dodał proces w tle, ale wciąż opierał się częściowo na jawnie zapisanych wpisach.
- Dreaming V3 **całkowicie zastępuje listę** asynchronicznym procesem syntezy: model po rozmowie sam wyciąga wnioski, łączy je z istniejącym profilem i aktualizuje go w trzech wymiarach — **świeżość, ciągłość, trafność**.
- Pojawia się **świadomość temporalna**: pamięć „lecisz do Singapuru w lipcu" sama przepisuje się na „byłeś w Singapurze w lipcu 2026" po fakcie. Wcześniej taka notatka „pleśniała" w pamięci jako stale „przyszły" plan.
- Architektura: pamięć leży poza logiem rozmów i jest **wstrzykiwana w system prompt** podczas inferencji, co tłumaczy jednoczesny skok jakości i spadek kosztu — model nie musi już parsować długiej listy wpisów.

## Rollout i dostępność

| Etap | Tier | Region | Status na 7 czerwca 2026 |
|---|---|---|---|
| 1 | Plus, Pro | USA | LIVE od 4 czerwca |
| 2 (planowany) | Free, Go | USA + wybrane kraje | „w nadchodzących tygodniach" |
| 3 (planowany) | Wszystkie plany | Międzynarodowo | brak konkretnej daty |
| — | Enterprise, Edu | Globalnie | OFF domyślnie, włączane przez admina |

## Reakcje ekspertów i ryzyka

- Badanie z konferencji **ACM CHI 2026** opisuje „paradoks personalizacji-wygody": funkcja, którą użytkownicy cenią najbardziej, jest jednocześnie tą, której nie potrafią w pełni skontrolować ani zaudytować.
- Komentatorzy zwracają uwagę na zmianę modelu błędu: Dreaming V3 rozwiązuje problem „zapomniałem", ale tworzy nowy — **„cichej rewizji"**. Pamięć poprawna trzy miesiące temu mogła zostać automatycznie „skorygowana" w sposób, którego użytkownik nie widzi.
- Sondaż z 2025 r. na **300 użytkownikach ChatGPT w USA** wykazał, że **82%** uznało swoje rozmowy z chatbotem za „wrażliwe lub bardzo wrażliwe" — to skala danych, na której Dreaming V3 teraz syntetyzuje profile.
- Kontekst regulacyjny: obowiązki transparentności **EU AI Act** dla chatbotów wchodzą **2 sierpnia 2026** — niecałe dwa miesiące po rolloucie. OpenAI w grudniu 2024 dostało **15 mln euro** kary od włoskiego urzędu za wcześniejsze naruszenia danych, więc presja regulatora będzie wysoka.

## Implikacje dla użytkownika

- Pamięć Plus/Pro to teraz **„relacja", a nie lista** — model będzie pamiętał projekty, preferencje pisarskie, nawyki i kontekst wieloletni.
- Cena za to: domyślnie **ON** w planach konsumenckich; kto chce wyjść, musi przełączyć ustawienie „Saved memories" (ale dane synteza znikają dopiero w ciągu ~30 dni, nie natychmiast) **i osobno** wyłączyć użycie do treningu.
- Komenda „don't mention this again" działa jak **filtr wyświetlania**, a nie polecenie kasujące dane bazowe.
- Tryb **Temporary Chat** to jedyna opcja „surowej" rozmowy bez aktualizacji pamięci.

---

## Potencjalne kąty narracyjne do shorta

- „ChatGPT zaczął śnić — i robi to lepiej niż twoja dziewczyna pamięta urodziny" (skok trafności **z 41,5% na 82,8%**, hak emocjonalny).
- „OpenAI zmniejszyło koszt pamięci AI **5 razy** — dlatego za chwilę śnić będzie też darmowy ChatGPT".
- „ChatGPT pamięta, że poleciałeś do Singapuru. Sam zmieni notatkę z `lecisz` na `byłeś` — bez pytania".
- „**82%** użytkowników mówi, że ich czaty są wrażliwe. OpenAI właśnie włączyło syntezę profilu domyślnie".
- „Nowa pamięć ChatGPT trafia do USA **4 czerwca**. Unijna ustawa o AI z obowiązkiem transparentności wchodzi **2 sierpnia**. OpenAI ma **niecałe 2 miesiące**".
- „Usuwasz rozmowę z ChatGPT, ale pamięć z niej zostaje. To nie błąd — to nowy design".
- „Twoja pamięć w ChatGPT może zostać **cicho skorygowana** — i nie zobaczysz, kiedy".

---

## Źródła

- [Dreaming: Better memory for a more helpful ChatGPT — OpenAI](https://openai.com/index/chatgpt-memory-dreaming/)
- [ChatGPT Memory Dreaming Update: OpenAI Rewrites Personalization Engine, Limits Audit Trail — TechTimes](https://www.techtimes.com/articles/317840/20260605/chatgpt-memory-dreaming-update-openai-rewrites-personalization-engine-limits-audit-trail.htm)
- [ChatGPT 'Dreaming V3' Memory: Self-Updating AI Recall — DigitalApplied](https://www.digitalapplied.com/blog/chatgpt-memory-dreaming-v3-openai-2026-guide)
- [OpenAI rolls out ChatGPT memory system to US users — ITBrief Asia](https://itbrief.asia/story/openai-rolls-out-chatgpt-memory-system-to-us-users)
- [OpenAI overhauls ChatGPT memory with 'dreaming' — ResultSense](https://www.resultsense.com/news/2026-06-05-openai-chatgpt-dreaming-memory/)
- [OpenAI launches Dreaming V3 Memory System for ChatGPT — iClarified](https://www.iclarified.com/101066/openai-launches-dreaming-v3-memory-system-for-chatgpt)
- [OpenAI ChatGPT Dreaming V3 memory upgrade boosts context and control — Cryptonomist](https://en.cryptonomist.ch/2026/06/05/openai-chatgpt-dreaming-v3-memory/)
