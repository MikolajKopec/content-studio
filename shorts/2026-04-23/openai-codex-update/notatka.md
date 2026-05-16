# OpenAI Codex — duże update — notatka badawcza

**Data:** 2026-04-23
**Temat:** Rozbudowa Codex poza kodowanie

---

## Kluczowe fakty

- **Data ogłoszenia:** 16 kwietnia 2026 — aktualizacja "Codex for (almost) everything"
- **Codex Labs + partnerzy enterprise:** 21 kwietnia 2026
- **ChatGPT Images 2.0:** 21 kwietnia 2026
- **Użytkownicy:** 3 mln tygodniowo (8 kwietnia 2026, potwierdzone przez Sama Altmana) → 4 mln tydzień później
- **Wzrost tokenów:** +70% miesiąc do miesiąca (marzec 2026)
- **Enterprise:** liczba użytkowników Codex w ChatGPT Business i Enterprise wzrosła 6x między styczniem a kwietniem 2026
- **Dostępność Computer Use:** tylko macOS, niedostępne w UE i UK (stan na 16 kwietnia 2026)
- **Model obrazów:** gpt-image-2 (trzecia generacja po gpt-image-1 z kwietnia 2025 i gpt-image-1.5 z grudnia 2025)

---

## Nowe funkcje Codex

### Computer Use
- Codex kontroluje aplikacje na Macu — widzi ekran, klika, pisze własnym kursorem
- Wiele agentów może pracować równolegle bez zakłócania pracy użytkownika
- Użyteczne do: testowania natywnych aplikacji, testowania symulatorów, błędów GUI, iterowania na frontendzie
- Na starcie (16.04.2026): tylko macOS, niedostępne w UE/UK

### Web Workflows (przeglądarka w aplikacji)
- Wbudowana przeglądarka, na której można bezpośrednio komentować strony
- Komentarze na stronie = precyzyjne instrukcje dla agenta
- OpenAI zapowiada rozszerzenie tak, żeby Codex mógł "w pełni kontrolować przeglądarkę" — na razie ograniczone do aplikacji webowych na localhost

### Generowanie obrazów
- Codex używa gpt-image-1.5 do generowania i iterowania obrazów
- Użyteczne do: wizualizacji konceptów produktowych, projektów frontendu, mockupów, gier
- Wszystko w tym samym przepływie pracy co kod

### Pamięć (Memory — preview)
- Przechowuje kontekst z poprzednich sesji: preferencje, korekty, wiedzę specyficzną dla projektu
- Pojawia się automatycznie w przyszłych sesjach
- Na razie: tryb preview

### Automatyzacje
- Codex może wznawiać pracę po przerwie korzystając z istniejących wątków konwersacji
- Może planować przyszłą pracę dla siebie i pracować nad zadaniem przez dni lub tygodnie
- Obsługuje granularną kontrolę dostępu sieciowego w sandboxie (instalowanie zależności, testy integracyjne, pobieranie zewnętrznych API)

### Wtyczki (90+)
- Ponad 90 nowych pluginów łączących umiejętności, integracje aplikacji i serwery MCP
- Kluczowe: Atlassian Rovo (JIRA), CircleCI, CodeRabbit, GitLab Issues, Microsoft Suite, Neon by Databricks, Remotion, Render, Superpowers
- Głębsze wsparcie dla workflow developerskich: przeglądanie PR, wiele plików i terminali, łączenie z zdalnymi devboxami przez SSH

---

## Codex Labs

### Co to jest
- Program, w którym eksperci OpenAI wchodzą bezpośrednio do organizacji
- Warsztaty i sesje robocze pomagające firmom wdrożyć Codex na realnych problemach
- Uczą: gdzie Codex pasuje do istniejących przepływów, jak integrować z narzędziami developerskimi, jak przejść od wczesnego użycia do powtarzalnego wdrożenia

### Jak działa
- Bezpośredni dostęp do ekspertów OpenAI w firmie
- Pomoc przy łączeniu Codex z istniejącymi narzędziami developerskimi
- Wsparcie w przejściu od pilotów do wdrożeń produkcyjnych

### Dostęp
- Formularz zgłoszeniowy na stronie OpenAI lub kontakt przez przedstawiciela OpenAI
- Skierowane do organizacji enterprise

### Partnerzy globalni (GSI)
OpenAI partneruje z wiodącymi globalnymi integratorami systemów:
- Accenture
- Capgemini
- CGI
- Cognizant
- Infosys
- PwC
- Tata Consultancy Services (TCS)

Partnerzy pomagają klientom enterprise identyfikować i wdrażać przypadki użycia Codex przez cały cykl życia tworzenia oprogramowania.

---

## ChatGPT Images 2.0

