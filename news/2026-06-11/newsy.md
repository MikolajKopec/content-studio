# Newsy technologiczne — 11 czerwca 2026

Dzień zdominowany premierą Claude Fable 5 (9 czerwca). Trzy odrębne wątki wokół tego modelu — premiera + drama safety, dostępność w narzędziach dev, dramat z Microsoftem blokującym Fable 5 wewnętrznie. Plus update GPT-5.5 Instant, dropdown Claude Code i rekordowe Patch Tuesday.

---

## 1. Claude Fable 5: Anthropic wypuszcza najpotężniejszy model 4 dni po wezwaniu do globalnej pauzy

**Źródło:** Anthropic (9.06.2026), TechCrunch (9.06.2026), Yahoo Finance (9.06.2026)

Anthropic 9 czerwca uruchomił publicznie **Claude Fable 5** — pierwszy ogólnie dostępny model klasy **Mythos**, wcześniej zarezerwowanej dla Project Glasswing. Wyniki: **80.3% SWE-Bench Pro** (kolejny najlepszy model jest 11 punktów niżej), 95% SWE-Bench Verified, kontekst **500K tokenów** (do **2M** w wersji enterprise w Azure).

Cennik: **$10 za milion tokenów wejściowych, $50 za milion wyjściowych** — dwa razy drożej niż Opus 4.8. Do 22 czerwca Fable 5 jest **darmowy** w planach Pro/Max/Team/Enterprise (seat-based). Od 23 czerwca — tylko za credits.

Drama: **5 czerwca** Anthropic publicznie wezwał wszystkie globalne laby AI do skoordynowanej pauzy w rozwoju, ostrzegając przed "recursive self-improvement" i utratą kontroli nad systemami. **4 dni później** wypuścił najpotężniejszy publicznie dostępny model. Model ma twarde safety limits: w obszarach cyber/biologia/chemia/distillation blokuje odpowiedź i robi fallback do Claude Opus 4.8.

> **Potencjał contentowy:** wysoki — premiera + kontradykcja "kazaliście światu się zatrzymać, a sami wypuszczacie".

---

## 2. Claude Fable 5 w Copilot, Foundry, Bedrock, Cursor i Claude Code — pierwszego dnia

**Źródło:** GitHub Changelog (9.06.2026), Microsoft Azure Blog (9.06.2026), AWS Blog (9.06.2026)

Fable 5 od **9 czerwca** dostępny w **GitHub Copilot** (Pro+, Max, Business, Enterprise — wybierany z model pickera w VS Code), **Microsoft Foundry** + Foundry Agent Service na Azure, **AWS Bedrock**, **Anthropic API**. Cursor 4 i Claude Code obsługują Fable 5 od dnia premiery.

W internal benchmarkach Anthropic: Fable 5 wykonuje równoważną pracę z mniejszą liczbą tool calls i niższym zużyciem tokenów niż modele klasy Opus. Pozycjonowany jako model do długich, autonomicznych zadań (refactoring, deep research, dokumenty).

Haczyk: tylko Fable 5 wymaga **retencji promptów i outputów przez 30 dni** dla safety classifiers (do **2 lat** jeśli content zostanie sflagowany). Inne modele Claude w Copilot dalej działają na Zero Data Retention.

> **Potencjał contentowy:** wysoki — typowa drama dev tools "model dnia pierwszego dostępny u wszystkich konkurentów".

---

## 3. Microsoft sprzedaje klientom Fable 5, ale blokuje go własnym pracownikom

**Źródło:** The Verge / Reuters (10.06.2026), Windows Forum (9-10.06.2026), Technobezz (10.06.2026)

W **tym samym czasie**, gdy Microsoft ogłaszał Claude Fable 5 dla klientów w Foundry i GitHub Copilot, **własnym pracownikom** zablokował dostęp do tego modelu w wewnętrznym GitHub Copilot. Powód: nowa polityka retencji danych Anthropic — Fable 5 wymaga przechowywania promptów przez 30 dni (do 2 lat dla flagowanych), podczas gdy wszystkie inne modele Claude (Opus 4.8, Sonnet 4.5, Haiku 4.5) wewnętrznie pracują pod **Zero Data Retention**.

