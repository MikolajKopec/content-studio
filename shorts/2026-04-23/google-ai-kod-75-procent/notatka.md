# Google: 75% kodu pisze AI — notatka badawcza

**Data:** 2026-04-23
**Temat:** Google ujawnia że 3/4 nowego kodu tworzy AI

---

## Kluczowe fakty

- **75%** całego nowego kodu Google jest teraz generowane przez AI i przeglądane przez inżynierów
- Ogłoszono przez **CEO Sundara Pichaia** w pre-nagraniu podczas **Google Cloud Next 2026** (Las Vegas, 22–24 kwietnia 2026)
- Wzrost z **50% jesienią 2025** i z **~25% w październiku 2024** — trippling w ciągu 1,5 roku
- Inżynierowie nie piszą kodu — **recenzują i zatwierdzają** kod tworzony przez agenty AI
- Złożona migracja kodu wykonana przez agenty + inżynierów: **6x szybciej** niż rok wcześniej
- Google przypisuje inżynierom **konkretne cele AI** uwzględniane w ocenach wyników (performance review)
- Pichai określił to jako przejście do "prawdziwie agentowych przepływów pracy" (agentic workflows)

---

## Szczegóły

**Narzędzia AI używane wewnętrznie:**
- **Gemini Code Assist** — wewnętrzny asystent kodowania Google, z trybem agentowym do wieloetapowych zadań
- **Gemini Enterprise Agent Platform** — ogłoszone na Cloud Next 2026 jako "nagłówek pokazu"
- **Jules** — autonomiczny agent kodowania (Google pracuje nad wersją 2, kryptonim "Jitro")
- **Conductor** — narzędzie wewnętrzne z funkcją Automated Reviews (weryfikacja jakości kodu po implementacji)

**Szczegóły procesu review:**
- Inżynierowie spędzają średnio **11 minut na review każdego changelist (CL)** wygenerowanego przez AI
- Skupiają się głównie na: bezpieczeństwie, dopasowaniu architektonicznym — nie na debugowaniu składni
- Czas review spadł o **40% od Q4 2025** wraz ze wzrostem zaufania do klasyfikatorów bezpieczeństwa modeli
- Google **nie ujawnił**, ile kodu AI jest odrzucane — co byłoby kluczową miarą jakości

**Nowy model pracy inżyniera:**
- Rola: kurator zachowań maszyny, nie tłumacz ludzkiej intencji na kod
- Cenne umiejętności: architektura systemów, wykrywanie zagrożeń bezpieczeństwa, myślenie produktowe
- Sergey Brin: "Aby wygrać ostatni sprint, musimy pilnie zasypać lukę w agentic execution i zamienić nasze modele w głównych programistów"

---

## Porównanie z innymi firmami

| Firma | % kodu AI | Kiedy/Kto |
|-------|-----------|-----------|
| **Google** | **75%** | Kwiecień 2026, Sundar Pichai, Cloud Next 2026 |
| **Meta** | Cel: 75% w Création org | Mark Zuckerberg: do H1 2026; cel firmowy: 55% "agent-assisted" |
| **Microsoft** | ~20–30% | Kwiecień 2025, Satya Nadella, LlamaCon |
| **Amazon** | Nie podano % | CEO Andy Jassy: 1000+ projektów AI w rozwoju, przyznał że AI będzie ciąć miejsca pracy |

**Kontekst:**
- Meta publicznie postawiła cel: ponad 75% kodu w swojej organizacji Creation do H1 2026 — niemal identycznie jak Google osiągnęło już w Q2 2026
- Microsoft w kwietniu 2025 był na poziomie 30% — Google to ponad 2x więcej
- Ogólna średnia branżowa: ~50% kodu generowanego przez AI na początku 2026

---

## Gemini Auto Browse w Chrome

**Co to jest:**
Gemini wbudowany w Chrome Enterprise umożliwia **wieloetapową automatyzację zadań webowych** bez ręcznej nawigacji.

**Ogłoszenie:** Google Cloud Next 2026, 22 kwietnia 2026. Zasilane przez **Gemini 3**.

**Przykładowe zadania, które może wykonać:**
- Planowanie podróży (booking)
- Wypełnianie formularzy i wprowadzanie danych
- Planowanie spotkań
- Porównywanie cen na wielu kartach
- Wypełnianie CRM danymi z Google Docs
- Analizowanie portfolio kandydata przed rozmową kwalifikacyjną
- Wyciąganie kluczowych danych ze strony produktu konkurenta
- Składanie wniosków o wydatki (expense reports)
- Zarządzanie subskrypcjami

**Kontrola ludzka ("human in the loop"):**
- Użytkownik musi **przejrzeć i potwierdzić** działania AI przed ostatecznym wykonaniem
- Checkpointy w trakcie wykonywania zadań
- Zapytania użytkownika **nie są używane do trenowania modeli**

