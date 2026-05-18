# ChatGPT widzi twoje konto bankowe — OpenAI łączy Pro z Plaid

**Data:** 2026-05-18
**Temat:** OpenAI uruchomił ChatGPT Personal Finance w preview dla użytkowników Pro w USA — chatbot przez Plaid czyta salda, transakcje, portfele i zobowiązania z ponad 12 000 instytucji finansowych, ale nie może ruszyć ani dolara.

---

## Kluczowe fakty i liczby

- **15 maja 2026** — OpenAI ogłasza ChatGPT Personal Finance jako preview, dostępne wyłącznie dla subskrybentów **ChatGPT Pro** (**$200/miesiąc**) w USA, na webie i iOS.
- Integracja przez **Plaid** obejmuje **ponad 12 000 instytucji finansowych** — m.in. **Chase, Fidelity, Schwab, Robinhood, American Express, Capital One, Citi, Affirm**.
- ChatGPT dostaje read-only dostęp do **4 kategorii danych**: salda, transakcje, inwestycje (holdings), zobowiązania (liabilities — hipoteka, karty kredytowe, pożyczki).
- Czego ChatGPT **NIE może**: przelać pieniędzy, zlecić transakcji giełdowej, zapłacić rachunku, zmienić ustawień konta, zobaczyć **pełnych numerów rachunków**.
- OpenAI deklaruje, że **ponad 200 milionów** użytkowników miesięcznie już pyta ChatGPT o sprawy finansowe — to uzasadnienie produktu.
- Po rozłączeniu konta zsynchronizowane dane są usuwane z systemów OpenAI w ciągu **30 dni** (ale historia czatu zawierająca dane finansowe zostaje — trzeba kasować ręcznie).
- GPT-5.5 Thinking dostaje **82,5/100** w wewnętrznym benchmarku OpenAI dla zadań personal finance — czyli **17,5 punktu** brakuje do ideału, a chodzi o pieniądze ludzi.
- OpenAI w **kwietniu 2026** (miesiąc przed launchem) przejęło zespół fintechowego startupu **Hiro**, który robił AI-powered financial planning.
- Integracja z **Intuit** „wkrótce" — pozwoli analizować np. wpływ sprzedaży akcji na podatki czy szanse na akceptację karty kredytowej.

## Co dokładnie robi ChatGPT Personal Finance

- Dashboard wydatków z kategoryzacją (Plaid ma własny model klasyfikujący transakcje z **48% lepszą dokładnością** w rozpoznawaniu źródeł dochodu).
- Tracker subskrypcji — pokazuje, ile odpływa miesięcznie na rzeczy, o których zapomniałeś.
- Performance portfela inwestycyjnego (Robinhood, Schwab, Fidelity).
- Lista nadchodzących płatności (raty, rachunki, karty).
- Konwersacyjne pytania typu „Pomóż mi zbudować plan kupna domu w okolicy w ciągu 5 lat" albo „Ile naprawdę kosztowały mnie ostatnie wakacje?".

## Jak się to uruchamia

- Sidebar w ChatGPT → sekcja **Finances** → „Get started"
- Albo w czacie: `@Finances, connect my accounts`
- Plaid obsługuje autoryzację (znany flow OAuth dla banków — login, MFA, zgoda)
- Synchronizacja może trwać kilka minut

## Model bezpieczeństwa i prywatności

- Plaid zarządza tożsamością i tym, do jakich kont aplikacja ma dostęp — przez **Plaid Portal** użytkownik widzi wszystkie połączenia i może je w każdej chwili odwołać.
- Jeśli wcześniej wyłączyłeś trenowanie modelu na swoich danych — dotyczy to także danych finansowych.
- „Wspomnienia" (memory) z Finances są **niedostępne** w trybie temporary chat.
- ChatGPT NIE widzi pełnych numerów rachunków — tylko zamaskowane.
- Po disconnect: dane znikają z OpenAI w ciągu **30 dni** (ale fragmenty w historii czatu zostają, dopóki sam ich nie skasujesz).

## Porównanie z konkurencją

| Produkt | Cena | Co potrafi |
|---|---|---|
| **ChatGPT Personal Finance** | **$200/mc** (Pro) | Konwersacja + dashboard, 12 000+ instytucji, US only, na razie |
| **Copilot Money** | ~$13/mc | iOS/Mac only, najlepsza kategoryzacja AI, polski rynek? brak |
| **Monarch Money** | ~$15/mc | Pełna sieć, świetne dla par, multi-platform |
| **Mint** | — | **Wyłączony** (Intuit zamknął w 2024) |
| **Rocket Money** | $4-12/mc | Tracker subskrypcji + negocjacja rachunków |

ChatGPT wchodzi w tę kategorię **10x drożej** niż dedykowane aplikacje — ale daje konwersacyjny interfejs, którego żadna nie ma.

## Reakcje krytyków — drama

