# iOS 27, iPadOS 27 i macOS Golden Gate — bety deweloperskie dostępne dziś

**Data:** 2026-06-10
**Temat:** Po keynote WWDC 2026 (8 czerwca) Apple od razu wypuściło pierwsze bety deweloperskie iOS 27, iPadOS 27, watchOS 27, visionOS 27 i macOS 27 "Golden Gate" — z najtwardszym cięciem wsparcia od lat: koniec Intel Maców i koniec Apple Watch starszych niż Series 9.

---

## Kluczowe fakty i liczby

- Bety deweloperskie wszystkich pięciu systemów (iOS, iPadOS, macOS, watchOS, visionOS) trafiły do developerów **8 czerwca 2026**, kilka godzin po keynote. Publiczna beta — **lipiec 2026** (orientacyjnie połowa miesiąca, dla iOS 26 było to 24 lipca). Finalna premiera — **jesień 2026**, darmowa aktualizacja.
- Apple obiecuje **do 30% szybsze uruchamianie aplikacji** w iOS 27/iPadOS 27 dzięki przepisanemu CPU schedulerowi i wstępnemu ładowaniu danych aplikacji przed dotknięciem ikony. Dodatkowo: **70% szybsze zapisywanie zdjęć**, **80% szybszy AirDrop**, **5x szybszy transfer plików** na iPadzie.
- iOS 27 działa na **iPhone 11 i nowszych** — łącznie **31 modeli iPhone'a**. Drop: iPhone XS, XS Max, XR, X, 8/8 Plus, SE 1. gen. (chip A12 Bionic i starsze).
- macOS 27 "Golden Gate" to **pierwszy macOS bez Intela** — odcina 4 modele, które jeszcze dostały macOS 26 Tahoe: MacBook Pro 16" (2019), MacBook Pro 13" (2020, 4× TB3), iMac (2020) i Mac Pro (2019). Intel Macs będą dostawać **łatki bezpieczeństwa do 2029**, ale bez nowych funkcji.
- watchOS 27 to **największy cut w historii Apple Watcha**: zostaje tylko **5 modeli** (Series 9, 10, 11, Ultra 2, Ultra 3, SE 3). Wypadają Series 8 i starsze, Ultra 1 i SE 2. Powód: chip S9/S10 z Neural Engine.
- Pełne Apple Intelligence wymaga **iPhone 15 Pro lub nowszy** (A17 Pro + min. 8 GB RAM) — w sumie **12 modeli iPhone'a**. Na iPadzie: M1+ albo A17 Pro + 8 GB RAM. Najbardziej zaawansowane funkcje on-device na Macu: **M3 lub nowszy + 12 GB unified memory**.
- Beta deweloperska jest **darmowa od 2023 roku** — wystarczy bezpłatne Apple ID zalogowane na `developer.apple.com/account`, akceptacja Apple Developer Agreement (bez płatności) i włączenie Beta Updates w Ustawieniach. Stary paywall **$99/rok** już nie obowiązuje przy samym pobraniu bety.

---

## Wspierane urządzenia per OS

| System | Lista wspieranych urządzeń | Drop wobec poprzedniej generacji |
|---|---|---|
| **iOS 27** | iPhone 11 → iPhone 17 Pro Max + SE 2/3 gen. (31 modeli) | Brak (te same urządzenia co iOS 26) |
| **iPadOS 27** | iPad Pro (M1+), iPad Air (5. gen / M1+), iPad mini 6+ (z A17 Pro w 7. gen), iPad 10. gen i nowsze | Odcięty iPad Air 3, iPad mini 5, iPad 8. gen |
| **macOS 27 Golden Gate** | MacBook Air/Pro/mini z Apple Silicon (2020+), iMac (2021+), Mac Studio (2022+), Mac Pro (2023), MacBook Neo (2026) | Wszystkie Intel Maki (4 modele) |
| **watchOS 27** | Series 9, 10, 11, Ultra 2, Ultra 3, SE 3 | Series 8 i starsze, Ultra 1, SE 2 — największy cut w historii |
| **visionOS 27** | Apple Vision Pro (wszystkie modele) | Brak — nie ma jeszcze poprzedniej generacji do odcięcia |

