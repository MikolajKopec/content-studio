# 3. Windows 11 testuje "jeden restart na miesiąc" i wyszukiwarkę odporną na literówki

**Data:** 2026-06-13
**Temat:** Microsoft 12 czerwca 2026 wypuścił rekordowe **siedem** buildów Insider naraz, w których najważniejsze są trzy zmiany: Unified Update Experience (jeden wymuszony restart miesięcznie zamiast 3-4), search odporny na literówki (`utlook` znajduje Outlook) oraz dedykowane strony release notes dla siedmiu inbox-appów (Calculator, Camera, Clock, Media Player, Paint, Photos, Sound Recorder).

## Kluczowe fakty i liczby

- Microsoft wydał **7 buildów Insider** w jeden dzień (12.06.2026) — rekord programu Insider, obejmujący kanały Beta, Release Preview i Experimental w wersjach 24H2/25H2/26H1/Future Platforms.
- Build numbers: Beta **26220.8680** (25H2) i **28020.2298** (26H1); Release Preview **26100.8728/26200.8728** (24H2/25H2) i **28000.2333** (26H1); Experimental **26300.8687** (25H2), **28120.2302** (26H1), **29610.1000** (Future Platforms / dawny Canary).
- Unified Update Experience obiecuje skrócenie liczby wymuszonych restartów z **3-4 miesięcznie do 1** — driver, .NET i firmware updates są teraz koordynowane z monthly quality update zamiast triggerować osobne restarty.
- Funkcja Unified Update startuje w kanale Experimental, ale **ta sama zmiana jest już w Release Preview build 26200.8728**, który Microsoft planuje wydać dla wszystkich jako KB5095093 w **lipcowym Patch Tuesday (14.07.2026)** — czyli realne wdrożenie do stable Windows 11 25H2/24H2 za **~miesiąc**.
- Search fuzzy matching obsługuje **4 klasy błędów**: literówki (`utlook` → Outlook), pominięte litery (`crom` → Chrome), nadmiarowe litery, częściowe słowa. Wcześniej w buildzie 26300.8553 dodano substring matching (`april` znajduje `MeetingNotesApril`).
- **7 inbox-appów** dostało dedykowane strony release notes na Microsoft Learn: Calculator (v11.2605.9.0 — poprawiony sqrt, czyli `sqrt(2.25) - 1.5` w końcu zwraca 0 zamiast śmieciowej liczby), Camera, Clock, Media Player, Paint, Photos (v2026.11060.2004.0 — widoczny watermark Copilot na AI-generated obrazach) i Sound Recorder (fix memory leaka przy starcie nagrania).
- Bonusowe zmiany w 26100.8728/26200.8728: **Point-in-time Restore** (snapshot apps + settings + plików, automatyczny rollback), nowe **pauzowanie Windows Update do 35 dni z wyborem daty końcowej**, Screen Tint (overlay kolorystyczny w Accessibility), voice access w **3 nowych językach** (FR/DE/ES) na Copilot+ PC, IPP jako domyślny protokół druku, customowy rozmiar prawego klika na touchpadzie.
- Update zamyka też dziwny błąd `0x800f0843` z poprzedniego cyklu i zastępuje Tenor → **GIPHY** w emoji panel (Win + .) — Tenor został deprecated.

## Co dokładnie się zmienia

### Unified Update Experience (UUE)

Microsoft zapowiedział tę zmianę **24 kwietnia 2026** na blogu "Your Windows Update Experience Just Got Updated", ale rollout zaczął się dopiero teraz. Mechanika:

- Zamiast osobnych restartów dla driver update, .NET runtime, firmware (UEFI/Intel ME/etc.) i monthly cumulative update — wszystkie te są kolejkowane w **single pending state** i instalowane razem.
- W Settings → Windows Update **wszystko zwija się do jednej sekcji "Available updates"** zamiast trzech-czterech osobnych powiadomień.
- Pobieranie nadal odbywa się w tle, ale samo **install + restart koordynują się wokół najbliższego monthly quality update** (lub manualnie zatwierdzonej akcji).
- Wyjątek: critical out-of-band updates (eksploitowane w wild) **nadal mogą wymusić restart w ciągu 7 dni** — UUE nie blokuje krytycznych łatek.
- Rollout odbywa się przez **Controlled Feature Rollout (CFR)** — najpierw subset Insiderów w kanale Experimental, potem stopniowo wszyscy. Stable Windows 11 25H2/24H2 powinien dostać to wraz z KB5095093 w lipcu.

### Search odporny na literówki

Implementacja działa lokalnie (nie cloud) i obejmuje:

