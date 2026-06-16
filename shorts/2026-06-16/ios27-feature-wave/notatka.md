# Apple szykuje iOS 27 — wczoraj 9to5mac wysypał trzy świeże fishe

**Data:** 2026-06-16
**Temat:** Tydzień po WWDC 2026 Apple drip-feeduje funkcje iOS 27 / macOS 27 z developer bety — Find My z trybem "schowaj się przed kimś bez powiadomienia", przeprojektowany Apple Pay z swipe-em między kartami oraz iPhone Mirroring z resize'em, Control Center i wreszcie DRM.

---

## Kluczowe fakty i liczby

- **iOS 27 developer beta 1** wystartowała **8 czerwca 2026** w dniu keynote'u WWDC. Publiczna beta wpada w **lipcu 2026**, GA we **wrześniu 2026** (typowy harmonogram Apple).
- **Find My — Hide Location**: pojedynczy tap w sekcji "My Location" chowa Twoją pozycję **na 12 godzin** przed wybranym kontaktem, po czym automatycznie wraca do stanu sprzed. Druga strona **nie dostaje żadnego powiadomienia** — widzi tylko "No Location Found".
- **Apple Pay** w checkoucie: **swipe lewo/prawo między kartami** bezpośrednio na ekranie płatności + nowy **grid-style picker** ze wszystkimi kartami naraz. Pokazuje **rewards, saldo debit, Pay Later** — wszystko bez wychodzenia z Apple Pay.
- **iPhone Mirroring (macOS 27 "Golden Gate")** dostaje **3 upgrade'y**: (1) resize okna do dowolnego rozmiaru z snap-em do wspieranych aspect ratios (poprzednio tylko 3 presety), (2) **Control Center przez skrót CMD+4** lub menu View, (3) **odtwarzanie wideo z DRM** (Netflix, Apple TV+) — wcześniej czarny ekran.
- **Zero iPhonów wypadło** z listy wspieranych: iOS 27 leci na wszystko od **iPhone 11 / iPhone SE 2. gen** wzwyż. Zaawansowane Apple Intelligence wymaga **iPhone 15 Pro lub nowszego**.
- Według Bloomberg's Mark Gurman, Apple na WWDC pokazało **57 z ~60 funkcji**, które miał w preview — **3 zostały ukryte**: nowy Modular watch face, w pełni customizowalny Camera app oraz Siri Extensions.
- Kod iOS 27 zawiera ślady **foldable iPhone Ultra** — stringi typu `foldstate`, `angledegrees`, `DeviceDisplayCount` znalezione przez sleutherów już w becie 1.

---

## Find My — szczegóły mechaniki "Hide Location"

- Toggle siedzi w **People → My Location** na karcie użytkownika. Po włączeniu zmienia się w "Unhide Location".
- **12-godzinny timer** — po jego wygaśnięciu sharing automatycznie wraca do poprzedniego stanu. To różnica względem starych opcji, gdzie albo zatrzymywałeś sharing globalnie (i druga strona dostawała alert), albo wyłączałeś Find My całkowicie.
- Dodatkowo: **custom duration sharing** — możesz udostępniać lokalizację "do określonej daty i godziny" zamiast wiecznie.
- **Per-contact pause** — możesz wstrzymać konkretnemu człowiekowi bez alertu. Druga strona widzi "No Location Found", co dla niej wygląda identycznie jak "telefon padł" / "no signal".
- UI Find My przeszło refresh w stylu **Liquid Glass**, nowy tab bar, "Items" dostał ikony w stylu AirTaga, a główna strona pokazuje konkretne adresy bez konieczności wchodzenia w kartę kontaktu.

## Apple Pay — nowy checkout

- Funkcja działa w **in-app i web checkoutach** (Safari + apki ze Stripe/PayPal/Apple Pay).
- Poprzedni problem: tapnięcie karty otwierało edytor adresów, nie selector kart. Teraz tap = grid view, swipe = przełącz kartę. Mała zmiana UX, ale rozwiązuje irytację, którą każdy z 2+ kartami w Wallet zna.
- Apple Wallet w iOS 27 dostaje też **bill splitting przez Apple Cash z Visual Intelligence** (zdjęcie paragonu → podział na osoby), digitalizację fizycznych kart lojalnościowych, oraz rozszerzony hotel key z trip details.

## iPhone Mirroring — szczegóły 3 upgrade'ów

- **Resize**: okno snap-uje do wspieranych aspect ratios przy przeciąganiu — nie dostajesz "dowolnego" rozmiaru, ale najbliższy obsługiwany kształt. Działa tylko z apkami zbudowanymi pod iOS 27.
- **Control Center**: **CMD+4** otwiera CC w zmirrorowanym iPhonie. Wcześniej swipe z prawego górnego rogu w trybie mirroring po prostu nie działał — to był jedyny element systemu, który był niedostępny.
- **DRM video**: Netflix, Disney+, Apple TV+, HBO Max — wszystko, co wcześniej pokazywało czarny prostokąt w oknie mirroringu, teraz po prostu gra.

---

