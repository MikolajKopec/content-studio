# ChatGPT dostaje "Lockdown Mode" — tryb sejfu chroniący przed prompt injection

**Data:** 2026-06-08
**Temat:** OpenAI wprowadza opcjonalny przełącznik, który odcina ChatGPT od internetu i konektorów, żeby zamknąć "lethal trifecta" — czyli ścieżki, którymi prompt injection wyciąga z konta wrażliwe dane.

---

## Kluczowe fakty i liczby

- Lockdown Mode wystartował **6 czerwca 2026** — opcjonalny tryb bezpieczeństwa w ustawieniach ChatGPT (Settings → Safety and security → Advanced security → Lockdown Mode).
- Dostępny od razu dla **wszystkich kont osobistych** (Free, Go, Plus, Pro) oraz **self-serve ChatGPT Business**; wersje enterprise z osobnym zarządzaniem dochodzą stopniowo.
- Tryb wyłącza **7 ścieżek wyjścia danych**: live web, Deep Research (włącznie z shopping research), Agent Mode, Canvas networking, live connectors, pobieranie plików do analizy, obrazy w odpowiedziach pobierane z sieci.
- **Nie blokuje samego prompt injection** — OpenAI mówi wprost: "Lockdown Mode will not stop prompt injections from appearing in content ChatGPT processes". Zamyka tylko **ostatni etap ataku** — wysłanie danych do atakującego.
- Równolegle OpenAI uruchomiło **Elevated Risk labels** — etykiety pojawiające się przy akcjach o podwyższonym ryzyku. System ma **3 poziomy**: High risk (read/write w niezaufanych appkach, write w zaufanych z szerokim zasięgiem), Medium risk (sync connectors, read w zaufanych), Lower risk (write w zaufanych z widocznym efektem).
- Lockdown Mode **nie współdziała** z Developer Mode — można mieć włączone tylko jedno.
- OpenAI dodało też **session management tool** — przegląd aktywnych sesji z urządzeniem, lokalizacją i czasem logowania + jednorazowe wylogowanie podejrzanych.
- Tłem premiery są realne ataki: **ShadowLeak** (Radware, 2025) — zero-click exfiltracja Gmaila przez Deep Research; **déjà vu prompt injection** w ChatGPT (styczeń 2026); ataki indirect prompt injection działające jednym wzorcem na **Claude Code, Gemini CLI i GitHub Copilot** (kwiecień 2026, łączne bug bounties: Anthropic $100, Google $1,337).

## Jak działa prompt injection i co zamyka Lockdown Mode

Simon Willison nazywa wzorzec ataku **"lethal trifecta"** — trzy warunki, które muszą zaistnieć jednocześnie:

1. **Dostęp LLM do twoich prywatnych danych** (Gmail, Drive, pliki, pamięć ChatGPT).
2. **Ekspozycja na nieufną treść** (email, strona web, PDF, plik z konektora).
3. **Kanał wyjściowy** do wysłania danych na zewnątrz (URL z parametrami, obrazek hostowany u atakującego, request HTTP).

Klasyczny atak (np. ShadowLeak): atakujący wysyła ofierze maila z ukrytym tekstem (white-on-white, mikroskopijny font). Ofiara prosi ChatGPT z Deep Research o przegląd skrzynki. Agent czyta ukrytą instrukcję, koduje fragmenty inboxa w **Base64** i dokleja je jako query string do URL-a kontrolowanego przez atakującego, który serwer atakujący loguje. **Zero kliknięć** ofiary.

Lockdown Mode usuwa nogę nr 3 z trifecty — **deterministycznie**, bez polegania na klasyfikatorach AI, które same można obejść (Willison chwali to konkretnie). Bez live web, bez fetchowanych obrazów, bez agenta, bez konektorów — nie ma jak wysłać danych na zewnątrz.

**Czego Lockdown Mode NIE robi:**
- nie wykrywa prompt injection w plikach, które sam wgrasz,
- nie chroni przed wpływem injectowanych instrukcji na **treść odpowiedzi** (mogą cię zmanipulować socjotechnicznie),
- nie usuwa ryzyka z third-party apps, które masz włączone w kontekście rozmowy.

OpenAI sam pisze: tryb "substantially reduces the risk" ale "does not guarantee that data exfiltration cannot happen".

## Porównanie z Claude / Gemini

- **Anthropic Claude**: brak osobnego "trybu sejfu". Stawia na **classifiers** wykrywające adversarial commands (Opus 4.5 ma według własnych testów Anthropic najlepszą odporność na browser-use prompt injection wśród frontier modeli). Wada: classifier sam jest LLM-em i da się go ominąć — co Willison krytykuje jako "AI-evaluated mitigations".
- **Google Gemini**: ostatnio łata punktowo (CLI Action, Workspace integracje). Brak konsumenckiego przełącznika "wyłącz wszystkie konektory naraz".
- **OpenAI Lockdown Mode**: pierwszy **konsumencki, deterministyczny kill-switch** w mainstreamowym czacie AI. Architektonicznie najbliżej Apple Lockdown Mode (iOS/macOS) — też wyłącza powierzchnię ataku zamiast próbować ją filtrować.

