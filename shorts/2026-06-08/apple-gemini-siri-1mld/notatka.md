# Apple płaci Google 1 mld USD rocznie — nowy Siri zasilany Gemini

**Data:** 2026-06-08
**Temat:** Apple oddaje silnik nowego Siri konkurentowi — customowy Gemini z **1,2 biliona parametrów** od Google za **1 mld USD rocznie**, premiera na keynote WWDC 8 czerwca 2026.

---

## Kluczowe fakty i liczby

- Apple licencjonuje **customowy model Gemini z 1,2 biliona parametrów** wytrenowany specjalnie pod Siri i Apple Intelligence. Model jest około **8x większy** niż największy chmurowy model, jaki Apple zbudowało we własnym zakresie (**150 mld parametrów**).
- Koszt umowy: **ok. 1 mld USD rocznie**, kontrakt wieloletni, łączna wartość szacowana nawet na **5 mld USD**. Bloomberg/Gurman pierwszy ujawnił liczbę.
- Wewnętrznie Apple nazywa model **"AFM v10"** (Apple Foundation Model v10) — celowo, żeby zminimalizować skojarzenie z Google. Apple nie planuje publicznie przyznawać, że Siri działa na Gemini.
- Model używa architektury **Mixture-of-Experts (MoE)** — aktywuje tylko podzbiór parametrów na zapytanie, dzięki czemu utrzymuje pojemność trylionowego systemu przy konkurencyjnej latencji.
- Apple rozważał wcześniej **Anthropic Claude** i **OpenAI GPT** — Claude był testowany wewnątrz Apple Park. Deal nie wypalił, bo Anthropic żądał **kilku miliardów dolarów rocznie**, a stawka miała się **podwajać co rok przez 3 lata**.
- Dla porównania: Google płaci Apple **ok. 20 mld USD rocznie** za bycie domyślną wyszukiwarką w Safari (2022). Teraz przepływ idzie w drugą stronę — **Apple płaci Google 1 mld USD** za AI.
- Inferencja Gemini odbywa się **na serwerach Apple (Private Cloud Compute)**, nie u Google. Wagi modelu działają w infrastrukturze Apple na chipach **Nvidia B200** w hardware-izolowanych enklawach.
- Kontrakt zakazuje Google używania zapytań użytkowników Apple do trenowania przyszłych wersji Gemini.
- Funkcje Apple Intelligence obiecane jeszcze w iOS 18 — **personal context, on-screen awareness, app actions** — wreszcie dostarczane w iOS 27.
- Premiera: keynote **8 czerwca 2026, 10:00 PDT**. Public beta iOS 27: **lipiec 2026**. Release: **wrzesień 2026** razem z iPhone 18.

## Architektura modelu i Private Cloud Compute

- **1,2 biliona parametrów** + Mixture-of-Experts = wysoka jakość summarization, planowania i rozumienia kontekstu, bez liniowego wzrostu kosztu zapytania.
- Zapytania, które przekroczą możliwości on-device model (3 mld parametrów lokalnie), idą do **Private Cloud Compute** — Apple Silicon servers z weryfikowalnym software-image w transparency log.
- Stateless, ephemeral compute — **żadne dane użytkownika nie są retencjonowane po obsłużeniu zapytania**. PII jest zdejmowane przed inferencją.
- Niezależni badacze mogą inspekcjonować software produkcyjny. Bounty program za podatności.
- Paper ACM z czerwca 2026 potwierdził kluczowe deklaracje prywatnościowe Apple.

## Co dostanie użytkownik

- **Standalone aplikacja Siri** — iOS 27, iPadOS 27, macOS 27. Wygląda jak ChatGPT / Claude.
- **Ciemny interfejs domyślnie**, akcenty kolorowe (pink, blue, purple, orange).
- Pole **"Ask Siri"** na dole, ikona mikrofonu (tryb głosowy), ikona spinacza (załączanie obrazów i plików).
- Persistent conversation history z **synchronizacją przez iCloud** (interfejs w stylu iMessage).
- System-wide gest **"Search or Ask"** — swipe w dół z górnego centrum ekranu. Integracja z Dynamic Island.
- **Personal context** (Siri rozumie maile, zdjęcia, wiadomości, pliki), **on-screen awareness** (widzi, co jest na ekranie), **multi-step app actions** (wykonuje sekwencje akcji między apkami).
- Auto-delete timer dla rozmów: **30 dni / rok / bezterminowo**.
- Niektóre funkcje wymagają **waitlisty** na start.
- Apple Intelligence działa od **iPhone 15 Pro** wzwyż.

## Porównanie konkurentów rozważanych przez Apple

| Model | Koszt roczny dla Apple | Status | Powód decyzji |
|---|---|---|---|
| **Google Gemini (custom 1,2T)** | **~1 mld USD** | **Wybrany** | Najlepszy stosunek cena/jakość, summarization + planning |
| Anthropic Claude (custom) | ~kilka mld USD, x2 co rok | Odrzucony | Cena. Już testowany w Apple Park |
| OpenAI GPT | Niejawne | Pozostaje jako extension w iOS | ChatGPT już zintegrowany w iOS 26 |
| Apple własny (AFM Cloud) | Wewnętrzny | Za mały (**150 mld parametrów**) | 8x mniej niż Gemini |

