# 1. iOS 27 Extensions — Claude i Gemini mogą zastąpić Siri na iPhone

**Data:** 2026-06-09
**Temat:** Apple na WWDC 2026 otworzył Siri, Writing Tools i Image Playground na zewnętrznych dostawców AI — użytkownik wybiera Claude, ChatGPT, Gemini lub Grok jako domyślny mózg Apple Intelligence.

---

## Kluczowe fakty i liczby

- Keynote WWDC 2026 odbył się **8 czerwca 2026** w Apple Park w Cupertino — Apple ogłosił framework **Siri Extensions** (a właściwie szerzej: AI Extensions), który wpina zewnętrzne modele w Siri, Writing Tools, Image Playground i pozostałe funkcje Apple Intelligence.
- Lista partnerów do wyboru w Ustawieniach: **Anthropic Claude, OpenAI ChatGPT, Google Gemini, xAI Grok** — to **4 firmy**, które dotąd musiały konkurować poza ekosystemem Apple.
- Zasięg dystrybucji to **ponad 2 mld aktywnych urządzeń Apple** na świecie (Digital Applied podaje 2 mld, AI Weekly mówi o "ponad 1 mld użytkownikach" — różnica zależy od liczenia urządzeń vs. unikalnych użytkowników).
- **Dev beta iOS 27, iPadOS 27 i macOS 27 dostępna od razu po keynote** (8 czerwca). Public beta w **lipcu 2026**, stabilny release jesienią razem z iPhone 18.
- Apple jednocześnie rebudował samą Siri na customowym modelu **Google Gemini z ok. 1,2 biliona parametrów** — kontrakt z Google to według Bloomberga i TechRadara **ok. 1 mld USD rocznie**.
- Architektura prywatności jest **trójwarstwowa**: prymitywne zapytania zostają on-device, średnie idą do **Private Cloud Compute**, ciężki reasoning trafia na Google Cloud — z zastrzeżeniem, że Google **nie może trenować przyszłych modeli na danych użytkowników Apple**, a zapytania są przetwarzane bezstanowo.
- Tim Cook na keynote przyznał wprost, że Apple Intelligence "nie dostarczył jeszcze wszystkiego, co obiecaliśmy" — w tle ciąży **ugoda na 250 mln USD** za opóźnione funkcje Siri z 2024 roku.
- EU dostaje Siri AI tylko na Macu, Apple Watch i Vision Pro — **na iPhone i iPadzie w Unii Europejskiej Siri AI startuje później** (regulacje DMA / Apple Intelligence Act compliance).
- Każdy zewnętrzny model dostanie **własny głos**, żeby użytkownik słyszał, że odpowiada Claude albo Gemini, a nie Siri.

## Jak to działa technicznie

- Extensions to **kontenerowy, permission-gated model** — przypomina extension API z iOS 8+. Aplikacja AI musi zaimplementować nowy Extensions API, opublikować się w App Store, a użytkownik aktywuje ją w **Settings → Apple Intelligence & Siri**.
- Siri rutuje zapytanie do wybranego providera, gdy: (a) użytkownik świadomie tego zażąda, lub (b) zadanie wychodzi poza natywne capabilities Siri.
- **Dane on-device zostają on-device** — Extensions używane są tylko do zapytań wychodzących na zewnątrz. Bez explicit permission Extension nie dotyka kontaktów, wiadomości, zdjęć ani Health.
- Po przekierowaniu zapytania obowiązuje polityka prywatności wybranego providera — Apple wyświetla atrybucję, kto odpowiada.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| 5 maja 2026 | Bloomberg / MacRumors: pierwsze przecieki, że Apple otworzy Apple Intelligence |
| **8 czerwca 2026** | Keynote WWDC 2026, ogłoszenie Extensions, dev beta dostępna do pobrania |
| Lipiec 2026 | Public beta iOS 27 / iPadOS 27 / macOS 27 |
| Jesień 2026 | Stabilny release iOS 27 razem z iPhone 18 |
| Później 2026 | Siri AI w wersji beta, początkowo po angielsku |

