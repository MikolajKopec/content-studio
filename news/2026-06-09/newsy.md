# Newsy technologiczne — 9 czerwca 2026

---

## 1. iOS 27 Extensions — Claude i Gemini mogą zastąpić Siri na iPhone

**Źródło:** Apple WWDC 2026 keynote (8 czerwca 2026), TechCrunch, 9to5Mac, MacRumors

Apple ogłosił na keynote WWDC 2026 framework **Siri Extensions** — API, które pozwoli aplikacjom AI z App Store wpiąć się bezpośrednio w Siri, Writing Tools i Image Playground. Użytkownik wybiera w Ustawieniach domyślnego asystenta — **Claude, ChatGPT, Gemini lub Grok** — i ten model obsługuje funkcje Apple Intelligence na całym systemie. Apple porzucił model jednego dostawcy (do tej pory tylko ChatGPT).

Zasięg dystrybucji to **ponad 1,5 mld aktywnych urządzeń**. Anthropic, OpenAI i Google dostają instant dostęp do tego rynku. **Dev beta iOS 27 dostępna do pobrania natychmiast po keynote**, public beta w lipcu, stabilny release jesienią z iPhone 18.

Częściowo to ukłon w stronę DMA (EU Digital Markets Act), ale wydaje się że Apple traktuje to też strategicznie — można routować różne zapytania do różnych providerów (Gemini do researchu, Claude do kodu, ChatGPT do tekstów).

> **Potencjał contentowy:** wysoki — drama "Apple oddaje Siri konkurencji", konkretna liczba (1,5 mld urządzeń), actionable (dev beta do pobrania od dziś), nazwy znane widzowi.

---

## 2. iOS 27, iPadOS 27, macOS Golden Gate — dev beta od wczoraj, +30% szybsze apki

**Źródło:** Apple WWDC 2026 keynote (8 czerwca 2026), MacRumors, 9to5Mac, Tom's Guide

Apple wczoraj wypuścił pierwsze dev bety **iOS 27, iPadOS 27, macOS 27 (nazwa kodowa Golden Gate), watchOS 27, tvOS 27, visionOS 27**. Główne hasło: wydajność. Apple deklaruje **30% szybsze uruchamianie aplikacji** na iPhone/iPad oraz **70% szybsze ładowanie zdjęć w bibliotece**.

Design: dochodzi globalny **suwak przezroczystości Liquid Glass** (można zmiękczyć efekt szkła do własnych preferencji) plus ciaśniejsze rogi okien w macOS. Siri AI jako **osobna aplikacja** z chmurową synchronizacją rozmów przez iCloud (jak ChatGPT app). Visual Intelligence trafia na Mac — pytasz Siri o cokolwiek na ekranie skrótem klawiszowym.

Kompatybilność: **iPhone 11 i nowsze** (bez cięć vs iOS 26), watchOS 27 wyrzuca Apple Watch 8/9/Ultra 1, **macOS 27 wymaga Apple Silicon — koniec wsparcia Intel Mac**. Public beta w lipcu, stabilny release jesienią.

