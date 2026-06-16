# Newsy technologiczne — 16 czerwca 2026

> **Quiet news day** — wtorek po weekendowej burzy Fable 5. Świeże tylko: (a) Anthropic wczoraj rozdzielił billing Claude Code/Agent SDK od zwykłego planu (devsi panikują), (b) Meta zdjęła Horizon Worlds z Questów (koniec ery VR-metaversum), (c) 9to5mac wysypał trzy świeże fishe iOS 27 (Find My, Apple Pay, Mirroring), (d) leak Galaxy Z Fold 8 "Wide" tydzień przed Unpacked. Brak nowych modeli LLM, brak premier sprzętu konsumenckiego z PL kontekstem — typowy słaby wtorek czerwca.

---

## 1. Anthropic odpina Claude Code od planu Pro/Max — od wczoraj devsi płacą osobno

**Źródło:** Anthropic Help Center (15.06.2026), Codersera (15.06.2026), Enterprise DNA (15.06.2026), DevToolPicks (15.06.2026)

Wczoraj, **15 czerwca**, wszedł w życie najgłośniejszy zmieniacz reguł gry dla devsów używających Claude'a. Anthropic **rozdzielił billing** Claude Agent SDK, `claude -p` (non-interactive), Claude Code GitHub Actions i wszystkich third-party agentów — z dotychczasowego planu Pro ($20) / Max 5x ($100) / Max 20x ($200) na **osobną pulę kredytów miesięcznych**, mierzoną po pełnych stawkach API. **Bez rollover.** Bez gracji.

Co to znaczy w praktyce: jeśli używasz Claude Code w trybie interaktywnym (przez terminal lub w chat.anthropic.com) — nic się nie zmienia. Jeśli odpalasz Claude Code z `claude -p`, GitHub Actions, albo masz pipeline z Agent SDK — od wczoraj **wyciągasz to z innego portfela**. Co więcej, dwa oryginalne modele Claude 4 — `claude-sonnet-4-20250514` i `claude-opus-4-20250514` — **zostały tego samego dnia zretireowane z API**. Bez okresu przejściowego. Calls do nich od wczoraj failują.

Reddit i dev Twitter pełne wczoraj były wątków typu "moja koparka padła o 9 rano bo używałem opus-4 w cronie" oraz kalkulatorów ile faktycznie kosztuje Agent SDK po nowemu (Pro: $20 ekstra; Max 20x: $200 ekstra ponad bazowy plan). PL kontekst: społeczność polskich vibecoderów na Discordzie ma sporo użytkowników Pro/Max — dzisiaj rano część budzi się z padniętymi automatyzacjami.

> **Potencjał contentowy:** wysoki — devsi to nasz core audience, "Anthropic przewraca billing przez noc" to drama + akcjonalność ("sprawdź czy twój cron jeszcze działa"), wątek refundów się jeszcze pociągnie.

---

## 2. Meta zdjęła Horizon Worlds z Questów — VR-metaversum oficjalnie umarło

**Źródło:** Meta Community Forums (15.06.2026), AnalyticsInsight (15.06.2026), Nogentech (15.06.2026), Yahoo Finance (15.06.2026)

15 czerwca 2026 — wczoraj — **Horizon Worlds zostało usunięte z Meta Questów**. To koniec dwuetapowego wycofania: najpierw 31 marca aplikacja zniknęła ze Quest Store i padły flagowe światy (Horizon Central, Events Arena, Kaiju, Bobber Bay). Wczoraj **app został odinstalowany z headsetów**. Użytkownicy stracili możliwość budowania, publikowania i odwiedzania jakichkolwiek światów w VR. Co przetrwało: mobile app na iOS/Android z "mobile-optimized worlds".

To formalne porzucenie VR-metaversum przez Metę, na którym Zuckerberg postawił firmę w 2021 (zmiana nazwy z Facebook na Meta). **Reality Labs ma stratę $83,6 mld** od początku projektu. Andrew Bosworth (CTO Meta) próbował dwa miesiące temu wycofać się z decyzji, mówiąc "zostawimy Horizon Worlds w VR" — ale finalne stanowisko z oficjalnych Meta Forums potwierdza, że shutdown w VR przeszedł zgodnie z pierwotnym planem.

Co dalej w Meta VR? **Quest 4 został anulowany** (codename Pismo Low/Pismo High). Zamiast tego: jeden gaming-focused headset "duży upgrade nad Quest 3" + ultralight mixed reality headset z tetherowanym puckiem, oba w pierwszej połowie 2027. Strategia: VR jako platforma gier i produktywności, nie social.

