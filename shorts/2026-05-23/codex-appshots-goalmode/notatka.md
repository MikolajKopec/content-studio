# OpenAI Codex dostaje Appshots i stabilny Goal Mode — Mac trzyma command + command

**Data:** 2026-05-23
**Temat:** OpenAI 21 maja 2026 wypchnął duży update do Codexa — Appshots (gest dwóch klawiszy Command na macOS), stabilny Goal Mode w app/IDE/CLI oraz remote computer use, w którym Codex może operować na zablokowanym Macu sterowany z telefonu.

---

## Kluczowe fakty i liczby
- Release: **21 maja 2026**, zmiana w oficjalnym Codex Changelog na developers.openai.com.
- Aplikacja Codex dla Maca: build **26.519** (macOS only dla Appshots).
- Codex CLI: **0.128.0+** wystarczy do Goal Mode; changelog OpenAI wymienia **0.133.0** jako równolegle wydany.
- Appshots: pojedynczy gest **Command + Command** (oba klawisze Command jednocześnie), hotkey rebindowalny w ustawieniach Codexa.
- Capture: **screenshot przez ScreenCaptureKit + tekst przez macOS Accessibility API**, łącznie z treścią poza widocznym scrollem (off-viewport).
- Threading Appshots: nowy zrzut domyślnie tworzy nowy wątek, ale dołącza do ostatniego, jeśli interakcja była **≤ 60 sekund** wstecz.
- Wymagane permissions: **Screen & System Audio Recording + Accessibility** (macOS prompt).
- Goal Mode wychodzi z **eksperymentu** — dostępny w Codex app, IDE extension (VS Code, JetBrains) i CLI; komendy `/goal`, `/goal pause`, `/goal clear`.
- Remote computer use: **niedostępne w EEA, UK i Szwajcarii na start** (regulatory).
- Codex w Coding Agent Index 2026 z GPT-5.5 xhigh: **65 pkt** (vs Claude Code Opus 4.7 = 66, Cursor Composer 2.5 = 62).
- Codex na **Terminal-Bench 2.0: 82.7%** — najwyżej w stawce, 13 pkt nad Composer 2.5 (69.3%).

## Co potrafi
- **Appshots — "kontekst w jeden gest":** Cmd+Cmd wciska aktywne okno (frontmost window, nie cały desktop) do wątku Codexa razem ze screenshotem i strukturalnym tekstem. Off-viewport text oznacza, że jeśli stack trace jest poniżej fold-a, Codex i tak go ma. Działa w Xcode, Safari, Chrome, terminalu, Figmie — ograniczenie: Google Docs/Sheets/Gmail/Slides oddają tylko widoczną treść (sandbox web).
- **Goal Mode stable:** definiujesz cel ("zwiększ test coverage w `src/auth` do 90%") plus kryteria sukcesu, a Codex planuje, wykonuje, sprawdza wyniki i koryguje sam siebie przez godziny lub dni. Side chats pozwalają review bez przerywania głównej pętli. Możesz w każdej chwili `/goal pause`.
- **Remote computer use:** wysyłasz zadanie z Codex Mobile, Mac jest zablokowany, ekran zgaszony — Codex i tak klika, pisze, nawiguje menu w dozwolonych aplikacjach. Lockscreen pokazuje overlay **"Codex is Using Your Mac"**. Dotknięcie lokalnej klawiatury/myszki = natychmiastowy relock.
- **Plugin sharing dla ChatGPT Business:** marketplace dla zespołowych pluginów (skille, MCP servery, app connections); Enterprise w drodze.
- **Browser features:** advanced annotations (batch comments, zmiana czcionek, spacingu, kolorów inline), szybszy image asset download, structured data extraction w read-only JS sandboxie.

