## 2. iOS 27, iPadOS 27, macOS Golden Gate — dev beta od wczoraj, +30% szybsze apki

**Data:** 2026-06-09
**Temat:** Apple wypuścił dev bety wszystkich nowych systemów (iOS/iPadOS/macOS/watchOS/tvOS/visionOS 27) z hasłem "wydajność" — konkretnie do **30% szybsze starty apek**, **70% szybsze ładowanie zdjęć** i **80% szybszy AirDrop**. Towarzyszą temu: suwak przezroczystości Liquid Glass, samodzielna apka Siri AI (z dziurą w UE), koniec wsparcia Intel Mac i największa rzeź zegarków w historii watchOS.

---

## Kluczowe fakty i liczby

- Bety dev udostępnione **8 czerwca 2026** zaraz po keynote WWDC (~13:00 PT). Public beta w **lipcu**, stabilny release w **drugim tygodniu września** (typowane na poniedziałek **14 września 2026**).
- Deklarowane przyspieszenia iOS 27 vs iOS 26: starty apek **do +30%**, ładowanie nowych zdjęć w bibliotece **do +70%**, transfery AirDrop **do +80%**, przeglądanie i transfery w aplikacji Pliki na iPadOS **do 5× szybsze**.
- Kompatybilność iOS 27: bez cięć — **iPhone 11 i nowsze** (ta sama lista co iOS 26), choć zaawansowane funkcje Siri AI wymagają **iPhone 15 Pro/Pro Max lub iPhone 16+**. Nowe głosy Siri zarezerwowane dla **iPhone 17 lub nowszych**.
- macOS 27 Golden Gate to **pierwszy macOS wyłącznie dla Apple Silicon** (wymóg: chip **M1 lub nowszy**). Intel-Maki dostały ostatnie pełne wsparcie w macOS Tahoe; poprawki bezpieczeństwa dla starszych Intel mają lecieć **do września 2028**. To **ostatni macOS z pełną Rosettą 2** — w macOS 28 (jesień 2027) Rosetta znika.
- watchOS 27 wyrzuca **3 lata urządzeń jednym ruchem**: poza Series 8, Ultra 1 i SE 2 — największa redukcja w historii watchOS. Wspierane: Series **9/10/11**, **Ultra 2/3**, **SE 3** (wymóg: chip **S9 lub S10**).
- Liquid Glass dostaje **globalny suwak przezroczystości** w Centrum sterowania — od pełnej przezroczystości do całkowicie matowego UI. Domyślnie ustawione **mniej przezroczyście** niż w iOS 26 (reakcja na zarzuty o czytelność).
- macOS Golden Gate: **ciaśniejszy promień rogów okien** (jednolity w całym systemie, nawet dla apek bez aktualizacji), powrót **kolorów do ikon w sidebarze**, ujednolicony toolbar.
- Siri AI dostaje **osobną apkę** z historią rozmów synchronizowaną przez **iCloud** (na wzór ChatGPT app). Visual Intelligence schodzi z iPhone'a na **iPad, Mac i Vision Pro** — np. dodawanie wydarzeń do kalendarza po wycelowaniu kamery w plakat lub dzielenie rachunku przez pokazanie paragonu (integracja z Apple Cash).
- Architektura prywatności Siri AI: **on-device "system orchestrator"** + **Private Cloud Compute** (dane osobowe "nie są przechowywane ani dostępne dla Apple ani nikogo innego" podczas przetwarzania na serwerach).
- Siri AI wystartuje w **15 językach** (brak polskiego w pierwszej fali — angielski, duński, holenderski, francuski, niemiecki, włoski, norweski, portugalski, hiszpański, szwedzki, turecki, wietnamski, chińskie warianty, japoński, koreański), początkowo tylko po angielsku, reszta języków "later in 2026".
- W **Unii Europejskiej** Siri AI **nie startuje na iOS 27 i iPadOS 27** — wyłącznie na Mac, Apple Watch i Vision Pro. Powód: spór Apple z regulatorem o **DMA** (Digital Markets Act). Apple twierdzi, że regulator chce zmusić go do oddania dowolnemu asystentowi AI dostępu do czytania/wysyłania wiadomości, plików i kupowania — bez wglądu użytkownika. Brak timeline'u.
- Funkcjonalność Siri AI niedostępna też w **Chinach** (czeka na zgodę regulatora).

