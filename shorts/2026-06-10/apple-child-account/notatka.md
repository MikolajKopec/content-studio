# Apple wprowadza "Child Account" z Ask to Browse — rodzic zatwierdza strony przez iMessage

**Data:** 2026-06-10
**Temat:** Apple przesuwa kontrolę rodzicielską z poziomu pojedynczych aplikacji na poziom systemu — jedno konto dziecka rządzi przeglądarką, kategoriami apps i kontaktami.

---

## Kluczowe fakty i liczby

- **Child Account** jest **obowiązkowy dla dzieci poniżej 13. roku życia** i **dostępny do 18 lat** — ustawiany jeden raz przez rodzica przy konfiguracji nowego urządzenia, restrykcje synchronizują się między iPhone, iPad i Mac.
- Funkcje pojawią się **jesienią 2026** wraz z **iOS 27, iPadOS 27, macOS 27** — Apple użyło tej nazwy zamiast skoku do "iOS 28", spójnie z resztą strategii numeracji.
- **Ask to Browse** wymaga zgody rodzica **na każdą nową stronę** w Safari (per‑witryna, nie per‑pojedyncza podstrona) — dziecko klika "poproś", rodzic dostaje powiadomienie w **iMessage** i zatwierdza tam jednym tapnięciem.
- **Time Allowance** dzieli czas ekranowy na **3 kategorie** zamiast pojedynczych aplikacji: **Entertainment, Games, Social Media** — z domyślnymi rekomendacjami opartymi o wytyczne **American Academy of Pediatrics** dostosowanymi do wieku.
- Apple wypuszcza **3 nowe Safety APIs** dla deweloperów: **Declared Age Range API** (aplikacja dostaje przedział wieku bez daty urodzenia), **PermissionKit** (nowe kontakty w apce idą do akceptacji rodzica), **SensitiveContentAnalysis** (lokalne ML do filtrowania nagości/przemocy).
- **Ask to Buy** (zatwierdzanie zakupów w App Store) **domyślnie włączone dla dzieci poniżej 13** — wcześniej trzeba było aktywować ręcznie.
- Ogłoszenie wypadło **dokładnie tego samego dnia** (8 czerwca 2026), gdy **premier UK Keir Starmer dał Apple i Google 3 miesiące** na wdrożenie systemowych blokad nagich zdjęć w aplikacjach trzecich.
- W USA **KOSA (Kids Online Safety Act)** przeszedł **5 marca 2026** komisję House Energy and Commerce stosunkiem **28‑24** — Apple oficjalnie poparło ustawę przed jej finalizacją.

---

## Mechanika onboardingu — krok po kroku

1. **Setup Assistant** rozpoznaje, że nowe urządzenie jest konfigurowane dla dziecka — Apple "guides parents automatically".
2. Rodzic wybiera **wiek dziecka** (Apple sugeruje konkretne progi i odpowiada na nie automatycznym profilem zabezpieczeń).
3. **Recommended set of essential apps** — rodzic akceptuje kurowaną listę lub wybiera własną; aplikacje spoza listy wymagają osobnego zatwierdzenia.
4. System włącza domyślnie: filtry stron 18+, blokada zakupów (Ask to Buy), Communication Safety (rozmycie nagości i przemocy w Messages/FaceTime), Time Allowance z presetem wiekowym.
5. Dziecko **nie może wyłączyć** Child Account z własnego urządzenia — wymaga to Apple ID rodzica i hasła Family Sharing organizer.

## Ask to Browse — flow

- Dziecko wpisuje URL lub klika link w Safari na **nieprzejrzaną wcześniej witrynę**.
- Safari blokuje stronę i wyświetla przycisk **"Ask"**.
- Rodzic dostaje **request w aplikacji Messages** (ten sam pipeline co Ask to Buy) — pełny URL, miniaturkę, wybór **Approve / Decline**.
- Akceptacja działa na **konkretną domenę** (raz zatwierdzona witryna nie pyta ponownie); per‑page tylko gdy Safari uzna nową treść za potencjalnie wrażliwą.
- Action **synchronizuje się** między wszystkimi urządzeniami dziecka (raz zatwierdzone na iPhonie → działa na iPadzie).
- Działa **na poziomie OS**, więc obowiązuje też dla deep linków otwieranych z innych aplikacji w Safari View Controller.

## Time Allowance vs poprzedni Screen Time

