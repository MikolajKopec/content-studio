# Microsoft Word dostaje AI-agenta do przeglądu umów

**Data:** 2026-05-16
**Temat:** Microsoft wbudował w Worda dedykowanego agenta Legal Agent do przeglądu umów klauzula po klauzuli — pierwszy raz duży gracz konsumencki wchodzi bezpośrednio na grunt legaltechu i podcina pracę paralegalów oraz wycenę startupów typu Harvey AI.

---

## Kluczowe fakty i liczby

- **30 kwietnia 2026** Microsoft uruchomił Legal Agent w Wordzie — dedykowanego agenta AI do przeglądu umów, wbudowanego w Worda na Windows desktop (Artificial Lawyer, Microsoft 365 Copilot Blog).
- Dostęp tylko dla użytkowników z **aktywną licencją Microsoft 365 Copilot** zapisanych do programu **Frontier** (USA), w wersji Worda **2604+** na Current Channel lub Monthly Enterprise Channel (Microsoft Support).
- Pod spodem nie pracuje GPT, tylko **Anthropic Claude** — tenant musi mieć włączonego "Anthropic enabled" jako subprocessor. Microsoft po raz pierwszy w produkcie tej rangi obstawił modele konkurenta OpenAI (Microsoft Support, Platinum IDS).
- Koszt krańcowy uruchomienia agenta to faktycznie **~30 USD/użytkownik/miesiąc** w ramach licencji Copilot — w porównaniu z **1 000–1 200 USD/seat/miesiąc** za Harvey AI i **~180 USD/seat/miesiąc** za Spellbook (Platinum IDS, AI Vortex, Irys).
- Microsoft 365 E7 "Frontier Suite" wszedł w GA **1 maja 2026** w cenie **99 USD/użytkownik/miesiąc**, z dołożonym Agent 365 (warstwa kontroli agentów) za **15 USD/użytkownik/miesiąc** (Microsoft Blog, 9.03.2026 i 1.05.2026).
- Zespół, który zbudował produkt, to **18 osób przejętych w styczniu 2026 acqui-hirem z Robin AI** — londyńskiego startupu legaltech, który nie domknął rundy ~50 mln USD i musiał się rozsprzedać (Legal IT Insider, Artificial Lawyer).
- Bureau of Labor Statistics liczy w USA **367 220 paralegalów** i 39 300 rocznych otwarć stanowisk do 2034 — Legal Trends Report 2024 mówi, że **69% billable pracy paralegala da się zautomatyzować** (Spellbook, ParalegalEdu.org).
- Rynkowy benchmark ceny przeglądu jednego dokumentu: **0,11–0,50 USD przez AI** vs **0,50–1,00 USD przez człowieka** — bezpośrednia presja ekonomiczna na zewnętrzny review (ComplexDiscovery).
- **39,6% respondentów** raportuje brak widoczności w to, jak kontrakty na AI-assisted review obsługują "failed documents" — ryzyko governance jest realne (ComplexDiscovery).

---

## Co dokładnie potrafi Legal Agent

- **Klauzula po klauzuli** porównuje umowę z firmowym playbookiem; znaczniki kolorami: szary (nieistotne), zielony (zgodne), jasnoczerwony (do zmiany), ciemnoczerwony (do dodania/usunięcia) — Microsoft Support.
- Generuje **redliny jako tracked changes** w natywnym formacie Worda; każda zmiana ma opcję Accept lub Accept with Comment z wyjaśnieniem.
- Numerowane **klikalne cytaty** w odpowiedziach — pokazują, do której części dokumentu odnosi się sugestia.
- **Oddziela historyczne rewizje od nowych propozycji**, zachowując linię negocjacji.
- Działa na "deterministycznej warstwie rezolucji" — custom-algorytm pilnuje, żeby model nie halucynował edycji nieliniowo (the-decoder, Platinum IDS).
- **Limit dziś:** review tylko z playbooków, jeszcze nie z szablonów ani innych dokumentów porównawczych (Microsoft Support).

---

## Frontier program — co to jest

- Wczesny dostęp do funkcji AI w Microsoft 365 i Copilocie przed GA — Microsoft uruchomił go w marcu 2026 razem z całym pakietem Frontier Transformation.
- Wewnątrz Frontiera siedzą m.in. **Cowork** (multi-step agent oparty na Anthropic), Claude w mainline chacie Copilota obok modeli OpenAI, oraz Legal Agent.
- Wymaga aktywnej licencji M365 Copilot, opt-inu admina tenanta i włączenia Anthropic jako subprocesora. Wersja konsumencka i międzynarodowa: na razie zerowa.

---

## Konkurencja — kogo to boli

| Gracz | Pozycjonowanie | Cena/seat/mies. | Ryzyko od Microsoftu |
|---|---|---|---|
| **Harvey AI** | Am Law 100, full-stack legal AI, wycena 11 mld USD | **1 000–1 200 USD** | Trzyma się premium-segmentu i workflow firmowego, ale stracił narrację "AI w dokumencie" |
| **Spellbook** | Mid-market/SMB, plugin do Worda | **~180 USD** | Bezpośredni cios — Microsoft robi to samo natywnie w 1/6 ceny |
| **Ironclad** | CLM dla in-house, integracja z systemami | różne tiery enterprise | Defensywny moat w matter management, ale review-only product traci sens |
| **Legora** | Vertical legal AI | enterprise | Walczy o specjalizację w research/knowledge |
| **Claude for Word (Anthropic)** | Wtyczka konsumencka | tańsza | Ironia: Microsoft go pokonuje, używając ich własnego modelu pod spodem |

