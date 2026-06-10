# Apple cofa się z Liquid Glass — wprowadza suwak "od przezroczystego do matowego"

**Data:** 2026-06-10
**Temat:** Rok po debiucie Liquid Glass na WWDC 2025 Apple oficjalnie dodaje w iOS 27 i macOS Golden Gate suwak intensywności efektu (Settings > Appearance > Liquid Glass), przyznając publicznie, że poprzednia wersja słabo radziła sobie z czytelnością — to jeden z najgłośniejszych design u-turnów Apple od czasów butterfly keyboard.

---

## Kluczowe fakty i liczby

- Apple ogłosiło suwak Liquid Glass na **WWDC 2026 (8 czerwca 2026)**, dokładnie **rok i jeden dzień** po premierze Liquid Glass na WWDC 2025.
- Lokalizacja: **Settings > Appearance > Liquid Glass** (zarówno iOS 27 jak i macOS 27 "Golden Gate") — NIE w Accessibility. To pierwszy raz, gdy Apple traktuje regulację języka designu jako "first-class control", a nie obejście dla osób z dysfunkcjami wzroku.
- Suwak ma **continuous scale** od "ultra-clear" do "fully tinted" — zamiast binarnego toggle "on/off". Default w iOS 27 jest **mniej przezroczysty** niż ten z WWDC 2025.
- Liquid Glass w iOS 26 miał **9 miesięcy** krytyki za "specular highlights" w rogach ikon, które tworzyły iluzję krzywych ikon — w iOS 27 te refleksy zostały usunięte.
- Apple dodało **więcej warstw Liquid Glass** w ikonach (light, dark, tinted, clear modes) dla większej ostrości.
- W macOS Golden Gate **window corner radius został zmniejszony** względem macOS Tahoe (cofnięcie kontrowersyjnej zmiany), sidebary stały się **edge-to-edge**, a **ikony w sidebarach odzyskały kolor** (usunięty w Tahoe).
- Apple używa terminu HDR dla "głębi i wymiaru" w macOS Golden Gate UI.
- Developer beta dostępna **8 czerwca 2026**, public beta planowana na **lipiec 2026**, finalne wydanie — **wczesny wrzesień 2026**.
- Nielsen Norman Group udokumentowało w iOS 26 realne **failures dostępności** — przeźroczyste elementy na zatłoczonym tle zmniejszały kontrast poniżej progu czytelności dla osób z lekkimi wadami wzroku.
- W iOS 26.1 Apple wprowadziło już opcję "Tinted" — suwak w iOS 27 to **eskalacja drugiego etapu** tego samego cofnięcia.

## Co dokładnie zmieniło się w Liquid Glass między WWDC 2025 a 2026