## Implikacje dla użytkownika

- Jeśli wrzucasz do ChatGPT **kod klienta, dane finansowe, dokumenty medyczne, NDA** i jednocześnie używasz Deep Research / Agent / konektorów (Gmail, Drive, GitHub) — jesteś w grupie, dla której to jest zrobione.
- Cena: tracisz live web, agenta i Deep Research. Czyli prawie wszystko, co odróżnia ChatGPT 2026 od czystego modelu z 2023.
- Krytyka (Gizmodo): sam fakt, że taki tryb był potrzebny, oznacza, że **domyślna konfiguracja nie chroni** użytkownika przed exfiltracją — i de facto normalizuje wrzucanie wrażliwych danych do LLM.

---

## Potencjalne kąty narracyjne do shorta

1. **"Twoje maile mogą wyciec z ChatGPT — bez kliknięcia"** — otwierasz od ShadowLeak (zero-click, Base64, exfiltracja Gmaila), kończysz na Lockdown Mode jako odpowiedzi OpenAI. Dramatyczny hook + konkret.
2. **"OpenAI właśnie przyznało, że domyślny ChatGPT nie chroni twoich danych"** — kontrowersyjny framing pod Gizmodo: skoro potrzebny jest tryb sejfu, znaczy że bez niego konto przecieka. Klikalne, prawdziwe.
3. **"7 funkcji ChatGPT, które musisz wyłączyć, żeby być bezpiecznym"** — numer + actionable. Live web, Deep Research, Agent Mode, Canvas networking, konektory, downloady, obrazy. Pokazujesz przełącznik na ekranie.
4. **"Lethal trifecta — schemat, którym atakują wszystkie agenty AI"** — edukacyjny, dla devów. Tłumaczysz 3 warunki Willisona na palcach, pokazujesz Lockdown Mode jako "wycinanie nogi nr 3".
5. **"ChatGPT skopiował tryb z iPhone'a"** — porównanie do Apple Lockdown Mode. Krótki, łatwy do zrozumienia framing dla mainstreamu.
6. **"Włącz to w ChatGPT zanim wrzucisz tam dane firmowe"** — pod prawnika/księgową/lekarza. Step-by-step: Settings → Safety and security → Advanced security → Lockdown Mode. PSA-style.
7. **"OpenAI vs Claude vs Gemini — kto naprawdę chroni przed prompt injection"** — porównawczy. OpenAI: deterministyczny kill-switch. Anthropic: classifiers. Google: łatki. Pokazujesz, że tylko jeden z nich daje user-facing przełącznik.

---

## Źródła

- [Introducing Lockdown Mode and Elevated Risk labels in ChatGPT — OpenAI](https://openai.com/index/introducing-lockdown-mode-and-elevated-risk-labels-in-chatgpt/)
- [OpenAI Help: Lockdown Mode — Simon Willison](https://simonwillison.net/2026/Jun/5/openai-help-lockdown-mode/)
- [OpenAI unveils Lockdown Mode to protect sensitive data from prompt injection attacks — TechCrunch](https://techcrunch.com/2026/06/06/openai-unveils-lockdown-mode-to-protect-sensitive-data-from-prompt-injection-attacks/)
- [OpenAI rolls out a Lockdown Mode for extra protection against prompt injection attacks — Engadget](https://www.engadget.com/2188537/openai-rolls-out-a-lockdown-mode-for-extra-protection-against-prompt-injection-attacks/)
- [New ChatGPT Lockdown Mode to Mitigate Prompt Injection and Data Exfiltration Attacks — Cybersecurity News](https://cybersecuritynews.com/chatgpt-lockdown-mode/)
- [OpenAI is now rolling out Lockdown Mode to more ChatGPT users — Neowin](https://www.neowin.net/news/openai-is-now-rolling-out-lockdown-mode-to-more-chatgpt-users/)
- [OpenAI Launches ChatGPT 'Lockdown Mode' To Block Data Leaks — bitnewsbot](https://bitnewsbot.com/openai-launches-chatgpt-lockdown-mode-to-block/)
- [OpenAI Announces Unnerving New ChatGPT Feature Named 'Lockdown Mode' — Gizmodo](https://gizmodo.com/openai-announces-unnerving-new-chatgpt-feature-named-lockdown-mode-2000768425)
- [ShadowLeak: Radware uncovers zero-click attack on ChatGPT — Security Affairs](https://securityaffairs.com/182334/hacking/shadowleak-radware-uncovers-zero-click-attack-on-chatgpt.html)
- [Claude Code, Gemini CLI, GitHub Copilot Agents Vulnerable to Prompt Injection via Comments — SecurityWeek](https://www.securityweek.com/claude-code-gemini-cli-github-copilot-agents-vulnerable-to-prompt-injection-via-comments/)
- [Mitigating the risk of prompt injections in browser use — Anthropic](https://www.anthropic.com/research/prompt-injection-defenses)
