# VS Code 1.124 — Autopilot, sesje agentów w tle i Ctrl+R przez konwersacje

**Data:** 2026-06-12
**Temat:** Microsoft włącza Copilot Autopilot domyślnie w VS Code 1.124 — agent może pisać pliki i odpalać terminal bez pytania, z twardym limitem trzech iteracji.

---

## Kluczowe fakty i liczby

- VS Code **1.124** wypuszczone **10 czerwca 2026** (release notes), opisany w prasie 11 czerwca (Visual Studio Magazine, Neowin, TechTimes).
- **Autopilot włączony domyślnie** — to teraz domyślny poziom uprawnień dla nowych sesji chatu, sterowany ustawieniem `chat.permissions.default`.
- **Advanced Autopilot** zastępuje sztywne reguły małym modelem narzędziowym, który czyta transkrypt rozmowy i sam decyduje, czy zadanie jest skończone.
- Twardy sufit: **maksymalnie 3 iteracje** autonomicznej pętli — nawet jeśli utility model uzna, że trzeba dalej, Autopilot się zatrzymuje.
- Trzy poziomy uprawnień chatu: **Default Approvals** (potwierdzenie każdej akcji), **Bypass Approvals** (bez potwierdzeń, ale pyta przy decyzjach), **Autopilot** (auto-akcje + auto-odpowiedzi).
- **Alt+Enter** w widoku sesji wysyła prompt w tle; widok się resetuje, ale model i kontekst zostają — kasuje się tylko treść pytania.
- **Ctrl+R (Cmd+R na macOS)** otwiera Quick Pick z sesjami w dwóch grupach: "ostatnio otwarte" i "inne sesje", aktywna na górze, z wyszukiwarką po tytule i folderze.
- **Ctrl+Tab / Ctrl+Shift+Tab** chodzi po sesjach w kolejności MRU; **Ctrl+1–9** (Cmd+1–9 na Macu) fokusuje sesję po pozycji w siatce.
- **Ctrl+K Ctrl+W** zamyka wszystkie sesje na raz; układ Agents window przeżywa reload okna (siatka, aktywna sesja, widoczność).
- Agents window dostała pełne wsparcie **WSL** — można mieć obok siebie sesję na Windowsie i sesję w WSL w jednym oknie.
- Wbudowana przeglądarka VS Code dostała wreszcie **historię** z sugestiami w pasku adresu (`workbench.browser.maxHistoryEntries` do konfiguracji limitu).
- Konfig `chat.tools.global.autoApprove` pozwala adminom korpo wymusić politykę narzędzi przez allowlist.

## Co konkretnie robi Autopilot

Po włączeniu (od 1.124 domyślnie) agent może bez pytania:
- **zapisywać pliki** w workspace,
- **uruchamiać komendy terminalowe**,
- **wołać narzędzia (tools)** zarejestrowane w sesji,
- **auto-odpowiadać** na pytania zadawane przez te narzędzia (np. confirm/deny prompty).

W trybie Advanced dochodzi nadzorca w postaci utility modelu — drugi, lekki LLM patrzy z boku na transkrypt i ocenia: skończone czy nie. Bez tego trybu Autopilot bazował na sztywnych regułach. Po trzech pętlach kończy bez względu na werdykt utility modelu (zabezpieczenie przed nieskończonym tokenowaniem).

## Sesje w tle — dlaczego to ma znaczenie

Wcześniej w widoku Agents żeby rozpocząć nową sesję trzeba było zaczekać, aż poprzednia się załaduje. **Alt+Enter** zmienia ten flow w typowe "queue and forget":
- prompt leci w tle,
- widok od razu resetuje treść pytania,
- model i kontekst zostają,
- możesz od razu pisać kolejne zadanie.

Plus skróty nawigacyjne (Ctrl+1–9, Ctrl+Tab) i Ctrl+R Quick Pick robią z Agents window coś, co przypomina tmux/Cursor Composer dla agentów — keyboard-driven, równoległe sesje, persistent state po reloadzie.

## Kontekst rynkowy — wojna agentowych IDE

VS Code 1.124 trafia w gorący moment:

| Gracz | Pozycja w czerwcu 2026 |
|---|---|
| **Cursor (Anysphere)** | Wycena **29,3 mld USD** po rundzie Series D z listopada 2025; **2 mld ARR** w lutym 2026; Pro za **20 USD/mc**, Pro+ 60, Ultra 200. |
| **GitHub Copilot** | Od **1 czerwca 2026** przeszedł na **usage-based billing**; darmowy tier od grudnia 2024; Autopilot domyślnie od 10 czerwca 2026. |
| **Claude Code (Anthropic)** | Z **3% w kwietniu 2025 na 18% w styczniu 2026** (JetBrains Developer Ecosystem Survey); **46% dev-seniorów (10+ lat)** wybiera Claude Code vs 9% Copilota. |
| **Google Antigravity CLI** | Od **18 czerwca 2026** Gemini CLI i Code Assist IDE przestają obsługiwać requesty konsumenckie; Antigravity 2.0 przejmuje rolę agent-first platformy. |

Microsoft odpowiada więc w środku Antigravity migracji (8 dni przed odcięciem Gemini CLI) i tydzień po przejściu Copilota na usage-based pricing. Strategia jest czytelna: Cursor wygrywa surową prędkością (SWE-bench 30% szybciej niż Copilot), ale Copilot ma cenę (darmowy → 10 USD solo) i sześć IDE zamiast jednego. Włączenie Autopilota domyślnie = redukcja tarcia, żeby ludzie którzy wracają z Cursora do darmowego VS Code nie czuli różnicy w autonomii.