- Cytat z Reddit/Tom's Guide: **„Jaka rozsądna osoba czuje się komfortowo dając ten poziom dostępu OpenAI?"**
- TechRadar tytułuje: **„Brzmi jak malware"**.
- Jeden z komentarzy wskazuje, że OpenAI **„dopiero co dostało pozew zbiorowy za potajemne dzielenie się rozmowami ChatGPT z Google i Facebook"** — i teraz prosi o dostęp do konta bankowego.
- Główna obawa merytoryczna: **halucynacje w doradztwie finansowym**. Konsument toleruje halucynację, gdy ChatGPT pisze maila — nie toleruje, gdy chodzi o kredyt hipoteczny, plan emerytalny czy spłatę długu.
- Ryzyko **AI overconfidence** — model „domyśli" odpowiedź, bo musi coś powiedzieć.
- OpenAI sam dorzuca disclaimer: **„to nie zastępuje profesjonalnego doradztwa finansowego"** — co jest dziwnym komunikatem przy produkcie reklamowanym jako personal finance.

## Dostępność dla Plus i Polski

- **Plus ($20/mc)**: „później", po feedbacku od Pro. Bez konkretnej daty.
- **Free**: brak planów.
- **Polska / EU**: **brak**. US only. Plaid działa w PL w ograniczonym zakresie (głównie open banking PSD2), ale OpenAI nie ogłosił żadnego rolloutu. Geo-block faktyczny — polski IP, polska karta, polskie konto Plaid nie podłączysz.
- Nawet jak Plaid teoretycznie wspiera niektóre polskie banki (mBank, Santander) przez PSD2 — ChatGPT Personal Finance i tak nie pozwala na połączenie spoza USA.

## Implikacje

- To **pierwszy raz**, kiedy LLM dostaje strukturalny, ciągły dostęp do prawdziwych danych finansowych konsumenta na taką skalę.
- Plaid wygrywa — staje się de facto pipeline'em między LLM-ami a bankami. Anthropic, Google, Microsoft prawie na pewno pójdą tą samą drogą.
- Dedykowane aplikacje (Copilot, Monarch) muszą się zacząć martwić — albo dodać LLM, albo zniknąć.
- Cytat OpenAI: **Ty Geri (Product Lead)** — „Z bezpiecznym, zaufanym sposobem Plaid na łączenie kont, ChatGPT pomaga ludziom lepiej zrozumieć, dokąd idą ich pieniądze".
- Cytat Plaid: **Will Robinson (CTO)** — by to działało, potrzebne są trzy rzeczy: pokrycie danych, zrozumienie ich, zaufanie konsumenta.

---

## Potencjalne kąty narracyjne do shorta

- **„ChatGPT widzi, ile masz na koncie."** (jednozdaniowy szok, US only, ale viewer nie wie tego w pierwszej sekundzie)
- **„Płacisz 200 dolarów miesięcznie, żeby AI czytało twoje rachunki."** (specyficzna liczba + paradoks — płacisz za bycie podglądanym)
- **„12 000 banków właśnie podłączyło się do ChatGPT."** (konkretna liczba, big number)
- **„OpenAI dostało pozew za wyciek czatów. Tydzień później prosi o dostęp do twojego konta bankowego."** (drama, timing, oburzające zestawienie)
- **„ChatGPT dostaje 82,5 na 100 z finansów. Czy zaufałbyś księgowemu, który ma 4 z plusem?"** (counterintuitive, konkretna ocena, lifestyle question)
- **„Mint umarł. Copilot kosztuje 13 dolarów. ChatGPT — 200. I wszyscy go chcą."** (paradoks rynkowy, konkretne liczby, dramatyczna konkluzja)
- **„Polska nie dostanie tego. I może to dobrze."** (PL angle, kontrowersja, wciąga widza ironią)

---

## Źródła

- [OpenAI — A new personal finance experience in ChatGPT](https://openai.com/index/personal-finance-chatgpt/)
- [TechCrunch — OpenAI launches ChatGPT for personal finance](https://techcrunch.com/2026/05/15/openai-launches-chatgpt-for-personal-finance-will-let-you-connect-bank-accounts/)
- [Plaid Blog — What ChatGPT's new experience signals for digital finance](https://plaid.com/blog/chatgpt-personal-finance-plaid/)
- [Engadget — ChatGPT will offer personalized financial advice](https://www.engadget.com/2173768/chatgpt-will-offer-personalized-financial-advice-if-you-connect-your-bank-account/)
- [MacRumors — ChatGPT Can Now Connect to Your Financial Accounts](https://www.macrumors.com/2026/05/15/chatgpt-personal-finance/)
- [Implicator.ai — OpenAI Opens ChatGPT to Bank Accounts via Plaid Preview](https://www.implicator.ai/openai-adds-personal-finance-tools-to-chatgpt-pro-with-plaid-bank-connections/)
- [Tom's Guide — "What sane individual feels comfortable..." (reactions)](https://www.tomsguide.com/ai/chatgpt/what-sane-individual-feels-comfortable-giving-this-level-of-access-to-openai-chatgpt-can-now-be-your-financial-advisor-but-the-reactions-are-pretty-telling)
- [TechRadar — "Sounds like malware" (skeptical take)](https://www.techradar.com/ai-platforms-assistants/chatgpt/chatgpt-now-wants-to-connect-up-to-your-bank-accounts-so-what-could-possibly-go-wrong)
- [Quartz — ChatGPT launches personal finance tools with bank account linking](https://qz.com/chatgpt-personal-finance-tools-bank-accounts-plaid-051526)