## Implikacje dla rynku

- **Anthropic, OpenAI, Google i xAI dostają instant dystrybucję na 2 mld urządzeń** — bez konieczności budowania własnych systemów operacyjnych. To największe single-shot rozdanie zasięgu w historii AI consumer.
- Apple porzuca model "jednego partnera" (do tej pory tylko ChatGPT od iOS 26) — przechodzi w **platformę-bramkarza**. Sam nie wygrywa wyścigu modeli, ale kasuje rentę z każdego, kto chce się wpiąć.
- Dla użytkownika: można **routować różne zapytania do różnych modeli** (Gemini do researchu, Claude do kodu, ChatGPT do tekstów, Grok do "dla beki"). To pierwszy mainstreamowy interfejs, gdzie multi-model jest defaultem, a nie hobby power-userów.
- Apple wciąż płaci Google **1 mld USD/rok** za customowy Gemini do backendu Siri — czyli **Apple płaci konkurentowi za to, żeby Siri w ogóle działała**, a jednocześnie wpuszcza tego samego konkurenta jako wybieralny extension. Paradoks.

---

## Potencjalne kąty narracyjne do shorta

- **"Apple płaci Google miliard dolarów rocznie, żeby Siri działała."** (paradoks + konkretna liczba, zrozumiałe dla każdego)
- **"Od dziś Claude i Gemini mogą zastąpić Siri na 2 miliardach iPhone'ów."** (skala + nazwy znane widzowi)
- **"Tim Cook na scenie WWDC: 'nie dostarczyliśmy tego, co obiecaliśmy'."** (drama, cytat, pokora giganta)
- **"Apple oddaje swój największy produkt konkurencji — i sam na tym zarobi."** (counterintuitive, kąt biznesowy)
- **"iPhone w UE dostanie nową Siri później — winne są regulacje."** (PL/EU bonus, konflikt regulacyjny)
- **"Apple zapłacił 250 milionów dolarów ugody za to, że Siri nie umiała tego, co obiecała w 2024."** (konkretna liczba, drama)
- **"Możesz wybrać Grok jako głos Siri — i będzie miał inny głos niż domyślna asystentka Apple."** (absurdalne + konkretne)

---

## Źródła

- [Apple Newsroom — Apple unveils next generation of Apple Intelligence, Siri AI, and more (8 czerwca 2026)](https://www.apple.com/newsroom/2026/06/apple-unveils-next-generation-of-apple-intelligence-siri-ai-and-more/)
- [MacRumors — iOS 27 Will Let You Pick Claude or Gemini Instead of ChatGPT for Apple Intelligence](https://www.macrumors.com/2026/05/05/ios-27-third-party-chatbots-apple-intelligence/)
- [MacRumors WWDC 2026 Guide — What to Expect from WWDC 2026](https://www.macrumors.com/guide/wwdc-2026-what-to-expect/)
- [The Next Web — Apple finally ships its AI do-over: Siri AI, a standalone app, and a three-tier privacy stack](https://thenextweb.com/news/apple-wwdc-2026-siri-ai-gemini-ios-27)
- [AI Weekly — Apple iOS 27 Extensions Opens Third-Party AI Marketplace at WWDC 2026](https://aiweekly.co/node/2611)
- [Digital Applied — Apple Siri iOS 27 Extensions: Claude, Gemini & ChatGPT Guide](https://www.digitalapplied.com/blog/apple-siri-ios-27-extensions-claude-gemini-chatgpt-guide)
- [Engadget — Everything announced at Apple's WWDC 2026 keynote](https://www.engadget.com/2189698/everything-announced-at-apples-wwdc-2026-keynote/)
- [TechRadar — Apple WWDC 2026 live updates: Siri AI, iOS 27, macOS Golden Gate](https://www.techradar.com/news/live/apple-wwdc-2026-live)
- [Bloomberg — iOS 27 Features: Apple Plans to Let Users Swap Models Across Apple Intelligence](https://www.bloomberg.com/news/articles/2026-05-05/ios-27-features-apple-plans-to-let-users-swap-models-across-apple-intelligence)