### Model i wersjonowanie
- Oficjalnie: gpt-image-2
- Trzecia generacja: po gpt-image-1 (kwiecień 2025) i gpt-image-1.5 (grudzień 2025)
- Dostępny: ChatGPT, Codex i API

### Kluczowe zmiany techniczne

**Rozdzielczość i formaty**
- Do 2K rozdzielczości
- Do 8 wariantów wyjściowych w jednym zapytaniu
- Elastyczność proporcji: od 3:1 (szeroki) do 1:3 (wysoki)

**"Thinking" — myślenie przed generowaniem**
- Pierwszy model obrazów z trybem rozumowania
- Przed wygenerowaniem: research w sieci, planowanie struktury obrazu, wnioskowanie
- Samokorekta — sprawdza wynik i poprawia
- Drastycznie wyższy success rate na pierwszą próbę dla złożonych scenariuszy
- Tryb "Images with thinking": tylko dla planów Plus, Pro, Business, Enterprise

**Wielojęzyczne renderowanie tekstu**
- Dokładność na poziomie znaku dla pisma nielacińskiego: japoński, koreański, chiński, hindi, bengali
- Przełom w stosunku do poprzednich wersji, gdzie tekst w tych językach był nieczytelny
- Generowanie długich bloków tekstu i różnych paneli tekstowych w jednym obrazie

**Web search integration**
- Real-time fact-checking pokonujący ograniczenia daty odcięcia modelu
- Może wyszukiwać dane i wstawiać je bezpośrednio do wygenerowanego obrazu

**Nowe możliwości praktyczne**
- Infografiki i diagramy (znacznie wyższa wierność)
- Makiety interfejsów użytkownika i screenshoty
- Układy magazynowe, slajdy, mapy
- Manga i style artystyczne
- Treści do publikacji (uwaga: TechRadar zauważył, że wygenerowane makiety "wyglądają prawdziwie, ale są całkowicie bezużyteczne" — nie można ich edytować)

### Dostępność
- Wszystkie poziomy ChatGPT (Free, Go, Plus, Pro, Business, Enterprise)
- Tryb "thinking": tylko płatne plany (Plus i wyżej)
- Dostępny też w API

---

## Pozycja na rynku

### Kontekst konkurencyjny 2026
Rynek jest zdominowany przez kilka narzędzi, różniących się podejściem:

| Narzędzie | Podejście | Cena | Mocna strona |
|-----------|-----------|------|--------------|
| **Cursor** | IDE (samodzielne) | ~$20/mies. | Najlepsze UX dla codziennego kodowania, indeksowanie repozytoriów |
| **GitHub Copilot** | Rozszerzenie IDE | $10/mies. | Najlepsza wartość, integracja z VS Code/JetBrains |
| **Claude Code** | Terminal/agent | $20–200/mies. | Najwyższy pułap możliwości, głębokie rozumienie codebase |
| **OpenAI Codex** | Desktop app/agent | część ChatGPT Plus/Pro | Szerokość: coding + computer use + web + obrazy + pamięć |

### Jak Codex wypada
- Nie jest liderem w samym kodowaniu (Cursor ma 2 mld+ ARR, uznawany za najszybciej rosnący SaaS w historii)
- Codex wyróżnia się **szerokością** — to jedyne narzędzie łączące kod, computer use, web, obrazy, pamięć w jednym
- B2B: firmy na ekosystemie OpenAI nie mają już powodu się przełączać ("no longer have a credible 'we need to switch' argument")
- Większość profesjonalnych developerów łączy narzędzia: Cursor do codziennego edytowania + Claude Code do złożonych zadań, albo Copilot w IDE + Claude Code w terminalu

### Szerokie porównanie (kwiecień 2026)
- Cursor: ~$2 mld ARR (luty 2026), najlepsze doświadczenie IDE
- Codex: 4 mln tygodniowych aktywnych użytkowników, enterprise push
- GitHub Copilot: najszersza baza (integracja z GitHub, Microsoft)
- Claude Code: terminal-native, najwyższe możliwości agentowe

---

## Reakcje developerów

### Ogólna opinia
- Przed 2026: sceptycyzm co do gotowości Codex do produkcji
- Po aktualizacji: "night and day" — Codex opisywany jako "production-ready infrastructure"
- Fundamentalna zmiana w tym, jak developerzy budują oprogramowanie

### Limity i frustracje
- Wcześniej (przed 1 kwietnia 2026): limity użycia powodowały frustrację społeczności
- 1 kwietnia: OpenAI zresetowało limity, co wywołało pozytywną reakcję ("CODEX LIMITS - FINALLY GOOD after April 1st reset")
- Sam Altman osobiście komunikował reset limitów przy okazji ogłoszenia 3 mln użytkowników