## Specyfikacja techniczna i kompatybilność

| System | Kompatybilność | Wycięte modele |
|---|---|---|
| iOS 27 | iPhone 11 i nowsze | brak (jak iOS 26) |
| iPadOS 27 | jak iPadOS 26 | brak |
| macOS 27 Golden Gate | tylko Apple Silicon (M1+) | **wszystkie Intel Maki** |
| watchOS 27 | Series 9, 10, 11, Ultra 2, Ultra 3, SE 3 | **Series 8, Ultra 1, SE 2** |
| Siri AI (pełna) | iPhone 15 Pro/Pro Max, iPhone 16+, iPad mini A17 Pro, iPad M1+, Mac M1+, Vision Pro | starsze iPhone'y odpadają z AI |

## Oś czasu

| Data | Wydarzenie |
|---|---|
| **8 czerwca 2026** | Keynote WWDC + dev beta 1 (wszystkie OS) |
| Lipiec 2026 | Public beta |
| **14 września 2026** (typowane) | Stabilne wydanie iOS 27 / iPadOS 27 |
| Jesień 2026 | macOS 27, watchOS 27, tvOS 27, visionOS 27 |
| Jesień 2027 | macOS 28 — koniec Rosetty 2 |
| Wrzesień 2028 | Koniec łatek bezpieczeństwa dla starych Intel-Maków |

## Reakcje branży i implikacje

- **Pozytyw**: prasa (9to5Mac, MacRumors, AppleInsider) chwali zwrot Apple ku wydajności i refinement po falstarcie Liquid Glass z iOS 26. Suwak Liquid Glass komentowany jako "feature, o który ludzie błagali przez rok" (TweakTown).
- **Negatyw**: regulacja w UE — Apple publicznie obwinia DMA za to, że Europejczycy nie dostaną Siri AI na iPhone'a. Engadget i 9to5Mac sygnalizują, że to **bezterminowe opóźnienie**, nie kilkumiesięczne.
- **Tożsamość Siri**: w doniesieniach poprzedzających keynote krążyły info, że backend Siri AI ma być **Gemini od Google**; Apple w oficjalnym press release nie potwierdza tego wprost — wymienia tylko własną architekturę "system orchestrator + Private Cloud Compute". TechRadar i tech.yahoo trzymają linię "Gemini-powered", Apple unika tematu.
- **Apple Watch — szok cenowy**: właściciele Series 8 i Ultra 1 (premiera 2022, ceny startowe **399 USD / 799 USD**) zostają z wersją na watchOS 26. Najgłośniejszy wątek na MacRumors Forums (osiem stron komentarzy w 24h).

## Implikacje dla użytkownika / rynku

- **Każdy widz testowy ma iPhone'a 11 lub nowszego = każdy dostanie update**. To rzadkość — Apple zwykle tnie 1–2 modele co rok.
- **Mac z Intel = elektrośmieci na horyzoncie**. Dla osób z MacBookiem Pro 2019/2020 to ostatni dzwonek, by się przesiąść — wsparcie security do 2028, ale flagowych funkcji już teraz brak.
- **Europejski iPhone z iOS 27 to inny produkt niż amerykański** — bez nowej Siri. Pierwszy raz tak ostry split funkcjonalny w głównym OS.
- **Polski użytkownik czeka dłużej**: brak polskiego w pierwszej fali języków Siri AI ("later in 2026").

---

## Potencjalne kąty narracyjne do shorta