**Dostępność:**
- Na start: **tylko dla użytkowników Workspace w USA**
- Wymagana: aktywacja przez politykę organizacyjną IT
- Zarządzane przez IT, integracja z Chrome Enterprise

**Powiązane funkcje ogłoszone jednocześnie:**
- **Skills** — możliwość zapisywania często używanych promptów jako "jedno kliknięcie" (dostępne od ~14 kwietnia 2026 w Chrome desktop)
- **Gemini Summary** — AI podsumowuje release notes Chrome Enterprise dla działów IT
- **Shadow IT risk detection** — widoczność używanych przez pracowników niezatwierdzonych narzędzi AI i SaaS
- **Chrome Enterprise Premium** ($6/użytkownik/miesiąc): real-time DLP, maskowanie danych, AI governance; deklarowany 50% spadek nieautoryzowanych transferów danych AI

---

## Implikacje dla rynku pracy

**Dane ogólne:**
- BLS (USA): zatrudnienie programistów wzrośnie ~**15% między 2024 a 2034**
- Oferty pracy dla software engineers skoczyły o **30% w 2026** — ponad 67 000 ogłoszeń (najwyżej od 3 lat)
- Paradoks: AI napędza rekordowe zwolnienia w tech, a jednocześnie rośnie popyt na doświadczonych programistów

**Zmiany strukturalne:**
- Big Tech **zmniejszył zatrudnianie świeżo upieczonych absolwentów o 25%** w 2024 roku
- Jednocześnie **zwiększył zatrudnianie o 27%** specjalistów z 2–5 latami doświadczenia
- AI "niszczy" wejście do branży dla juniorów, ale wzmacnia pozycję seniorów

**Specyficznie u Google:**
- Google w 2025 zatrudniał AI software engineers — z czego **20% to były pracownicy** (boomerang hiring)
- Google zwolnił 200 kontrahentów AI w 2025 (oficjalnie: "ramp-down")
- Wcześniej: ~12 000 pracowników zwolniono na początku 2023

**Co zyskuje na wartości:**
- Myślenie architektoniczne, zdolność do dekomponowania złożonych problemów
- Bezpieczeństwo systemów, audyty kodu
- Znajomość systemów rozproszonych i product thinking
- Umiejętność "sterowania" agentami AI (orkiestracja)

**Co traci na wartości:**
- Szybkie "speed-coding" rutynowych zadań
- Pisanie boilerplate'u, podstawowe implementacje

---

## Reakcje ekspertów

**Branżowe:**
- "Rozmowa przesunęła się z 'AI pomaga developerom' na 'AI wykonuje większość developmentu' — każdy CTO w Dolinie Krzemowej przelicza swój roadmap" *(komentarz branżowy)*
- "Google opuścił fazę eksperymentalną i wszedł w operacyjną zależność od AI — to niesie realne ryzyko obok wzrostu produktywności" *(komentarz analityczny)*
- 39% developerów nie ufa kodowi generowanemu przez AI — mimo że 75% używa AI codziennie

**Pytania bez odpowiedzi (krytyczne):**
- Google **nie ujawnił** ile % kodu AI jest odrzucane podczas review — to kluczowa miara jakości
- Bezpieczeństwo "supply chain": gdy większość kodu pochodzi od systemów, których nie rozumiemy w pełni — trudniej go audytować i zabezpieczać
- 11 min na review CL to mało — czy inżynierowie rzeczywiście rozumieją to co zatwierdzają?

---

## Szerszy trend

**Tempo wzrostu AI coding w Big Tech (oś czasu):**
- Październik 2024: Google ogłasza **>25%** kodu przez AI
- Kwiecień 2025: Microsoft — **30%**, Google przekracza **30%**
- Jesień 2025: Google — **50%**
- Kwiecień 2026: Google — **75%**, Meta zmierza do **75%**

**Co się dzieje w branży:**
- Branżowa średnia zbliżyła się do **50% kodu AI-generated** na początku 2026
- Shift w roli inżyniera: z "pisania kodu" do "orkiestrowania agentów"
- Google TPU 8t i 8i — własny hardware do trenowania i inferencji modeli na dużą skalę
- Gemini Enterprise Agent Platform jako "system operacyjny dla enterprise AI" — nowy produkt ogłoszony na Cloud Next 2026
- Branża software development skraca czas dostarczania produktów: migracje kodu 6x szybciej

**Ryzyka systemowe:**
- Większość nowego kodu tworzona przez systemy o niepełnej transparentności
- Trudność audytu, bezpieczeństwa, "własności" kodu
- Kto odpowiada za błąd: inżynier zatwierdzający po 11 minutach review czy model?

---

## Kąty contentowe

1. **"Kto teraz programuje w Google?"** — cała historia zmiany roli inżyniera: z autora kodu do recenzenta / orkiestratora agentów. Zrozumiałe dla nieprogramistów.