ComplexDiscovery mówi wprost: rynek się rozszczepia — productivity-suite-native agents kolonizują dokument, w którym prawnik już siedzi; vertical vendors muszą wbić się głębiej w workflow kancelarii albo zniknąć.

---

## Implikacje dla rynku pracy prawników

- Sam Microsoft nie używa frazy "junior lawyer killer", ale spec do paralegalskiej roboty jest jednoznaczny: clause review, redlines, version diff — to **rdzeń pierwszego roku w kancelarii**.
- Analitycy z LeanLaw, Clio i MyCase trzymają linię "AI not replacement, but augmentation" — ale ta narracja powstała przed produktem, który robi pełen review za 30 USD/seat.
- Konserwatywny scenariusz: 30–50% spadek godzin billowanych za "first pass review" w kancelariach przyjmujących Legal Agent w ciągu 12–18 miesięcy.
- Agresywny scenariusz: konsolidacja segmentu paralegalów (juniorów) i przesunięcie pracy ku negocjacji, complex problem-solving i client management — czyli tym 31% pracy, których Legal Trends Report nie uznał za automatyzowalne.

---

## Potencjalne kąty narracyjne do shorta

1. **"Word właśnie zwolnił twojego paralegała"** — twardy hook: Microsoft wbudował agenta, który robi pierwszy review umowy za 30 dolców miesięcznie, a kancelaria bierze 200–400 USD za godzinę za to samo.
2. **"Microsoft Word czyta umowę szybciej niż twój prawnik — i daje cytaty"** — pokazać, że Legal Agent linkuje do konkretnych klauzul, robi tracked changes, kolory ryzyka. To nie chatbot, to narzędzie.
3. **"Harvey AI ma wycenę 11 miliardów. Microsoft właśnie zrobił to samo za 1/40 ceny"** — kontrast cenowy 1 200 USD vs 30 USD; pytanie czy wycena Harveya się obroni.
4. **"Microsoft buduje legal AI na modelu Anthropica, nie OpenAI"** — niespodzianka strategiczna: Claude jest pod maską produktu Wordowego, Satya wybiera najlepsze narzędzie, nie partnera.
5. **"Robin AI upadło. Microsoft przejął 18 inżynierów i 4 miesiące później ma produkt"** — story acqui-hire: jak Microsoft kupił legaltechową kompetencję za bezcen po failu fundraisingowym.
6. **"Pierwszy raz od 30 lat Word robi coś nowego — i to coś zmienia całą branżę prawniczą"** — meme'owy hook: Word, który był "tylko edytorem", właśnie został agentem.
7. **"69% pracy paralegala da się zautomatyzować. Microsoft właśnie wziął tę liczbę i zrobił z niej produkt"** — twarda statystyka + konkretna implementacja.

---

## Źródła

- Microsoft 365 Copilot Blog, "Word: Legal Agent in Frontier" — https://techcommunity.microsoft.com/blog/microsoft365copilotblog/word-legal-agent-in-frontier/4516218 (primary)
- Microsoft Support, "Get started with the Legal Agent (Frontier)" — https://support.microsoft.com/en-us/office/get-started-with-the-legal-agent-frontier-c72cc686-552b-45d4-9e46-d731f9d57052 (primary)
- Microsoft Blog, "Powering Frontier Transformation with Copilot and agents", 9.03.2026 — https://www.microsoft.com/en-us/microsoft-365/blog/2026/03/09/powering-frontier-transformation-with-copilot-and-agents/ (primary)
- Microsoft Security Blog, "Microsoft Agent 365, now generally available", 1.05.2026 — https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/ (primary)
- Artificial Lawyer, "Microsoft Launches Its Own Legal Agent For Word", 30.04.2026 — https://www.artificiallawyer.com/2026/04/30/microsoft-launches-its-own-legal-agent-for-word/
- Legal IT Insider, "Microsoft hires raft of Robin AI engineers", 12.01.2026 — https://legaltechnology.com/2026/01/12/microsoft-hires-raft-of-robin-ai-engineers-to-bolster-its-word-team/
- ComplexDiscovery, "Microsoft puts Legal Agent inside Word, sharpening contract-review competition" — https://complexdiscovery.com/microsoft-puts-legal-agent-inside-word-sharpening-contract-review-competition/
- the-decoder, "Microsoft puts an AI legal agent inside Word for contract review" — https://the-decoder.com/microsoft-puts-an-ai-legal-agent-inside-word-for-contract-review/
- Platinum IDS Blog, "The 30-Dollar Legal Agent: Microsoft Ships Inside Word" — https://blog.platinumids.com/blog/microsoft-word-legal-agent-2026
- AI Vortex, "Harvey AI vs Spellbook: 2026 Pricing" — https://www.aivortex.io/legal/ai-tools/harvey-ai-vs-spellbook/
- Irys, "Legal AI Pricing Landscape April 2026" — https://www.irys.ai/insights/market/legal-ai-pricing-landscape-april-2026
- Spellbook, "Will AI Replace Paralegals?" — https://spellbook.com/learn/will-ai-replace-paralegals
- ParalegalEdu.org, "Will AI Replace Paralegals? 2026 Job Security Facts" — https://www.paralegaledu.org/blog/could-you-be-replaced-by-legal-software/
