# Skrót dnia — 11 czerwca 2026

6 newsów researched. Dzień zdominowany premierą Claude Fable 5 — trzy odrębne wątki (premiera + drama safety, dostępność w narzędziach dev, dramat Microsoft blokujący Fable 5 wewnętrznie). Plus refresh ChatGPT Free, Claude Code update i rekordowe Patch Tuesday. Cherry-pick poniżej.

---

## 1. Claude Fable 5: Anthropic wypuszcza najpotężniejszy model 4 dni po wezwaniu do globalnej pauzy

📂 [`fable5-premiera-drama/notatka.md`](./fable5-premiera-drama/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic 9 czerwca publicznie wypuścił Claude Fable 5 — pierwszy ogólnie dostępny model klasy Mythos z wynikiem 80.3% na SWE-Bench Pro (11 pkt przed Opusem 4.8) i ceną dwukrotnie wyższą niż Opus. Premiera padła 4 dni po tym, jak ten sam Anthropic publicznie wezwał wszystkie laby AI do skoordynowanej pauzy w rozwoju z powodu ryzyka recursive self-improvement — co stało się głównym tematem krytyki branży i prasy.

**Top hooks:**
- "4 dni temu prosili świat o pauzę. Dziś wypuścili najpotężniejszy model w historii."
- "80.3% na SWE-Bench Pro. Konkurencja: 11 punktów niżej. GPT-5.5: 22 punkty niżej."
- "Anthropic mówi: 80% kodu w naszej firmie pisze AI. I dlatego prosimy świat o pauzę."

---

## 2. Claude Fable 5 w Copilot, Foundry, Bedrock, Cursor i Claude Code — pierwszego dnia

📂 [`fable5-wszedzie-d0/notatka.md`](./fable5-wszedzie-d0/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic 9 czerwca 2026 wypuścił Fable 5 tego samego dnia w GitHub Copilot, Microsoft Foundry, AWS Bedrock, Cursor 4 i Claude Code — pełne pokrycie dev tools w jeden dzień. Haczyk: Fable 5 jako jedyny model Claude wymaga 30-dniowej retencji danych (do 2 lat jeśli flag), przez co Microsoft sam zablokował go wewnętrznie dla swoich pracowników, choć sprzedaje go klientom.

**Top hooks:**
- "Microsoft sprzedaje Fable 5 klientom, ale **sam blokuje go swoim pracownikom**."
- "Pierwszy raz w historii Claude nie ma Zero Data Retention — **Anthropic trzyma twoje prompty 30 dni**."
- "Stripe zmigrował **50 milionów linii Rubiego** w dni, nie miesiące — to nowy Claude."

---

## 3. Microsoft sprzedaje klientom Fable 5, ale blokuje go własnym pracownikom

📂 [`msft-blokuje-fable5/notatka.md`](./msft-blokuje-fable5/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Microsoft 9 czerwca 2026 uruchamia Claude Fable 5 dla klientów w Foundry i GitHub Copilot, a 10 czerwca okazuje się, że jednocześnie zablokował model dla własnych pracowników w wewnętrznym pickerze GitHub Copilot, bo nowa polityka retencji Anthropic (30 dni, do 2 lat dla flagged, brak ZDR) łamie wewnętrzne reguły Zero Data Retention.

**Top hooks:**
- "Microsoft sprzedaje klientom AI, którego sam się boi używać"
- "9 czerwca: Microsoft uruchamia Fable 5 dla klientów. 10 czerwca: blokuje go pracownikom. Różnica: 24 godziny"
- "Anthropic wart 965 miliardów dolarów wypuszcza model, którego Microsoft odmawia sobie wewnętrznie"

---

## 4. ChatGPT Free dostaje personalizację z dawnych chatów + każdy widzi swoje "Memory sources"

📂 [`gpt55-instant-memory-free/notatka.md`](./gpt55-instant-memory-free/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** OpenAI 9 czerwca 2026 otworzył personalizację GPT-5.5 Instant (kontekst z poprzednich chatów) dla planów Go i Free, a wszystkim użytkownikom pokazał "Memory sources" — listę zapisanych wspomnień i chatów, które wpłynęły na odpowiedź, z opcją edycji/usunięcia. Przy okazji w GPT-5.5 Instant i Thinking wyłączono Canvas, zastępując go inline writing/code blocks.

**Top hooks:**
- "ChatGPT za darmo zaczyna cię pamiętać — pierwszy raz w historii"
- "Otwierasz ChatGPT i widzisz dokładnie, co o tobie wie"
- "Skasujesz chat, a ChatGPT i tak zapamięta — przez 30 dni"

---

## 5. Claude Code dodaje "safe mode" i komendę /cd — ratunek dla zawieszonych sesji

📂 [`claude-code-safemode-cd/notatka.md`](./claude-code-safemode-cd/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Claude Code v2.1.169 (9 czerwca 2026) wprowadza `--safe-mode` (clean session bez CLAUDE.md, plugins, skills, hooks, MCP) do troubleshootingu zepsutej konfiguracji oraz `/cd` zmieniającą working directory bez utraty prompt cache — plus 12 fixów, w tym crash-loop background agentów w git worktree i duplikowany "thinking text" w transcripcie.

**Top hooks:**
- "Jedna komenda oszczędza Ci 20 minut warmingu cache"
- "Safe mode dla AI — jak w Windowsie, ale Twojego asystenta kodu"
- "Anthropic w jednym update'cie naprawił 12 bugów i dał Ci tryb awaryjny"

---

## 6. Microsoft Patch Tuesday: rekord wszech czasów — 200 luk, 6 zero-day

📂 [`patch-tuesday-rekord/notatka.md`](./patch-tuesday-rekord/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Microsoft 10 czerwca załatał rekordowe 200 luk bezpieczeństwa w jednym Patch Tuesday (poprzedni rekord: 167), w tym 6 zero-day. Jeden z nich (CVE-2026-42897 w Exchange Server) jest aktywnie wykorzystywany w atakach od tygodni — wystarczy spreparowany mail otwarty w Outlook Web Access. Skok liczby CVE analitycy wiążą z masowym użyciem LLM do audytu kodu (m.in. OpenAI Codex znalazł "HTTP/2 Bomb").

**Top hooks:**
- "Microsoft załatał 200 dziur w jeden dzień — rekord w historii Windowsa"
- "Sześć zero-day w jednym Patch Tuesday — jeden już wykorzystywany przez hakerów"
- "OpenAI Codex znalazł lukę w Windowsie, której Microsoft nie widział"

---
