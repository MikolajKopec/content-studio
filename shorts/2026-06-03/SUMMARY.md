# Skrót dnia — 3 czerwca 2026

6 newsów researched. Cherry-pick poniżej.

---

## 1. MiniMax M3: pierwszy open-weights model klasy frontier z kodowania

📂 [`minimax-m3-open-weights/notatka.md`](./minimax-m3-open-weights/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Chiński MiniMax 1 czerwca 2026 wypuścił M3 — pierwszy open-weights LLM łączący kodowanie klasy frontier (59,0% na SWE-Bench Pro, bije GPT-5.5 i Gemini 3.1 Pro, traci 10 pkt do Opusa 4.8), kontekst 1M tokenów i natywną multimodalność, w cenie ~10× niższej niż Opus 4.8 (0,30-0,60 USD za milion input). Wagi mają trafić na HuggingFace w ciągu 10 dni; wszystkie benchmarki są na razie vendor-run.

**Top hooks:**
- Chińczyk za 30 centów robi to, za co OpenAI kasuje 10 dolarów
- M3 sam napisał paper. 12 godzin bez człowieka.
- MiniMax pobił GPT-5.5 i Gemini. A jego akcje spadły o 12%.

---

## 2. Microsoft pokazuje MAI-Code-1-Flash: własny model wjeżdża do Copilota

📂 [`mai-code-1-flash-copilot/notatka.md`](./mai-code-1-flash-copilot/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Na Microsoft Build 2026 (2 czerwca) Satya Nadella ogłosił siedem własnych modeli MAI trenowanych od zera bez destylacji z OpenAI, w tym flagowy MAI-Thinking-1 (35B aktywnych params, 256k kontekst) i MAI-Code-1-Flash (~5B params), który od dziś rolluje się we wszystkich planach GitHub Copilota — Free, Pro, Pro+ i Max — bijąc Claude Haiku 4.5 o 16 punktów na SWE-Bench Pro przy 60% mniejszym zużyciu tokenów.

**Top hooks:**
- Microsoft właśnie wsadził własny model do Copilota — i nie zapytał OpenAI o zgodę.
- Twój GitHub Copilot od dziś używa modelu, który zużywa 60% mniej tokenów — i bije Claude Haiku 4.5 o 16 punktów na SWE-Bench Pro.
- 5 miliardów parametrów. Pokonuje model Anthropica. I dziś rusza we wszystkich planach Copilota — łącznie z Free.

---

## 3. OpenAI Codex i GPT-5.5 wjeżdżają do AWS Bedrock (GA)

📂 [`codex-gpt55-bedrock-ga/notatka.md`](./codex-gpt55-bedrock-ga/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** 1 czerwca 2026 AWS ogłosił GA modeli GPT-5.5, GPT-5.4 oraz agenta Codex na Amazon Bedrock — w regionach komercyjnych i GovCloud, w cenach 1:1 z first-party OpenAI (GPT-5.5: 5 USD input / 30 USD output per 1M tokenów), z zaliczeniem zużycia do zobowiązań AWS. To operacyjne domknięcie zakończenia ekskluzywności Azure i listopadowego kontraktu OpenAI ↔ Amazon na 38 mld USD.

**Top hooks:**
- "OpenAI właśnie wjechał na AWS — i to nie metafora, tylko 38 miliardów dolarów kontraktu."
- "GPT-5.5 na Bedrocku kosztuje tyle samo co u OpenAI bezpośrednio — ale teraz wlicza się do twojego budżetu AWS."
- "GPT-5.5 wlazł do GovCloud. To znaczy, że amerykański rząd może oficjalnie używać ChatGPT-a do classified workloadów."

---

## 4. GitHub Copilot przechodzi na AI Credits + nowy plan Max za 100 USD

📂 [`copilot-credits-max-100/notatka.md`](./copilot-credits-max-100/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Od 1 czerwca 2026 wszystkie plany Copilota są rozliczane w AI Credits (1 credit = 0,01 USD) — Pro 10 USD daje 1 500 credits, Pro+ 39 USD daje 7 000 credits, a nowy plan Max za 100 USD/mies. dorzuca 20 000 credits (10k base + 10k flex) i otwarcie celuje w heavy-userów Cursora Ultra i Claude Code Max.

**Top hooks:**
- Copilot dorównał Cursorowi ceną — Microsoft uruchamia plan Max za 100 USD i celuje w heavy userów
- Od 1 czerwca każde zapytanie do Copilota kosztuje konkretne grosze — autocomplete nadal za darmo, ale Chat liczy tokeny
- Microsoft chce, żebyś używał ich modelu — MAI-Code-1-Flash jest 4× tańszy w credits od Claude Sonnet 4.6

---

## 5. AMD wypuszcza Radeon RX 9070 GRE globalnie za 549 USD

📂 [`amd-rx9070-gre-549/notatka.md`](./amd-rx9070-gre-549/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** AMD wypuściło 2 czerwca 2026 globalnie kartę Radeon RX 9070 GRE (RDNA 4, Navi 48, 48 CU, 12 GB GDDR6 na 192-bit, 220 W TBP) za 549 USD — wcześniej ekskluzyw chiński. W 1440p raster bije RTX 5060 Ti 16GB o ~22–28 % i tylko o 8 % przegrywa z RTX 5070, ale 12 GB VRAM dławi się w ray tracingu powyżej 1080p; ceny PL prognozowane na 2300–2500 PLN.

**Top hooks:**
- Karta z Chin trafia do Polski za 2300 PLN — bije RTX 5060 Ti 16GB o 28%
- AMD sprzedaje słabszą kartę za tę samą cenę co RX 9070 — i ma sens (bo RX 9070 w sklepach kosztuje 2700+ PLN)
- 12 GB VRAM zabija RX 9070 GRE w ray tracingu — wyłącznie 1080p przeżywa

---

## 6. Microsoft Project Solara: badge'e i biurka z AI agentem zamiast ekranu

📂 [`project-solara-scout/notatka.md`](./project-solara-scout/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Microsoft na Build 2026 ogłosił Project Solara — platformę chip-to-cloud z dwoma reference design (badge na Qualcommie, biurkowy hub na MediaTeku) działającą na MDEP (Android, nie Windows), plus Scout — pierwszego Autopilot agenta zbudowanego na open-source OpenClaw (100k+ gwiazdek na GitHubie). To pokazówka wizji „agent-first", nie shipping product — pilot z Best Buy, CVS, Target startuje w „najbliższych miesiącach", a Scout wymaga zapisu do programu Frontier + Intune + GitHub Copilot license.

**Top hooks:**
- Microsoft pokazał komputer bez ekranu — biurkowy hub na MediaTeku, który nie ma własnego desktopa. To AOSP, nie Windows. W 2026.
- Pamiętacie Humane AI Pin za $699, który zwrócili wszyscy? Microsoft właśnie pokazał Project Solara — to samo, ale dla firm. Badge z Qualcomma na smyczy, integracja z Teams i Outlookiem. Premiera: „w najbliższych miesiącach" pilot z Best Buy, CVS, Target.
- Scout to pierwszy Autopilot agent Microsoftu — działa bez prompta. Sam blokuje ci kalendarz, generuje materiały na spotkanie, wykrywa, że ktoś nie podjął decyzji. Pod spodem? OpenClaw — open-source z 100 000+ gwiazdkami na GitHubie.
