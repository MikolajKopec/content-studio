# Apple zamknął furtkę — iOS 26.5 nie pozwala już cofnąć się do starszej wersji

**Data:** 2026-05-21
**Temat:** Około 18 maja 2026 Apple **przestało podpisywać iOS 26.4.2** — czyli niecały tydzień po publikacji iOS 26.5 (11 maja) użytkownicy, którzy zainstalowali nową wersję, zostali na niej **na stałe**, bez możliwości downgrade'u.

---

## Kluczowe fakty i liczby

- iOS 26.5 wypuszczono w **poniedziałek 11 maja 2026 o 10:06 PDT** (czyli ok. 19:06 w PL).
- Apple przestało podpisywać iOS 26.4.2 ok. **18 maja 2026** — czyli zaledwie **~7 dni** po release iOS 26.5 (zauważył to Aaron Zollo, opisał 9to5Mac 20 maja). To krócej niż typowe okno **~2 tygodni** stosowane przy poprzednich aktualizacjach.
- Update łata **68 luk bezpieczeństwa (CVE)** wg dokumentu Apple Support HT127110 — w komunikacji marketingowej Apple używa "**ponad 50**".
- W kernelu załatano **6 podatności**, w WebKicie — **15+**, plus krytyczne dziury w mDNSResponder, APFS i App Intents.
- Wsparcie: **iPhone 11 i nowsze**, iPad Pro 12.9" (3. gen) i nowsze, iPad Pro 11" (1. gen) i nowsze, iPad Air (3. gen) i nowsze, iPad (8. gen) i nowsze, iPad mini (5. gen) i nowsze.
- Apple jest **mniej niż 3 tygodnie** przed WWDC 2026 — konferencja startuje **8 czerwca 2026** (do 12 czerwca), keynote w poniedziałek o **10:00 PDT**.
- Równolegle wydano łatki bezpieczeństwa dla starszych urządzeń: **iOS 15.8.8, iOS 16.7.16, iOS 18.7.9** oraz iPadOS 17.7.11.

---

## Co znaczy "Apple przestało podpisywać"

Każda instalacja lub przywrócenie iOS wymaga, by serwery Apple aktywnie **podpisały (sign) firmware** dla danego urządzenia. Bez ważnego podpisu — iPhone po prostu odrzuci próbę flashowania starszej wersji, nawet jeśli plik IPSW masz lokalnie na dysku. To mechanizm SHSH blobs i App Tatsu Server.

W praktyce: jeśli **zaktualizowałeś się do iOS 26.5 i coś ci nie pasuje** (np. bateria krócej trzyma, dziwne bugi, niekompatybilne aplikacje), do 17–18 maja mogłeś jeszcze wrócić na iOS 26.4.2 przez iTunes / Finder + DFU. Od 18 maja — **już nie da się**. Jedyna ścieżka teraz to **iOS 26.5 albo nic**.

Apple robi to z czterech powodów, w skrócie:
1. **Bezpieczeństwo** — starsze wersje mają niezałatane CVE; każdy iPhone na 26.4.2 to potencjalna ofiara dla CVE-2026-43668 (kernel memory corruption).
2. **Spójność ekosystemu** — łatwiej supportować jedną wersję niż dwie.
3. **Wymuszanie adopcji** funkcji marketingowych (tu: RCS E2EE, Pride wallpaper, Maps Suggested Places).
4. **Anti-jailbreak** — stare wersje to ścieżka dla exploitów typu checkm8 / palera1n.

Charakterystyczne dla 26.5: okno downgrade było **krótsze niż zwykle** (7 dni vs typowe 14). 9to5Mac sugeruje, że to świadoma decyzja związana z liczbą CVE — Apple nie chce zostawiać szerokiego wektora ataku.

---

## Co dostajemy w iOS 26.5 (RCS E2EE, wallpapers, 50+ CVE)

**1. End-to-end encrypted RCS (beta)** — pierwsza poważna interoperabilność szyfrowania między iPhone'em a Androidem. Apple i Google wspólnie zaimplementowały **Messaging Layer Security (MLS)** jako część **RCS Universal Profile 3.0** opracowanego z GSM Association. Status: **beta** mimo finalnej wersji iOS.

**2. Pride Luminance wallpaper** — dynamiczna tapeta "załamująca spektrum kolorów", dopasowana do tarczy Apple Watch Pride Luminance i paska zegarka. Klasyczny majowo-czerwcowy ruch Apple.

**3. Maps Suggested Places** — nowa sekcja w aplikacji Mapy z rekomendacjami "trending nearby" + na podstawie ostatnich wyszukiwań. Jak otwarcie zauważa MacRumors — przygotowanie pod **reklamy w Mapach, które ruszą latem 2026**.

