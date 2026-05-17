# ChatGPT teraz podłącza twoje konto bankowe — finanse osobiste w AI

**Data:** 2026-05-17
**Temat:** OpenAI uruchomiło 15 maja 2026 preview funkcji Personal Finance w ChatGPT Pro — integracja z Plaid daje AI dostęp (read-only) do sald, transakcji, inwestycji i zobowiązań w ponad 12 000 instytucji finansowych w USA. Pierwszy raz, gdy ChatGPT prosi o dostęp do prawdziwych pieniędzy.

---

## Kluczowe fakty i liczby

- **15 maja 2026** — OpenAI uruchomił preview Personal Finance, wyłącznie dla **ChatGPT Pro** ($200/mies.), w USA, web + iOS. Plus ($20/mies.) dostanie funkcję dopiero "po feedbacku od Pro".
- **12 000+ instytucji finansowych** dostępnych przez Plaid: Schwab, Fidelity, Chase, Robinhood, American Express, Capital One. **Intuit** (TurboTax, Credit Karma) — "wkrótce".
- Domyślny model dla finansów to **GPT-5.5 Thinking**. OpenAI deklaruje wynik **82,5/100** na własnym benchmarku finansowym (zbudowanym z 50+ ekspertami).
- ChatGPT widzi: salda, transakcje, portfele inwestycyjne, zobowiązania, subskrypcje, nadchodzące płatności. **Nie widzi**: pełnych numerów kont, nie może ruszać pieniędzmi, nie wykonuje transakcji.
- Po rozłączeniu konta zsynchronizowane dane są usuwane w **ciągu 30 dni**. Tryb temporary chat domyślnie nie ma dostępu do podpiętych kont.
- **Plaid wyceniany na $8 mld** (luty 2026, +31% r/r), revenue wzrosło >25% w 2025. CFO Plaida mówi, że IPO może poczekać — partnerstwo z OpenAI i Perplexity to dla nich strategiczny przełom.
- OpenAI w kwietniu 2026 kupił **Hiro Finance** — to ten team dowiózł ten feature. Wcześniej, w styczniu 2026, ruszył ChatGPT Health. Wzorzec: AI w pionach high-stakes.
- **200 mln użytkowników miesięcznie** zadaje ChatGPT pytania o budżet i inwestycje — to baza, na której OpenAI chce monetyzować zaufanie do swoich rekomendacji.

---

## Co konkretnie można zapytać

- "Czuję, że ostatnio więcej wydaję. Czy coś się zmieniło?"
- "Pomóż mi przygotować plan na zakup mieszkania w mojej okolicy w ciągu 5 lat."
- "Którą kartę kredytową spłacić najpierw i ile?"
- "@Finances, podłącz moje konta."
- Po integracji z Intuit: "Jak sprzedaż akcji X wpłynie na podatek?" oraz szacowanie szans na akceptację karty kredytowej.

Dashboard pokazuje: portfel inwestycyjny, wzorce wydatków, subskrypcje, harmonogram płatności. Pierwsza synchronizacja trwa kilka minut.

---

## Prywatność i model danych — gdzie diabeł śpi

- OpenAI deklaruje: read-only, nie widzi pełnych numerów kont, istniejące opt-outy z treningu obowiązują automatycznie.
- Disconnect: Settings → Apps → Finances → dane idą do śmieci w 30 dni. Pamięć ChatGPT o finansach można edytować i kasować ręcznie.
- **Strukturalny problem**: ta sama platforma hostuje teraz reklamy, dane finansowe i 200 mln rozmów o pieniądzach miesięcznie. OpenAI niedawno uruchomił reklamy w ChatGPT — konflikt interesu wpisany w fundament.
- **Luka fiducjarna (kluczowa)**: ludzki doradca finansowy ma prawny obowiązek działać w najlepszym interesie klienta. ChatGPT — nie. Mimo disclaimerów produkt jest zaprojektowany tak, by *czuć się jak* profesjonalna porada finansowa. Klasyczny vector na regulację: SEC i CFPB już patrzą.

---

## Konkurencja — gdzie OpenAI uderza

- **YNAB, Monarch Money, Copilot.ai, Rocket Money** — klasyczne PFM-y, też używają Plaida. Różnica: one są dashboardami, ChatGPT jest doradcą rozmownym z kontekstem konwersacji.
- **Perplexity** uruchomił tego samego dnia (15 maja) własną integrację z Plaid — funkcja "Portfolio". Wojna AI-finans już trwa.
- **Anthropic / Claude** poszedł w odwrotną stronę: 5 maja 2026 wypuścił **10 agentów dla Wall Street** (M&A, compliance, pitch decks), partnerstwo z Moody's, integracja z Microsoft 365. Claude Opus 4.7 ma **64,37%** na Vals AI Finance Agent benchmark vs **59,96% GPT-5.5** — Anthropic celuje w bankierów inwestycyjnych, OpenAI w consumera.
- Charles Schwab równolegle wzmacnia własne AI advisory — banki nie chcą oddać warstwy doradczej.

---

## Polski kontekst — kiedy u nas?