| Element | Stary Screen Time (iOS 12–26) | Time Allowance (iOS 27) |
|---|---|---|
| Granulacja | Per aplikacja lub grupa wybrana ręcznie | **Kategorie systemowe** (Entertainment, Games, Social Media) |
| Domyślne wartości | Brak — rodzic ustawiał od zera | **Presety wiekowe** od AAP |
| UI dla rodzica | Lista aplikacji w Ustawieniach | **Dashboard z średnim czasem** + most‑used apps + one‑tap actions |
| Rozszerzenie czasu | "Ignore for 15 min" / "Ignore for today" | **Quick extend / pause** z poziomu powiadomienia |
| Blokada przez kategorie | Niedostępna jako preset | "Gry tylko od 16:00 do 19:00 w dni szkolne" |

## Safety APIs — co dostają deweloperzy

- **Declared Age Range API** — aplikacja może zażądać przedziału (np. `under 13`, `13‑17`, `18+`) bez dostępu do dokładnej daty urodzenia; odpowiedź podpisana przez Apple, bez kolekcjonowania PII.
- **PermissionKit** — framework do "ask before contact" — gdy dziecko chce dodać znajomego w grze/komunikatorze, prośba idzie do rodzica przez systemowy pipeline, nie przez kanały samej apki.
- **SensitiveContentAnalysis** — lokalne ML (działa on‑device, nie na serwerach Apple) wykrywa **nagość i przemoc graficzną** w obrazach/wideo zanim trafią do UI dziecka. Rozszerzenie istniejącego frameworka z iOS 17.

Wymóg dla App Store: aplikacje z kategoriami "Kids" lub deklarujące target poniżej 18 lat **muszą** zintegrować przynajmniej Declared Age Range API — Apple zapowiada to jako warunek listingu w 2027.

## Porównanie z konkurencją

| Funkcja | Apple Child Account (2026) | Google Family Link | Microsoft Family Safety |
|---|---|---|---|
| Poziom kontroli | **OS‑level**, ekosystemowo | Per aplikacja Google + Play | Per Windows/Xbox + Edge |
| Approve stron WWW | Tak — Ask to Browse w Safari | Tak — SafeSearch + per‑site approval w Chrome (Android) | Tak — w Edge na Win/Xbox |
| Tryb "poproś rodzica" przez komunikator | **iMessage natywnie** | Email/notyfikacja Family Link | Notyfikacja Microsoft Family |
| Limity per kategoria | **Tak**, presety AAP | Tak (Android 14+) | Tak |
| API dla deweloperów | **Declared Age Range + PermissionKit** | Ograniczone (Play Console) | Brak ekwiwalentu |
| Age range bez ujawniania daty urodzenia | **Tak** (anonimowe) | Nie — pełna data w Google Account | Nie |

Wniosek: Apple gra atutem ekosystemu — kontrole działają na **wszystkich aplikacjach naraz** (system‑wide), bo siedzą w OS. Google i Microsoft mają porównywalne narzędzia, ale działają per‑produkt lub per‑platforma.

## Reakcja regulatorów

- **UK**: 8 czerwca 2026 (ten sam dzień co WWDC) Keir Starmer dał Apple i Google **3 miesiące** na wdrożenie systemowych blokad nagich zdjęć **w aplikacjach trzecich** (Snapchat, WhatsApp, Instagram). Kara: ustawa z grzywnami i odpowiedzialnością karną kadry. Krytycy Apple punktują: **Communication Safety działa tylko w iMessage/FaceTime**, nie w third‑party — Apple nie spełnia warunku UK.
- **USA / KOSA**: 119. Kongres, S.1748. Wymaga risk assessments, restrykcyjnych defaultów dla kont < 17 lat, ujawnienia działania algorytmów, narzędzi nadzoru dla rodziców. Apple poparło — Child Account jest częściowo odpowiedzią. COPPA 2.0 przeszło Senat jednogłośnie.
- **Polska**: rząd przyjął **2 czerwca 2026** projekt ustawy o ochronie małoletnich przed treściami pornograficznymi — strony 18+ mają obowiązek weryfikacji wieku, sugerowany mechanizm to **EUDI Wallet** (anonimowy TAK/NIE). Domeny bez weryfikacji idą do rejestru UKE i są **blokowane przez operatorów (Orange, Plus, T‑Mobile, Play)**. Termin: do końca 2026. Apple Child Account + Ask to Browse to dla polskich rodziców komplementarna warstwa po stronie urządzenia.
- **EU**: omawiane jako preview pod DSA risk assessment dla VLOPs — Apple stawia, że robi to "po dobroci" zanim Bruksela wymusi formalnie.

## Implikacje dla użytkownika