### Kluczowe zastrzeżenia
- Computer use: tylko macOS, brak wsparcia dla EU/UK — frustracja europejskich deweloperów
- ChatGPT Images 2.0: TechRadar — makiety "wyglądają prawdziwie, ale są całkowicie bezużyteczne" (brak możliwości edycji)
- Sceptycyzm co do AI slop (Gizmodo: "to usher in an AI Slop 'Renaissance'")

### Dyskusja na forum OpenAI
- Wątek "Introducing the New Codex for (almost) everything" — aktywna dyskusja w community
- Wątek "Codex for Open Source - 2026" — zainteresowanie open source use cases
- Granularna kontrola sieci sandbox: "huge improvement" według developerów

---

## Strategia OpenAI

### Superapp — docelowa wizja
OpenAI otwarcie mówi o budowie zjednoczonej aplikacji łączącej:
- ChatGPT (czat i rozumowanie)
- Codex (kodowanie i agenty)
- Atlas Browser (przeglądarka AI-native)

Greg Brockman (President OpenAI): "Codex app is really two things in one: a general agent harness that knows how to use tools, and an agent that knows how to write software. That general agent harness can be used for so many different things."

### Od narzędzia dla developerów do platformy enterprise
- Codex Labs = bezpośrednie wejście w organizacje enterprise
- Partnerstwo z 7 największymi globalnymi integratorami (Accenture, TCS, Infosys, etc.)
- Cel: skalowanie do tysięcy organizacji inżynierskich
- Ekspansja poza kodowanie: finanse, prawo, operacje, obsługa klienta

### Kontekst finansowy
- Marzec 2026: OpenAI zebrało $122 mld, wycena zbliża się do $850 mld
- Znaczna część kapitału: infrastruktura GPU, centra danych, pozyskiwanie talentów, strategia go-to-market superapp

### Kierunek Codex
1. Computer use rozszerzone poza macOS (Windows, Linux, EU/UK)
2. Pełna kontrola przeglądarki (poza aplikacjami na localhost)
3. Codex jako "serce szerszego ataku agentowego" (Fortune, marzec 2026)
4. Połączenie z ChatGPT i Atlas Browser w jedną aplikację desktopową

---

## Kąty contentowe

1. **"AI przejęło twój komputer"** — Computer Use jako zmiana jakościowa: Codex widzi ekran, klika, pisze. Dla nietech. widza: AI nie tylko pisze kod — teraz DZIAŁA na twoim komputerze jak pracownik.

2. **Wyścig na liczby** — 3 mln → 4 mln w tydzień. Co to mówi o tempie adopcji? Czy to dobra czy zła wiadomość dla rynku pracy programistów?

3. **ChatGPT Images 2.0 kontra rzeczywistość** — "myślący" generator obrazów, który wreszcie nie psuje azjatyckiego tekstu. Kontrast: imponujące demo vs. "bezużyteczne" makiety (brak edytowalności). Co AI grafika umie, a co jeszcze nie.

4. **Strategia superapp** — OpenAI próbuje zrobić z Codex "Windows dla AI agentów". Co to zmienia dla zwykłego użytkownika? Jedno miejsce: czat + kod + przeglądarka + pamięć.

5. **Kto wygrywa wojnę narzędzi AI dla programistów** — Cursor vs. Copilot vs. Codex vs. Claude Code. Dla nietech. publiczności: to jak walka między Photoshopem, Canvą i Adobe Express — różne produkty, różne grupy docelowe.

6. **Codex Labs = OpenAI wchodzi do korporacji** — Accenture, TCS, PwC noszą Codex do banków, ubezpieczycieli i firm produkcyjnych. Co to oznacza: AI w biurowych systemach, nie tylko startupach.

---

## Źródła