> **Potencjał contentowy:** wysoki — konkretne liczby (30%/70%), drama "śmierć Intel Maca", przyziemne (każdy widz ma iPhone'a od którego zależy update).

---

## 3. visionOS 27 — twoje panoramy w 3D, zakrzywione okna, Wi-Fi 3× szybsze

**Źródło:** Apple WWDC 2026 keynote (8 czerwca 2026), 9to5Mac, AppleInsider, Cult of Mac

visionOS 27 wprowadza **konwersję zwykłych panoram (np. z iPhone'a) do scen przestrzennych przez ML** — możesz użyć własnych zdjęć jako immersyjnych otoczeń, nie tylko wbudowanych. Dochodzi też nowe Środowisko **Thórsmörk** (islandzka dolina z zorzą polarną).

UI: **zakrzywione okna aplikacji** — Safari, Freeform i Apple TV Multiview opływają użytkownika jak monitor curved. Visual Intelligence pyta Siri o przedmioty w polu widzenia. Apple twierdzi **3× szybsze Wi-Fi w niektórych scenariuszach** (downloady i streaming). Nowy 3D Siri ma własny widget przestrzenny.

Dev beta dostępna od wczoraj, release jesienią.

> **Potencjał contentowy:** średni — Vision Pro to nisza, ale "panoramy z iPhone'a stają się 3D" ma actionable hook bez konieczności posiadania Vision Pro.

---

## 4. ChatGPT "superapp" — największa przebudowa od premiery rusza w tygodniach

**Źródło:** Financial Times (7 czerwca 2026), OpenAI Release Notes, Engadget

Według raportu FT z 7 czerwca, OpenAI w najbliższych tygodniach wypuści **największą przebudowę ChatGPT od momentu premiery w 2022**. Aplikacja staje się "superappem" — poza czatem ma natywnie obsługiwać **kod, generowanie obrazów oraz aplikacje partnerów (Canva, Booking.com)** w jednym interfejsie. Zmiany pojawią się najpierw przez stronę i mobilki.

Równolegle ChatGPT dostał **upgrade pamięci** — model lepiej trzyma aktualny kontekst i odrzuca przeterminowane wpisy (mniej sprzecznych "memories"). Rolling out dla Plus/Pro w US, dalej rozszerzenie na Free/Go i inne kraje przez najbliższe tygodnie. W bonusie: **Active Sessions** (przegląd zalogowanych sesji jak w Google) oraz **Lockdown Mode** chroniący przed prompt injection.

> **Potencjał contentowy:** wysoki — drama "OpenAI kopiuje WeChata", konkretne nazwy partnerów (Canva, Booking), kontekst aplikacja jako platforma.

---

## 5. Gemini CLI umiera 18 czerwca — devsi mają 9 dni na migrację do Antigravity CLI

**Źródło:** Google Developers Blog, The Register, Hacker News, AI Builder Club

**Za 9 dni (18 czerwca 2026) Google wyłącza Gemini CLI** dla subskrypcji Pro, Ultra i Free oraz dla indywidualnych Gemini Code Assist. Tylko Enterprise Standard/Enterprise utrzymują dostęp; ratunkiem dla reszty są płatne klucze API Gemini Enterprise.

Następca: **Antigravity CLI** uruchamiany komendą `agy`. Migracja jest prosta — instalujesz z `antigravity.google`, robisz `agy plugin import gemini`, zmieniasz nazwę `GEMINI.md` na `AGENTS.md`, przenosisz `.gemini/skills/` do `.agents/skills/` i poprawiasz skrypty CI/CD. Oba narzędzia mogą współistnieć podczas migracji.

Społeczność marudzi: **Antigravity CLI nie jest open source**, a Gemini CLI był — devsi czują że ich open-source'owa praca posłużyła zamknięciu produktu.

> **Potencjał contentowy:** wysoki — dev tool wars, drama "Google zabija open source", konkretna data deadline (9 dni!), actionable instrukcja migracji.

---

## 6. Anthropic Claude Managed Agents — agent działa w twoim sandboxie z prywatnymi MCP

**Źródło:** Anthropic Newsroom, Releasebot Anthropic (czerwiec 2026), TechCrunch

Anthropic ogłosił na początku czerwca, że **Claude Managed Agents** (zarządzane agenty kompatybilne z Claude API) mogą teraz **działać w sandboxie kontrolowanym przez klienta** i łączyć się z **prywatnymi serwerami MCP (Model Context Protocol)**. Praktycznie: środowisko wykonujące narzędzia agenta i usługi do których agent sięga **nie wychodzą poza granicę enterprise**.

To dla dużych firm głównych blockerów — dział security w banku/zdrowiu nie zaakceptuje hostowanego agenta jeśli ten wychodzi do publicznych endpointów. Z tym update'em agent może gadać tylko z wewnętrznym CRM, wewnętrznym CI, wewnętrznym hurtem danych przez MCP, bez ekspozycji.

Bonusowo: **Project Glasswing** Anthropic rozszerza na **150 nowych organizacji w ponad 15 krajach** — inicjatywa szukania krytycznych luk w software przez AI. Skali to vendor lockup w security AI.

> **Potencjał contentowy:** średni — niche dev/enterprise, ale liczba "150 firm/15 krajów" i koncept "agent gada tylko z twoim wnętrzem" ma niezły hook narzędziowy.
