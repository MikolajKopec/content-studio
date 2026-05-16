# iOS 27: Apple Intelligence otwiera się na Google i Anthropic

**Data notatki:** 14 maja 2026  
**Temat:** System Extensions w iOS 27 — wybór zewnętrznego modelu AI dla Apple Intelligence  
**Źródło pierwotne:** Bloomberg (Mark Gurman), 5 maja 2026

---

## Kluczowe fakty

- Apple wprowadza w iOS 27 / iPadOS 27 / macOS 27 system **"Extensions"** — mechanizm, który pozwala użytkownikowi wybrać zewnętrzny model AI jako silnik Apple Intelligence
- Potwierdzeni lub testowani dostawcy: **Google Gemini**, **Anthropic Claude**, **OpenAI ChatGPT**
- Działa przez istniejące aplikacje z App Store — dostawca dodaje obsługę Extensions do swojej apki, użytkownik wybiera preferowanego dostawcę w **Ustawieniach iOS**
- Wybór jest **systemowy** — jedną decyzją w Settings przekierowujesz wszystkie zapytania (Siri, Writing Tools, Image Playground) do wybranego modelu
- Formalna zapowiedź planowana na **WWDC 8 czerwca 2026**, premiera konsumencka: **wrzesień 2026**
- Apple planuje dedykowaną sekcję w App Store dla aplikacji obsługujących Extensions

---

## Kontekst i tło

### Skąd się to wzięło — trzy warstwy historii

**Warstwa 1: Apple nie ma własnego modelu klasy frontier**  
Apple Intelligence zadebiutował w iOS 18 z własnymi modelami (do 150 mld parametrów), które wyraźnie odstawały od GPT-4o, Gemini czy Claude. Siri była słaba. Użytkownicy narzekali. Apple musiało działać.

**Warstwa 2: Umowa z Google (styczeń 2026)**  
12 stycznia 2026 Apple i Google ogłosiły wieloletnią umowę — Gemini staje się fundamentem przebudowanego Siri i Apple Intelligence. Szczegóły:
- Apple płaci Google szacunkowo **~1 miliard dolarów rocznie** za licencję
- Dostęp do **dedykowanego modelu Gemini o 1,2 biliona parametrów** — 8x większego niż poprzednie modele Apple
- Zapytania do Gemini przechodzą przez Apple Private Cloud Compute (end-to-end szyfrowanie, izolowane enklawy sprzętowe — dane użytkownika nie trafiają do Google)
- Google potwierdził: Gemini będzie zasilać "nową, bardziej spersonalizowaną wersję Siri" w 2026

**Warstwa 3: Extensions — odpowiedź na nacisk regulacyjny i rynkowy**  
OpenAI miało ekskluzywność jako jedyny zewnętrzny partner Siri w iOS 18. iOS 27 łamie tę ekskluzywność i otwiera system. Czynniki:
- ChatGPT nie osiągnął zakładanego użycia przez Siri
- Relacje Apple-OpenAI napięte: OpenAI aktywnie rekrutuje inżynierów Apple do projektu własnego sprzętu
- Presja regulatorów (DMA w UE) na otwieranie ekosystemu Apple

---

## Jak działa mechanizm Extensions — szczegóły techniczne

Opis z wewnętrznych wersji testowych iOS 27:

> "Extensions allow you to access generative AI capabilities from installed apps on demand, through Apple Intelligence features such as Siri, Writing Tools, Image Playground and more."

**Przepływ:**
1. Użytkownik instaluje appkę dostawcy AI z App Store (np. Google Gemini, Claude)
2. Appka deklaruje systemowi obsługę Extensions
3. W Ustawieniach → Apple Intelligence & Siri użytkownik wybiera preferowanego dostawcę
4. Wszystkie zapytania w ramach Apple Intelligence (Siri, Writing Tools, Image Playground) trafiają do wybranego modelu
5. Opcja: inny głos Siri dla konwersacji z zewnętrznym modelem

