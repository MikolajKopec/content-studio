# ChatGPT od 15 czerwca pożera Google Workspace: Drive, BigQuery, Meet

**Data:** 2026-06-12
**Temat:** OpenAI 15 czerwca 2026 włącza w ChatGPT pełen pakiet akcji Google Workspace — Drive, BigQuery i Google Meet (recordings, transkrypty, artefakty) — i wchodzi z butami w ekosystem, w którym dotąd królował Gemini.

---

## Kluczowe fakty i liczby

- Data startu: **15 czerwca 2026** — od tego dnia ChatGPT dostaje nowe akcje Google App: pełne wsparcie plików **Google Drive**, **BigQuery** i akcje **Google Meet** wystawione pod Google Calendar.
- Wymagane są **nowe OAuth scope'y** Google Workspace — admini muszą je albo zatwierdzić indywidualnie, albo oznaczyć aplikację OpenAI jako **Trusted** w Google Workspace Admin Console.
- Akcje Google Meet obejmują: **lookup Meet space**, **conference records**, **recordings**, **transkrypty**, **transcript entries** (wpis-po-wpisie) i **artefakty** spotkań — czyli wszystko, co Google generuje po spotkaniu.
- Pod spodem działa scope `drive.meet.readonly` wprowadzony przez Google **11 lipca 2024** — daje aplikacji prawo czytać i pobierać każdy plik na Drive utworzony lub edytowany przez Google Meet.
- Plany kwalifikujące się: **ChatGPT Business, Enterprise, Edu** (konektory Drive są dostępne dla Team/Enterprise/Edu). Konektory są **niedostępne w EOG, Szwajcarii i UK** ze względu na ograniczenia przetwarzania danych.
- Tło rynkowe: ChatGPT trzyma **64–68% rynku** asystentów AI, ale Gemini urósł z jednocyfrowego udziału do **ponad 20%** w 18 miesięcy — głównie dzięki natywnej integracji z Google Workspace.
- Gemini Enterprise jest używany przez **ponad 120 000 firm**, w tym **95% z top 20 globalnych SaaS-ów**, i obsługuje **27 mln użytkowników enterprise** (deklarowany zysk produktywności: 105 min/użytkownika/tydzień).
- Funkcja **niedostępna dla kont z SSO** (SAML/OIDC) — to ograniczenie wynika z architektury connector flow OpenAI, który nie potrafi przekazać Google'owi danych SSO użytkownika końcowego.
- Wcześniejsze Workspace Agents (premiera 22 kwietnia 2026) były **darmowe do 6 maja**, potem credit-based — i to one zbudowały fundament pod te konektory.

## Co dokładnie pozwalają nowe akcje

- **Google Drive (nowe, zunifikowane):** dotąd Drive/Docs/Sheets/Slides były osobnymi konektorami. Od 15 czerwca jeden konektor Drive obsługuje wszystkie cztery — nowi użytkownicy łączą tylko Drive i mają od ręki Docs/Sheets/Slides. Stare integracje dalej działają, ale wymagają rozłączenia i ponownego połączenia, żeby skorzystać z unified experience.
- **BigQuery:** ChatGPT może skanować schematy tabel, generować SQL w odpowiedzi na pytania w języku naturalnym i wykonywać query bezpośrednio na hurtowni danych Google'a. To akcja, która wystawia **realne dane biznesowe firmy** (przychody, klienci, logi produktów) do modeli OpenAI.
- **Google Meet:** akcje wystawione "pod Google Calendar", bo Meet w API żyje jako podzasób wydarzenia kalendarzowego. ChatGPT może z poziomu rozmowy: znaleźć Meet space dla danego spotkania, pobrać nagranie, pobrać transkrypt, czytać transkrypt linijka-po-linijce, sięgać po wygenerowane artefakty (np. notatki Gemini z Meet — ironicznie).

## Architektura uprawnień

