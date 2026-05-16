# Google Cloud Next 2026 — notatka badawcza

**Data konferencji:** 22–24 kwietnia 2026, Las Vegas
**Liczba ogłoszeń:** 260 produktów, partnerów i case studies
**Główny temat:** "Agentic Enterprise" — przeniesienie AI z pilotów do produkcji

---

## 1. Gemini Personal Intelligence

### Jak działa
- Bezpłatna integracja z aplikacjami Google: Gmail, Calendar, Drive, Google Photos, YouTube, Search, Maps
- Dostęp do tekstu, zdjęć i wideo z aplikacji first-party Google
- Personalizuje odpowiedzi bez dodatkowego promtowania użytkownika
- Działa jako domyślny kontekst dla każdego promptu (po włączeniu)
- Można wyłączyć per-prompt przez nowy przełącznik w menu Tools

### Prywatność i kontrola
- Funkcja **opt-in** — użytkownik sam wybiera, do których aplikacji Gemini ma dostęp
- Można cofnąć dostęp do konkretnych aplikacji w dowolnym momencie

### Dostępność
- Rollout od kwietnia 2026
- Niedostępne w Europie (na razie)
- Kolejność: najpierw subskrybenci Google AI Plus, Pro i Ultra — potem bezpłatni użytkownicy ("w ciągu kilku tygodni")
- Zarówno dla osób prywatnych, jak i firm (jako część pakietu Workspace Intelligence dla enterprise)

### Workspace Intelligence (wariant enterprise)
- Oddzielna funkcja dla firm: rozumie semantyczne relacje wewnątrz Workspace (Docs, Slides, Gmail)
- Kontekst: aktywne projekty, współpracownicy, wiedza domenowa organizacji
- Działa w czasie rzeczywistym

---

## 2. Import historii z innych chatbotów

### Co jest możliwe
- Import "memories" (preferencji i danych osobowych) z innych chatbotów AI bezpośrednio do Gemini
- Import całych historii rozmów z konkurencyjnych aplikacji

### Obsługiwane platformy
- **ChatGPT** — potwierdzony
- **Claude (Anthropic)** — potwierdzony
- Mechanizm: eksport danych w formacie ZIP z chatbota źródłowego, upload do Gemini
- Brak oficjalnej pełnej listy wszystkich obsługiwanych platform

### Kontekst
- Funkcja dostępna od marca 2026 (TechCrunch: 26 marca 2026) — ogłoszona wcześniej, ale Google podkreślało ją podczas Next '26 jako element Personal Intelligence
- Strategia: obniżenie bariery przejścia od konkurentów do Gemini

---

## 3. Gemini Enterprise Agent Platform

### Co to jest
- Ewolucja Vertex AI — pełna platforma do budowania, skalowania, zarządzania i optymalizacji agentów AI
- Opisywana jako "mission control for the agentic enterprise"

### Kluczowe komponenty
- **Agent Studio** — budowanie od prostych promptów do złożonych agentów; eksport logiki do ADK dla full-code customizacji
- **Agent Designer** — nowy interfejs projektowania agentów w aplikacji Gemini Enterprise
- **Agent Development Kit (ADK)** — organizuje agentów w sieć sub-agentów z graph-based framework; definiuje logikę współpracy agentów
- **Inbox** — zarządzanie aktywnością agentów (długo działających)
- **Agent Gallery** — marketplace gotowych agentów od partnerów trzecich
- **Knowledge Catalog** — gruntowanie agentów w zaufanym kontekście biznesowym z całego data estate
- **Data Agent Kit** — Gemini-powered authoring dla data science
- **Agentic Data Cloud** — cross-cloud lakehouse z AI-native architekturą

### Partnerzy w Agent Gallery
Accenture, Adobe, Atlassian, Deloitte, Lovable, Oracle, Palo Alto Networks, Replit, S&P Global, Salesforce, SAP, ServiceNow, Workday

### Inwestycje w ekosystem
- $750 milionów na rozwój sieci partnerskiej dla agentic AI
- Google ogłosiło partnerstwa z głównymi integratorami i dostawcami software enterprise

---

## 4. Ósma generacja TPU — TPU 8t i TPU 8i

