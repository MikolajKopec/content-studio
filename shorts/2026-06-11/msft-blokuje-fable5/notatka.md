## 3. Microsoft sprzedaje klientom Fable 5, ale blokuje go własnym pracownikom

**Data:** 2026-06-11
**Temat:** Microsoft jednego dnia uruchamia Claude Fable 5 dla klientów w Foundry i GitHub Copilot, a w tym samym czasie wycina go z wewnętrznego pickera dla własnych pracowników — bo nowa polityka retencji danych Anthropic łamie wewnętrzne Zero Data Retention.

---

## Kluczowe fakty i liczby

- **9 czerwca 2026** — Anthropic publikuje Claude Fable 5 (publiczna wersja Mythos-class) i tego samego dnia Microsoft ogłasza dostępność modelu w **Microsoft Foundry, Foundry Agent Service i GitHub Copilot** dla planów Copilot Pro+, Max, Business i Enterprise.
- **10 czerwca 2026** — The Verge (paywall) publikuje informację, że Microsoft **zablokował Fable 5 w wewnętrznym pickerze modeli GitHub Copilot** używanym przez pracowników; Reuters podchwytuje historię tego samego dnia.
- **30 dni** — Anthropic obligatoryjnie przechowuje wszystkie prompty i odpowiedzi dla Fable 5 i Mythos 5, by uruchamiać klasyfikatory bezpieczeństwa wykrywające nadużycia i jailbreaki.
- **Do 2 lat** — okres przechowywania promptów i outputów oflagowanych przez trust & safety classifiers Anthropic jako naruszające usage policy.
- **Brak opcji ZDR** — Zero Data Retention **nie jest dostępne dla Fable 5 ani Mythos 5**, nawet dla klientów, którzy wcześniej mieli podpisaną umowę ZDR z Anthropic. To nadpisuje istniejące zobowiązania enterprise dla tej klasy modeli.
- **Pozostałe Claude'y działają normalnie wewnątrz Microsoftu** — Opus 4.8, Sonnet 4.5 (część źródeł podaje Sonnet 4.6) i Haiku 4.5 pozostają w wewnętrznym pickerze, bo nadal pracują pod regułami Zero Data Retention.
- **Microsoft odmówił komentarza** dla The Verge; Anthropic i Microsoft nie odpowiedziały natychmiast na pytania Reutersa. Wewnętrznie Microsoft poinformował pracowników, że "zespoły prawne oceniają zmiany retencyjne Anthropic ze względu na obawy o dane klientów i informacje poufne".
- **Domyślnie wyłączone u klientów** — administratorzy planów GitHub Copilot Enterprise i Business muszą **ręcznie włączyć politykę Claude Fable 5**, co jest jednoznaczne z zaakceptowaniem nowych warunków retencji. Czyli klient też dostaje znak ostrzegawczy, ale to on bierze ryzyko na siebie.
- **Bezpłatny dostęp dla użytkowników Copilota do 22 czerwca 2026**, potem przejście na rozliczanie wg "provider list pricing" / Usage Based Billing.

## Wewnętrzne vs zewnętrzne polityki — kontrast

| Aspekt | Klienci Microsoft (Foundry / Copilot) | Pracownicy Microsoft (internal Copilot) |
|---|---|---|
| Dostęp do Fable 5 | Tak — od 9 czerwca 2026 | Nie — wycięty z model pickera |
| Retencja promptów | 30 dni (do 2 lat dla flagged) — klient akceptuje | Niedopuszczalna dla danych firmowych |
| Zero Data Retention | Niedostępne dla Fable 5 | Wymóg wewnętrzny — dlatego blok |
| Procedura aktywacji | Admin musi ręcznie włączyć politykę | Microsoft Legal "ocenia" — status open |
| Pozostałe modele Claude | Dostępne, większość pod ZDR | Opus 4.8 / Sonnet 4.5 / Haiku 4.5 pozostają w pickerze |

