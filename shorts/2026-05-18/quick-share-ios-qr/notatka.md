# Quick Share na Androidzie wreszcie wysyła pliki na iPhone'a

**Data:** 2026-05-18
**Temat:** Google odpalił globalny rollout wymiany plików Android ↔ iPhone przez QR — iPhone skanuje kod aparatem, plik leci przez chmurę Google, bez dodatkowej apki na iOS.

---

## Kluczowe fakty i liczby

- Start rolloutu: **12 maja 2026**, ogłoszony przez Google na blogu Android tuż przed Google I/O 2026.
- Dystrybucja przez **Google Play Services 26.18+** — nie wymaga aktualizacji systemu Android, działa „w tle".
- Limit transferu: **10 GB na plik** i **10 GB dziennie** na odbiorcę iPhone/iPad/macOS.
- Pliki dostępne do pobrania przez **24 godziny**, potem znikają z serwerów Google.
- Pełna dostępność „w ciągu **następnego miesiąca**" — Google NIE mówi oficjalnie „do końca czerwca", to estymacja mediów, nie deklaracja firmy.
- Wymagania po stronie iPhone'a: **zero** — żadnej apki, żadnego konta Google, tylko wbudowany aparat do skanu QR.
- Quick Share ↔ AirDrop **direct (bez chmury)** działa od **listopada 2025** wyłącznie na rodzinie Pixel 10; Samsung dołączył w marcu 2026 z serią Galaxy S26.
- Pierwsza fala QR-flow: **Pixel + Samsung Galaxy** (S/Note, Tab, Fold); Honor, OnePlus, OPPO, Vivo, Xiaomi w kolejnych miesiącach 2026.
- Quick Share to fuzja starego Samsung Quick Share + Google Nearby Share (sklejone w styczniu **2024**). Pierwotny Quick Share Samsunga wystartował z Galaxy S20 w lutym **2020**.

---

## Jak to działa pod maską

- **Wariant QR (nowy, dla wszystkich Androidów):**
  - Android generuje QR w menu „Udostępnij" → opcja „Use QR code".
  - Plik jest **uploadowany na serwery Google** (NIE do twojego Google Drive — to osobna, tymczasowa infrastruktura).
  - iPhone skanuje QR aparatem → otwiera bezpieczną stronę web Google → pobiera plik przez link.
  - Google deklaruje **end-to-end encryption** plików podczas uploadu i downloadu, oraz że link wygasa po 24h i nie da się go forwardować.
- **Wariant direct (Quick Share ↔ AirDrop, peer-to-peer, bez chmury):**
  - Dostępny tylko na Pixel 10 + Galaxy S26; reszta marek dochodzi w 2026.
  - Wymaga, by odbiorca iPhone'a miał AirDrop ustawiony na „Everyone for 10 minutes".
  - Transfer leci po Bluetooth (discovery) + Wi-Fi Direct (dane), bez serwera.

## Porównanie z konkurencją

| Cecha | AirDrop (Apple↔Apple) | Quick Share QR (Android→iPhone) | Quick Share native (Android↔Android) |
|---|---|---|---|
| Wymaga internetu? | Nie | **Tak** (upload do chmury Google) | Nie |
| Zasięg | ~10 m (Bluetooth + Wi-Fi Direct) | Globalny (chmura) | ~10 m |
| Prędkość 1 GB | <1 min (15–30 Mbps) | Zależna od łącza obu stron | Wi-Fi Direct, porównywalna z AirDrop |
| Limit pliku | Brak twardego | **10 GB** | Brak twardego |
| Apka na iPhone? | Wbudowane | **Nie** (sam aparat) | n/d |
| Encryption | E2E peer-to-peer | E2E + cloud at rest 24h | E2E peer-to-peer |

## Luka w prywatności, o której się nie mówi głośno

- Każdy, kto **zobaczy lub sfotografuje QR** (np. przez ramię w kawiarni), dostaje ten sam dostęp co zamierzony odbiorca.
- Brak dodatkowego PIN-u/hasła po stronie odbiorcy — to wygoda kosztem auth.
- Pliki **lądują na serwerach Google** mimo E2E — to fundamentalna różnica względem AirDropa, który nigdy nie wypuszcza pliku poza dwa urządzenia.
- Link jest one-shot dla danego QR, ale Google nie ujawnił czy nadawca może go cofnąć przed upływem 24h.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| Luty 2020 | Samsung uruchamia Quick Share na Galaxy S20 |
| Styczeń 2024 | Google scala Nearby Share + Quick Share, nazwa „Quick Share" dla całego Androida |
| Listopad 2025 | AirDrop ↔ Quick Share direct na Pixel 10 (wymóg DMA UE) |
| Sierpień 2025 | 9to5Google odkrywa kod sugerujący account-based sharing z iPhonem |
| Marzec 2026 | Samsung Galaxy S26 dostaje natywne AirDrop-compat |
| **11 maja 2026** | Google publikuje release notes Play Services 26.18 |
| **12 maja 2026** | Oficjalny start rolloutu QR-flow na Androida |
| Czerwiec 2026 (est.) | „Pełna dostępność" QR-flow wg estymacji mediów |
| Reszta 2026 | Honor, OnePlus, OPPO, Vivo, Xiaomi dostają direct AirDrop-compat |

