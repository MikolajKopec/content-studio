# Skrót dnia — 31 maja 2026

6 newsów researched. Cherry-pick poniżej.

---

## 1. Claude Opus 4.8 wjeżdża z Effort Controls i Dynamic Workflows w Claude Code

📂 [`claude-opus-4-8/notatka.md`](./claude-opus-4-8/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic wypuszcza Opus 4.8 zaledwie 41 dni po 4.7 — model 4× rzadziej przepuszcza bugi, bije GPT-5.5 i Gemini 3.1 Pro na SWE-bench Pro (69,2%) i jako pierwszy łamie 10% na all-pass Legal Agent Benchmark. Dynamic Workflows pozwalają jednemu agentowi orkiestrować do 1000 sub-agentów (demo: port 750k linii Zig→Rust w 11 dni, 99,8% testów przeszło), a Fast Mode jest 3× tańszy niż w 4.7.

**Top hooks:**
- "41 dni i nowy Claude — Anthropic zmienia tempo"
- "1000 botów Claude'a pisze za ciebie kod, a ty śpisz"
- "750 000 linii kodu w 11 dni — i 99,8% testów wciąż działa"

---

## 2. Anthropic za 965 mld dolarów. Mythos znajduje "tysiące zero-dayów"

📂 [`anthropic-965b-mythos/notatka.md`](./anthropic-965b-mythos/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic zamknął Series H na 65 mld USD przy wycenie 965 mld USD post-money, przeskakując OpenAI (852 mld) i osiągając ARR 47 mld USD. Równolegle Mythos w preview "Project Glasswing" znalazł 10 000+ zero-dayów (w tym 27-letni bug w OpenBSD), zrobił 97,6% na USAMO 2026 vs 42,3% Opus 4.6, a rollout dla wszystkich klientów ma nastąpić "w nadchodzących tygodniach" po wprowadzeniu safeguardów.

**Top hooks:**
- "965 miliardów. Większa niż OpenAI. Większa niż Tesla była rok temu."
- "Inżynierowie wyszli z biura. Rano AI miało gotowy hack."
- "42% → 97%. Jeden model. Sześć miesięcy."

---

## 3. OpenAI Codex steruje Windowsem — z poziomu telefonu w ChatGPT

📂 [`codex-windows-mobile/notatka.md`](./codex-windows-mobile/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Codex 26.527 (29 maja 2026) dodaje Computer Use na Windows — agent przejmuje kursor, klika i pisze w foregroundzie aktywnego pulpitu, plus remote continuation z ChatGPT mobile na wszystkich planach (włącznie z Free i Go). Computer Use zablokowane w EEA, UK i Szwajcarii na starcie.

**Top hooks:**
- „Twój kursor zacznie ruszać się sam — Codex właśnie dostał ręce na Windowsie." (pokaz: kursor klika w Paint bez dotykania myszki)
- „Wychodzisz z domu, Codex koduje, ty na telefonie klikasz „approve" w autobusie — to nie demo, to release 26.527 z 29 maja."
- „20 minut zamiast 2 godzin — Codex sam przeklikuje regression suite na żywym Windowsie, ty oglądasz diffy na iPhonie."

---

## 4. Firma spaliła 500 milionów dolarów na Claude w 30 dni — bo zapomnieli ustawić limitów

📂 [`500m-claude-bill-30d/notatka.md`](./500m-claude-bill-30d/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anonimowy enterprise klient Anthropica spalił 500 mln USD na Claude w 30 dni (ok. 16 700 USD/s), bo dał pracownikom nieograniczony dostęp bez spending caps — w tle Microsoft kasuje wewnętrzne licencje Claude Code (gdzie inżynierowie wbijali po 500–2000 USD/mc), a Uber spalił 3,4 mld USD budżetu AI w 4 miesiące.

**Top hooks:**
- "Pół miliarda dolarów. W jednym miesiącu. Przez przypadek."
- "16 700 dolarów na sekundę. Tyle wydawał ten klient Anthropica — i nie zauważył przez 30 dni."
- "Jeden agent AI pali 1000× więcej tokenów niż jedno pytanie do chatbota. A pracownicy odkryli agenty masowo."

---

## 5. Microsoft + Nvidia teasują "nową erę PC". Dell XPS z ARM-em Nvidii leci jutro

📂 [`nvidia-n1x-computex/notatka.md`](./nvidia-n1x-computex/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Nvidia i Microsoft skoordynowanym tease'em na X (hasło "a new era of PC" + współrzędne Taipei Music Center) zapowiedziały oficjalny debiut N1X — pierwszego konsumenckiego CPU Nvidii od dekady, łączącego 20 rdzeni ARM z iGPU klasy RTX 5070 (6144 CUDA cores na Blackwell). Reveal 1 czerwca o 11:00 Taipei, Dell XPS z N1X dziś, OEM-y Lenovo/Asus/MSI w grze, pierwsze Windows ARM laptopy z natywnym stackiem CUDA.

**Top hooks:**
- "Nvidia robi swój pierwszy konsumencki CPU od dekady. I robi go z ARM-em. Do laptopów."
- "6144 rdzeni CUDA — tyle co desktopowy RTX 5070 — w cienkim laptopie z ARM-em. Intel, mamy problem."
- "Microsoft i Nvidia wrzuciły identyczny post na X z koordynatami. Tłumaczę co właśnie się stało."

---

## 6. Samsung wysyła próbki HBM4E. 3,6 TB/s, sześć miesięcy przed SK Hynix

📂 [`samsung-hbm4e-12-warstw/notatka.md`](./samsung-hbm4e-12-warstw/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Samsung 29 maja 2026 jako pierwszy na świecie wysłał 12-warstwowe próbki HBM4E (3,6 TB/s, 48 GB/stack) do Nvidii, AMD i Google, wyprzedzając SK Hynix o pół roku. Akcje skoczyły o ~6%, kapitalizacja przebiła 1,3 bln USD — Samsung pozycjonuje się jako preferowany dostawca pamięci dla Rubin Ultra i kolejnej generacji akceleratorów AI.

**Top hooks:**
- Samsung wyprzedził SK Hynix o pół roku — i prawdopodobnie wygrał wyścig o pamięć w kolejnym Nvidii.
- 3,6 terabajta na sekundę. Z jednego stacka. HBM4E od Samsunga właśnie pojechał do Nvidii, AMD i Google.
- Trzy miesiące temu Samsung ruszył HBM4. Teraz wysyła już próbki HBM4E. 48 GB na stack. To tempo, którego rynek pamięci jeszcze nie widział.

---