Producent SAM oferuje produkt klientom z włączoną retencją, ale uznaje ten sam produkt za zbyt ryzykowny dla **własnych** danych. Klasyczny sygnał alarmowy w corporate governance — "available" vs "approved" to nie to samo.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| 9.06.2026 | Anthropic ogłasza Claude Fable 5 i Mythos 5; nowa polityka retencji (30 dni / 2 lata) wchodzi w życie |
| 9.06.2026 | Microsoft Azure Blog: Fable 5 dostępny w Microsoft Foundry, Foundry Agent Service, GitHub Copilot |
| 9.06.2026 | GitHub Changelog: Fable 5 GA dla Copilot Pro+, Max, Business, Enterprise (admin musi włączyć ręcznie) |
| 10.06.2026 | The Verge (paywall) publikuje, że Microsoft zablokował Fable 5 dla pracowników wewnętrznie |
| 10.06.2026 | Reuters, Technobezz, Shacknews, Crypto Briefing, PYMNTS, IndexBox, Cybernews podchwytują historię |
| Bezterminowo | Microsoft Legal "evaluating Anthropic's retention changes" — brak deklarowanej daty decyzji |
| 22.06.2026 | Koniec darmowego dostępu do Fable 5 w GitHub Copilot; start usage-based billing |

## Reakcje branży

- **The Verge / Reuters** — eksponują paradoks: Microsoft sprzedaje Fable 5 klientom przez Foundry i Copilot, ale jednocześnie wewnętrznie ten sam model jest "pod oceną prawników".
- **Brian Pitz, BMO Capital Markets** — niezrażony incydentem; nazwał Anthropic "the leading pure-play AI lab" z "best-in-class model intelligence" w kodzie, agentach i zastosowaniach enterprise, wskazując Claude Code i Cowork jako produkty, które "scaled rapidly".
- **Cybernews** — ostrzega firmy: "Companies using Fable 5 beware: it's collecting your data, and there are no exceptions" — nawet wcześniejsze umowy ZDR nie obowiązują dla tego modelu.
- **Constellation Research** — wskazuje, że Fable 5 i Mythos 5 wprowadzają nowy precedens governance, w którym safety architecture nadpisuje istniejące zobowiązania kontraktowe wobec klientów enterprise.
- **IndexBox** — komentuje rosnący trend "corporate scrutiny over AI vendor data policies" jako efekt uboczny tej historii; Anthropic w międzyczasie złożył poufny wniosek o IPO w USA przy majowej wycenie **965 mld USD** i 65 mld USD pozyskanego finansowania.
- **Windows Forum** — formułuje to jako "available vs approved AI" — model dostępny technicznie to nie to samo, co model zaakceptowany governance.

## Implikacje dla użytkownika korporacyjnego

- **ZDR przestaje być twardą gwarancją** — jeśli sam Microsoft, największy partner enterprise Anthropic, nie ufa retencji Fable 5 dla swoich danych, sygnał dla CIO/CISO jest jednoznaczny: weryfikujcie politykę retencji per model, nie per vendor.
- **Domyślne "off" u klientów to zrzucenie ryzyka** — GitHub Copilot wymaga ręcznego włączenia Fable 5 przez admina; akt włączenia = formalna akceptacja 30-dniowej retencji. Microsoft prawnie się zabezpiecza, choć pozornie "oferuje" model.
- **Klasyfikatory bezpieczeństwa Anthropic vs poufność danych firmowych** — Anthropic deklaruje, że dane nie są używane do trenowania modeli, ale fizyczne istnienie kopii promptów przez 30 dni (lub 2 lata) jest niezgodne z politykami wielu zespołów Legal / Compliance — w tym samego Microsoftu.
- **Trend "available ≠ approved"** — historia może dać impuls do tworzenia formalnego rozróżnienia w katalogu modeli AI w korporacjach: dostępny technicznie / dostępny dla pilotów / zatwierdzony do danych produkcyjnych.
- **Drama Big Tech** — to publiczne pęknięcie partnerstwa Microsoft-Anthropic, w którym Microsoft jest jednocześnie kanałem dystrybucji i ofiarą polityki dostawcy.

---

## Potencjalne kąty narracyjne do shorta