**4. 68 CVE** załatanych — szczegóły niżej.

**5. Mniejsze poprawki** — drobne bugfixy w Shortcuts, Spotlight, screenshots (ostatnia podatność ograniczona do iPhone 15+).

---

## Top CVE patched (najgroźniejsze)

**Kernel (6 dziur):**
- **CVE-2026-28951** — błąd autoryzacji pozwalający aplikacji uzyskać **uprawnienia root**. Klasyczny privilege escalation.
- **CVE-2026-28972** — out-of-bounds write, modyfikacja pamięci kernela.
- **CVE-2026-28897** — buffer overflow, nieautoryzowany dostęp do systemu.
- **CVE-2026-28969** — use-after-free powodujące terminację systemu.

**WebKit (15+ dziur):**
- **CVE-2026-28942, CVE-2026-28947** — use-after-free w przetwarzaniu treści Safari.
- **CVE-2026-43660, CVE-2026-28907** — bypassy Content Security Policy. Bardzo groźne, bo CSP to ostatnia linia obrony przed XSS na zaufanych stronach.
- Liczne information disclosure i crash vulnerabilities.

**mDNSResponder:**
- **CVE-2026-43668** — **remote use-after-free** korupujące pamięć kernela. Potencjalnie wykonalny zdalnie po sieci Wi-Fi. Najgroźniejsza pojedyncza dziura w tym update.
- CVE-2026-28985, CVE-2026-43666 — lokalne DoS.

**APFS:**
- CVE-2026-28959 — buffer overflow, unexpected termination filesystemu.

**App Intents:**
- **CVE-2026-28995** — logic flaw umożliwiający **sandbox escape**. Aplikacja może wyjść poza swoją piaskownicę. Krytyczne dla bezpieczeństwa modelu uprawnień iOS.

Apple **nie zgłasza żadnego z tych CVE jako aktywnie wykorzystywanego in-the-wild** — to "tylko" patche prewencyjne, ale wektor zdalny w mDNSResponder + sandbox escape w App Intents to dwa scenariusze, dla których warto się zaktualizować już teraz.

---

## RCS E2EE — pierwszy taki przypadek iPhone <-> Android?

Tak, **technicznie tak**. To pierwsze masowe wdrożenie end-to-end szyfrowanej komunikacji cross-platform na poziomie standardu telekomunikacyjnego (a nie aplikacji jak Signal czy WhatsApp).

**Jak działa:**
- Protokół: **Messaging Layer Security (MLS)** — IETF RFC 9420.
- Standard: **RCS Universal Profile 3.0** (GSMA).
- Szyfrowanie **domyślnie włączone**; toggle w Ustawienia → Wiadomości.
- Wskaźnik wizualny: mały **symbol kłódki** przy konwersacji i dymkach.

**Wymagania po obu stronach:**
- iPhone z **iOS 26.5+**.
- Android z **najnowszą wersją Google Messages**.
- **Operator wspierający RCS UP 3.0** u obu nadawców. W USA dostępne natychmiast u **AT&T, T-Mobile, Verizon**. W Europie — wolniejszy rollout (Vodafone UK np. wciąż nie wspiera RCS na iPhone).

**Co to znaczy dla Polski:**
- Status RCS w PL u głównych operatorów (Orange, Play, Plus, T-Mobile PL) jest **niejednolity** — RCS jako standard działa, ale wsparcie dla **UP 3.0 z MLS** wymaga aktualizacji core network. W praktyce: pierwsze E2EE konwersacje iPhone↔Android w PL prawdopodobnie pojawią się przez kilka miesięcy, nie od pierwszego dnia.
- Alternatywa: WhatsApp/Signal nadal są **prostszą drogą** do E2EE niezależnie od operatora.

**Co to zmienia narracyjnie:**
- Apple od lat broniło się "blue bubbles vs green bubbles" i mówiło że RCS jest niebezpieczny. Teraz Apple **pierwszy** wdrożył E2EE w RCS — Google jeszcze rok temu miał już swoje proprietarne E2EE w Messages, ale tylko Android↔Android.

---

## Polska — dostępność, wsparcie urządzeń

- iOS 26.5 jest **dostępny w Polsce od 11 maja** przez OTA (Ustawienia → Ogólne → Aktualizacja oprogramowania).
- **Wsparcie urządzeń**: iPhone 11 i nowsze. **iPhone XR / XS / XS Max — odpadły** już przy iOS 26 (jesienią 2025); użytkownicy tych modeli powinni instalować iOS 18.7.9 (security-only).
- W Polsce na rynku wtórnym **iPhone XR/XS to wciąż popularne modele** w przedziale 700–1100 zł — ich właściciele muszą wiedzieć, że są **na bocznym torze** wsparcia (tylko security patches, brak nowych funkcji).
- RCS E2EE w Polsce: **wymaga sprawdzenia z operatorem** — nie zakładaj, że działa automatycznie.