### Kluczowa zmiana strategiczna
Google po raz pierwszy **rozdzieliło** chip na dwa wyspecjalizowane produkty:
- **TPU 8t** — do trenowania modeli (training)
- **TPU 8i** — do inferencji / agentów (inference)

Analitycy oceniają to jako przyznanie, że jeden układ nie może efektywnie obsłużyć obu zadań. The Register: "structural admission that reframes the competitive narrative."

### TPU 8i — specyfikacja
- 10,1 petaFLOPS obliczeń FP4
- 384 MB SRAM on-chip (3x więcej niż poprzednia generacja)
- 288 GB HBM z przepustowością 8,6 TB/s
- Przepustowość ICI: 19,2 Tb/s (2x więcej)
- Dedykowany Collectives Acceleration Engine (CAE) — redukuje latencję on-chip do 5x
- **80% lepszy performance-per-dollar** dla inferencji vs poprzednia generacja (Ironwood)
- Cel: ultra-low latency dla agentic workloads i modeli Mixture of Experts

### TPU 8t — specyfikacja
- Skala: do 9 600 chipów w jednym superpod
- 2 petabajty HBM w superpodzie
- 2x większa przepustowość interchip vs poprzednia generacja
- **2,7x lepszy performance-per-dollar** dla large-scale training vs Ironwood

### Porównanie z konkurencją

**vs NVIDIA Blackwell:**
- TPU 8i porównywalny z Blackwell na papierze
- Różnica: TPU 8i skupiony na KV Cache (krótkoterminowa pamięć modelu) — więcej SRAM trzyma cache na chipie, mniej czasu na czekanie na dane
- NVIDIA odpowiedź: Vera Rubin NVL72 (docelowy rywal)
- Virgo Network Google obsługuje zarówno TPU 8t superpody, jak i NVIDIA Vera Rubin NVL72 — Google nie wyklucza własnych klientów używających NVIDIA

**vs AWS Trainium3:**
- AWS Trainium3 (re:Invent 2025): single-SKU, 3nm, ~2,52 PFLOPs FP8, 144 GB HBM3e per chip
- AWS podejście: konwergencja (jeden chip do training i inference)
- Google podejście: bifurkacja (dwa wyspecjalizowane chipy)

**Dostępność:** obydwa chipy ogłoszone jako "generally available later this year" (2026)

---

## 5. Gemini 3.1 Flash-Lite

### Parametry
- Cena: **$0,25 / 1M tokenów input**, $1,50 / 1M tokenów output
- Szybkość: **2,5x szybszy** Time to First Token vs Gemini 2.5 Flash
- Output: **45% szybszy** (345,7 tokenów/sekundę)
- Context window: 1 048 576 tokenów
- Max output: 65 536 tokenów

### Benchmarki
- Elo score 1432 na Arena.ai Leaderboard
- GPQA Diamond: 86,9%
- MMMU Pro: 76,8%
- Koszt ~1/8 ceny Gemini Pro

### Dostępność
- Preview dla deweloperów przez Gemini API i Google AI Studio
- Enterprise: przez Vertex AI

---

## 6. Inne kluczowe ogłoszenia z Next '26

### Infrastruktura sieciowa — Virgo Network
- Nowa megaskalowalna sieć datacenter do AI Hypercomputer
- Łączy do **134 000 chipów** w jednej domenie obliczeniowej
- Obsługuje TPU 8t superpody i NVIDIA Vera Rubin NVL72
- Cel: distributed training frontier models

### Storage
- **Managed Lustre** — przepustowość do **10 TB/s**
- Cel: obsługa danych treningowych na dużą skalę

### Bezpieczeństwo — Agentic Defense
- Połączenie Google Threat Intelligence + Security Operations + Wiz (przejęcie Google) Cloud Security Platform
- Cel: prevent, detect, respond na zagrożenia w środowiskach agentowych

### Google Workspace — nowe funkcje
- Interaktywne wizualizacje danych w Sheets
- Skills dla automatyzacji agentowej w Workspace Studio
- Workspace Intelligence: semantyczne rozumienie relacji między projektami, współpracownikami i domeną organizacji

