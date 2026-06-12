# Newsy technologiczne — 12 czerwca 2026

> **Quiet news day.** Po WWDC (8 czerwca), Claude Fable 5 (9 czerwca) i serii Compoutex/MiniMax/Nvidia GR00T z 1 czerwca świat technologii zwolnił. Tylko 3 świeże, narzędziowe newsy w oknie 10-12 czerwca.

---

## 1. VS Code 1.124 — Autopilot, sesje agentów w tle i Ctrl+R przez konwersacje

**Źródło:** [Visual Studio Magazine (11 czerwca 2026)](https://visualstudiomagazine.com/articles/2026/06/11/vsm-vs-code-1-124.aspx), [code.visualstudio.com release notes](https://code.visualstudio.com/updates/v1_124), [Neowin (11 czerwca 2026)](https://www.neowin.net/news/microsoft-releases-visual-studio-code-1124-with-smarter-autonomous-ai-agents/)

Microsoft 10 czerwca 2026 wypuścił VS Code 1.124 — release w pełni ukierunkowany na agentów. Autopilot (włączony domyślnie, status Preview) teraz lepiej rozpoznaje moment, w którym zadanie naprawdę jest skończone, i może działać autonomicznie bez zatwierdzania każdej akcji.

Nowy tryb sesji w tle: Alt+Enter w widoku sesji wysyła prompt w tle, a widok od razu resetuje się do kolejnego pytania — kontekst i wybrany model zostają, kasuje się tylko treść. Ctrl+R (Cmd+R na macOS) otwiera Quick Pick z listą wszystkich sesji w dwóch grupach (ostatnio otwarte + inne) z aktywną sesją na górze.

Sesje przeżywają reload — przy ponownym otwarciu okna Agents układ jest przywracany automatycznie. Plus: wbudowana przeglądarka wreszcie pozwala wracać do otwartych już stron i wyszukiwać w nich.

> **Potencjał contentowy:** średni — zmiana dla devów Cursor/Claude Code, ale brak dużej dramy. Hook: "Microsoft Copilot przechodzi w pełny tryb agentowy — pisze za ciebie bez pytania".

---

## 2. Gemini odpala MŚ 2026: Scheduled Actions na płatnych planach, taktyka AI i twarz zamiast biletu

**Źródło:** [TechTimes (10 czerwca 2026)](https://www.techtimes.com/articles/318174/20260610/google-gemini-heads-2026-world-cup-argentina-partnership-new-ai-fan-features-go-live.htm), [Android Headlines](https://www.androidheadlines.com/2026/06/google-ai-features-tool-fifa-world-cup-2026-apps.html), [The Next Web — biometric gates](https://thenextweb.com/news/world-cup-2026-biometrics-google-gemini)

11 czerwca o godz. 18:00 czasu Mexico City wystartował MŚ 2026 (Meksyk vs. RPA na Estadio Azteca) — Google wstrzymał równolegle koordynowaną falę funkcji w Search, Maps, Waze i Gemini.

**Płatne (Plus/Pro/Ultra):**
- **Scheduled Actions** — automatyczny poranny briefing meczowy z wynikami ulubionych drużyn, dostarczany o wybranej godzinie. Bez ręcznego promptowania.
- **Interaktywne taktyki** — pytasz Gemini "dlaczego ta drużyna gra wysokim pressingiem?" i model generuje diagramy formacji.

**Darmowe:**
- Pinowane wyniki na ekranie blokady (Android + iOS) z animacjami goli i czerwonych kartek.
- Waze pokazuje wynik w aucie podczas postojów — żeby kierowca nie sprawdzał telefonu przy 110 km/h.
- Nano Banana — szablon zdjęć, który wkleja użytkownika w koszulkę reprezentacji.

**Partnerstwa:** Pixel został oficjalnym smartfonem reprezentacji Francji. Argentyna z osobnym pakietem Gemini. **Cichsza historia:** biometryczne bramki Google na stadionach — twarz zamiast biletu — zaczynają wchodzić jako pilot na MŚ.

> **Potencjał contentowy:** wysoki — kombinacja sport + AI + biometryka + paid-vs-free drama. PL audience interesuje futbol.

---

## 3. ChatGPT od 15 czerwca pożera Google Workspace: Drive, BigQuery, Meet

**Źródło:** [OpenAI Help Center — ChatGPT release notes](https://help.openai.com/en/articles/6825453-chatgpt-release-notes), [Releasebot OpenAI (czerwiec 2026)](https://releasebot.io/updates/openai), [Google App for ChatGPT Data Controls FAQ](https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq)

OpenAI ogłosił, że od **15 czerwca 2026** ChatGPT rozszerza zestaw akcji Google: dochodzi pełna obsługa plików **Google Drive**, **BigQuery** i akcji **Google Meet** wystawionych pod Google Calendar (lookup spotkań, recordings, transkrypty, transkrypcje wpis-po-wpisie, artefakty).

Nowe akcje Drive są domyślnie włączone na workspace'ach Business. Istniejące integracje z Drive/Docs/Sheets/Slides dalej działają — ale żeby skorzystać z ujednoliconego doświadczenia, użytkownicy muszą rozłączyć i ponownie połączyć aplikację Drive.

Wymaga to dodatkowych OAuth scope'ów w Google Workspace — przed 15 czerwca admini workspace'ów ChatGPT muszą skoordynować się z osobami zarządzającymi dostępem do aplikacji w Google Workspace. Funkcja niedostępna dla kont z SSO (SAML/OIDC).

> **Potencjał contentowy:** średni — duża zmiana dla power-userów Workspace, ale "B2B feature drop" niezbyt viralny dla TikToka. Hook: "ChatGPT może teraz zajrzeć w twoje Google Drive bez wychodzenia z czatu".

---
