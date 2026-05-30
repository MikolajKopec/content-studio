# Skrót dnia — 30 maja 2026

6 newsów researched. Cherry-pick poniżej.

---

## 1. Anthropic wypuszcza Opus 4.8 i Dynamic Workflows — Bun przepisany z Ziga do Rusta w 11 dni

📂 [`opus-48-dynamic-workflows/notatka.md`](./opus-48-dynamic-workflows/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic wypuścił 28 maja Claude Opus 4.8 (zaledwie 41 dni po 4.7, ta sama cena, fast mode 3× tańszy) wraz z research preview Dynamic Workflows — funkcją pozwalającą Claude'owi pisać skrypty JS orkiestrujące do 1000 subagentów (16 równolegle). Killer-demo: Jarred Sumner przepisał cały runtime Bun z Ziga do Rusta (~750k LOC, 99,8% pass rate) w 11 dni używając Claude Code.

**Top hooks:**
- „750 000 linii kodu, 11 dni, jeden człowiek. Witaj w 2026." — Jarred Sumner, twórca Buna, właśnie przepisał cały JS runtime z Ziga do Rusta używając Claude'a. 99,8% testów przechodzi. I mówi, że ręcznie nie pisze kodu od miesięcy.
- „Anthropic właśnie skrócił cykl wydań do 41 dni." Opus 4.7 → Opus 4.8 w półtora miesiąca, w tej samej cenie. Dla porównania: GPT-4 do GPT-4o to było 14 miesięcy. Tempo robi się brutalne.
- „Claude nie pisze już kodu — pisze skrypty, które piszą kod." Dynamic Workflows: Claude generuje JavaScript orkiestrujący do 1000 subagentów na uruchomienie, 16 równolegle. To nie chatbot. To dyspozytor fabryki.

---

## 2. YouTube zaczyna **automatycznie wykrywać** i etykietować filmy AI — nawet jeśli twórca nie ujawni

📂 [`youtube-auto-ai-labels/notatka.md`](./youtube-auto-ai-labels/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** YouTube kończy z modelem dobrowolnego ujawniania AI z 2024 — od maja 2026 platforma sama wykrywa fotorealistyczne treści AI (przez SynthID + C2PA + własne sygnały) i przykleja etykietę, a dla filmów z Veo, Dream Screen lub C2PA metadanymi etykieta jest nieodwracalna. Etykieta przenosi się też z opisu pod player (overlay w Shortsach), co kompletnie zmienia UX dla twórców AI-only.

**Top hooks:**
- "Od dziś YouTube wie, że użyłeś AI — nawet jeśli mu nie powiedziałeś. I dla Veo nie ma od tego odwołania."
- "YouTube właśnie skasował 4,7 miliarda wyświetleń AI slopu. Teraz przyklejają etykietę każdemu, kto choć dotknął AI. Wojna się zaczęła."
- "Twój AI Short będzie miał etykietę nałożoną na sam film. Nie w opisie. Na wideo. Widz zobaczy zanim klimat się wybuduje."

---

## 3. Vertu wypuszcza AlphaFold — składany telefon dla CEO za **6 880 dolarów** ze skórą aligatora w wersji top

📂 [`vertu-alphafold-6880/notatka.md`](./vertu-alphafold-6880/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Vertu — luksusowa marka po bankructwie 2017 — wraca z foldable'em za 6 880–46 800 USD z AI Hermes Agent zbudowanym na open-source'owym frameworku Nous Research, celując w CEO. Krytyka branży: chip Snapdragon 8 Elite z 2024, 5 MP teleobiektyw i plotka o przeskinowanym Nubia Fold w środku — czyli płacisz głównie za skórę aligatora i logo.

**Top hooks:**
- "Telefon za 46 800 dolarów ma gorszy aparat tele niż Twoja Motorola za 800 zł — i to jest cecha, nie błąd." Hook na absurdzie 5 MP tele w sprzęcie ze złotem.
- "Vertu wypuścił składany telefon z AI dla CEO za 6 880 USD. Sprzęt w środku to przeskinowany Nubia Fold za 1 500 USD — płacisz 5 380 USD za skórę aligatora i framework open-source z GitHuba." Demaskacja wartości.
- "Pierwsza partia AlphaFolda to 115 sztuk na cały świat. To nie produkcja telefonu. To kolekcja Hermèsa z procesorem Snapdragon." Sztuczny niedobór jako strategia.

---

## 4. Claude Opus 4.8 wjeżdża do GitHub Copilot z 15× premium request multiplier

📂 [`opus-48-github-copilot/notatka.md`](./opus-48-github-copilot/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** GitHub w dniu premiery Opus 4.8 (28 maja 2026) udostępnia model w Copilot Pro+/Business/Enterprise z mnożnikiem 15× premium request — najwyższym w katalogu, utrzymanym tylko do startu Usage Based Billing 1 czerwca. Równolegle Copilot CLI 1.0.55 dodaje wsparcie 4.8 i fixy MCP, a konkurencja (Cursor Composer 2.5, Antigravity 2.0) tnie ceny — GitHub stawia na premium model + premium price.

**Top hooks:**
- "GitHub wpuścił Opus 4.8 do Copilota z mnożnikiem 15× — i wyłącza go po 4 dniach. Wiesz co się dzieje 1 czerwca?"
- "Jedno pytanie do Opus 4.8 w GitHub Copilot kosztuje 15 premium requestów. Na Pro+ wytrzymasz może 2 godziny."
- "28 maja Anthropic ogłosił Opus 4.8. 28 maja GitHub już go miał w Copilocie. Tak wygląda nowa wojna agentic IDE."

---

## 5. Microsoft odświeża Copilota w Microsoft 365 — ładuje się **dwa razy szybciej**

📂 [`m365-copilot-redesign/notatka.md`](./m365-copilot-redesign/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Microsoft 28 maja 2026 wystartował z nowym UI Microsoft 365 Copilot (ładowanie ponad 2× szybsze, progressive disclosure, rozszerzony prompt box) i ogłosił, że od 1 lipca 2026 Copilot wchodzi w standardzie do nowych SKU Business Standard ($23.50) i Business Premium ($32) dla MŚP — koniec ery dopłaty $30 do Office.

**Top hooks:**
- "Microsoft właśnie obniżył cenę Copilota o 45% — ale jest haczyk" — Business Standard with Copilot za $23.50 vs stary układ $42.50, ale tylko w nowych bundle'ach od 1 lipca.
- "Gdy pracownik ma wybór, Copilot wybiera 8%. ChatGPT — 70%. Dlatego Microsoft właśnie zmienił grę" — redesign + obowiązkowy bundle to reakcja na przegrywanie wojny adopcji.
- "Po redesignie Copilota użycie w PowerPoincie wzrosło o 43%. To nie nowy model, to nowy przycisk" — najmocniejszy dowód, że UX zjada model na śniadanie.

---

## 6. Vivo S60 startuje w Chinach z **7 200 mAh** baterii i potrójną kamerą 50 MP

📂 [`vivo-s60-chiny/notatka.md`](./vivo-s60-chiny/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Vivo wystartowało w Chinach z serią S60 (standard + Vitality Edition) — ogromna bateria 7 200 mAh Si/C, 90 W ładowanie, ekran 1.5K AMOLED 144 Hz przy 5 000 nit i potrójna kamera 50 MP (z peryskopem 3×) w cenie od 3 599 CNY (~2 100 PLN). W Polsce/EU brak premiery — sprzęt prawdopodobnie wróci w lipcu jako Vivo V80.

**Top hooks:**
- „Średnia półka właśnie pokonała iPhone'a 17 Pro Max o 2 200 mAh — Vivo S60 ma 7 200 mAh za 2 100 zł"
- „Galaxy S26 ma 4 300 mAh. Vivo S60 ma 7 200 mAh. I kosztuje 3× mniej."
- „Telefon z baterią większą niż OnePlus 15, a kamerą z peryskopem 50 MP — i nigdy nie wyjedzie z Chin"