2. **"3/4 kodu piszą maszyny — i nikt nie stracił pracy?"** — paradoks: zwolnienia juniorów, wzrost popytu na seniorów. Hak: "więcej ofert, mniej juniorów".

3. **"Chrome teraz pracuje za ciebie"** — konkretne demo konceptu auto browse: wypełnia formularze, rezerwuje, porównuje ceny. Bliskie codziennemu życiu.

4. **"Od 25% do 75% w 18 miesięcy"** — samo tempo zmiany jako temat. Co było 18 miesięcy temu, co jest teraz, co za kolejne 18?

5. **"Microsoft 30%, Google 75% — wyścig AI między gigantami"** — porównanie firm jako forma rankingu. Kto wygrywa?

6. **"Inżynier w 2026 to nie programista"** — redefinicja zawodu: zamiast pisać kod, zarządzasz maszynami które piszą kod. Co to zmienia dla kogoś kto chce wejść do branży?

---

## Źródła

- [Sundar Pichai shares news from Google Cloud Next 2026 (blog.google)](https://blog.google/innovation-and-ai/infrastructure-and-cloud/google-cloud/cloud-next-2026-sundar-pichai/)
- [Google: 75% of our new code is written by AI (Sherwood News)](https://sherwood.news/tech/google-75-of-our-new-code-is-written-by-ai/)
- [75% Of Code At Google Is Now Generated By AI: CEO Sundar Pichai (OfficeChai)](https://officechai.com/ai/75-of-code-at-google-is-now-generated-by-ai-ceo-sundar-pichai/)
- [Google Reports 75% of New Code Is AI-Generated (Let's Data Science)](https://letsdatascience.com/news/google-reports-75-of-new-code-is-ai-generated-4fdef2d2)
- [AI Redefines Software Development: 75% of Google's Fresh Code (Archyde)](https://www.archyde.com/ai-redefines-software-development-75-of-googles-fresh-code-now-ai-generated-gadgets-news-april-2026/)
- [Google now generates three quarters of its own code with AI (Startup Fortune)](https://startupfortune.com/google-now-generates-three-quarters-of-its-own-code-with-ai-and-the-rest-of-the-industry-is-watching-closely/)
- [Chrome gets new Gemini 3 features, including auto browse (blog.google)](https://blog.google/products-and-platforms/products/chrome/gemini-3-auto-browse/)
- [Google turns Chrome into an AI co-worker for the workplace (TechCrunch)](https://techcrunch.com/2026/04/22/google-turns-chrome-into-an-ai-coworker-for-the-workplace/)
- [Google turns Chrome into an agentic AI workplace tool (The Next Web)](https://thenextweb.com/news/google-chrome-enterprise-ai-coworker-agentic-browser)
- [Google brings Auto Browse and Skills to Chrome Enterprise (BackBox News)](https://news.backbox.org/2026/04/22/google-brings-auto-browse-and-skills-to-chrome-enterprise-and-a-new-gemini-summary/)
- [Google announces 'Skills' for Gemini in Chrome (9to5Google)](https://9to5google.com/2026/04/14/gemini-in-chrome-skills/)
- [AI Is Taking Over Coding at Microsoft, Google, and Meta (Entrepreneur)](https://www.entrepreneur.com/business-news/ai-is-taking-over-coding-at-microsoft-google-and-meta/490896)
- [Microsoft CEO says up to 30% of the company's code was written by AI (TechCrunch)](https://techcrunch.com/2025/04/29/microsoft-ceo-says-up-to-30-of-the-companys-code-was-written-by-ai/)
- [Meta AI and the 75% AI Coding Target by 2026 (Blockchain Council)](https://www.blockchain-council.org/news/meta-ai-asking-engineers-75-percent-code-ai-tools-2026/)
- [The demise of software engineering jobs has been greatly exaggerated (CNN Business)](https://www.cnn.com/2026/04/08/tech/ai-software-developer-jobs)
- [Software Engineer Job Listings Are Up 30% in 2026 (Metaintro)](https://www.metaintro.com/blog/software-engineer-job-listings-spike-2026-ai-demand)
- [AI-Generated Code Statistics 2026 (NetCorp Software Development)](https://www.netcorpsoftwaredevelopment.com/blog/ai-generated-code-statistics)
- [AI in software engineering at Google: Progress and the path ahead (Google Research)](https://research.google/blog/ai-in-software-engineering-at-google-progress-and-the-path-ahead/)
- [Quite a few of the AI software engineers hired by Google in 2025 were actually ex-employees (TechRadar)](https://www.techradar.com/pro/quite-a-few-of-the-ai-software-engineers-hired-by-google-in-2025-were-actually-ex-employees)
- [Google Cloud Next 2026: all the live details (TechRadar)](https://www.techradar.com/pro/live/google-cloud-next-2026)