- [Codex for (almost) everything — OpenAI (oficjalne)](https://openai.com/index/codex-for-almost-everything/)
- [Scaling Codex to enterprises worldwide — OpenAI (oficjalne)](https://openai.com/index/scaling-codex-to-enterprises-worldwide/)
- [Introducing the Codex app — OpenAI (oficjalne)](https://openai.com/index/introducing-the-codex-app/)
- [Changelog – Codex | OpenAI Developers](https://developers.openai.com/codex/changelog)
- [OpenAI Codex Desktop App Major Update (April 2026) — SmartScope](https://smartscope.blog/en/generative-ai/chatgpt/codex-desktop-major-update-april-2026/)
- [OpenAI Codex 2026: Computer Use, Memory & Full Review — BuildFastWithAI](https://www.buildfastwithai.com/blogs/openai-codex-for-almost-everything-2026)
- [OpenAI Codex Update Adds Computer Use — MacRumors](https://www.macrumors.com/2026/04/16/openai-codex-mac-update/)
- [OpenAI Codex celebrates 3 million weekly users — BusinessToday](https://www.businesstoday.in/technology/story/openai-codex-celebrates-3-million-weekly-users-ceo-sam-altman-resets-usage-limits-524717-2026-04-08)
- [OpenAI's Codex hits 4 million weekly active users — Neowin](https://www.neowin.net/news/openais-codex-hits-4-million-weekly-active-users-adding-1-million-in-just-two-weeks/)
- [OpenAI Codex Statistics 2026 — Gradually.ai](https://www.gradually.ai/en/codex-statistics/)
- [OpenAI Launches Codex Labs and Global Partner Network — RMN Digital](https://www.rmndigital.com/openai-launches-codex-labs-and-global-partner-network-as-enterprise-adoption-surges/)
- [OpenAI Launches ChatGPT Images 2.0, Codex Labs — SiliconAngle](https://siliconangle.com/2026/04/21/openai-launches-chatgpt-images-2-0-codex-labs-developer-training-service/)
- [OpenAI Codex Labs: What It Is — C# Corner](https://www.c-sharpcorner.com/article/openai-codex-labs-what-it-is-and-how-enterprise-teams-can-use-it/)
- [OpenAI teams up with Infosys — TechCrunch](https://techcrunch.com/2026/04/22/openai-teams-up-with-infosys-to-bring-ai-tools-to-more-businesses/)
- [OpenAI Teams Up with Accenture and TCS — CXO Digitalpulse](https://www.cxodigitalpulse.com/openai-teams-up-with-accenture-and-tcs-to-accelerate-global-rollout-of-codex-ai/)
- [Cognizant and OpenAI Partner — PR Newswire](https://www.prnewswire.com/news-releases/cognizant-and-openai-partner-to-reshape-enterprise-software-engineering-with-codex-302748608.html)
- [ChatGPT Images 2.0 — Axios](https://www.axios.com/2026/04/21/chatgpt-images-major-update)
- [OpenAI Launches ChatGPT Images 2.0 With Thinking — MacRumors](https://www.macrumors.com/2026/04/22/openai-chatgpt-images-2-0/)
- [ChatGPT Images 2.0 is better at rendering non-Latin text — Engadget](https://www.engadget.com/ai/chatgpt-images-20-is-better-at-rendering-non-latin-text-190000153.html)
- [ChatGPT Images 2.0 — VentureBeat](https://venturebeat.com/technology/openais-chatgpt-images-2-0-is-here-and-it-does-multilingual-text-full-infographics-slides-maps-even-manga-seemingly-flawlessly)
- [ChatGPT's new Images 2.0 model is surprisingly good at generating text — TechCrunch](https://techcrunch.com/2026/04/21/chatgpts-new-images-2-0-model-is-surprisingly-good-at-generating-text/)
- [OpenAI's superapp is taking shape — The New Stack](https://thenewstack.io/openais-superapp-takes-shape/)
- [OpenAI's superapp hiding inside Codex — The Rundown AI](https://www.therundown.ai/p/openai-superapp-hiding-inside-codex)
- [OpenAI Desktop Superapp: ChatGPT, Codex and Atlas Browser — ALM Corp](https://almcorp.com/blog/openai-desktop-superapp-chatgpt-codex-atlas-browser/)
- [OpenAI Codex Review 2026 — Zack Proser](https://zackproser.com/blog/openai-codex-review-2026)
- [The 2026 AI Coding Tools Showdown — ChatGPT AI Hub](https://chatgptaihub.com/the-2026-ai-coding-tools-showdown-codex-claude-code-cursor-copilot-and-gemini-cli-compared/)
- [OpenAI Codex vs GitHub Copilot: Why Codex Is Winning — Medium](https://medium.com/@ricardomsgarces/openai-codex-vs-github-copilot-why-codex-is-winning-the-future-of-coding-f9a2767695b0)
- [OpenAI reports Codex usage is surging — Fortune](https://fortune.com/2026/03/04/openai-codex-growth-enterprise-ai-agents/)
- [ChatGPT Images 2 made me a perfect magazine — TechRadar](https://www.techradar.com/ai-platforms-assistants/chatgpt/i-used-to-edit-print-magazines-chatgpt-images-2s-magazine-layouts-look-real-but-theyre-completely-unusable)
- [OpenAI Unveils New Image Generator — Gizmodo](https://gizmodo.com/openai-unveils-new-image-generator-to-usher-in-an-ai-slop-renaissance-2000749159)
- [Introducing the New Codex — OpenAI Community Forum](https://community.openai.com/t/introducing-the-new-codex-for-almost-everything/1379125)
- [CODEX LIMITS after April 1st reset — OpenAI Community Forum](https://community.openai.com/t/codex-limits-finally-good-after-april-1st-reset/1378333)