## Co dokładnie mierzy "30% faster app launch"

- Apple **przepisał CPU scheduler** — algorytm planowania zadań na rdzeniach. Nowy scheduler agresywniej przewiduje, którą aplikację użytkownik otworzy następną i **wstępnie ładuje jej krytyczne zasoby** (binary, biblioteki, dane sesji) w tle.
- Pomiar 30% to **czas od tapnięcia ikony do gotowości do interakcji** (cold launch po reboocie i warm launch). Benchmark mierzony na całej linii — od iPhone'a 11 do 17 Pro Max.
- Dodatkowo: Photos zapisuje nowe zdjęcia **o 70% szybciej** dzięki przepisanej architekturze indeksowania; AirDrop dostał nowy protokół negocjacji Wi-Fi/Bluetooth (do **80% szybciej** dla dużych plików); pliki między iPadem a Macem przez iCloud Drive — **do 5x szybciej**.
- Spotlight, Mail i Photos dostały **przepisany silnik wyszukiwania** (semantyczny, on-device, ML-powered) — to ta sama architektura, która zasila nowe Siri AI w wyszukiwaniu personal context.

## Nowości w iPadOS 27 / watchOS 27 / visionOS 27

**iPadOS 27:**
- **Liquid Glass slider** — regulacja przezroczystości UI od pełnej szklanki po wersję tinted (dla osób z trudnościami z czytaniem).
- **Rozbudowane kontrole rodzicielskie** — konta dziecięce, "Ask to Browse" (zgoda rodzica na każdą nową stronę), Communication Safety blokujące explicit content, Time Allowances per kategoria (Games, Social, Entertainment), API dla deweloperów aplikacji.
- **Siri AI z kontekstem ekranu** — Siri "widzi" co jest na ekranie, może wyszukać wiadomości, linki i szczegóły z różnych aplikacji w odpowiedzi na pytanie.
- AI w nowych Shortcuts — budowanie workflow z wykorzystaniem LLM.

**watchOS 27:**
- **Skonsolidowana aplikacja Find My** — w końcu jedna apka zamiast trzech (Find Devices, Find Items, Find People).
- **Dynamiczny grid aplikacji** — 5 sugerowanych przez Siri appek na ekranie głównym; widgety otwierane nowym tap gesture.
- Nowe twarze zegarka (m.in. wariant Modular Ultra z dużym czasem + 3 komplikacjami).
- **Lepszy tracking treningów** — ML do liczenia dystansu na bieżni, szybszy start treningu, zsynchronizowany krok między Health a Fitness.
- Standalone aplikacja Siri na zegarku z conversation history przez iCloud.

**visionOS 27:**
- **Spatial Panoramas** — konwersja zwykłych panoram z iPhone'a do immersyjnych środowisk 3D.
- **Curved Windows** — zakrzywione okna aplikacji (Safari, Freeform, Apple TV Multiview na start), imitujące monitor zakrzywiony wokół użytkownika.
- **Visual Intelligence** — Siri odpowiada na pytania o obiekty w polu widzenia użytkownika.
- **3x szybsze Wi-Fi**, mniejsze widgety, expanded notifications, przeprojektowany Control Center.
- Spatial preview i edycja modeli 3D z Maca (dla designerów).

## Jak zainstalować dev betę bez płatnego konta — krok po kroku

1. **Zrób backup** iPhone'a (iCloud lub Finder na Macu). Beta 1 potrafi ubić urządzenie do DFU restore.
2. Wejdź w Safari na `developer.apple.com/account`, zaloguj się **darmowym Apple ID**.
3. Zaakceptuj Apple Developer Agreement. **Jeśli widzisz ekran z $99 — kliknąłeś nie ten przycisk**. Darmowa rejestracja jest jako "Apple Developer Account", nie "Apple Developer Program".
4. Na iPhonie: Ustawienia → Ogólne → Aktualizacje oprogramowania → **Beta Updates** → wybierz "iOS 27 Developer Beta".
5. Wróć do Software Update, pobierz i zainstaluj.
6. To samo na iPadzie, Macu, Apple Watchu (przez aplikację Watch na iPhonie) i Vision Pro.

