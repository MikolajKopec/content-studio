# Newsy technologiczne — 18 maja 2026

> **Quiet news day** — weekend przed Google I/O 2026 (start 19 maja). Większość ekosystemu wstrzymała premiery do poniedziałkowego keynote'u. Cztery sztuki w pełni mieszczące się w oknie 16–18 maja, wszystkie narzędziowe.

---

## 1. Quick Share na Androidzie wreszcie wysyła pliki na iPhone'a

**Źródło:** Android Authority (14 maja 2026), Eastern Herald (16 maja 2026), MacRumors (12 maja 2026), Google Play Services release notes 26.18

Google rozpoczął globalny rollout wymiany plików Android ↔ iPhone przez Quick Share. W menu udostępniania pojawia się opcja **„Use QR code"** — iPhone skanuje kod aparatem, plik trafia przez chmurę Google na drugie urządzenie. Bez wspólnej sieci Wi-Fi, bez kabli, bez Bluetootha.

W pierwszej fali: **Pixel i Samsung Galaxy** (Galaxy S/Note, Tab, Fold). Honor, OnePlus, OPPO, Vivo i Xiaomi mają dołączyć później w 2026. Pełny rollout do końca czerwca, dystrybuowane przez **Google Play Services 26.18+** — nie wymaga aktualizacji systemu. iPhone'y nie potrzebują żadnej dedykowanej apki — wystarczy aparat.

To pierwsza realna alternatywa dla AirDropa, która działa **w obie strony między systemami**. Polski rynek to ~30M smartfonów, w przeważającej większości Android, więc temat ma żelazną grupę docelową.

> **Potencjał contentowy:** wysoki — „koniec piekła plików między Androidem a iPhone'em" + jasna instrukcja jak z tego skorzystać dziś.

---

## 2. ChatGPT widzi twoje konto bankowe — OpenAI łączy Pro z Plaid

**Źródło:** OpenAI Newsroom (15 maja 2026), TechCrunch (15 maja 2026), Winbuzzer (17 maja 2026), MacRumors (15 maja 2026), The Tech Portal (15 maja 2026)

OpenAI uruchomił **ChatGPT Personal Finance** w preview dla użytkowników **ChatGPT Pro** (USA, $200/miesiąc). Integracja przez **Plaid** obejmuje **ponad 12 000 instytucji finansowych** — Chase, Fidelity, Schwab, Robinhood, American Express, Capital One i inne. Po połączeniu ChatGPT czyta salda, transakcje, portfele inwestycyjne i zobowiązania (hipoteka, karty kredytowe).

Użytkownik dostaje dashboard wydatków, subskrypcji, performance'u portfela i nadchodzących płatności. Kontrola pozostaje poza ChatGPT — model **nie może** przelewać pieniędzy, zmieniać ustawień konta ani zobaczyć pełnych numerów rachunków. Dostępne na webie i iOS, na razie wyłącznie dla Pro. Plus użytkownicy dostaną dostęp później, po feedbacku.

To pierwsze tak głębokie podpięcie LLM-a do rzeczywistych danych finansowych konsumenta. Krytycy już pytają o ryzyko data poisoning i halucynacje w doradztwie. Polska — geo-blokowane, ale temat dramatyczny i actionable dla użytkowników Pro.

> **Potencjał contentowy:** wysoki — drama „AI czyta twoje konto bankowe", konkretne liczby (12k banków, $200/mc, USA only), naturalny PL-hook „a u nas? jak długo poczekamy?".

---

## 3. Grafana Labs okradziono z kodu — odmówili 7-cyfrowego okupu

**Źródło:** The Hacker News (16 maja 2026), Cybersecurity News, Hackread, Cyberkendra (16 maja 2026), Halcyon/Fortinet FortiGuard threat intel

Grafana Labs ujawniła **16 maja 2026**, że atakujący zdobył **token GitHuba** umożliwiający pobranie pełnego kodu źródłowego firmy. Wektor: świeżo włączony GitHub Action z luką typu **„Pwn Request"** — błędna konfiguracja na zdarzeniu `pull_request_target`, która dawała zewnętrznym kontrybutorom dostęp do produkcyjnych sekretów podczas CI.

Po wykradzeniu kodu grupa zażądała okupu w zamian za niepublikowanie repo. **Grafana odmówiła**, powołując się na wytyczne FBI: zapłata nie gwarantuje odzyskania danych i finansuje kolejne ataki. Włamanie wykryto dzięki **canary tokenowi** — jednemu z tysięcy „pułapek" rozsianych przez Grafanę po infrastrukturze.

Atakującym jest **CoinbaseCartel**, grupa data-extortion działająca od września 2025. Według Grafana: brak dostępu do danych klientów, brak wpływu na działanie produktu. Dla devów (Grafana hostuje miliony dashboardów monitoringu) to istotny sygnał — temat „kradną kod firmom, które monitorują infrastrukturę" gra dwustronnie.

> **Potencjał contentowy:** średni — devom narzędziowo bliskie, twardy hook „odmówili okupu, bo zaufali własnym pułapkom". Niszowe, ale wysokie engagement na tech side.

---

## 4. Google Messages — pakiet majowych nowości rolluje teraz

**Źródło:** 9to5Google (16 maja 2026), Google System Release Notes (maj 2026)

Google wypuszcza na produkcję pakiet funkcji w Google Messages, które przez ostatnie tygodnie były w testach. Najważniejsze już na stable:

- **Trash folder** — usunięte czaty zostają **30 dni** przed permanentnym wykasowaniem (odpowiednik kosza w Gmailu)
- **Real-time location sharing** — udostępnianie live lokalizacji z **konfigurowalnym czasem** (od kilku minut do kilku godzin), w wątku pojawia się mapa
- **@mentions w grupowych RCS** — można wzmiankować kontakt nawet jeśli wyciszył grupę
- **E2E encryption RCS Android ↔ iPhone** — działa od **iOS 26.5** (wydany 11 maja), wspierane karty SIM po obu stronach

W becie testy: redesign read receipts (timestamp i kłódka E2E pod swajpem w lewo), **wygaszanie Samsung Messages** w USA — Galaxy automatycznie przesuwa Google Messages na dock przy aktualizacji do Androida 14+. Plus authentication w Messages for Web bez QR — przez konto Google.

Polski kontekst: RCS w PL wciąż słabo wspierane (T-Mobile/Plus częściowo, Play opornie), ale **Samsung dominuje** smartfonowy rynek PL — dla nich Trash folder + lokalizacja + @mentions to namacalne ulepszenia od dziś.

> **Potencjał contentowy:** średni — narzędziowe, ale fragmentaryczne; potrzebny dobry hook („kosz w Wiadomościach Google, jak w Gmailu"), żeby się przebiło ponad WhatsApp-dominację w PL.