Microsoft Legal "ocenia" zmiany w polityce Anthropic. Pozostałe modele Claude zostały w wewnętrznym pickerze — Fable 5 wycięty.

Kontrast: producent SAM oferuje model klientom, ale uznaje go za zbyt ryzykowny dla własnych danych — sygnał alarmowy w corporate governance.

> **Potencjał contentowy:** wysoki — paradoks "polecam, ale sam nie używam" + drama Big Tech.

---

## 4. ChatGPT Free dostaje personalizację z dawnych chatów + każdy widzi swoje "Memory sources"

**Źródło:** OpenAI ChatGPT Release Notes (9.06.2026), Releasebot OpenAI

OpenAI 9 czerwca wprowadził **personalizację GPT-5.5 Instant** dla planów Go i Free — odpowiedzi czerpią kontekst z **ograniczonego zbioru poprzednich chatów**, dotąd dostępne tylko w płatnych planach.

Drugie ulepszenie: **Memory sources** we wszystkich modelach ChatGPT — użytkownik widzi, **który zapisany "memory" lub poprzedni chat** wpłynął na odpowiedź, i może to **usunąć/poprawić** ręcznie. Wcześniej była to "czarna skrzynka".

Trzecia zmiana: w GPT-5.5 Instant i GPT-5.5 Thinking **wyłączono Canvas** — writing/coding ma być obsługiwany "writing blocks" i "code blocks" inline w odpowiedzi.

> **Potencjał contentowy:** średni — każdy daily user ChatGPT to poczuje, hook na "darmowi też dostają".

---

## 5. Claude Code dodaje "safe mode" i komendę /cd — ratunek dla zawieszonych sesji

**Źródło:** Claude Code Changelog (9.06.2026), Anthropic Claude Code Docs

Update Claude Code z **9 czerwca** wprowadza:
- **`--safe-mode`** — uruchamianie z wyłączonymi WSZYSTKIMI customizations (skills, hooks, settings), do troubleshootingu zepsutej konfiguracji
- **`/cd <ścieżka>`** — zmiana working directory **bez utraty prompt cache** (wcześniej musiałeś restartować sesję)
- Naprawiono crash background agentów w git worktree (loop crashujący)
- Naprawiono dwukrotnie wyświetlany "thinking text" w transcriptach
- `/terminal-setup` wyłącza GPU acceleration w VS Code/Cursor/Windsurf żeby naprawić "garbled text"

Dla devów używających Claude Code daily — `/cd` jest największa wygrana (zmienić katalog bez 20-minutowej cache invalidation).

> **Potencjał contentowy:** średni — wąska grupa, ale lojalna; mocny hook to `/cd` zachowujące cache.

---

## 6. Microsoft Patch Tuesday: rekord wszech czasów — 200 luk, 6 zero-day

**Źródło:** BleepingComputer (10.06.2026), TechRepublic (10.06.2026), Help Net Security (10.06.2026)

**10 czerwca** Microsoft wypuścił największe Patch Tuesday w historii programu: **200 luk bezpieczeństwa** w Windows, Office, Azure i pokrewnych. **33 oznaczone jako Critical**, 166 jako Important. **28 z 33 critical** to remote code execution — atakujący wykonuje kod zdalnie bez interakcji ofiary.

Zero-daye: **6 sztuk**, w tym 5 publicznie ujawnionych przed łatką i **1 już aktywnie wykorzystywany** w atakach. Najgłośniejsze:
- **"HTTP/2 Bomb"** — denial of service na serwerach IIS przez sprytnie sformatowany strumień HTTP/2
- **Windows CTFMON** — eskalacja uprawnień lokalnie (path traversal w resolverze linków)

Analitycy wprost: wzrost wykrywanych luk to efekt **LLM-tooling** używanego do automatycznego audytu kodu — zarówno przez security teams, jak i niezależnych badaczy. Hint: Patch Tuesday przestaje być miesięcznym wydarzeniem, robi się continuous risk management.

> **Potencjał contentowy:** średni — "rekord historii Windows" to mocny hook, ale temat security ma niższy retention.

---