**Ważne:** od 2023 roku Apple udostępnia bety deweloperskie za darmo z każdym Apple ID — **$99/rok** dotyczy tylko publikacji aplikacji w App Store i podpisywania kodu. W Polsce zero przeszkód regulacyjnych — wystarczy Apple ID założone na polski adres.

## Implikacje cięcia wsparcia Intela

- **Cztery modele odcięte naraz** — to największe jednorazowe cięcie od czasu macOS Mojave (2018, koniec dla Macbooków pre-2010/2012).
- Hardware'owy powód: **brak Neural Engine** w Intelach. Nowe Apple Intelligence + Siri AI + przepisany Spotlight/Mail/Photos wymagają NPU.
- 2019 Mac Pro za **~$6000+** dostał ostatni feature update zaledwie 7 lat po premierze. To mocno krócej niż typowy support cycle Apple dla Maków pro (~8-10 lat).
- **Update security do 2029** — Apple gwarantuje łatki bezpieczeństwa, ale Safari, Mail i nowe API zostaną zamrożone na poziomie macOS 26 Tahoe.
- W praktyce: każdy, kto kupił Intel Maca po 2019, musi planować wymianę w ciągu 2-3 lat, jeśli chce mieć aktualny system.

## Znane problemy z Beta 1

- **iPhone 15 Pro/Pro Max** — raporty o całkowitym zawieszeniu urządzenia po instalacji DB 1, wymagającym DFU restore lub wizyty w Apple Store.
- **iPhone Mirroring** — częste rozłączenia z "connection interrupted".
- **Siri AI nie działa w pełni** — większość funkcji ogłoszonych na keynote nie jest jeszcze aktywna; conversations w standalone app nie zapisują się (mimo ustawienia "Forever"), suwaki głosu wyszarzone.
- **Photos crash** przy wysyłce zdjęcia, **Apple Pay** nie działa na części urządzeń, **AssistiveTouch** nie reaguje.
- **Bluetooth crashe**, problemy z Wi-Fi, **Home app** usuwa kamery z konfiguracji.
- Bug screenshotów: po zapisie skalowane są do mniejszego rozmiaru, ale w bibliotece zostaje oryginał (znany z poprzednich bet).
- **Aplikacje bankowe** — klasyczny problem każdej Apple bety: część banków blokuje logowanie do czasu publicznej bety.

---

## Oś czasu

| Data | Wydarzenie |
|---|---|
| 8 czerwca 2026 | Keynote WWDC 2026 — ogłoszenie iOS 27, iPadOS 27, macOS Golden Gate, watchOS 27, visionOS 27 |
| 8 czerwca 2026 | Pierwsza beta deweloperska wszystkich systemów dostępna do pobrania |
| ~połowa lipca 2026 | Publiczna beta (jak iOS 26 — 24 lipca 2025) |
| Wrzesień 2026 | Finalna premiera iOS 27 (zwykle wraz z launchem iPhone 18) |
| Październik 2026 | Finalna premiera macOS Golden Gate, watchOS 27, iPadOS 27 |
| 2029 | Koniec łatek bezpieczeństwa dla Intel Maców |

---

## Potencjalne kąty narracyjne do shorta

