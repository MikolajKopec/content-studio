# Newsy technologiczne — 30 maja 2026

---

## 1. Anthropic wypuszcza Opus 4.8 i Dynamic Workflows — Bun przepisany z Ziga do Rusta w 11 dni

**Źródło:** TechCrunch (28 maja 2026), MarkTechPost (28 maja 2026), Anthropic blog (28 maja 2026), The Register

28 maja Anthropic wypuścił Claude Opus 4.8 — najnowszą wersję swojego flagowego modelu, w tej samej cenie co Opus 4.7, ale **zaledwie 41 dni** po poprzedniku. Model jest dostępny od razu w API, Claude.ai oraz GitHub Copilot (Pro+, Business, Enterprise) z mnożnikiem 15× premium do startu Usage Based Billing 1 czerwca.

Razem z modelem ruszyła funkcja **Dynamic Workflows** — research preview pozwalający Claude pisać skrypty JavaScript, które orkiestrują setki równoległych subagentów. Limit: 16 jednocześnie, 1000 łącznie na uruchomienie. Killer demo: Jarred Sumner (twórca Buna) przepisał Bun z Ziga do Rusta — **~750 000 linii** kodu, **99,8% pass rate** na istniejącym test suite, **11 dni** od pierwszego commita do merge'a.

> **Potencjał contentowy:** wysoki — konkretna liczba (750k LOC w 11 dni), znana postać (Jarred Sumner), dramatyczny narzędziowy efekt dla devów.

---

## 2. Claude Opus 4.8 wjeżdża do GitHub Copilot z 15× premium request multiplier

**Źródło:** GitHub Changelog (28 maja 2026), GitHub Copilot CLI 1.0.55 release notes

W tym samym dniu co premiera modelu (28 maja) GitHub ogłosił dostępność Claude Opus 4.8 w GitHub Copilot dla planów **Pro+, Business i Enterprise**. Model startuje z **mnożnikiem 15× premium** za request — utrzymywanym do uruchomienia Usage Based Billing **1 czerwca 2026**, czyli przez niecały tydzień.

Równolegle wyszedł **Copilot CLI 1.0.55** — obsługa Opus 4.8, naprawiony loading spinner przy uruchamianiu w untrusted folder oraz poprawki konfiguracji MCP serverów. To kolejne uderzenie w wojnie agentic IDE: Cursor (Composer 2.5 z 18 maja), Antigravity 2.0 (Google, 19 maja), teraz Copilot ściąga Opus 4.8 na pokład.

> **Potencjał contentowy:** średni — dev tool wars zawsze grają, ale temat tylko częściowo nakłada się z #1 (Opus 4.8 ogólnie).

---

## 3. Microsoft odświeża Copilota w Microsoft 365 — ładuje się **dwa razy szybciej**

**Źródło:** Windows Forum (28 maja 2026), Microsoft Roadmap

28 maja Microsoft zaczął rolować redesigned **Microsoft 365 Copilot** na desktopie i mobile. Główna obietnica: czasy ładowania **skrócone o ponad 50%** (czyli ponad 2× szybciej). Pomijając kosmetyczne zmiany, nowy interfejs daje **rozszerzony prompt box** z bogatszym formatowaniem i obsługą długich wklejek, oraz **progressive disclosure** — kontrolki Copilota pokazują się dynamicznie w zależności od zadania, zamiast wysypywać wszystkie opcje od razu.

W tym samym dniu Microsoft potwierdził też launch **Microsoft 365 Business Standard with Copilot** i **Business Premium with Copilot** dla MŚP — od **1 lipca 2026**. Bundle: Office apps + Copilot + connectors + security w nowych SKU. Strategiczny sygnał: Copilot przestaje być add-onem, staje się integralną częścią Office.

> **Potencjał contentowy:** średni — narzędziowe, dotyka milionów użytkowników Office, ale temat bez wyraźnej dramy.

---