- **Typo tolerance**: `utlook` → Outlook, podmiana znaków typu QWERTY-neighbor.
- **Dropped letters**: `crom` → Chrome, brakujące znaki w środku słowa.
- **Extra letters**: nadmiarowe znaki (np. podwójna litera) nie zabijają wyniku.
- **Partial words / prefix matching**: kontynuacja substring matching z build 26300.8553 (kwiecień 2026).
- **Settings ranking**: gdy wpisujesz nazwę ustawienia, wyniki z Settings dostają wyższy priorytet niż wcześniej (mniej kliknięć w "Search this page online").

Microsoft nie ujawnił, czy używa konkretnego algorytmu typu Levenshtein/Damerau-Levenshtein/BK-tree, ale charakterystyka błędów (4 klasy) sugeruje klasyczny edit-distance.

### Dedykowane strony release notes dla 7 inbox-appów

Historycznie zmiany w Calculator/Paint/Photos pojawiały się w mikroskopijnych przypisach pod buildami Insider albo nigdzie. Teraz każda z tych aplikacji ma własny changelog hostowany na Microsoft Learn:

- **Calculator** — fix dla precyzji (`sqrt(2.25) - 1.5` zwracał epsilon zamiast 0), naprawiony layout RTL (arabski/hebrajski), poprawione kontrasty w High Contrast.
- **Camera** — nowe streamy w aplikacjach trzecich (multi-app camera).
- **Clock** — drobne polishe UI.
- **Media Player** — refresh playlist UX.
- **Paint** — kolejna fala AI features (generative fill, layers).
- **Photos** — watermark Copilot dla AI-generated/edited obrazów (zgodność z C2PA).
- **Sound Recorder** — naprawiony memory leak przy starcie nagrania.

Dla power-userów to znacznie ułatwia tracking — koniec z grepowaniem buildów po słowie "Paint".

### Dodatkowe zmiany w tej samej fali buildów

Nie wszystko trafi do shorta, ale warto wiedzieć:

- **Quieter Widgets** (Beta/Release Preview): Widgets nie otwierają się on-hover, taskbar badging używa accent color zamiast czerwonego, ograniczona liczba alertów dziennie, niższy memory footprint.
- **Screen Tint** (Accessibility): overlay kolorystyczny niezależny od Night Light — 6 presetów + slider intensywności, kompromis: wyłącza color filters i vice versa.
- **Magnifier**: można wpisać exact percentage zoomu (np. 137%) zamiast skakać 5/10/25%.
- **Bluetooth**: szybsze parowanie AirPodów, lepsza stabilność mikrofonu w Beats Studio Pro, szybsze ponowne łączenie LE Audio po sleep, sync mute state z audio mixer i HFP.
- **Point-in-time Restore** w 26100.8728: pełny snapshot system+files, rollback do "ostatnio działającego stanu" jednym kliknięciem.
- **Update pause z datą końcową**: kalendarz z dropdown date picker, max 35 dni, możliwość przedłużenia.
- **Voice access i voice typing** w FR/DE/ES — wcześniej tylko EN-US.
- **IPP jako domyślny protokół druku** — koniec third-party printer drivers; Windows Ready Print w zarządzaniu.
- **Remote Recovery Management plug-in** dla MDM providerów (WinRE z poziomu Intune/etc.).

## Oś czasu

| Kanał Insider | Build | Data wydania | Kiedy do stable Win11 |
|---|---|---|---|
| Experimental (25H2) | 26300.8687 | 12.06.2026 | Q3-Q4 2026 (przez kolejne kanały) |
| Experimental (26H1) | 28120.2302 | 12.06.2026 | 26H1 = ARM-only, Snapdragon X2; H2 2026 |
| Experimental (Future Platforms) | 29610.1000 | 12.06.2026 | Brak ETA — następca Canary |
| Beta (25H2) | 26220.8680 | 12.06.2026 | Bezpośrednio do 25H2 GA (już wydane 30.09.2025) jako optional updates |
| Beta (26H1) | 28020.2298 | 12.06.2026 | H2 2026 |
| Release Preview (24H2/25H2) | 26100.8728 / 26200.8728 | 12.06.2026 | **KB5095093 — 14.07.2026 (Patch Tuesday)** |
| Release Preview (26H1) | 28000.2333 | 12.06.2026 | H2 2026 |

Kontekst wersji: Windows 11 25H2 jest GA od 30.09.2025, 24H2 traci wsparcie 13.10.2026 (Home/Pro). 26H1 to platform-specific release wyłącznie dla ARM (głównie Snapdragon X2). Pełny 26H2 dla wszystkich oczekiwany jesienią 2026 (~październik).

## Implikacje dla użytkownika

