# Google Messages — pakiet majowych nowości rolluje teraz

**Data:** 2026-05-18
**Temat:** Google przesuwa na stable cztery duże funkcje w Messages (kosz, live lokalizacja, @wzmianki w RCS, E2E z iPhone'em) — dla polskich użytkowników Samsunga to namacalne ulepszenia, ale szyfrowanie z iPhone'em wciąż blokują operatorzy.

---

## Kluczowe fakty i liczby

- **4** duże funkcje przechodzą z bety na stable w pakiecie majowym, zapowiedziane oficjalnie **16 maja 2026** przez 9to5Google i Google System Release Notes.
- Trash folder — usunięte czaty zostają w koszu **30 dni** przed permanentnym wykasowaniem (Android Go: **7 dni**). Rolluje od wersji **20260327_00_RC00** aplikacji Google Messages, szeroka dystrybucja od **10 kwietnia 2026**.
- Real-time location sharing — live lokalizacja z mapą wbudowaną w wątek, czas konfigurowalny: **1 godzina / "tylko dziś" / do wyłączenia / custom**. Powered by **Find Hub** (zunifikowany backend lokalizacji Google).
- @mentions w grupowych RCS — wzmiankowanie kontaktu **przebija wyciszenie grupy** (notyfikacja idzie do osoby nawet jeśli ma muted thread). Funkcja była w becie od **maja 2025**, dziś idzie szeroko.
- E2E encryption RCS Android ↔ iPhone — rolluje od **11 maja 2026** wraz z **iOS 26.5**. Standard: **RCS Universal Profile 3.0** GSMA, protokół kryptograficzny **MLS (Messaging Layer Security)** — otwarty standard IETF.
- E2E między iPhone'em a Androidem to **pierwszy w historii** międzyplatformowy E2EE w natywnej apce wiadomości na taką skalę.
- Samsung Messages oficjalnie zamykany w **lipcu 2026**, ale **tylko w USA** — Samsung potwierdził dla niemieckiego Bilda, że "nie ma planów wycofania w innych krajach".
- Samsung w Polsce dominuje sprzedaż smartfonów — w **2024** był nr 1 przed Xiaomi (Statista, Telecompaper Q3 2024); ich nadchodząca cisza w PL = Samsung Messages dalej żyje, ale w USA Galaxy S26 nie może już nawet pobrać Samsung Messages z Galaxy Store.

## Stable vs beta — co dziś działa, co jeszcze nie

| Funkcja | Status | Komentarz |
|---|---|---|
| Trash folder (30 dni) | **Stable** | Od kwietnia 2026, globalnie |
| Live location sharing | **Stable** | Wymaga Find Hub |
| @mentions w grupach RCS | **Stable** | Działa nawet przy mute |
| E2E RCS Android ↔ iPhone | **Beta** | iOS 26.5 + obsługa operatora po obu stronach |
| Read receipts redesign II | Beta | Timestamp + kłódka pod swipe-em w lewo |
| Messages for Web bez QR | Beta | Login kontem Google zamiast QR |
| Tap to Draft | Beta | Smart Reply ląduje w polu edycji zamiast wysyłki |
| Long-press menu (blur + haptic) | Beta | Floating menu zamiast toolbara |

## Polski kontekst — RCS u operatorów (stan: maj 2026)

- **Orange:** RCS działa od dawna przez Google Messages na Androidzie. Według rzecznika ok. **4 mln klientów Orange** używa RCS, **3000+** nowych aktywacji dziennie. Łącznie operator szacuje **~12 mln Polaków** w zasięgu usługi. **Brak wsparcia dla iPhone'a.**
- **T-Mobile:** RCS przez Google Messages dla Androida od **1 października 2021**. Dla iPhone'a — według managera Jakuba Chajdaka "prace w zaawansowanym stadium", ale **bez daty**. To operator najbliżej wdrożenia E2E z iOS 26.5.
- **Plus:** RCS tylko przez Google Messages (brak własnej infrastruktury). Dla iOS oficjalnie: "RCS nie jest dostępne w naszej sieci".
- **Play:** Najbardziej zamknięty model — RCS działa **tylko na wybranych Samsungach i Huawei**, brak wsparcia iPhone'a. Sprawą zajęło się Ministerstwo Cyfryzacji.

**Wniosek:** dla użytkownika z Androidem w Polsce — kosz, live lokalizacja i @mentions działają od dziś. Dla pary Android ↔ iPhone w PL — E2E nie zadziała, bo żaden operator nie aktywował jeszcze RCS na iOS. Polska zostaje na czwartym czy piątym biegu.

## Samsung Messages — wygaszanie tylko w USA

- Oficjalny termin: **lipiec 2026**, market US-only.
- Po dacie wyłączenia Samsung Messages w USA **nie wyśle SMS-a** poza numerami alarmowymi.
- Galaxy S26 (najnowsze) nie może już pobrać Samsung Messages z Galaxy Store.
- Na Androidzie **14+** podczas migracji Google Messages **automatycznie ląduje w docku** na ekranie głównym.
- **Europa, Azja, LatAm, Korea — bez zmian.** Samsung Polska dalej preinstaluje Samsung Messages na flagowcach (poza tymi, gdzie domyślnie był Google Messages od 2024).

## Implikacje dla użytkownika w PL

- **Plus dla Androida (a Samsung to dominator w PL):** trzy duże ulepszenia od dziś — kosz na chaty, live lokalizacja jak w Messengerze, @wzmianki w grupach.
- **Minus dla iPhone'a w PL:** E2E z Androidem zostaje teorią dopóki T-Mobile/Orange/Plus/Play nie ogłoszą wsparcia RCS na iOS. Apple wystawiło hardware, polscy operatorzy nie wystawili sieci.
- **Geopolitycznie:** USA dostają pełny stack (E2E + Samsung Messages → Google Messages), UE czeka. To powtórka schematu z RCS-em ogólnie — Polska zwykle dochodzi 1-2 lata po premierze.

---

## Potencjalne kąty narracyjne do shorta

- **"Twój iPhone od dziś szyfruje SMS-y z Androidem. Ale nie w Polsce."** — paradoks: Apple wystawiło iOS 26.5 z E2E, żaden polski operator nie aktywował RCS na iPhone, więc dla pary iPhone-Android w PL to martwa funkcja.
- **"Samsung Messages zamykany w lipcu. Ale tylko w USA."** — geograficzny twist: Polska zostaje przy Samsung Messages, Amerykanie idą na Google Messages na siłę.
- **"Pierwszy raz w historii iPhone i Android szyfrują się nawzajem."** — MLS Universal Profile 3.0 to pierwszy międzyplatformowy E2EE w natywnej apce SMS na taką skalę. Hook = "pierwszy raz".
- **"Google Messages dostał kosz. 30 dni na ratowanie skasowanych rozmów."** — czysty consumer hook, działa dla każdego użytkownika Androida w PL, bo Samsung dominuje rynek.
- **"Wzmiankujesz kogoś w grupie — dostanie powiadomienie nawet jeśli wyciszył."** — drama społeczna, każdy zna ten konflikt z mute na grupówce.
- **"Galaxy S26 nie pobierze już Samsung Messages."** — counterintuitive: nowy flagowiec Samsunga blokuje własną apkę Samsunga.
- **"4 mln Polaków używa RCS w Orange. Żaden z iPhone'em."** — konkretna liczba + paradoks (są klienci, jest sieć, nie ma certyfikatu Apple).

---

## Źródła

- [What new Google Messages features are rolling out [May 2026] — 9to5Google](https://9to5google.com/2026/05/16/new-google-messages-features/)
- [End-to-end encrypted RCS messaging begins rolling out today for Android and iPhone users — Google Blog](https://blog.google/products-and-platforms/platforms/android/android-ios-end-to-end-encrypted-rcs-messaging/)
- [Encrypted RCS starts rolling out to Android and iPhone with iOS 26.5 — 9to5Google](https://9to5google.com/2026/05/11/iphone-android-encrypted-rcs-ios-26-5/)
- [Samsung Messages will be discontinued in July as part of Google Messages upgrade — 9to5Google](https://9to5google.com/2026/04/04/samsung-messages-discontinued-us/)
- [Samsung Messages isn't ending outside the US — Sammy Fans](https://www.sammyfans.com/2026/05/07/samsung-messages-isnt-ending-outside-the-us/)
- [Google Messages for Android rolls out Trash folder — 9to5Google](https://9to5google.com/2026/04/10/google-messages-trash-folder-wide/)
- [Zapytaliśmy operatorów, kiedy wiadomości RCS na iPhone'ach będą dostępne w Polsce — Tabletowo](https://www.tabletowo.pl/zapytalismy-operatorow-kiedy-wiadomosci-rcs-na-iphoneach-beda-dostepne-w-polsce/)
- [RCS w Orange, Play, Plus i T-Mobile. Co trzeba wiedzieć? — Tabletowo](https://www.tabletowo.pl/rcs-orange-play-plus-t-mobile-dostepnosc/)
- [Szyfrowanie RCS na iPhonie wchodzi w fazę beta — mobiRANK](https://mobirank.pl/2026/05/11/szyfrowanie-rcs-na-iphonie-wchodzi-w-faze-beta/)
- [iOS 26.5: These carriers offer RCS end-to-end encrypted messaging — 9to5Mac](https://9to5mac.com/2026/05/11/ios-26-5-these-carriers-offer-rcs-end-to-end-encrypted-messaging/)
- [Texting between Android and iPhone could soon get a major security upgrade (MLS protocol) — Android Authority](https://www.androidauthority.com/apple-ios-26-rcs-end-to-end-encryption-mls-protocol-3588258/)
- [Samsung leads Polish smartphone market in Q3, Xiaomi grows fastest — Telecompaper](https://www.telecompaper.com/news/samsung-leads-polish-smartphone-market-in-q3-xiaomi-grows-fastest--1481851)
