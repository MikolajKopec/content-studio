# Anthropic Claude Tag: @Claude jako stały członek zespołu w Slack

**Data:** 2026-06-25
**Temat:** Anthropic zastępuje chatbota w Slack agentem z pamięcią i trybem autonomicznym — Claude Tag działa jak stały pracownik kanału, nie jednorazowy asystent

---

## Kluczowe fakty i liczby

- **23 czerwca 2026** — oficjalny launch Claude Tag w wersji beta; dostępny od razu dla klientów Claude Enterprise i Claude Team
- Wewnętrznie w Anthropic Claude Tag odpowiada za **65%** kodu tworzonego przez zespół produktowy — wliczając kod, który zbudował samego Claude Tag
- Stary bot "Claude in Slack" zostaje wyłączony **3 sierpnia 2026** — administratorzy mają **30 dni** na migrację
- Jeden @Claude na kanał — **jedna wspólna tożsamość** dla całego zespołu; kontekst i historia zadań są widoczne dla wszystkich członków
- Claude Tag działa na modelu **Opus 4.8** — nie na lżejszych wariantach
- Administratorzy ustawiają **miesięczny limit tokenów** osobno dla każdego kanału i dla całej organizacji — kontrola kosztów bez blokowania użycia
- Anthropic po raz pierwszy wyprzedziło OpenAI w adopcji enterprise: **34,4% vs 32,3%** firm — Claude Code napędza ten wzrost, Claude Tag ma go utrwalić

## Co potrafi

**Tryb zadaniowy (@Claude wykonaj X):**
Claude rozbija zadanie na etapy, realizuje je autonomicznie używając dostępnych narzędzi i raportuje postępy w wątku Slackowym. Działa asynchronicznie — może pracować godzinami lub dniami.

**Tryb ambient (proaktywny):**
Claude sam z siebie monitoruje kanał i organizację, flaguje ważne informacje, przypomina o zawieszonych wątkach i informuje zespół o zmianach — bez konieczności @wzmiankowania.

**Pamięć kontekstowa:**
Claude uczy się z historii kanału; może też automatycznie zbierać fakty z innych kanałów, jeśli admin mu to umożliwi. Pamięć jest izolowana per kanał — Claude z działu sprzedaży nie "zainfekuje" wiedzy Claude'a w inżynierii.

**Delegowanie do sub-agentów:**
Claude Tag może zlecać podzadania innym agentom i łączyć się z wewnętrznymi narzędziami firmy.

## Porównanie z konkurencją

| | Claude Tag | Microsoft Copilot (Teams/M365) | Slack AI | Google Gemini (Workspace) |
|---|---|---|---|---|
| Platforma | Slack | Teams + M365 | Slack | Google Chat + Workspace |
| Model pamięci | Per kanał, izolowana | Microsoft Graph (org-wide) | Tylko historia Slack | Google Workspace data |
| Tryb proaktywny | Tak (ambient) | Ograniczony | Nie | Nie (na żądanie) |
| Cena | W planie Enterprise/Team | +30 USD/user/mies. do M365 | W planie Slack | W planie Business Standard+ |
| Multi-agent | Tak | Ograniczony | Nie | Nie |

Kluczowa różnica: Copilot ma szerszy dostęp do danych organizacji przez Microsoft Graph, ale brak trybu ambient i autonomicznej pracy zadaniowej. Slack AI działa tylko na danych Slack, bez agentowego charakteru.

## Implikacje dla użytkownika / rynku

- **Zmiana paradygmatu pracy z AI:** dotychczas AI w pracy = chat 1:1 z narzędziem. Claude Tag = jeden wspólny "pracownik" dla całego zespołu, który ma historię i kontekst projektu
- **Widoczność pracy AI:** Claude działa "publicznie" w kanale — każdy widzi co robi, może to przekierować lub przejąć zadanie
- **Ryzyko prywatności danych:** Claude uczy się z historii kanałów i może przeglądać inne kanały — firmy muszą starannie zdefiniować zakresy dostępu
- **Presja na Slack:** jeśli Claude Tag zyska popularność, użytkownicy będą chcieli podobnych rozwiązań w Teams (Microsoft Copilot) i Google Chat — wyścig o "AI-first workplace"
- **Deadline migracji jest twardy:** 3 sierpnia stary bot znika całkowicie — Anthropic nie daje opcji równoległego działania

---

## Potencjalne kąty narracyjne do shorta

1. **"Anthropic zatrudniło Claude'a na etat. Dosłownie."** — hook podkreślający zmianę: z chatbota na stałego pracownika z tożsamością, historią i inicjatywą

2. **"65% kodu w Anthropic pisze AI. Włącznie z kodem, który stworzył samego siebie."** — liczba plus kontrast (AI buduje AI), mocno kontraintuicyjne dla przeciętnego widza

3. **"Twój Slack może teraz działać bez ciebie."** — tryb ambient: Claude sam monitoruje, flaguje i follow-upuje — bez żadnego @

4. **"3 sierpnia stary bot umiera. Masz 30 dni żeby go zastąpić."** — twarda data tworzy napięcie, widz używający Slacka reaguje emocjonalnie

5. **"Jeden Claude na cały zespół — każdy widzi co robi."** — kontrast z prywatnym chatem AI: tu praca AI jest publiczna i przejmowalna przez każdego

6. **"Anthropic po raz pierwszy wyprzedziło OpenAI w firmach. To nie chat je pokonał — to kod."** — nieoczekiwany zwrot: Claude wygrał nie przez lepszy chatbot, ale przez Claude Code + Claude Tag

7. **"Claude pracuje asynchronicznie — zadajesz zadanie, wracasz po godzinie, jest zrobione."** — konkretna zmiana w codziennym użyciu, zrozumiała dla widza nieznającego AI

---

## Źródła

- [Anthropic Blog — Introducing Claude Tag (primary, 23.06.2026)](https://www.anthropic.com/news/introducing-claude-tag)
- [TechCrunch — Anthropic's Claude Tag is learning your company (23.06.2026)](https://techcrunch.com/2026/06/23/anthropics-claude-tag-is-learning-your-company-one-slack-message-at-a-time/)
- [Fortune — Anthropic launches Claude Tag, a tool that works like a virtual employee (23.06.2026)](https://fortune.com/2026/06/23/anthropic-claude-tag-virtual-employee-tool-slack/)
- [The Decoder — Claude Tag embeds Anthropic's AI in Slack (23.06.2026)](https://the-decoder.com/claude-tag-embeds-anthropics-ai-in-slack-already-writes-65-percent-of-internal-code-company-says/)
- [VentureBeat — Anthropic launches Claude Tag, replacing its Slack app (23.06.2026)](https://venturebeat.com/technology/anthropic-launches-claude-tag-replacing-its-slack-app-with-a-persistent-ai-teammate-that-learns-monitors-and-works-autonomously)
- [The New Stack — Anthropic gives @Claude a permanent seat (23.06.2026)](https://thenewstack.io/anthropic-claude-tag-slack/)
- [Salesforce Ben — Anthropic and Salesforce Announce New Claude to Slack Integration](https://www.salesforceben.com/anthropic-and-salesforce-announce-new-claude-to-slack-integration/)