> **Potencjał contentowy:** wysoki — "Meta zabija metaversum" to świetna narracja dla TikToka, konkretna liczba ($83,6 mld straty) i wizualnie pusty Quest store. Dla nas dodatkowo: koniec hype'u, początek pivotu na gaming.

---

## 3. Apple szykuje iOS 27 — wczoraj 9to5mac wysypał trzy świeże fishe

**Źródło:** 9to5mac "iOS 27: Find My adds new ways to hide your location" (15.06.2026), 9to5mac "iOS 27 makes it easier to switch between Apple Pay cards" (15.06.2026), 9to5mac "macOS 27 brings three key upgrades to iPhone Mirroring" (15.06.2026)

Tydzień po keynote'cie WWDC 2026 (8 czerwca) Apple drip-feeduje funkcje, których nie zdążyło pokazać. Wczoraj **9to5mac opublikował trzy odkrycia z developer beta** iOS 27 / macOS 27, wszystkie ship-ready na jesień 2026:

**Find My**: nowe sposoby ukrywania lokalizacji dla wybranych kontaktów — można teraz schować się przed konkretną osobą bez wyłączania Find My całkowicie (poprzednio było all-or-nothing). Mała funkcja, ale ważna dla domowych dramatów typu "rozstanie z partnerem" lub "rodzice śledzą dorosłe dziecko".

**Apple Pay**: nowy widget szybkiego przełączania kart bez wchodzenia w Wallet — popularne dla użytkowników z 3-5 kartami (osobiste / firmowe / podróżne).

**iPhone Mirroring** (macOS 27): trzy upgrade'y — wsparcie dla landscape orientation, drag-and-drop plików między iPhone i Mac, oraz audio routing przez Maca dla połączeń telefonicznych. Pierwsze realne rozszerzenie tej funkcji od jej premiery rok temu.

PL kontekst: w Polsce iPhone Mirroring działa od macOS 15.1, Apple Pay rozszerza listę banków co kwartał (mBank, Santander, ING już są; PKO BP cały czas mówi "wkrótce").

> **Potencjał contentowy:** średni — Apple fishe są niskie ryzykiem, ale "ukryj się przed konkretną osobą" ma haczyk dramatyczny. Lepiej jako sekcja w większym Apple Intelligence wrap-up niż osobny short.

---

## 4. Samsung Galaxy Z Fold 8 leak — wczoraj wycieka "Wide Fold" tydzień przed Unpacked

**Źródło:** India TV News (15.06.2026), SamFlux (June 2026), AndroidAuthority (June 2026), SamMobile (June 2026)

Wczoraj wieczorem **India TV News opublikowała leak** kompletnego designu trzech składaków Samsung — **Galaxy Z Fold 8, Z Fold 8 Ultra i Z Flip 8** — miesiąc przed oficjalnym Unpacked **22 lipca w Londynie**. Leak zawiera zdjęcia screen protectorów (zwykle to ostatni krok przed produkcją).

Najciekawszy: **Galaxy Z Fold 8 Wide** — nowa wersja z **wider aspect ratio**, krótszy ale szerszy niż dotychczasowe Foldy. Po złożeniu wygląda jak normalny smartfon (nie jak długa pizza), kosztem jednego aparatu mniej niż wariant Ultra. Specy: waga **201g** (lekkie jak na składaka — Fold 7 miał 215g), aparat główny **50MP**, bateria 4 800 mAh, szybsze ładowanie. Android 17 + One UI 9.0.

Samsung gra ostro: **trzy formy fizyczne foldable** (tall-narrow Ultra, wide standardowy Fold, klapka Z Flip) — to bezpośrednia odpowiedź na **iPhone Fold**, który ma wejść we wrześniu 2026 (Apple, według wczorajszych raportów, optymalizuje pod ten form factor iOS 27).

PL kontekst: Z Fold 6 w PL kosztuje obecnie od 8 999 zł. Z Fold 8 Ultra raczej wejdzie powyżej 10 000 zł, ale Z Fold 8 Wide może być pierwszym składakiem Samsunga w cenie zbliżonej do flagowego iPhone'a 17 Pro Max (~7 500 zł).

> **Potencjał contentowy:** średni — leak nie premiera, ale wizualnie atrakcyjny (trzy designy obok siebie), narracja "Samsung vs nadchodzący iPhone Fold" rezonuje. Lepiej jako filler niż headline.

---