---

## WWDC 2026 i co dalej (iOS 27)

- **WWDC 2026:** 8–12 czerwca 2026 (poniedziałek–piątek).
- **Keynote:** 8 czerwca, **10:00 PDT** (19:00 czasu polskiego).
- Format: hybrydowy — online dla wszystkich, in-person w Apple Park dla wybranych deweloperów (lottery do 30 marca).

**Co zostanie pokazane wg krążących plotek:**
- **iOS 27** — refinementy redesignu **Liquid Glass** z poprzedniego roku.
- **Siri 2.0** — głęboka integracja z **Gemini AI** (Google). Dedykowana aplikacja Siri z funkcją "Extensions" działającą cross-platform (iOS / iPadOS / macOS 27).
- **5G satellite connectivity** — prawdopodobnie ograniczone do iPhone 18 Pro / Pro Max / Ultra (premiera jesienią).
- macOS 27, iPadOS 27, watchOS 27, visionOS 27, tvOS 27 — wszystkie z wersji 27 dla spójności.

**Co to znaczy dla iOS 26.5:**
- Jest to **prawdopodobnie ostatni feature update przed iOS 27**. Apple może wydać jeszcze iOS 26.5.1 / 26.6 jako security patch przed czerwcem, ale nowych funkcji już raczej nie zobaczymy.
- WWDC będzie pewnie dużym wydarzeniem dla AI Siri — to jest **kontrowersyjne**, bo "Siri powered by Gemini" oznacza, że Apple Intelligence z 2024 częściowo zawiódł i Apple musi pożyczyć technologię od konkurenta.

---

## Potencjalne kąty narracyjne do shorta

1. **"Apple wymusza upgrade — nie wrócisz już do 26.4.2"** — klasyczny consumer anger angle, działa co kilka miesięcy.
2. **"68 dziur bezpieczeństwa w jednej aktualizacji — czy twój iPhone jest bezpieczny?"** — security FOMO, bardzo skuteczne.
3. **"Pierwsze E2EE między iPhonem a Androidem — koniec niebieskich i zielonych dymków?"** — symboliczny moment, dobra okazja do explainera RCS.
4. **"Apple zamknął okno downgrade'u w 7 dni zamiast 14 — czemu tak szybko?"** — analityczny hook, dla bardziej techy widowni.
5. **"iOS 27 za 18 dni — co dostaniemy na WWDC?"** — anticipation hook, świetnie się klika przed czerwcem.
6. **"Pride Luminance wallpaper — Apple znowu pokazuje barwy"** — kulturalny/społeczny angle, ryzykowny ale viral.
7. **"Siri po Gemini — Apple przyznaje porażkę z Apple Intelligence?"** — kontrowersyjny hot take, dobry na długi short / Twitter thread.

---

## Źródła

1. [9to5Mac — iOS 26.5 won't let users downgrade to prior update any longer (20 maja 2026)](https://9to5mac.com/2026/05/20/ios-26-5-wont-let-users-downgrade-to-prior-update-any-longer/) — primary
2. [MacRumors — Apple Releases iOS 26.5 and iPadOS 26.5 With End-to-End Encrypted RCS, New Wallpaper, and Maps Updates (11 maja 2026)](https://www.macrumors.com/2026/05/11/apple-releases-ios-26-5/)
3. [Apple Support — About the security content of iOS 26.5 and iPadOS 26.5 (HT127110)](https://support.apple.com/en-us/127110)
4. [MacRumors — iPhone-Android RCS Conversations Are End-to-End Encrypted in iOS 26.5 (11 maja 2026)](https://www.macrumors.com/2026/05/11/ios-26-5-rcs-e2ee-launch/)
5. [9to5Mac — iOS 26.5 has fixes for 50+ security issues on iPhone, details here (11 maja 2026)](https://9to5mac.com/2026/05/11/ios-26-5-has-fixes-for-50-security-issues-on-iphone-details-here/)
6. [MacRumors — Apple's iOS 26.5 Update Patches More Than 50 Security Flaws](https://www.macrumors.com/2026/05/11/ios-26-5-security-fixes/)
7. [9to5Mac — Apple announces WWDC 2026 for June 8, iOS 27 set to be revealed (23 marca 2026)](https://9to5mac.com/2026/03/23/apple-announces-wwdc-2026-for-june-8-ios-27-set-to-be-revealed/)
8. [Help Net Security — iOS 26.5 is out, bringing encrypted RCS messaging to iPhone and Android users](https://www.helpnetsecurity.com/2026/05/11/apple-ios-26-5-rcs-end-to-end-encryption-iphone-android/)