- **"Apple właśnie zabił Intel Maca. Definitywnie."** — koniec ery 2006–2026, dla wielu ludzi ich roboczy laptop staje się "ostatnia generacja".
- **"Apple wyrzucił 3 lata zegarków jednym aktualizacją"** — Series 8, Ultra 1 i SE 2 lądują na śmietniku watchOS w jeden dzień. Największa rzeź w historii Apple Watch.
- **"iPhone z 2019 dostaje iOS 27, ale Apple Watch z 2022 — nie"** — paradoks: 7-letni telefon żyje, 3-letni zegarek umiera.
- **"Twój iPhone w UE będzie miał wycięte AI — przez Brukselę"** — Siri AI nie wejdzie na iOS w Europie. Apple publicznie obwinia regulatora.
- **"Apka uruchamia się o 30% szybciej, zdjęcia ładują się o 70% szybciej — i nie musisz nic robić"** — najnudniejszy, ale najbardziej namacalny update od lat.
- **"Apple naprawia to, czego rok temu wszyscy nienawidzili — suwakiem"** — Liquid Glass dostaje globalną gałkę przezroczystości. Rok później Apple przyznaje, że to była zła decyzja.
- **"Siri w końcu ma własną apkę — jak ChatGPT trzy lata temu"** — Apple goni rynek, Siri staje się tym, czym powinna być od 2023.

---

## Źródła

- [Apple Newsroom — Apple introduces Siri AI](https://www.apple.com/newsroom/2026/06/apple-introduces-siri-ai-a-profoundly-more-capable-and-personal-assistant/)
- [Apple Newsroom — Due to DMA, Siri AI delayed in EU](https://www.apple.com/newsroom/2026/06/due-to-dma-siri-ai-delayed-in-eu-for-ios-27-and-ipados-27/)
- [9to5Mac — Apple announces huge iOS 27 speed improvements](https://9to5mac.com/2026/06/08/apple-announces-huge-ios-27-speed-improvements-for-iphone/)
- [9to5Mac — Apple updates Liquid Glass UI in iOS 27 with new slider](https://9to5mac.com/2026/06/08/apple-updates-liquid-glass-ui-in-ios-27-with-new-slider-to-customize-how-it-looks/)
- [9to5Mac — watchOS 27 compatibility list](https://9to5mac.com/2026/06/08/watchos-27-compatibility-list/)
- [9to5Mac — New Siri not available in EU iPhone](https://9to5mac.com/2026/06/08/new-siri-not-available-in-eu-iphone/)
- [MacRumors — iOS 27 Supports iPhone 11 and Newer](https://www.macrumors.com/2026/06/08/ios-27-supports-iphone-11-newer/)
- [MacRumors — watchOS 27 Drops Support for Series 8, Ultra 1, SE 2](https://www.macrumors.com/2026/06/08/watchos-27-drops-support-for-apple-watch-series-9-ultra-se-2/)
- [MacRumors — Apple Announces macOS Golden Gate](https://www.macrumors.com/2026/06/08/apple-announces-macos-golden-gate/)
- [MacRumors — iOS 27 Release Date: How to Install Beta](https://www.macrumors.com/2026/06/05/ios-27-release-date-how-to-install-beta/)
- [Engadget — Everything announced at Apple's WWDC 2026 keynote](https://www.engadget.com/2189698/everything-announced-at-apples-wwdc-2026-keynote/)
- [Engadget — Siri AI for iPhones and iPads delayed indefinitely in the EU](https://www.engadget.com/2189932/siri-ai-for-iphones-and-ipads-will-be-delayed-indefinitely-in-the-eu/)
- [TechCrunch — WWDC 2026: Everything announced on Siri AI, iOS 27](https://techcrunch.com/2026/06/08/wwdc-2026-everything-announced-on-siri-ai-os-27-apple-intelligence-and-more/)
- [TechRadar — Apple WWDC 2026 as it happened](https://www.techradar.com/news/live/apple-wwdc-2026-live)
- [TechRadar — macOS 27 Golden Gate announced at WWDC 2026](https://www.techradar.com/computing/mac-os/macos-27-golden-gate-announced-at-wwdc-2026-heres-everything-you-need-to-know)
- [Macworld — iOS 27 Guide](https://www.macworld.com/article/2986799/ios-27-new-iphone-features-release-date-beta-compatiblity-apple-intelligence-siri.html)
- [Wikipedia — macOS Golden Gate](https://en.wikipedia.org/wiki/MacOS_Golden_Gate)
- [AppleInsider — iOS 27 keeps iPhone 11 and newer compatibility](https://appleinsider.com/articles/26/06/08/ios-27-keeps-iphone-11-and-newer-compatibility)
- [512 Pixels — WWDC26: Apple Watch Series 9, Ultra 1, and SE 2 Dropped](https://512pixels.net/2026/06/wwdc26-watchos-27/)