## Porównanie z konkurencją (Cursor, Claude Code, Antigravity)
- **Cursor Composer 2.5:** najtańszy agent powyżej 60 pkt — **~$0.07 standard / $0.44 Fast za task**, czyli 10–60× taniej niż Codex/Claude Code. Supermaven autocomplete sub-100 ms. Mocny w IDE-native parallel agents. Nie ma globalnego "Cmd+Cmd → kontekst", bazuje na image inputs i agent prompting w IDE.
- **Claude Code (Opus 4.7):** **66 pkt** w Coding Agent Index — top score. 1M tokenów context, Agent Teams do dużych monorepo, najlepszy w cross-file refactoringu. Nie ma natywnego "remote-control mojego Maca". Computer use Anthropica jest API-driven, nie ma desktopowego command center w stylu Codexa.
- **Codex (GPT-5.5 xhigh):** **65 pkt**, ale **Terminal-Bench 2.0 = 82.7%** to wciąż lider stawki dla terminalowych workflowów. Jedyne narzędzie z (a) globalnym gestem hotkey wciągającym kontekst i (b) trybem operowania na lockowanym Macu z mobile. Goal Mode wyróżnia się długością horyzontu (godziny/dni).
- **Antigravity:** brak bezpośredniego odpowiednika Appshots ani locked-Mac control; gra w innym segmencie agentów chmurowych.
- **Windsurf:** brak porównywalnej funkcji systemowej; pozostaje IDE-first.
- Praktyczny wniosek: Codex staje się **"background process, nie foreground tool"** — pracuje, gdy Cię nie ma; Cursor Composer 2.5 broni się ceną i UX-em w IDE; Claude Code dalej dominuje w głębokim reasoning na dużych codebase'ach.

## Bezpieczeństwo (remote computer use)
- **Short-lived authorization:** tokeny są krótkożyciowe (nie persistent access). Sesja "computer use turn" jest scoped — po jej zakończeniu trzeba autoryzować ponownie.
- **Per-app authorization:** Codex pyta o pozwolenie przy każdej nowej aplikacji; "Always allow" jako opt-in allowlist.
- **Covered displays:** ekran Maca pozostaje zaciemniony — fizycznie obecna osoba nie zobaczy, co robi Codex. Zamiast tego — overlay "Codex is Using Your Mac".
- **Relock on local input:** jakiekolwiek dotknięcie klawiatury/touchpada przez człowieka = natychmiastowy relock, sesja Codexa się ucina.
- **Manual-unlock fallback:** jeśli coś idzie nie tak, użytkownik odblokowuje ręcznie; nie ma "Codex unlock yourself".
- **Twarde wykluczenia:** Codex **nie** może automatyzować Terminala, samego Codexa ani system-level admin prompts (sudo, FileVault password dialog). To wyklucza klasę ataków z eskalacją uprawnień.
- **Permission stack:** Computer Use plugin = osobny komponent, wymaga jawnego zainstalowania + Screen Recording + Accessibility. Bez tego całość nie działa.
- **Regulacyjne wycięcie:** EEA, UK, Szwajcaria nie dostają feature na start — sygnał, że OpenAI wciąż domyka GDPR/AI Act assessment.
- **Czego brakuje (z otwartych źródeł):** brak dokumentowanej redakcji PII przed wysyłką Appshota, brak admin disable switcha specyficznego dla Appshots (rządzi się tym workspace-level: AES-256 at rest, TLS 1.2+, RBAC, SAML SSO dla Business/Enterprise/Edu).

## Implikacje dla developerów
- **Koniec opisywania bug-ów słowami:** stack trace w terminalu, error w Xcode, log w Console.app — Cmd+Cmd i Codex ma kontekst dokładnie taki, jaki Ty widzisz. Off-viewport text scrollowania niczego nie ukrywa.
- **Goal Mode jako "overnight refactor":** package migrations, podbicie test coverage, polowanie na flaky testy — odpalasz przed snem, rano review w diff viewerze.
- **Mobile-first dev workflow:** Codex Mobile + remote computer use to scenariusz "siedzisz na kanapie, Codex pracuje na twoim biurku". Mocny visual dla shorta.
- **Spec pisania > klepanie kodu:** stabilny Goal Mode podnosi wagę dobrze napisanych acceptance criteria — bo Codex na nich pracuje godziny.
- **Surface attack rośnie:** każda nowa aplikacja, którą "Always allow", to nowy wektor. Higiena allowlisty zaczyna mieć wagę security review.
- **Cena vs ROI:** Cursor Composer 2.5 wciąż 10–60× tańszy per task. Goal Mode i Appshots to argumenty premium — sens, gdy zadania są naprawdę długie i stack-specific.
- **Polska perspektywa:** EEA-block remote computer use oznacza, że polski dev korzysta z Appshots i Goal Mode, ale "Codex pracuje gdy Twój Mac jest zablokowany" — póki co poza zasięgiem oficjalnie.