## Historia "Apple ↔ Google" — paradoks rachunków

- **2022**: Google płaci Apple **20 mld USD/rok** za domyślną wyszukiwarkę w Safari.
- **2025**: Sąd antymonopolowy (sędzia Mehta) utrzymuje deal, ale wprowadza **roczny limit umów** i zakaz exclusivity.
- **2026**: Apple **odwraca przepływ** — płaci Google 1 mld USD/rok za AI.
- Netto: Google nadal zarabia na Apple **~19 mld USD/rok**, ale teraz dwiema rurociągami w dwie strony.

## Reakcje branży

- **Pozytywne**: Użytkownicy dostają mądrzejszego Siri, nie wiedząc, że pod spodem chodzi Google. Apple kupuje sobie czas, żeby dogonić Frontier Lab własnymi modelami.
- **Negatywne**: Sygnał, że **najbogatsza firma świata** nie potrafi sama zbudować konkurencyjnego foundation model. Długoterminowa zależność od konkurenta z rynku smartfonów (Pixel vs iPhone).
- Tim Cook wygłosi **ostatni keynote jako CEO** 8 czerwca — symboliczny moment przekazania pałeczki w erze, w której Apple kupuje AI od konkurencji.

---

## Potencjalne kąty narracyjne do shorta

1. **"Apple zapłaci Google 1 miliard dolarów rocznie za to, żeby ich Siri w ogóle działał"** — paradoks + konkretna liczba + lekka prowokacja. Najmocniejszy hook: cała firma za **3 biliony dolarów market cap** zleca AI konkurentowi w smartfonach.

2. **"Nowy Siri to Gemini. 1,2 biliona parametrów. W twoim iPhonie."** — liczba jako hook. **8x większy** model niż Apple potrafi zbudować samodzielnie. Skala robi wrażenie.

3. **"Google płaci Apple 20 miliardów rocznie. Teraz Apple płaci Google miliard. Wiecie, za co?"** — kontrast dwóch przepływów + cliffhanger. Idealne na otwarcie reels.

4. **"Apple chciał Claude. Anthropic powiedział: 'kilka miliardów rocznie, podwajamy co rok'. Apple wybrał Google."** — drama negocjacyjna. Konkretna anegdota, której większość polskich kanałów nie ma.

5. **"Apple nazywa to wewnętrznie 'AFM v10'. Nie chce, żebyś wiedział, że to Gemini."** — zmowa milczenia, marketing-as-deception kąt. Mocne pod komentarz.

6. **"Tim Cook ostatni keynote jako CEO. Ostatni gest? Oddanie silnika Siri Google."** — symbolika końca epoki, hook narracyjny. Działa na fanów Apple.

7. **"Apple Intelligence z iOS 18 to była ściema. Funkcje obiecane 2 lata temu wreszcie w iOS 27 — bo Gemini je dowiezie."** — angle "skończyły się wymówki". Konkretne functions (personal context, on-screen awareness, app actions).

---

## Źródła

- [Apple Picks Google's Gemini to Run AI-Powered Siri — CNBC (12 stycznia 2026)](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)
- [WWDC 2026 Opens Monday: Gemini Powers Rebuilt Siri — TechTimes (6 czerwca 2026)](https://www.techtimes.com/articles/317902/20260606/wwdc-2026-opens-monday-gemini-powers-rebuilt-siri-iphone-11-faces-ios-27-cut.htm)
- [Apple Strikes $1 Billion Deal with Google — The Outpost AI](https://theoutpost.ai/news-story/apple-s-1-billion-google-ai-partnership-a-strategic-gamble-for-siri-s-future-21543/)
- [What to Expect From WWDC 2026: Gemini-Powered Siri — MacRumors](https://www.macrumors.com/guide/wwdc-2026-what-to-expect/)
- [iOS 27 Will Let You Pick Claude or Gemini Instead of ChatGPT — MacRumors (5 maja 2026)](https://www.macrumors.com/2026/05/05/ios-27-third-party-chatbots-apple-intelligence/)
- [Apple Could Have Used Claude — AppleInsider (30 stycznia 2026)](https://appleinsider.com/articles/26/01/30/apple-could-have-used-claude-to-power-a-future-siri-but-anthropic-got-greedy)
- [Apple Weighs Replacing Siri's AI with Anthropic Claude or OpenAI ChatGPT — Bloomberg (30 czerwca 2025)](https://www.bloomberg.com/news/articles/2025-06-30/apple-weighs-replacing-siri-s-ai-llms-with-anthropic-claude-or-openai-chatgpt)
- [Google's Payments to Apple Reached $20 Billion in 2022 — Bloomberg](https://www.bloomberg.com/news/articles/2024-05-01/google-s-payments-to-apple-reached-20-billion-in-2022-cue-says)
- [Apple Unveils Gemini-Powered Siri and iOS 27 at WWDC 2026 — Let's Data Science](https://letsdatascience.com/news/apple-unveils-gemini-powered-siri-and-ios-27-at-wwdc-2026-b757953c)
- [Apple is About to Reinvent Siri — TechRadar](https://www.techradar.com/ai-platforms-assistants/apple-is-about-to-reinvent-siri-at-wwdc-this-year-and-it-might-finally-feel-like-chatgpt)