- **"Twój Apple Watch może się dziś zestarzeć — zostało tylko 5 modeli"** (drama + konkret: największy cut w historii watchOS)
- **"Twoja apka uruchomi się 30% szybciej — i to nawet na iPhonie z 2019"** (paradoks: nowy soft, stary sprzęt szybszy)
- **"Apple właśnie pochował każdego Intel Maca — nawet ten za 6000 dolarów"** (konkretna liczba + emocja: drogi sprzęt staje się legacy)
- **"Beta iOS 27 jest darmowa, ale po dwóch godzinach iPhone 15 Pro przestaje się włączać"** (ostrzeżenie + konkret techniczny)
- **"Apple Watch Series 8 sprzed roku już bez wsparcia — to się jeszcze nigdy nie zdarzyło"** (counterintuitive: tak młody sprzęt odcięty)
- **"Płaciłeś 99 dolarów rocznie za testowanie iOS? Od 2023 to za darmo, mało kto wie"** (life hack + konkret)
- **"5x szybszy transfer plików między iPadem a Makiem — przez kabel? Nie. Przez chmurę"** (counterintuitive konkret)

---

## Źródła

- [Apple Newsroom — Apple unveils next generation of Apple Intelligence, Siri AI, and more](https://www.apple.com/newsroom/2026/06/apple-unveils-next-generation-of-apple-intelligence-siri-ai-and-more/)
- [MacRumors — Apple Releases First iOS 27, iPadOS 27, and macOS 27 Betas to Developers](https://www.macrumors.com/2026/06/08/apple-releases-ios-27-beta-1/)
- [MacRumors — iOS 27 Beta Available Today With These 12 New Features](https://www.macrumors.com/2026/06/08/ios-27-beta-available-tomorrow-new-features/)
- [MacRumors — Here Are the Macs Compatible With macOS Golden Gate](https://www.macrumors.com/2026/06/08/macs-compatible-macos-golden-gate/)
- [MacRumors — watchOS 27 Drops Support for Apple Watch Series 8, Ultra 1, SE 2, and Older](https://www.macrumors.com/2026/06/08/watchos-27-drops-support-for-apple-watch-series-9-ultra-se-2/)
- [MacRumors — iPadOS 27 Drops Support for a Wave of iPads](https://www.macrumors.com/2026/06/08/ipados-27-drops-support-for-a-wave-of-ipads/)
- [9to5Mac — Apple announces huge iOS 27 speed improvements for iPhone](https://9to5mac.com/2026/06/08/apple-announces-huge-ios-27-speed-improvements-for-iphone/)
- [9to5Mac — macOS Golden Gate: Here's the list of Macs compatible with the update](https://9to5mac.com/2026/06/08/macos-golden-gate-heres-the-list-of-macs-compatible-with-the-update/)
- [9to5Mac — visionOS 27 announced with new features for Apple Vision Pro](https://9to5mac.com/2026/06/08/visionos-27-announced-with-new-features-for-vision-pro/)
- [TechCrunch — WWDC 2026: Everything announced on Siri AI, iOS 27, Apple Intelligence, and more](https://techcrunch.com/2026/06/09/wwdc-2026-everything-announced-on-siri-ai-os-27-apple-intelligence-and-more/)
- [TechRadar — How to download the macOS 27 Golden Gate developer beta](https://www.techradar.com/computing/mac-os/how-to-download-the-macos-27-golden-gate-developer-beta)
- [AppleInsider — iOS 27 & macOS 27 developer betas are out, but you should probably wait](https://appleinsider.com/articles/26/06/08/ios-27-macos-27-developer-betas-are-out-but-you-should-probably-wait)
- [Engadget — iOS 27 can run on phones as old as the iPhone 11](https://www.engadget.com/2189977/ios-27-can-run-on-phones-as-old-as-the-iphone-11/)
- [Wccftech — iOS 27 announced at WWDC 2026 with new CPU scheduler](https://wccftech.com/ios-27-preview-announced-at-wwdc-2026/)
- [Tom's Guide — iPadOS 27: Everything announced for Apple's beloved tablets at WWDC 2026](https://www.tomsguide.com/computing/vr-ar/ipados-27-everything-coming-to-the-apples-beloved-tablets)
- [Wareable — Apple unveils watchOS 27: New features, rollout timeline, and device compatibility](https://www.wareable.com/apple/apple-watchos-27-announcement-new-features-wwdc-siri-intelligence)
