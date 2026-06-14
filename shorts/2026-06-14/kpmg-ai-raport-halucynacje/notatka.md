# 4. KPMG wycofuje raport o AI bo... jest pełen halucynacji AI

**Data:** 2026-06-14
**Temat:** KPMG — jedna z Wielkiej Czwórki, sprzedająca usługi "AI governance" za miliony — wycofała flagowy raport o agentic AI po tym, jak okazało się, że 40 z 45 cytowań to halucynacje wygenerowane przez AI, a sfabrykowane case studies obejmują UBS, NHS, SBB i Transport for London.

---

## Kluczowe fakty i liczby

- KPMG wycofało raport **"Total Experience: Redefining Excellence in the Age of Agentic AI"** opublikowany w **październiku 2025 roku**.
- Z **45 cytowań** w raporcie tylko **5 poprawnie wskazywało na realne źródła** — czyli **ok. 11%**.
- **28 cytowań** miało sparafrazowane tytuły lub sfabrykowane elementy (np. fałszywych autorów dopisanych do realnej publikacji).
- **12 cytowań** było zbyt nieprecyzyjnych, żeby w ogóle ustalić, czy źródło istnieje.
- **40 z 45 tytułów cytowań było zmyślonych** — to **89% "Flawed"** według narzędzia Hallucination Check.
- **Roughly 50% faktów** w raporcie było fałszywych, niepopartych źródłami lub przypisanych do złego źródła.
- Raport wewnętrznie zaprzeczał sam sobie: twierdził, że **55% CEO** stawia AI jako priorytet inwestycyjny, podczas gdy **własny raport KPMG 2025 CEO Outlook** mówił o **71%**.
- Skala wpadki: KPMG działa w **138 krajach** i zatrudnia **250 000+ pracowników** (po deal'u z Anthropic — **276 000**).
- AI-Detection scan: **56% Mixed** — czyli ponad połowa tekstu wygląda jak generowana przez LLM.

## Kto wykrył i jak

- Wpadkę wykrył **GPTZero** — firma od detekcji treści AI — używając własnego narzędzia **Hallucination Check**.
- Wyniki przekazali **Financial Times**, który zweryfikował zarzuty bezpośrednio u instytucji wymienionych jako "case studies".
- FT opublikował artykuł **12 czerwca 2026**, dalej podchwycił to TechCrunch, The Register, City AM, Engadget, TheNextWeb.
- GPTZero wprowadziło termin **"vibe citing"** — analogicznie do "vibe coding" — czyli generowanie cytowań przez LLM, który skleja fragmenty prawdziwych źródeł, wymyśla tytuły i tworzy referencje wyglądające wiarygodnie, dopóki ktoś w nie nie kliknie.

## Sfabrykowane case studies — kto i co zaprzeczył

| Instytucja | Co twierdził raport KPMG | Oficjalna odpowiedź |
|---|---|---|
| **UBS** | Integruje AI agents w doradztwie inwestycyjnym, risk management i compliance via platforma współtworzona z Microsoft | **"Factually incorrect"** |
| **Swiss Federal Railways (SBB)** | Oferuje AI agents do planowania podróży z optymalizacją śladu węglowego | **"Not accurate"** |
| **Transport for London (TfL)** | Używa AI agents do predykcji i zarządzania korkami | **"Misleading"** |
| **NHS Greater Manchester** | AI-driven triage pacjentów i predykcja rehospitalizacji | **"Doesn't really align"** z press release, który raport cytował jako źródło |
| **Emirates** | Chatbot "Sara" zmieniał loty pasażerom | W rzeczywistości Sara to prosty asystent mobilny z **2023**, bez funkcji modyfikacji rezerwacji |
| **JR East (Japan Railways)** | Cytowany jako przykład agentic AI | Cytowanie nr 19 — **press release z 2019**, czyli zanim agentic AI w ogóle pojawił się w dyskursie publicznym (2024) |
| **Verbund (austriacki energetyk)** | Twierdzenia o "energy-as-a-service ecosystems" na poziomie gospodarstw domowych | Źródło faktycznie opisywało inwestycję VC w startup — nic wspólnego z opisem |

## Oficjalna odpowiedź KPMG

> **"KPMG International takes the accuracy and integrity of its published content seriously. The report has been removed and we are reviewing the circumstances surrounding its publication."**

> **"We expect all our people to follow our guidelines on the responsible use of AI, including human oversight to validate content and verify independent sources."**

Tłumaczenie: "wewnętrzne dochodzenie w toku, oczekujemy human oversight". Czyli pracownicy KPMG nie zastosowali się do guidelines KPMG na temat AI, w raporcie KPMG o AI.

## Kontekst biznesowy — co KPMG sprzedaje

- KPMG ma własny pion **AI Performance & Governance** — konsulting strategiczny dla firm wdrażających AI: strategie, struktury governance, wytyczne techniczne, "reliability, accountability and transparency".
- Produkt **KPMG AI Jumpstart** — startup-pakiet wdrożeniowy.
- Produkt **AI Trust** — usługa audytu i zarządzania ryzykiem AI.
- W maju 2026 KPMG podpisało **strategiczny sojusz z Anthropic**: Claude trafia do **wszystkich 276 000+ pracowników** przez platformę KPMG Digital Gateway. Claude Cowork + Managed Agents API zintegrowane w workflow tax/audit/advisory.
- Plan inwestycyjny: **$2 mld w 5 lat** w AI, cel — **$12 mld dodatkowego revenue**.
- Konkretne ceny AI governance consultingu KPMG nie są publiczne (model project-based, miliony za engagement dla korporacji enterprise).

## Big Four ma większy problem — to nie pierwsza wpadka

| Firma | Incident | Skala |
|---|---|---|
| **Deloitte Australia** (lipiec–październik 2025) | Raport za **A$440 000 (~$290 tys.)** dla rządu Australii (DEWR) audytujący system automatyzacji kar welfare zawierał zmyślone cytowania akademickie, nieistniejące osoby z PhD, sfabrykowane cytaty z wyroku Federal Court (z błędnie napisanym nazwiskiem sędziego) i fikcyjne case law. Wykrył dr Chris Rudge (Sydney Uni). **Deloitte zwrócił część pieniędzy.** Nowa wersja przyznała, że użyto **Azure OpenAI**. |
| **EY Canada** (maj 2026) | Wycofało studium **"Points of Attack: Uncovering Cyber Threats and Fraud in Loyalty Systems"**. GPTZero: **16 z 27 cytowań halucynowanych, 72% raportu wygenerowane przez AI**, cytowany "raport McKinsey", który nie istnieje. |
| **KPMG Australia** (lipiec–sierpień 2025) | Partner KPMG ukarany grzywną **A$10 000+** za wgranie podręcznika do AI podczas wewnętrznego egzaminu. **28 przypadków** ściągania na egzaminach z użyciem AI. Self-report do ASIC. |
| **KPMG International** (czerwiec 2026) | Aktualna sprawa — opisana wyżej. |
| **South Africa national AI policy** | Wycofana po wykryciu sfabrykowanych cytowań AI. |

Spośród Wielkiej Czwórki **PwC** to jedyna firma, której do tej pory nie złapano na publikacji halucynowanego raportu — choć ich cel to **20–25% globalnego revenue advisory z AI**.

## Paradoks i implikacje

- KPMG sprzedaje korporacjom **"AI governance"** — czyli usługi mające zapewniać, że AI klienta jest **wiarygodne, nadzorowane i weryfikowalne**.
- Ich własny flagowy raport o agentic AI **został wygenerowany przez AI bez weryfikacji** — dokładnie te grzechy, przed którymi KPMG ostrzega swoich klientów.
- Wszystkie cztery firmy Big Four zarobiły **>$9 mld** na rozwoju AI w ostatnich latach i wciąż produkują halucynowane raporty.
- Klienci, którzy płacą Big Four za AI advisory, dostają dokumenty napisane przez ChatGPT bez human review — i nie wiedzą o tym, dopóki ktoś z zewnątrz nie złapie.
- Sprawa zbiegła się w czasie z deal'em KPMG–Anthropic (Claude dla 276 tys. ludzi). Teraz wszyscy zastanawiają się, czy Claude'a użyto już do raportu z października 2025 (Anthropic nie potwierdza, ale timing jest zabawny).

---

## Potencjalne kąty narracyjne do shorta

1. **"Firma sprzedaje AI governance — i sama publikuje raport pełen halucynacji AI."** (paradoks, hook 1)
2. **"40 z 45 cytowań w raporcie KPMG to halucynacje. Zostało 5 prawdziwych."** (konkretna liczba, brutalna)
3. **"KPMG zapytał AI o sukcesy AI w UBS, NHS, Transport for London. AI wszystko zmyśliło. KPMG nie sprawdziło i wydało."** (mikronarracja: sekwencja błędów)
4. **"Jedna z Wielkiej Czwórki wycofała raport o AI bo... napisała go AI."** (klasyczny meta-paradoks)
5. **"Konsultanci za miliony dolarów oddali pracę ChatGPT i nie przeczytali co napisał."** (drama, klasowy konflikt)
6. **"89% raportu KPMG o AI to fake. I to nie pierwsza taka wpadka Big Four — Deloitte już zwrócił $290 tysięcy rządowi."** (porównanie, eskalacja)
7. **"GPTZero ma nową nazwę dla tego zjawiska: 'vibe citing'. KPMG właśnie pokazało, jak to wygląda w praktyce — za miliony klienta."** (terminologia, expertise)

---

## Źródła

- [GPTZero — Chasing the Hallucinations: KPMG's AI-Powered Attempt at "Redefining Excellence"](https://gptzero.me/news/investigations-kpmg/) (primary investigation)
- [Financial Times via Finextra — KPMG report contained AI hallucinations about AI use at UBS](https://www.finextra.com/newsarticle/47911/kpmg-report-contained-ai-hallucinations-about-ai-use-at-ubs---ft)
- [TechCrunch — KPMG pulls report on AI usage due to apparent hallucinations](https://techcrunch.com/2026/06/13/kpmg-pulls-report-on-ai-usage-due-to-apparent-hallucinations/)
- [The Register — KPMG's AI report becomes an accidental demo of AI hallucinations](https://www.theregister.com/ai-and-ml/2026/06/12/kpmgs-ai-report-turns-into-a-demo-of-ai-hallucinations/5255029)
- [SWI Swissinfo — KPMG report contained AI hallucinations on benefits of... AI](https://www.swissinfo.ch/eng/swiss-ai/kpmg-report-contained-ai-hallucinations-on-benefits-of-ai/91574511)
- [Finance Monthly — KPMG Pulls AI Report After UBS, NHS and TfL Case Studies Found to Contain Hallucinations](https://www.finance-monthly.com/kpmg-ai-report-hallucinations-ubs-nhs-transport-for-london/)
- [TheNextWeb — KPMG pulled its AI report after UBS, the NHS, and others said its claims about them were made up](https://thenextweb.com/news/kpmg-ai-report-hallucinations-pulled)
- [Engadget — A report on the benefits of AI was reportedly full of AI hallucinations](https://www.engadget.com/2193679/kpmg-paper-ai-hallucinations/)
- [Anthropic — KPMG integrates Claude across its core business and workforce of more than 276,000](https://www.anthropic.com/news/anthropic-kpmg) (kontekst sojuszu)
- [Fortune — Deloitte Australia $290k refund AI hallucinations](https://fortune.com/2025/10/07/deloitte-ai-australia-government-report-hallucinations-technology-290000-refund)
- [International Accounting Bulletin — EY removes loyalty rewards study after AI hallucinations found](https://www.internationalaccountingbulletin.com/news/ey-removes-loyalty-rewards-study-after-ai-hallucinations-found/)
- [Yahoo Finance — KPMG Australia penalises partner for AI misuse](https://finance.yahoo.com/news/kpmg-australia-penalises-partner-ai-093149648.html)
- [City AM — KPMG report on AI found riddled with AI hallucinations](https://www.cityam.com/kpmg-report-on-ai-found-riddled-with-ai-hallucinations/)