## Reakcje i pułapki

- **Pochwała**: keyboard-driven nawigacja sesji (Ctrl+R, Ctrl+Tab, Ctrl+1–9), w końcu działa jak należy w narzędziu od Microsoftu; persistent layout po reloadzie ratuje workflow.
- **Krytyka**: trzy iteracje to mało dla złożonych debug-sesji — Advanced Autopilot może uciąć zadanie w połowie, mimo że utility model wskazuje na potrzebę kontynuacji. Dla porównania Cursor Auto i Claude Code potrafią ciągnąć wielogodzinne autonomiczne sesje.
- **Bezpieczeństwo**: domyślne włączenie Autopilota oznacza, że nowi użytkownicy po pierwszym uruchomieniu dostają agenta, który może uruchamiać terminal bez pytania. Trzeba świadomie cofnąć przez `chat.permissions.default` albo permissions picker w input boxie.
- **Enterprise**: `chat.tools.global.autoApprove` pozwala org-adminom narzucić politykę narzędzi globalnie — zabezpieczenie dla firm, które nie chcą, żeby junior klikał "Autopilot" i wypchnął coś do produ.

## Implikacje dla użytkownika

- **Dla devów Copilota**: domyślnie autonomiczny agent — sprawdź ustawienia, jeśli wolisz potwierdzenia.
- **Dla devów Cursora**: różnica w UX się zaciera; VS Code dogoniło wiele rzeczy (Agent Mode od marca 2026, background agents, browser tools, MCP).
- **Dla devów Claude Code**: terminal-first workflow zostaje — Autopilot z 3 iteracjami nie zastąpi sesji Claude Code z dziesiątkami narzędzi.
- **Dla zespołów**: VS Code z Copilotem to nadal **19 USD/user** vs **40 USD/user** w Cursor Teams — przewaga cenowa rośnie.

---

## Potencjalne kąty narracyjne do shorta

- "Microsoft właśnie włączył agenta, który pisze pliki i odpala terminal **bez pytania** — domyślnie, dla wszystkich."
- "VS Code dostaje Autopilota, ale po **trzech pętlach kończy** — nawet jeśli AI mówi, że nie skończyło."
- "Drugi model LLM patrzy z boku i decyduje, czy pierwszy AI **już się może zatrzymać**."
- "Cursor kosztuje **29 miliardów dolarów**, a Microsoft właśnie dał ci to samo za darmo w VS Code."
- "**8 dni** dzieli włączenie Autopilota w VS Code od śmierci Gemini CLI — Google i Microsoft walczą o ten sam tydzień."
- "Senior devi **5x częściej** wybierają Claude Code niż Copilota — Microsoft odpowiada autonomicznym trybem domyślnym."
- "**Alt+Enter** — kolejka promptów do AI, jak w pracy zespołowej z juniorem, tylko że tym juniorem jest model."

---

## Źródła

- [Visual Studio Code 1.124 — oficjalne release notes (code.visualstudio.com)](https://code.visualstudio.com/updates/v1_124)
- [VS Code 1.124 Focuses on Agent Autonomy and Parallel Sessions — Visual Studio Magazine](https://visualstudiomagazine.com/articles/2026/06/11/vsm-vs-code-1-124.aspx)
- [VS Code 1.124 Enables Copilot Autopilot by Default: Advanced Mode Caps Autonomous Loops at Three — TechTimes](https://www.techtimes.com/articles/318164/20260610/vs-code-1124-enables-copilot-autopilot-default-advanced-mode-caps-autonomous-loops-three.htm)
- [Visual Studio Code 1.124: Smarter Agent Sessions and Smoother AI Workflows — ntcompatible](https://www.ntcompatible.com/story/visual-studio-code-1124-smarter-agent-sessions-and-smoother-ai-workflows)
- [VSCode 1.124 — Agents Window Gets WSL, Keyboard Shortcuts, and UX Polish — Big Hat Group](https://www.bighatgroup.com/blog/vscode-1-124-agents-window-wsl-keyboard-shortcuts/)
- [Microsoft releases Visual Studio Code 1.124 with smarter autonomous AI agents — Neowin](https://www.neowin.net/news/microsoft-releases-visual-studio-code-1124-with-smarter-autonomous-ai-agents/)
- [Claude Code vs GitHub Copilot vs Cursor (2026): Honest Comparison — Cosmic JS](https://www.cosmicjs.com/blog/claude-code-vs-github-copilot-vs-cursor-which-ai-coding-agent-should-you-use-2026)
- [GitHub Copilot vs Cursor 2026: 56% vs 51.7% SWE-bench — tech-insider.org](https://tech-insider.org/github-copilot-vs-cursor-2026-2/)
- [An important update: Transitioning Gemini CLI to Antigravity CLI — Google Developers Blog](https://developers.googleblog.com/an-important-update-transitioning-gemini-cli-to-antigravity-cli/)
- [Google Retires Gemini CLI at I/O 2026: Antigravity 2.0 Launches With Multi-Agent Orchestration — techjacksolutions](https://techjacksolutions.com/ai-brief/google-retires-gemini-cli-at-io-2026-antigravity-20-launches/)