- **PSD2** od dawna obowiązuje w PL. KNF nadzoruje, mBank, ING, PKO BP, Pekao mają API zgodne z **PolishAPI** i Berlin Group NextGenPSD2. mBank uruchomił usługi AIS (Account Information Service) dla 5 banków — technicznie infrastruktura na taką integrację już istnieje.
- **Nie ma jednak polskiego Plaid'a** o porównywalnej skali — Kontomatik i Algoteque działają, ale to nie ta liga. OpenAI nie ogłosił daty wejścia funkcji na rynek europejski.
- **Bielik** (polski open-source LLM od SpeakLeash + Cyfronet) to model, nie produkt finansowy. PKO BP rozwija własne modele AI (RoBERTa, narzędzie do walki z mową nienawiści — od września 2025) i ma własnego asystenta IKO, ale to bankowe AI w silosie, nie cross-bank.
- **RODO + DORA + AI Act** = potrójna bariera. OpenAI w EU musiałby pokazać, gdzie hostuje dane finansowe (DORA wymaga lokalizacji krytycznych usług), jak je przetwarza (RODO art. 9 — dane szczególnej kategorii to dyskusyjne, ale finansowe są wysoce wrażliwe), i przejść klasyfikację ryzyka pod AI Act (system wysokiego ryzyka? prawdopodobnie tak).
- Realistyczny scenariusz PL: **2027–2028**, jeśli w ogóle, i raczej przez partnerstwo z polskim bankiem niż samodzielnie.

---

## Implikacje dla bankowości

- Banki tradycyjnie kontrolowały warstwę "interfejsu finansowego". Plaid + ChatGPT to **dezintermediacja UI** — klient rozmawia z AI, nie loguje się do bankowości.
- W ciągu 2–3 lat każdy duży bank w USA będzie musiał odpowiedzieć: własne LLM, partnerstwo z OpenAI/Anthropic, albo akceptacja roli "back-end commodity".
- Plaid staje się **infrastrukturą krytyczną AI** — wartość $8 mld może okazać się za niska. To moment "AWS dla finansów osobistych".
- Pytanie regulacyjne nr 1: jeśli ChatGPT zarekomenduje sprzedaż akcji i wartość spadnie, kto odpowiada? OpenAI? Plaid? Bank? Użytkownik klikający "ok"?

---

## Potencjalne kąty narracyjne do shorta

1. **"OpenAI patrzy ci do portfela — i mówi co źle robisz."** Hook na shock value: dosłownie podpinasz konto bankowe pod chat.
2. **"$200 miesięcznie żeby AI ci powiedziało, że za dużo wydajesz na Lidl."** Ironiczny take na ChatGPT Pro tier-lock.
3. **"Plaid wart $8 mld właśnie został infrastrukturą krytyczną AI — w Polsce nie mamy odpowiednika."** Geopolityczny angle.
4. **"ChatGPT ma 200 mln rozmów o pieniądzach miesięcznie. Teraz wie też ile masz na koncie."** Skala + privacy.
5. **"Anthropic celuje w bankierów z Wall Street, OpenAI w twoje konto osobiste — dwie strategie, jedna wojna."** Kompozycyjny.
6. **"W Polsce PSD2 działa od lat, ale Bielik nie podłączy ci konta. Dlaczego?"** Krajowy, edukacyjny.
7. **"Twój doradca finansowy ma obowiązek działać w twoim interesie. ChatGPT — nie. Disclaimer na dole ekranu."** Fiducjarny gap, mocny moralnie.

---

## Źródła

- [A new personal finance experience in ChatGPT — OpenAI](https://openai.com/index/personal-finance-chatgpt/)
- [OpenAI launches ChatGPT for personal finance, will let you connect bank accounts — TechCrunch](https://techcrunch.com/2026/05/15/openai-launches-chatgpt-for-personal-finance-will-let-you-connect-bank-accounts/)
- [OpenAI Opens ChatGPT to Bank Accounts via Plaid Preview — Implicator.ai](https://www.implicator.ai/openai-adds-personal-finance-tools-to-chatgpt-pro-with-plaid-bank-connections/)
- [OpenAI wants ChatGPT to see your bank account — TheNextWeb](https://thenextweb.com/news/openai-chatgpt-personal-finance-plaid)
- [OpenAI, Plaid to Bring Tailored Financial Guidance to Masses — Bloomberg via Yahoo Finance](https://finance.yahoo.com/markets/crypto/articles/openai-taps-plaid-bring-tailored-160000160.html)
- [Plaid's Valuation Hits $8 Billion in New Funding Round — PYMNTS](https://www.pymnts.com/news/fintech-investments/2026/plaids-valuation-hits-8-billion-in-new-funding-round/)
- [Anthropic deepens push into Wall Street with new AI agents — Fortune](https://fortune.com/2026/05/05/anthropic-wall-street-financial-services-agents-jamie-dimon/)
- [Anthropic Unveils AI Agents to Field Financial Services Tasks — Bloomberg](https://www.bloomberg.com/news/articles/2026-05-05/anthropic-unveils-ai-agents-to-field-financial-services-tasks)
- [Poland Open Banking PSD2 Regulations & Status — Fiskil](https://www.fiskil.com/open-finance-tracker/poland)
- [Otwarta bankowość — mBank.pl](https://www.mbank.pl/indywidualny/uslugi/otwarta-bankowosc/)