- **Rodzic w Polsce**: po jesieni 2026 może postawić iPhone'a dziecku, kliknąć "12 lat" i system od ręki ustawi rozsądne defaulty — bez przekopywania się przez 30 ekranów Screen Time.
- **Dziecko**: nie obejdzie blokady przez przeglądarkę zamiast YouTube'a — Ask to Browse łapie też strony WWW.
- **Deweloper polskiej apki dla dzieci**: musi zacząć integrować Declared Age Range API, jeśli celuje w App Store kategorię "Kids" — inaczej ryzyko deplatformingu w 2027.
- **Apka komunikatora (np. polski Czat)**: PermissionKit oznacza, że jeśli chce hostować dzieci, nowi kontakty muszą iść przez rodzica — albo flagują się jako "18+".

---

## Potencjalne kąty narracyjne do shorta

- "Twoje dziecko klika link, a TY dostajesz SMS z prośbą o zatwierdzenie" (konkretna mechanika Ask to Browse)
- "Apple wymusza zgodę rodzica na każdą nową stronę w internecie — wystarczy jeden przełącznik" (drama + skala)
- "Rząd UK dał Apple 3 miesiące na blokady, Apple odpowiedział tego samego dnia" (timing + presja regulacyjna)
- "Jedno konto, 3 systemy operacyjne, 13 lat granicy — tak Apple chce wyłączyć dzieci z internetu" (liczby + kontrowersja)
- "Polski rząd każe blokować porno, Apple każe pytać o każdą stronę — to się składa w jedną pułapkę" (lokalny hook PL + globalny kontekst)
- "Twórca apki dla dzieci dostaje wiek użytkownika bez znajomości daty urodzenia — to nowa zasada Apple" (paradoks privacy)
- "Time Allowance wymyśla za Ciebie, ile dziecko ma grać — bazując na zaleceniach pediatrów" (autorytet + automatyzacja)

---

## Źródła

- [Apple previews new child safety features — Apple Newsroom (8 czerwca 2026)](https://www.apple.com/newsroom/2026/06/apple-previews-new-child-safety-features/)
- [Apple Parental Controls: New WWDC 2026 Tools — Newegg Insider](https://www.newegg.com/insider/apple-parental-controls-at-wwdc-2026-the-new-child-account-tools-explained)
- [Apple WWDC26: New child safety features add Ask to Browse, Time Allowances — Fonearena](https://www.fonearena.com/blog/484607/apple-wwdc26-child-safety-features.html)
- [Apple puts parents back in control of kids' iPhone use — TechCrunch](https://techcrunch.com/2026/06/08/apple-puts-parents-back-in-control-of-kids-iphone-use/)
- [Apple previews its biggest parental controls update in years, weeks before UK and US regulatory deadlines — The Next Web](https://thenextweb.com/news/apple-child-safety-parental-controls-ios-27-wwdc-2026)
- [Apple, WWDC, and the Child Safety Gap the Government Spotted — CyberSafetyGuy](https://www.cybersafetyguy.com/p/apple-wwdc-2026-child-safety-nude-image-blocking-uk-government)
- [Apple Unveils Major Parental Control Upgrades at WWDC 2026 — Appleosophy](https://appleosophy.com/2026/06/08/apple-unveils-major-parental-control-upgrades-at-wwdc-2026/)
- [Microsoft Family Safety vs Google Family Link 2026 — Impulsec](https://impulsec.com/parental-control-software/microsoft-family-safety-vs-google-family-link-2/)
- [Koniec z dostępem dzieci do treści dla dorosłych — Infor.pl (nowa polska ustawa, czerwiec 2026)](https://www.infor.pl/prawo/nowosci-prawne/7597964,weryfikacja-wieku-w-internecie-2026-nowa-ustawa-chroni-maloletnich-przed-tresciami-dla-doroslych-jak-dziala-anonimowa-weryfikacja-koniec-z-dostepem-dzieci-do-tresci-dla-doroslych-weryfikacja-wieku-obowiazkowa-blokada-stron-bez-weryfikacji-eudi-wallet-do-konca-2026.html)
- [Małoletni będą chronieni przed dostępem do treści dla dorosłych — Ministerstwo Cyfryzacji (gov.pl)](https://www.gov.pl/web/cyfryzacja/maloletni-beda-chronieni-przez-dostepem-do-tresci-dla-doroslych)
- [Text — S.1748 (KOSA), 119th Congress — Congress.gov](https://www.congress.gov/bill/119th-congress/senate-bill/1748/text)