---

## Potencjalne kąty narracyjne do shorta
1. "Naciśnij Command dwa razy — Codex właśnie zobaczył twój ekran." Pokaż gest Cmd+Cmd, screenshot pojawia się w Codex chacie, error fix gotowy w 5 sekund.
2. "AI używa twojego Maca, gdy śpisz." Lockscreen z napisem "Codex is Using Your Mac", telefon w ręce, Codex klika w Xcode bez Ciebie — i polski dev tego nie dostanie (EEA-block).
3. "Goal Mode = '/goal: podnieś coverage do 90%' i Codex pracuje 8 godzin." Przed kawą — diff na 47 plików, testy zielone.
4. "Codex 65, Claude Code 66, Cursor 62 — różnica między top 3 to 4 punkty, ale ceny różnią się 10–60×." Wizualnie: trzy ikony, słupek benchmarka, słupek ceny — paradoks dev tools wars 2026.
5. "Off-viewport text — Codex widzi to, czego TY nie widzisz na ekranie." Pokaż długi stack trace, scrollujesz, Codex i tak już ma cały tekst przez Accessibility API.
6. "Cmd+Cmd działa w Xcode, Safari, Figmie. Ale nie w Google Docs." Bo Google Docs to sandbox — accessibility tree zwraca tylko widoczne, lekcja architektury web aplikacji w 30 sekund.
7. "Bezpieczeństwo locked-Mac w pięciu warstwach: short-lived token, covered display, per-app permission, relock on touch, no Terminal/sudo." Pokaż jako 5 ikon zabezpieczeń — "to nie jest 'zostaw mi Maca, zaufaj mi'".

---

## Źródła
- [Codex Changelog – developers.openai.com](https://developers.openai.com/codex/changelog) — primary, 21 maja 2026, build 26.519, CLI 0.133.0
- [Appshots – developers.openai.com/codex/appshots](https://developers.openai.com/codex/appshots) — oficjalna dokumentacja feature
- [9to5Mac – Codex for Mac updated with new Appshots feature (21 maja 2026)](https://9to5mac.com/2026/05/21/codex-for-mac-updated-with-new-appshots-feature-that-instantly-gives-chat-context/)
- [MacRumors – OpenAI's Codex Can Now Use Your Mac Even When It's Locked (22 maja 2026)](https://www.macrumors.com/2026/05/22/codex-use-mac-apps-when-locked/)
- [Digit.in – OpenAI upgrades Codex with Appshots, Goal mode and more developer-focused tools (21 maja 2026)](https://www.digit.in/news/general/openai-upgrades-codex-with-appshots-goal-mode-and-more-developer-focused-tools.html)
- [Kingy AI – Appshots: Inside OpenAI Codex's Command-Command Trick for macOS](https://kingy.ai/blog/appshots-inside-openai-codexs-new-command-command-trick-for-macos/) — głęboki technical breakdown (ScreenCaptureKit, Accessibility API, threading)
- [byteiota – Codex Appshots & Goal Mode: Use Them Now (maj 2026)](https://byteiota.com/codex-appshots-goal-mode-may-2026/) — praktyczny usage guide z komendami `/goal`
- [Artificial Analysis – Cursor's Composer 2.5: third on Coding Agent Index](https://artificialanalysis.ai/articles/cursor-composer-2-5-coding-agent-index) — benchmarki Codex vs Cursor vs Claude Code
- [Lushbinary – AI Coding Agents 2026 comparison](https://lushbinary.com/blog/ai-coding-agents-comparison-cursor-windsurf-claude-copilot-kiro-2026/) — szersze porównanie tooli