## Oś czasu iOS 27 beta → GA

- **8 czerwca 2026** — WWDC keynote, dev beta 1
- **~22 czerwca 2026** — spodziewana dev beta 2 (typowy 2-tygodniowy cykl)
- **mid-July 2026** — publiczna beta (4-6 tygodni po dev becie)
- **8-9 września 2026** — iPhone event z iPhone 18 / iPhone 18 Pro
- **~14 września 2026** — GA iOS 27 (poniedziałek po evencie, jak zwykle)

---

## Potencjalne kąty narracyjne do shorta

1. **"Apple właśnie dał Ci tryb 'schowaj się przed byłą'"** — Find My 12h hide bez powiadomienia. Hook dramatyczny, target zoomer/millennial, post-breakup contenty na TikToku same się piszą. To **najmocniejszy hook** całego pakietu.
2. **"3 funkcje, których Apple nie zdążył pokazać na WWDC — wszystkie są o tym, że ktoś Cię śledzi"** — łącz Find My + Apple Pay (rewards transparency) + iPhone Mirroring (DRM) w narrację "Apple uczy się prywatności po latach".
3. **"iPhone Mirroring wreszcie nie jest beta-quality"** — rok temu premiera, do dziś nie miało CC, resize'a ani Netflixa. Apple dopiero teraz dowozi to, co powinno być day-one. Angle: "Apple ship-and-iterate jak Google".
4. **"57 z 60 funkcji pokazane, 3 ukryte" — Gurman leak vs WWDC reality** — meta-angle o tym, jak Apple "trzyma w zanadrzu" features pod konkretne event'y (Siri Extensions = pewnie pod iPhone Ultra fold).
5. **"Apple Pay w końcu rozumie, że masz 5 kart" — swipe między kartami w checkoucie**. Niche, ale każdy power-user Wallet to czuje. Bonus: PKO BP nadal nie wspiera Apple Pay w PL → łatwy lokalny hook.
6. **"Foldable iPhone Ultra wycieka z kodu iOS 27"** — stringi `foldstate`, `angledegrees` znalezione w becie 1. Pivot z "drip-feed funkcji" na "drip-feed hardware'u". Najwięcej viewsów potencjalnie, bo foldable Apple = unicorn topic.
7. **PL kontekst: "Cała Polska na iOS 27 — nawet iPhone 11"** — zero drop devices to news dla wszystkich, którzy się obawiali, że ich iPhone padnie. Mocny SEO/dyskusja w komentarzach.

---

## Źródła

- [9to5mac: iOS 27: Find My adds new ways to hide your location, more (12.06.2026)](https://9to5mac.com/2026/06/12/ios-27-find-my-adds-new-ways-to-hide-your-location-more/)
- [9to5mac: iOS 27 makes it easier to switch between Apple Pay cards (13.06.2026)](https://9to5mac.com/2026/06/13/ios-27-makes-it-easier-to-switch-between-apple-pay-cards/)
- [9to5mac: macOS 27 brings three key upgrades to iPhone Mirroring (15.06.2026)](https://9to5mac.com/2026/06/15/macos-27-brings-three-key-upgrades-to-iphone-mirroring/)
- [9to5mac: iOS 27 — all the compatible iPhone models (08.06.2026)](https://9to5mac.com/2026/06/08/ios-27-here-are-all-the-compatible-iphone-models/)
- [9to5mac: iOS 27 release date — when next major iPhone update is coming (08.06.2026)](https://9to5mac.com/2026/06/08/ios-27-release-date-when-next-major-iphone-update-is-coming/)
- [MacRumors: iOS 27 Find My App Lets You Hide Location From Others Temporarily (09.06.2026)](https://www.macrumors.com/2026/06/09/ios-27-find-my-app-hide-location/)
- [MacRumors: macOS 27 Lets You Resize iPhone Mirroring in New Aspect Ratios (09.06.2026)](https://www.macrumors.com/2026/06/09/macos-27-lets-you-resize-iphone-mirroring/)
- [Digital Trends: iOS 27's Apple Pay fix won't have you hunting for the right card](https://www.digitaltrends.com/phones/ios-27s-apple-pay-fix-wont-have-you-hunting-for-the-right-card-before-checkout/)
- [TechRadar: 21 new features in iOS 27 not mentioned at WWDC 2026 keynote](https://www.techradar.com/phones/ios/here-are-21-new-features-in-ios-27-that-apple-didnt-have-time-to-mention-during-its-wwdc-2026-keynote)
- [Apple Developer: iOS & iPadOS 27 Beta Release Notes](https://developer.apple.com/documentation/ios-ipados-release-notes/ios-ipados-27-release-notes)
- [Analytics Insight: Three iOS 27 Features Apple Didn't Show at WWDC 2026](https://www.analyticsinsight.net/news/three-ios-27-features-apple-didnt-show-at-wwdc-2026-here-is-whats-hidden)
- [Gotechtor: iOS 27 hide location Find My silent pause (12h details)](https://www.gotechtor.com/ios-27-hide-location-find-my-silent-pause/)