- **Suwak intensywności** — Settings > Appearance > Liquid Glass, działa instant bez restartu.
- **Większa nieprzezroczystość domyślna** — Apple oficjalnie: "diffuses complex content behind it much more effectively, while also creating more depth and separation" (Shubham Kedia, Human Interface director).
- **Darkened edge + brighter specular highlights** — Apple oficjalnie ustanawia "more depth and separation for the UI".
- **Usunięcie iluzji optycznej** w rogach ikon (połyskliwe refleksy reagujące na obrót iPhone'a).
- **Jednolity corner radius** dla wszystkich okien aplikacji w macOS — cofnięcie chaotycznej decyzji z Tahoe.
- **Refrakcja kontynuuje się pod sidebarem** zamiast urywać się na granicy paneli (gdy przewijasz UI w bok).
- **Sidebary edge-to-edge**, bez dodatkowego cienia.
- **Kolorowe ikony w sidebarach** wracają (po roku monochromu w Tahoe).
- **Lepszy kontrast** w navigation bars i interface chrome — Apple zwiększyło opacity w pasach systemowych po feedbacku z pierwszej bety developerskiej iOS 26.

## Inne zmiany designu w iOS 27 / macOS Golden Gate

- Wszystkie aplikacje systemowe (Photos, Music, Safari, Notes) zaktualizowane do nowych zasad spójności wizualnej.
- W menu bar macOS Apple używa ikon zamiast samego tekstu dla niektórych pozycji — uproszczona nawigacja.
- Tab bar search re-integration — split-search layout z iOS 26 został cofnięty w wielu miejscach.
- Apple nie zmienia większości API: `.glassEffect()` w SwiftUI i `UIGlassEffect` w UIKit pozostają. Aktualizacje w **GlassEffectContainer compositing pipeline** propagują się automatycznie do aplikacji, które już używają systemowych API.

## Settings UI: nowy slider vs Reduce Transparency

| Cecha | Reduce Transparency (od lat) | Liquid Glass slider (iOS 27) |
|---|---|---|
| Lokalizacja | Settings > Accessibility > Display & Text Size | Settings > Appearance > Liquid Glass |
| Charakter | toggle binarny (on/off) | suwak ciągły (ultra-clear → fully tinted) |
| Pozycjonowanie | obejście dla osób z dysfunkcjami | "first-class design control" dla wszystkich |
| Zakres | częściowy — nie wyłącza całego Liquid Glass | pełny — może zredukować efekt aż do nieprzezroczystego |
| Domyślnie | off | środkowa pozycja, bardziej tinted niż iOS 26 |

## Historia design reversals Apple

| Decyzja | Wprowadzenie | Cofnięcie | Czas |
|---|---|---|---|
| Butterfly keyboard | 2015 (MacBook) | 2019 (16" MBP, scissor) | **4 lata** + class action lawsuit |
| Touch Bar | 2016 (MacBook Pro) | 2021 (Apple Silicon redesign) | **5 lat** |
| Brak MagSafe na Macu | 2015 (12" MacBook) | 2021 (powrót na MBP) | **6 lat** |
| Safari URL bar na dole | iOS 15 (2021) | iOS 15.1+ opcja Compact, iOS 26 finalny powrót | **5 lat** |
| Redesign Photos | iOS 18 (2024) | iOS 26 (2025) cofnięcie | **1 rok** |
| Liquid Glass jednolite | iOS 26 (2025) | iOS 26.1 "Tinted" + iOS 27 suwak (2026) | **rok** |

Liquid Glass to **najszybsze publiczne cofnięcie designerskie** Apple — w niecały rok od premiery firma de facto dała użytkownikom opcję wyłączenia flagowego języka wizualnego, który mial być następcą skeumorfizmu vs flat designu.

## Reakcje deweloperów na pierwszej becie

- Reakcje **głównie pozytywne** — większość deweloperów dostała poprawki bez konieczności zmian w kodzie.
- Custom navigation components zbudowane pod split-search z iOS 26 wymagają refaktoru po re-integracji tab bar search.
- Mixed UIKit + SwiftUI codebases powinny zaudytować **GlassEffectContainer boundaries** — kompozycja morfująca działa inaczej.
- Accessibility workarounds (manualnie zwiększane kontrasty, "dimmer overlays") **wymagają przetestowania** przeciw nowemu sliderowi — bo użytkownik może mieć już ustawiony fully tinted i podwójne tłumienie obetnie czytelność.
- Powtarzający się komentarz: "default w iOS 27 nie wygląda jak iOS 26 nawet na maxymalnej przezroczystości" — Apple obniżyło sufit, nie tylko default.

## Implikacje dla użytkownika i rynku

- **Accessibility wins** — osoby z dysfunkcjami wzroku po raz pierwszy dostają graduable kontrolę, a nie binarny przełącznik schowany w "Accessibility".
- **Customization Apple-style** — firma rzadko daje takie "themowanie", przybliżając się do Androida (Material You z kontrolą kontrastu).
- **Sygnał dla industry** — Google, Samsung i Xiaomi prawdopodobnie poszerzą własne suwaki przezroczystości UI w odpowiedzi.
- **Mniej "WOW" w marketingu** — Apple osłabia własną demo-friendly estetykę dla codziennej użyteczności.
- **Pytanie strategiczne** — czy następny radical redesign Apple będzie miał "slider" od pierwszego dnia? To może stać się normą.

---

## Potencjalne kąty narracyjne do shorta

- **"Apple właśnie przyznało, że spieprzyło design swojego flagowego systemu"** — drama + pierwsza klasa, viewer wie od razu o co chodzi.
- **"Rok i jeden dzień — tyle wytrzymał najnowszy design Apple"** — konkretna liczba, zegarmistrzowska precyzja chronologii.
- **"Pierwszy raz w historii Apple — możesz wyłączyć ich design jednym suwakiem"** — paradoks + scale (pierwszy raz).
- **"Butterfly keyboard cofnęli po 4 latach. Liquid Glass — po jednym"** — porównanie historyczne, konkretne liczby.
- **"Apple ukrył suwak w Settings > Appearance, a NIE w Accessibility — i to jest cała różnica"** — counterintuitive, ujawnia drugie dno decyzji.
- **"Suwak ma stan 'fully tinted'. To znaczy: Apple sam wbudował opcję wyłączenia swojego flagowego efektu"** — drama poprzez konkret techniczny.
- **"9 miesięcy ludzie krzyczeli, że ikony wyglądają krzywo. Apple wreszcie usunęło tę iluzję optyczną"** — konkretny czas + konkretny problem.

---

## Źródła

- [Apple Announces Liquid Glass Improvements and Transparency Slider — MacRumors](https://www.macrumors.com/2026/06/08/apple-announces-liquid-glass-improvements/)
- [All the Liquid Glass Changes in macOS Golden Gate — MacRumors](https://www.macrumors.com/2026/06/09/macos-golden-gate-liquid-glass/)
- [iOS 27 is here with better Liquid Glass and more responsiveness — AppleInsider](https://appleinsider.com/articles/26/06/08/ios-27-gets-better-liquid-glass-and-more-responsiveness)
- [Apple Announces iOS 27 for iPhone With New Liquid Glass Slider — Gizmodo](https://gizmodo.com/apple-announces-ios-27-for-iphone-with-new-liquid-glass-slider-2000768712)
- [Apple finally brings the slider for Liquid Glass and many other changes — Neowin](https://www.neowin.net/news/apple-finally-brings-the-slider-for-liquid-glass-and-many-other-changes/)
- [iOS 27 Lets You Turn Down Liquid Glass — Apple Blinks — urdesignmag](https://www.urdesignmag.com/ios-27-liquid-glass-slider-apple-design-wwdc26/)
- [Apple Liquid Glass iOS 27: WWDC 2026 Brings Refinements Developers Must Adopt Today — TechTimes](https://www.techtimes.com/articles/317975/20260608/apple-liquid-glass-ios-27-wwdc-2026-brings-refinements-developers-must-adopt-today.htm)
- [How to adjust Liquid Glass transparency in iOS 27 — Digit](https://www.digit.in/how-to/mobile-phones/how-to-adjust-liquid-glass-transparency-in-ios-27.html)
- [Not just Liquid Glass: 6 times Apple backtracked on a major design decision — Macworld](https://www.macworld.com/article/2950199/not-just-liquid-glass-6-times-apple-backtracked-on-a-major-design-decision.html)
- [Oh, Thank God: iOS 27 Fixes the Liquid Glass Optical Illusion That Broke My Brain — Gizmodo](https://gizmodo.com/oh-thank-god-ios-27-fixes-the-liquid-glass-optical-illusion-that-broke-my-brain-2000769666)
- [5 biggest Liquid Glass changes in iOS 27 and macOS 27 — Cult of Mac](https://www.cultofmac.com/news/liquid-glass-changes-ios-27-macos-27)
- [Apple Is About to Fix Your iPhone's Most Frustrating New Feature — Gear Patrol](https://www.gearpatrol.com/tech/wwdc-ios-27-liquid-glass-slider/)