## Implikacje dla użytkownika i polskiego rynku

- **Samsung dominuje w PL** — wg Statista i Statcounter Samsung + Xiaomi to top 2 sprzedaży w Polsce. Pixel jest niszą. Czyli pierwsza fala (Samsung) trafia w największą bazę Polaków.
- Polski rynek **~30 mln smartfonów**, w przeważającej większości Android — temat ma żelazną grupę docelową: każdy „Android-iPhone w jednej rodzinie/firmie" zna ból przesłania filmiku z wakacji.
- Realne use-case'y PL: rodzinne grupy (rodzice na iPhonie, dzieci na Samsungu), biura (laptop firmowy Mac, telefon prywatny Samsung), dziennikarze terenowi.
- To **pierwsza dwukierunkowa alternatywa dla AirDropa** na poziomie systemowym, która nie wymaga instalacji nic po stronie iPhone'a — i tu Google bije Snapdrop'y i WeTransfery wygodą.
- WhatsApp ma dostać Quick Share-integrację w niedalekiej przyszłości — to potencjalnie killshot dla całej kategorii „filetransfer.io".

---

## Potencjalne kąty narracyjne do shorta

1. **„Apple wreszcie przegrało AirDropa — i to przez QR-kod na ekranie Samsunga"** (dramat + konkret).
2. **„Wysyłasz 10 GB filmu na iPhone'a teścia bez kabla, bez apki, bez Wi-Fi — wystarczy zdjęcie ekranu telefonu"** (konkretne liczby + scena).
3. **„Każdy, kto zobaczy ten QR-kod, dostaje twój plik. Nawet ten gość za tobą w kawiarni"** (kontrowersja prywatności).
4. **„Pixel 10 robi to bez chmury. Twój Samsung — przez serwery Google. Czujesz różnicę?"** (paradoks dwóch wariantów tego samego feature'u).
5. **„Google ukrył jedną z największych zmian Androida w aktualizacji, której nawet nie zobaczysz"** (Play Services 26.18 leci w tle, użytkownik nic nie klika).
6. **„30 milionów polskich Androidów wreszcie umie rozmawiać z iPhonem. Apple nie odzywa się od tygodnia"** (lokalny kąt + cisza Apple'a).
7. **„Plik znika z chmury Google po 24 godzinach. To nie wada — to feature, którego AirDrop nigdy nie miał"** (counter-spin na pozorną wadę).

---

## Źródła

- [Android makes it easier to share, switch and connect securely — blog.google](https://blog.google/products-and-platforms/platforms/android/new-android-updates/)
- [Google starts rolling out QR code-based Quick Share transfers between Android and iPhone — Android Authority](https://www.androidauthority.com/android-quick-share-qr-code-sharing-with-iphone-3667293/)
- [Quick Share QR Code for iPhone Explained: Features, Limits, and Privacy — Gadget Hacks](https://android.gadgethacks.com/news/quick-share-qr-code-for-iphone-explained-features-limits-and-privacy/)
- [Google Makes It Easier to Share Files Between Android and iPhone — MacRumors](https://www.macrumors.com/2026/05/12/google-quick-share-android/)
- [Google looks to be adding account-based Quick Share support for iPhone — 9to5Google](https://9to5google.com/2025/08/25/google-quick-share-iphone-hint/)
- [Here's our first look at Quick Share's Android-to-iPhone sharing capabilities — Android Police](https://www.androidpolice.com/google-android-quick-share-iphone-file-sharing-leak/)
- [Quick Share is getting a useful upgrade for sharing files with iPhones — Android Central](https://www.androidcentral.com/apps-software/android-os/quick-share-is-getting-a-useful-upgrade-for-sharing-files-with-iphones)
- [Android Quick Share Now Supports iOS via QR Code Sharing — Jetstream](https://jetstream.blog/en/android-quick-share-qr-code-sharing-ios-support/)
- [Your Android phone can now share files with any iPhone using a Quick Share QR code — Digital Trends](https://www.digitaltrends.com/phones/your-android-phone-can-now-share-files-with-any-iphone-using-a-quick-share-qr-code/)
- [Quick Share — Wikipedia](https://en.wikipedia.org/wiki/Quick_Share)
- [Poland: smartphone market share by vendor — Statista](https://www.statista.com/statistics/1142481/poland-smartphone-market-share-by-vendor/)