**Otwarte pytania (brak potwierdzenia):**
- Czy płatne plany (Claude Pro, Gemini Advanced) odblokują pełne możliwości? Czy potrzebna osobna subskrypcja?
- Jak Apple zarządza zgodą użytkownika i widocznością — jakie dane idą do zewnętrznego dostawcy?
- Czy Apple narzuca proces certyfikacji Extensions?
- Model podziału przychodów dla developerów

---

## Reakcje branży

**Bloomberg (styczeń 2026) — nagłówek po ogłoszeniu umowy Apple-Google:**  
"Apple Intelligence Built Atop Google Gemini Seems Like Admitting Defeat"  
— wprost sugerując, że Apple rezygnuje z ambicji budowania własnego frontier AI

**Google (maj 2026):**  
Tydzień przed WWDC 2026 Google zapowiedział Android 17 z "Gemini Intelligence" — Gemini przestaje być chatbotem, staje się warstwą operacyjną całego urządzenia (telefon, przeglądarka, samochód, laptop). Wyścig jest symetryczny — Google reaguje na Apple, Apple reaguje na Google.

**CNBC (12 maja 2026):**  
"Google races to put Gemini at the center of Android before Apple's AI reboot"

**Ogólny konsensus branżowy:**  
Apple przestaje próbować konkurować z OpenAI/Google/Anthropic w wyścigu modeli i zamiast tego pozycjonuje się jako **platforma** — neutralny agregator modeli AI na urządzeniu z 2+ miliardami użytkowników.

---

## Co to zmienia dla użytkowników iPhone'a

- **Wybór, nie "take it or leave it"** — jeśli płacisz za Claude Pro lub Gemini Advanced, możesz go używać jako mózgu swojego iPhone'a
- **Jeden punkt kontaktu** — nie przełączasz się między appkami, Siri i Writing Tools działają przez wybrany model
- **Prywatność zróżnicowana** — Apple's own models / Private Cloud Compute mają inne gwarancje niż dane idące do Google czy Anthropic. Użytkownik musi świadomie wybrać
- **Siri dostaje "drugi mózg"** — przebudowane jako pełny chatbot: web search, generowanie obrazów, podsumowania, kodowanie, analiza plików, wielokrokowe polecenia, nowy interfejs w Dynamic Island

---

## Implikacje biznesowe i strategiczne

**Dla Apple:**
- Nie musi wygrać wyścigu modeli — wygrywa jako platforma, jeśli każdy chce być w iPhone
- Ryzyko: utrata kontroli nad jakością doświadczenia AI; trudno brać kredyt za "najlepszy AI" jeśli to cudzych model
- Potencjalne przychody z App Store jeśli Extensions działają przez płatne subskrypcje (Apple bierze prowizję)

**Dla Google:**
- Gemini jest domyślnym silnikiem Siri — ogromna distribucja na urządzeniach Apple, które wcześniej były "twierdzą" OpenAI
- Ale też działa w środowisku, gdzie użytkownik może przestawić się na Claude jednym przełącznikiem

**Dla Anthropic:**
- Bezpośredni dostęp do bazy użytkowników iPhone — bez konieczności budowania własnej appki od zera
- Claude pojawia się na poziomie systemowym, nie tylko jako chatbot w appce

**Dla OpenAI:**
- Utrata ekskluzywności z iOS 18 — teraz jeden z wielu dostawców
- Napięcie z Apple może eskalować: OpenAI buduje własny sprzęt (projekt "io" z Jony'im Ive'em)

---

## Potencjalne kąty narracyjne do shorta

1. **"Apple przyznało, że przegrało wyścig AI"** — paradoks: firma z największą bazą urządzeń mobilnych na świecie oddaje mózg swojego asystenta konkurencji

2. **"iPhone staje się sklepem z modelami AI"** — jak w telefonii komórkowej wybrałeś operatora, teraz wybierasz AI. Różnica: tu stawką nie jest zasięg, ale inteligencja twojego urządzenia

3. **"Koniec ery ChatGPT w iPhonie"** — przez rok ChatGPT miał ekskluzywę na Siri. Apple właśnie to zlikwidowało i wpuściło Google i Anthropic do gry