### Alphabet capex
- $75 miliardów wydatków kapitałowych na 2026 — głównie infrastruktura AI

---

## 7. Reakcje analityków i kontekst rynkowy

### Ocena strategii Google Cloud

**Futurum Group:**
> "Od chaosu agentowego do inżynierowanej inteligencji" — dojrzewanie, nie iteracja. Google prezentuje AI jako zdolną do produkcji, a nie tylko pilotów.

**The CUBE Research:**
> Kluczowy shift: od eksperymentalnych agentów do systemów obserwowalnych i zarządzanych.

**Constellation Research:**
> Zintegrowany stack AI Google może generować wyniki — TPU na dole, networking, data cloud, agent engine i aplikacje na górze.

**Ogólna ocena branży:**
> "Najsilniejsza technologia AI, najsłabsza sprzedaż enterprise, najsilniejszy developer tooling dla AI-first aplikacji."

### Udziały w rynku cloud (2026)
| Provider | Udział rynkowy | Wzrost YoY |
|----------|---------------|-----------|
| AWS | ~32% | ~18% |
| Azure | ~23% | ~25% |
| Google Cloud | ~11% | ~28% |

GCP Q4 2025: $17,7 mld przychodów (+48% YoY)

### Kontekst walki o klientów AI
- Rynek cloud coraz bardziej definiowany przez AI: inferencja, dostęp do modeli, tooling dla deweloperów AI
- Google pozycjonuje się: technologia > enterprise sales
- Azure zbliża się do AWS (parytet możliwy ok. 2028–2029)
- Pytanie kluczowe: czy AI-first strategia Google zmieni układ sił?

---

## Źródła

- Google Cloud Blog — Wrap Up: https://cloud.google.com/blog/topics/google-cloud-next/google-cloud-next-2026-wrap-up
- WorldEF: https://worldef.com/2026/04/23/google-cloud-next-2026-agentic-ai-growth/
- TechCrunch (TPU chips): https://techcrunch.com/2026/04/22/google-cloud-next-new-tpu-ai-chips-compete-with-nvidia/
- The Register (TPU 8 dual track): https://www.theregister.com/2026/04/22/google_tpu8_dual_track_training_inference/
- Google Blog (8th gen TPU): https://blog.google/innovation-and-ai/infrastructure-and-cloud/google-cloud/eighth-generation-tpu-agentic-era/
- Google Cloud Blog (AI infrastructure Next '26): https://cloud.google.com/blog/products/compute/ai-infrastructure-at-next26
- Virtualization Review (Enterprise Agent Platform): https://virtualizationreview.com/articles/2026/04/24/google-cloud-next-26-gemini-enterprise-agent-platform-leads-ai-centric-news.aspx
- 9to5Google (Personal Intelligence global): https://9to5google.com/2026/04/14/gemini-personal-intelligence-global/
- TechCrunch (chatbot history import): https://techcrunch.com/2026/03/26/you-can-now-transfer-your-chats-and-personal-information-from-other-chatbots-directly-into-gemini/
- Google Blog (Gemini 3.1 Flash Lite): https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-1-flash-lite/
- VentureBeat (Gemini 3.1 Flash Lite): https://venturebeat.com/technology/google-releases-gemini-3-1-flash-lite-at-1-8th-the-cost-of-pro
- Futurum Group (analiza): https://futurumgroup.com/insights/from-silicon-to-security-architecting-the-autonomous-enterprise-at-google-cloud-next-2026/
- HyperFrame Research (TPU bifurcation): https://hyperframeresearch.com/2026/04/22/google-cloud-next-2026-google-cloud-bifurcates-the-ai-future-specialized-tpu-8t-and-8i-architectures-signal-the-end-of-general-purpose-silicon/
- Cloud market share: https://www.programming-helper.com/tech/cloud-computing-market-share-2026-aws-azure-google-cloud-analysis
- Sundar Pichai Next '26: https://blog.google/innovation-and-ai/infrastructure-and-cloud/google-cloud/cloud-next-2026-sundar-pichai/
- Google Workspace Blog: https://workspace.google.com/blog/product-announcements/10-more-announcements-workspace-at-next-2026