- **Stable Windows 11 user**: Jeden restart miesięcznie zamiast 3-4 to realne 30-60 minut mniej downtime'u rocznie. Dla developerów i ludzi z otwartymi 50 tabami — zauważalna jakość życia.
- **Search**: pierwszy raz Windows Search faktycznie konkuruje z PowerToys Run / Spotlight pod kątem fuzzy matchingu. Wciąż jednak nie indeksuje plików w taki sposób jak Everything (Voidtools).
- **Power users / IT admins**: Update pause z konkretną datą (zamiast "7/14/35 dni") to game changer dla planowania okien serwisowych. Point-in-time Restore częściowo zastępuje custom rozwiązania typu Macrium.
- **Tracking app updates**: Dedykowane release notes per-app oznaczają, że można w końcu śledzić Paint changelog bez konieczności czytania Build announcement na 3000 słów.
- **Critical security patches nadal wymuszają restart w 7 dni** — Unified Update nie jest "off switchem" dla pilnych łatek.

## Potencjalne kąty narracyjne do shorta

1. **"Microsoft 4 lata reklamował 'nowoczesny Windows', a basic search dopiero teraz radzi sobie z literówką `utlook` → Outlook. Algolia to ma od 2012."** — kontrast feature gap vs marketing.
2. **"Twój Windows restartował się 3-4 razy w miesiącu przez driver/.NET/firmware updates. Microsoft mówi że teraz wystarczy raz — pod warunkiem że nie wyjdzie zero-day."** — konkret z zastrzeżeniem, hook na każdego zirytowanego użytkownika.
3. **"7 buildów Insider w jeden dzień — Beta, Release Preview, 3 kanały Experimental. Microsoft testuje features równolegle bo nie wie co przeleci do stable."** — meta-obserwacja o tempie rozwoju.
4. **"Jeden restart na miesiąc trafia do stable Windows 11 dokładnie 14 lipca 2026 z KB5095093. Zegar tyka."** — konkretna data, hook na "kiedy ja to dostanę".
5. **"Calculator z 2026 roku w końcu wie, że `sqrt(2.25) - 1.5 = 0`, a nie `2.22e-16`. To nie jest żart — to faktyczny fix w release notes."** — absurdalny detal, classic "łapcie ten meme".
6. **"Microsoft daje Paint, Photos i Calculator własne changelogi na Microsoft Learn. Po 30 latach możesz w końcu sprawdzić co zmieniło się w Paint między aktualizacjami."** — historyczny kontrast.
7. **"Search Windows w końcu rozumie `crom` jako Chrome, `utlook` jako Outlook. Spotlight na Macu to ma od 10 lat — Microsoft potrzebował dekady i Copilota."** — porównanie z Apple, lekko trollerskie.

## Źródła

1. **Windows Insider Blog — "Announcing new builds for 12 June 2026"** (primary): https://blogs.windows.com/windows-insider/2026/06/12/announcing-new-builds-for-12-june-2026/
2. **Microsoft Learn — Beta Build 26220.8680 release notes** (primary): https://learn.microsoft.com/en-us/windows-insider/release-notes/beta/preview-build-26220-8680
3. **Microsoft Learn — Experimental Build 26300.8687 release notes** (primary): https://learn.microsoft.com/en-us/windows-insider/release-notes/experimental/preview-build-26300-8687
4. **Microsoft Learn — Release Preview Build 26100.8728/26200.8728** (primary): https://learn.microsoft.com/en-us/windows-insider/release-notes/release-preview-24h2-25h2/build-26100-8728-26200-8728
5. **Windows Insider Blog — "Your Windows Update experience just got updated" (24.04.2026)** (primary, kontekst UUE): https://blogs.windows.com/windows-insider/2026/04/24/your-windows-update-experience-just-got-updated/
6. **Thurrott — "Microsoft Releases a Record Seven Windows 11 Insider Builds"**: https://www.thurrott.com/windows/337320/microsoft-releases-a-record-seven-windows-11-insider-builds
7. **Pureinfotech — KB5095093 Windows 11 July 2026 update preview**: https://pureinfotech.com/kb5095093-windows-11-july-2026-update/
8. **ntcompatible — "Windows 11 Insider Experimental Preview Build 26300.8687 Fixes Update Fatigue, Cursor Drift, and Search Glitches"**: https://www.ntcompatible.com/story/windows-11-insider-experimental-preview-build-263008687-fixes-update-fatigue-cursor-drift-and-search-glitches
9. **WindowsNews.ai — "Microsoft Tests Unified Windows 11 Update to Slash Monthly Restarts to One"**: https://windowsnews.ai/article/microsoft-tests-unified-windows-11-update-to-slash-monthly-restarts-to-one-in-insider-build-26300868.425683
10. **Neowin — "Microsoft releases major feature updates for stock Windows 11 apps"**: https://www.neowin.net/news/microsoft-releases-major-feature-updates-for-stock-windows-11-apps/