- **"Microsoft sprzedaje klientom AI, którego sam się boi używać"** — paradoks w jednym zdaniu, dramat Big Tech w 4 sekundach.
- **"Anthropic wypuścił model, w którym Zero Data Retention znika — nawet jeśli płaciłeś za nie wcześniej"** — konkret, który uderza enterprise audience.
- **"30 dni przechowywania promptów, do 2 lat dla oflagowanych — Microsoft mówi: dla naszych klientów OK, dla naszych pracowników nie"** — twarde liczby + kontrast.
- **"Microsoft Legal ocenia, czy własna firma może używać własnego produktu"** — paradoks korporacyjnego rozdwojenia jaźni.
- **"Anthropic wart 965 miliardów dolarów wypuszcza model, którego Microsoft odmawia sobie wewnętrznie"** — kontrast wycena vs zaufanie.
- **"9 czerwca: Microsoft uruchamia Fable 5 dla klientów. 10 czerwca: blokuje go pracownikom. Różnica: 24 godziny"** — narracja ze szczegółową osią czasu.
- **"Klienci muszą ręcznie włączyć Fable 5 w GitHub Copilot — to formalna akceptacja, że Anthropic czyta twoje prompty przez 30 dni"** — angle dla deweloperów / CTO.

---

## Źródła

- [Microsoft Blocks Employees From Using Anthropic's Claude Fable 5 Over Data Retention Risks — Technobezz (10.06.2026)](https://www.technobezz.com/news/microsoft-blocks-employees-from-using-anthropics-claude-fable-5-over-data-retention-risks)
- [Microsoft restricts Claude Fable 5 internal access — Let's Data Science (10.06.2026)](https://letsdatascience.com/news/microsoft-restricts-claude-fable-5-internal-access-42657f58)
- [Microsoft reportedly bans employees from using Claude's new model over data retention concerns — Shacknews (10.06.2026)](https://www.shacknews.com/article/149599/microsoft-bands-claude-fable-5-internally)
- [MSFT Restricts Internal Use Of Claude Fable Over Data-Retention Concerns; BMO Calls Anthropic A Leading Pure-Play AI Lab — ZeroHedge (10.06.2026)](https://www.zerohedge.com/ai/msft-restricts-internal-use-claude-fable-over-data-retention-concerns-bmo-calls-anthropic)
- [Microsoft Balks at Anthropic's Claude Fable 5 Data Retention Policy — PYMNTS.com (10.06.2026)](https://www.pymnts.com/news/artificial-intelligence/2026/microsoft-balks-at-anthropics-claude-fable-5-data-retention-policy/)
- [Microsoft Blocks Anthropic Claude Fable 5 Amid Data Retention Concerns — IndexBox (10.06.2026)](https://www.indexbox.io/blog/microsoft-restricts-employee-use-of-anthropics-claude-fable-5-over-data-retention-policies/)
- [Microsoft Limits Employee Use of Anthropic's Claude Fable 5 Over Data Retention Concerns — Reuters via U.S. News Money (10.06.2026)](https://money.usnews.com/investing/news/articles/2026-06-10/microsoft-limits-employee-use-of-anthropics-claude-fable-5-over-data-retention-concerns-the-verge-reports)
- [Companies using Fable 5 beware: it's collecting your data, and there are no exceptions — Cybernews (06.2026)](https://cybernews.com/ai-news/claude-fable-five-data-retention-collection/)
- [Claude Fable 5 available today in Microsoft Foundry: Powering the next era of autonomous agents — Microsoft Azure Blog (9.06.2026)](https://azure.microsoft.com/en-us/blog/claude-fable-5-available-today-in-microsoft-foundry-powering-the-next-era-of-autonomous-agents/)
- [Claude Fable 5 is generally available for GitHub Copilot — GitHub Changelog (9.06.2026)](https://github.blog/changelog/2026-06-09-claude-fable-5-is-generally-available-for-github-copilot/)
- [Anthropic's Claude Fable 5, Mythos 5: What you need to know — Constellation Research (06.2026)](https://www.constellationr.com/insights/news/anthropics-claude-fable-5-mythos-5-what-you-need-know)