## 4. YouTube zaczyna **automatycznie wykrywać** i etykietować filmy AI — nawet jeśli twórca nie ujawni

**Źródło:** TechCrunch (27 maja 2026), Variety (27 maja 2026), YouTube Blog, Breitbart (28 maja 2026)

YouTube ogłosił rollout systemu **automatycznego wykrywania** "znaczących, fotorealistycznych" treści AI w filmach. Jeśli system wykryje AI, a twórca tego nie zadeklarował — platforma **i tak doda etykietę**. Twórca może odwołać się przez YouTube Studio, ale dla treści zrobionych w narzędziach YouTube (Veo, Dream Screen) lub z metadanymi C2PA — etykieta jest permanentna.

Druga zmiana: etykiety stają się **dużo bardziej widoczne**. W długich filmach lądują pod oknem playera (zamiast w rozwiniętym opisie, gdzie nikt nie zagląda). W Shortsach pojawiają się **jako overlay na samym wideo**.

To pierwsze zerwanie z dotychczasowym podejściem "voluntary disclosure" istniejącym od 2024. Twórcy AI-only content dostają zmianę reguł gry w środku partii.

> **Potencjał contentowy:** wysoki — dotyka każdego twórcę YT (w tym audiencji meeko), wyraźna drama "platforma śledzi, czy używasz AI".

---

## 5. Vertu wypuszcza AlphaFold — składany telefon dla CEO za **6 880 dolarów** ze skórą aligatora w wersji top

**Źródło:** TechCrunch (28 maja 2026), Neowin, Gizmochina, Technology.org

28 maja luksusowa marka Vertu odpaliła **AlphaFold** — składanego smartfona, którego CEO Molly Ma reklamuje jako "AI agent do prowadzenia firmy w drodze". Cena startowa: **6 880 USD** (wersja z cielęcej skóry). Top-end model standardowy: **46 800 USD**. W górnej półce: skóra brzucha aligatora, 18K złoto, akcenty z naturalnych diamentów.

Sprzęt: **Snapdragon 8 Gen 4**, główny ekran składany **8,05"**, zewnętrzny **6,53"**, bateria **6 500 mAh**, łączność satelitarna. Najciekawsze: agent **Hermes Agent** zbudowany na open-source'owym Hermes od Nous Research — łączy się z systemami ERP/CRM i obsługuje zatwierdzenia, scheduling, sales tracking, planowanie podróży i raporty operacyjne przez natural language.

Argument Mola Ma: AI w smartfonach głównych graczy ciągle skupia się na edycji zdjęć i głosowych asystentach — nie na biznesie.

> **Potencjał contentowy:** średni-wysoki — absurdalna cena + skóra aligatora + "telefon dla CEO" = wirusowy hook.

---

## 6. Vivo S60 startuje w Chinach z **7 200 mAh** baterii i potrójną kamerą 50 MP

**Źródło:** GSMArena (29 maja 2026), 91mobiles, Gizmochina, PCQuest

29 maja Vivo oficjalnie odpaliło w Chinach serię **S60** — model standardowy oraz **S60 Vitality Edition**. Najmocniejszy argument: ogromna bateria **7 200 mAh** z **90 W** szybkim ładowaniem w obu wersjach.

Standardowy S60 dostaje **Snapdragon 8s Gen 3**, Vitality Edition — **MediaTek Dimensity 7500**. Ekran: **6,59"** flat z rozdzielczością 1260p, srebrno-białe wykończenie inspirowane odbiciami światła na letnim morzu. Aparaty z tyłu: **50 MP główny + 8 MP ultra-wide + 50 MP IMX882 perystyskop z 3× zoomem**, z przodu **50 MP selfie**. Razem z telefonem Vivo wypuszcza też słuchawki **TWS 5e**.

Na razie wyłącznie Chiny, brak informacji o globalnej dostępności i cenach poza chińskim rynkiem.

> **Potencjał contentowy:** średni — masywna bateria to konkretny hook, ale brak premiery w PL/EU obniża actionability.