4. **Hak komentarzowy (do przemyślenia):** "Którego AI wybrałbyś jako domyślny w swoim iPhonie — Gemini, Claude, czy zostałbyś przy ChatGPT?" — naturalne pytanie, które generuje opinie

---

## Oś czasu

| Data | Wydarzenie |
|------|-----------|
| Listopad 2025 | Bloomberg: Apple planuje użyć modelu Gemini 1,2 bln parametrów |
| Styczeń 2026 | Apple i Google ogłaszają umowę Gemini-Siri (~1 mld USD/rok) |
| Marzec 2026 | Nowe szczegóły umowy Apple-Google (9to5Mac) |
| Kwiecień 2026 | Google potwierdza: Gemini-powered Siri w 2026 |
| 5 maja 2026 | Bloomberg (Gurman): iOS 27 Extensions — Gemini, Claude, ChatGPT |
| 12 maja 2026 | Google zapowiada Android 17 z "Gemini Intelligence" |
| **8 czerwca 2026** | **WWDC — spodziewana formalna zapowiedź iOS 27** |
| **Wrzesień 2026** | **Premiera iOS 27 dla użytkowników** |

---

## Źródła

- [Bloomberg: iOS 27 Features — Apple Plans to Let Users Swap Models Across Apple Intelligence (5 maja 2026)](https://www.bloomberg.com/news/articles/2026-05-05/ios-27-features-apple-plans-to-let-users-swap-models-across-apple-intelligence)
- [TechCrunch: Apple plans to make iOS 27 a Choose Your Own Adventure of AI models](https://techcrunch.com/2026/05/05/apple-plans-to-make-ios-27-a-choose-your-own-adventure-of-ai-models/)
- [9to5Mac: iOS 27 will let you choose between Gemini, Claude, and more](https://9to5mac.com/2026/05/05/ios-27-will-let-you-choose-between-gemini-claude-and-more-for-ai-features-report/)
- [MacRumors: iOS 27 Will Let You Pick Claude or Gemini Instead of ChatGPT](https://www.macrumors.com/2026/05/05/ios-27-third-party-chatbots-apple-intelligence/)
- [Engadget: Apple Intelligence will reportedly let you choose third-party AI models in iOS 27](https://www.engadget.com/2165451/apple-intelligence-will-reportedly-let-you-choose-third-party-ai-models-in-ios-27/)
- [Bloomberg: Apple Plans to Use 1.2 Trillion Parameter Google Gemini Model to Power New Siri (listopad 2025)](https://www.bloomberg.com/news/articles/2025-11-05/apple-plans-to-use-1-2-trillion-parameter-google-gemini-model-to-power-new-siri)
- [CNBC: Apple picks Google's Gemini to run AI-powered Siri (12 stycznia 2026)](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)
- [Bloomberg: Apple Intelligence Built Atop Google Gemini Seems Like Admitting Defeat (19 stycznia 2026)](https://www.bloomberg.com/news/newsletters/2026-01-19/apple-s-use-of-google-gemini-shows-iphone-s-lack-of-ai-advantage)
- [CNBC: Google races to put Gemini at the center of Android before Apple's AI reboot (12 maja 2026)](https://www.cnbc.com/2026/05/12/google-races-put-gemini-at-center-of-android-before-apples-ai-reboot.html)
- [MacRumors: Google Previews Android 17 With Gemini Intelligence (12 maja 2026)](https://www.macrumors.com/2026/05/12/google-previews-android-17/)
- [Tom's Guide: Beyond ChatGPT — iOS 27 Extensions will allow Siri to use Google Gemini and Claude](https://www.tomsguide.com/phones/iphones/beyond-chatgpt-ios-27-extensions-will-reportedly-allow-siri-to-use-google-gemini-and-claude)
- [Gadget Hacks: iOS 27 Third-Party AI Models Explained](https://apple.gadgethacks.com/news/ios-27-third-party-ai-models-explained-gemini-claude-and-more/)