- Connector flow wymaga OAuth user-level — każdy użytkownik łączy własne konto Google, ChatGPT trzyma access token i refresh token.
- Nowe scope'y wprowadzone 15 czerwca obejmują m.in. `drive.meet.readonly` (artefakty Meet), pełne scope'y BigQuery oraz rozszerzone Drive (zamiast wąskich Docs/Sheets/Slides).
- Google Workspace Admin może:
  - oznaczyć OpenAI OAuth app jako **Trusted** (akceptacja blanket — wszystkie obecne i przyszłe scope'y),
  - albo zatwierdzać każdy scope ręcznie (bezpieczniej, ale wymaga koordynacji przy każdym update OpenAI),
  - albo nie zatwierdzić niczego — wtedy istniejące konektory też nie pęknie, ale użytkownicy dostaną błąd "unapproved scope" przy próbie skorzystania z nowej akcji.

## Co trafia do OpenAI (i kiedy)

- Akcje są **on-demand**: dane lecą do OpenAI dopiero, gdy ChatGPT je wywoła w odpowiedzi na prompt użytkownika.
- Plany Business/Enterprise/Edu mają kontraktową gwarancję **no training on business data** (SOC 2 Type 2).
- ALE: każda treść z Drive, każdy rekord BigQuery i każdy transkrypt Meet, których ChatGPT dotknie, trafia do logów inference — i do kontekstu rozmowy, czyli również do funkcji takich jak Memory (jeśli włączona).
- Ryzyko data sprawl: workflow typu "podsumuj wszystkie spotkania zarządu z czerwca" wciąga do OpenAI **transkrypty całych spotkań**, łącznie z fragmentami, których admin może nie chcieć eksponować.

## Porównanie z konkurencją

| Wymiar | ChatGPT (od 15.06.2026) | Gemini in Workspace |
|---|---|---|
| Integracja z Drive | konektor, OAuth user-level | natywna, w UI Docs/Sheets/Gmail |
| Dostęp do Meet artifacts | drive.meet.readonly via OAuth | natywny, bez OAuth dance |
| BigQuery | nowy konektor, SQL generation | natywna integracja w konsoli BQ |
| Cena enterprise / user / mies. | ~$60 (ChatGPT Enterprise) | $48–60 (Gemini Enterprise) |
| Kontekst danych z Workspace | tylko on-demand przez akcję | zawsze obecny w sesji |
| Dostępność w EOG/PL | konektory zablokowane | dostępne |
| Wsparcie SSO (SAML/OIDC) | **brak** dla tych nowych akcji | pełne |

## Implikacje dla rynku

- Dla OpenAI to **frontalny atak na poletko Google'a** — sprzedawanie produktywności wewnątrz Workspace to flagowy use case Gemini. Jeśli admini IT zaczną podpinać Trusted OpenAI app, Gemini traci uzasadnienie zakupu.
- Dla Google'a: presja na obniżkę cen Gemini Enterprise i przyspieszenie natywnych integracji (np. Meet-to-Doc auto-summary), bo "lepsza integracja z Workspace" przestaje być argumentem.
- Dla CISO: **gigantyczny audit surface**. Trzeba przeklikać każdy scope, zmapować, kto ma dostęp do których tabel BQ, i zdecydować, czy Memory ChatGPT może przechowywać transkrypty zarządu.
- Dla polskich firm: konektory są zablokowane w EOG — czyli polskie organizacje na ChatGPT Business/Enterprise dostają tę funkcję dopiero, kiedy OpenAI dogada się z UE w sprawie data processing (na razie brak ETA). Polski admin nie musi nic robić — i tak nie będzie dostępne.
- Dla power-userów konsultingowych: BigQuery + Meet transcript w jednym promptie = "Przeanalizuj nasz Q2 vs to, co klient powiedział na ostatnich 5 callach" w 30 sekund.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| 11 lipca 2024 | Google wprowadza scope `drive.meet.readonly` |
| 22 kwietnia 2026 | OpenAI launchuje Workspace Agents (Business/Enterprise/Edu) |
| 6 maja 2026 | Koniec darmowego okresu Workspace Agents, start credit-based pricing |
| **15 czerwca 2026** | **Drive (unified), BigQuery, Meet artifacts trafiają do ChatGPT** |
| Po 15 czerwca | Admini Google Workspace muszą zatwierdzić nowe scope'y lub Trusted-mark OpenAI |

---

## Potencjalne kąty narracyjne do shorta

- **"ChatGPT od jutra przeczyta każdy twój call z Google Meet"** (data + drama + konkret)
- **"OpenAI wchodzi do BigQuery — ChatGPT pisze SQL na twojej hurtowni danych"** (specific tech + B2B power user)
- **"OpenAI atakuje Gemina na jego własnym podwórku — Workspace"** (konkurencyjna walka, paradoks)
- **"15 czerwca admini IT mają nockę: ChatGPT prosi o 12 nowych uprawnień do Google Workspace"** (data + konkretna sytuacja + zawód)
- **"Polskie firmy nie dostaną tej funkcji — EOG zablokowany"** (PL angle, kontrast, frustrowanie)
- **"Twój zarząd nie wie, że transkrypt jego ostatniego callu właśnie trafił do OpenAI"** (security drama, paranoja)
- **"Konto z SSO? Sorry, nowy ChatGPT Google Workspace nie dla ciebie"** (technical gotcha)

---

## Źródła

- [Google App for ChatGPT – Data Controls FAQ (OpenAI Help Center)](https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq)
- [Google Workspace Updates: Access Google Meet artifacts with a new Google Drive API scope](https://workspaceupdates.googleblog.com/2024/07/access-google-meet-artificats-with-new-drive-api-oauth-scope.html)
- [Introducing workspace agents in ChatGPT (OpenAI)](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- [ChatGPT Workspace Agents for Enterprise and Business (OpenAI Help Center)](https://help.openai.com/en/articles/20001143-chatgpt-workspace-agents-for-enterprise-and-business)
- [GPT Actions library - BigQuery (OpenAI Cookbook)](https://cookbook.openai.com/examples/chatgpt/gpt_actions_library/gpt_action_bigquery)
- [Work with artifacts (Google Meet API, Google for Developers)](https://developers.google.com/workspace/meet/api/guides/artifacts)
- [Authenticate and authorize Meet REST API requests (Google for Developers)](https://developers.google.com/workspace/meet/api/guides/authenticate-authorize)
- [ChatGPT Connectors: Complete Guide to Apps & Files 2026 (Context Link)](https://www.context-link.ai/blog/chatgpt-connectors)
- [Copilot vs Gemini 2026: 5x Context Gap and $40 Cost Divide (tech-insider.org)](https://tech-insider.org/copilot-vs-gemini-2026/)
- [The Seismic Shift in AI Chatbot Dominance: Gemini vs ChatGPT 2026 (ALM Corp)](https://almcorp.com/blog/google-gemini-vs-chatgpt-market-share-2026/)
- [ChatGPT Workspace Agents: OpenAI Takes On Claude, Copilot and Gemini (Pasquale Pillitteri)](https://pasqualepillitteri.it/en/news/1321/chatgpt-workspace-agents-openai-comparison-2026)
- [SSO for ChatGPT Business - FAQ (OpenAI Help Center)](https://help.openai.com/en/articles/11489188-sso-for-chatgpt-business-faq)
