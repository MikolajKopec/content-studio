# Newsy technologiczne — 27 maja 2026

*Spokojny dzień. 5 świeżych itemów w oknie 25-27 maja (UTC). Pominięto Spotify Studio (21.05 — poza oknem), Google I/O drobiazgi (19-20.05 — poza oknem) i czyste wiadomości finansowe bez powiązania produktowego (OpenRouter $113M, SpaceX S-1).*

---

## 1. Anthropic wypuszcza preview Claude Mythos — model znajdujący zero-daye

**Źródło:** red.anthropic.com (26.05.2026), winbuzzer.com (26.05.2026), eweek.com (26.05.2026), govinfosecurity.com (26.05.2026)

Anthropic oficjalnie potwierdził istnienie **Claude Mythos** — modelu wcześniej trzymanego pod zamknięciem, a teraz wchodzącego do public preview przez Claude Code i Claude Security. String modelu `claude-mythos-1-preview` mignął w UI Claude Code już 25 maja, zanim Anthropic włączył go oficjalnie 26 maja.

Mythos w testach Project Glasswing oznaczył **23 019 potencjalnych podatności** w projektach open-source, z czego **6 202 sklasyfikowano jako krytyczne lub wysokie**. Sam Anthropic pisze, że Mythos "potrafi identyfikować i exploitować zero-daye w głównych systemach operacyjnych i przeglądarkach" — i właśnie dlatego firma trzymała go w lockdown przez kilka miesięcy.

Mythos ma być wyraźnie silniejszy od Opus 4.7 w code reasoning i autonomii. Anthropic mówi o "general release" w ciągu **6-12 miesięcy**, gdy dojrzeją mechanizmy bezpieczeństwa.

> **Potencjał contentowy:** wysoki — model który znajduje zero-daye automatycznie, drama "wcześniej zamknięty bo zbyt potężny", konkretne liczby 23k podatności.

---

## 2. Xiaomi 17T i 17T Pro — globalny debiut w Wiedniu już jutro (28.05)

**Źródło:** gizchina.com (potwierdzona data 28.05), notebookcheck.net, gizmochina.com (przecieki cen z 23.05)

Xiaomi potwierdziło globalny launch event w **Wiedniu na 28 maja 2026** — debiutują 17T i 17T Pro. Ceny w Europie: **17T — 749 €** (12/256 GB), **17T Pro — 999 €** (12/512 GB). Indyjski launch standardowego 17T to 4 czerwca.

Spec-sheet jest agresywny jak na sub-flagowiec:
- **17T:** 6,59" 1.5K AMOLED 120 Hz, Dimensity 8500, **6 500 mAh / 67 W**, Leica Summilux 50 MP + 5× tele
- **17T Pro:** 6,83" OLED **144 Hz**, Dimensity 9500, **7 000 mAh / 100 W wired + 50 W bezprzewodowo**, Light Fusion 950

Bateria 7000 mAh w urządzeniu poniżej 1000 € to po prostu rekord w tej klasie — większość flagowców trzyma się 4500-5000 mAh.

> **Potencjał contentowy:** wysoki — Xiaomi ma silną pozycję w PL, konkretne ceny, ogromne baterie vs Apple/Samsung, launch jutro (świeżutkie).

---

## 3. Meta po cichu wypuszcza Forum — wyodrębniony klon Reddita zbudowany z Facebook Groups

**Źródło:** engadget.com (25.05.2026), macrumors.com (22.05.2026), socialmediatoday.com, techspot.com, digitaltrends.com

Meta wystartowała **Forum** — osobną aplikację, która wyciąga grupy z Facebooka do dedykowanego doświadczenia w stylu Reddita. Bez żadnego ogłoszenia ani fanfar. Aplikacja jest dostępna **tylko na iPhone w USA**, darmowa, wymaga konta na Facebooku.

Sercem produktu jest funkcja **Ask** — zadajesz pytanie i Forum agreguje odpowiedzi z wielu grup naraz, jak typowy Reddit-wątek "what's your experience with X". Posty zostają zsynchronizowane z głównym Facebookiem, więc można dyskutować z dowolnego z dwóch klientów.

Premiera bez PR-u jest sama w sobie sygnałem — Meta nie chce robić Forum głośnym, dopóki nie zobaczy, czy ludzie w ogóle to otworzą. To trzecia próba Meta zrobienia "drugiego Facebooka" po Threads i Blue (z których Threads chwilę żyło).

> **Potencjał contentowy:** średni — drama Meta vs Reddit, "Facebook ukradł grupy i schował je w osobną apkę", łatwa do zilustrowania historia.

---

## 4. GitHub uruchamia code coverage w pull requestach (public preview)

**Źródło:** github.blog/changelog (26.05.2026)

GitHub włączył **code coverage prosto w PR-ach** jako public preview dla wszystkich klientów GitHub Code Quality na github.com. Po włączeniu coverage w repo i uploadzie raportu Cobertura ze swojego CI, w widoku PR-a widać procent pokrycia testami — bez przełączania się do Codecov czy SonarCloud.

Wymaga to nowego fine-grained permission `code-quality:write` dla GitHub Apps i Actions. Feature jest dostępny dla **GitHub Enterprise Cloud** i **Team**, ale nie ma jeszcze go w Enterprise Server.

Ruch wprost na Codecov — firma od lat zarabiała na tym, że GitHub nie miał natywnego coverage. Mając Code Quality jako produkt płatny, GitHub może w końcu zjeść ten kawałek tortu sam.

> **Potencjał contentowy:** średni — dla developerów konkretne narzędziowe, "GitHub zjada Codecov" jako narracja drama.

---

## 5. Apple seeded iOS 26.6 beta 1 — wcześniej niż zwykle, ale bez nowych funkcji

**Źródło:** 9to5mac.com (26.05.2026), macrumors.com (26.05.2026), macobserver.com, appleosophy.com

Apple zaczął wysyłać deweloperom pierwsze bety **iOS 26.6, iPadOS 26.6, watchOS 26.6, tvOS 26.6** — zaledwie dwa tygodnie po publicznym wydaniu iOS 26.5. Czas zaskakuje: bety x.6 zazwyczaj wychodzą w połowie czerwca.

Wczesna premiera nie znaczy ekscytujący update — Apple sygnalizuje, że **26.6 ma zerowo nowych funkcji**, tylko bug-fixy i performance. To czysty utrzymaniowy release przed WWDC 8 czerwca, gdzie wszyscy oczekują zapowiedzi **iOS 27**.

Sygnałem dla użytkownika: 26.6 to ostatni mały update przed dużą zmianą wizualną/funkcjonalną w 27.

> **Potencjał contentowy:** niski-średni — bez nowych funkcji jest niska atrakcyjność, ale "iOS 27 already incoming, 26.6 to tylko maintenance" może być dobrym hookiem.

---
