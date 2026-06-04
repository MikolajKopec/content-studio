# Newsy technologiczne — 4 czerwca 2026

---

## 1. Motorola Edge 70 Pro+ debiutuje w Indiach: 6500 mAh, 144 Hz, od ~47 999 INR

**Źródło:** 91mobiles (3 czerwca 2026), LatestLY, Gizbot, Beebom

Motorola dzisiaj (4 czerwca) startuje sprzedaż **Edge 70 Pro+** w Indiach przez Flipkart i Moto.in. Wariant **12/256 GB** ma startować od **47 999 INR** (≈2200 zł), wersje wyższe sięgają **56 999 INR**.

Specyfikacja: **6,8" 1.5K AMOLED quad-curved 144 Hz** ze szczytową jasnością **5200 nitów**, **MediaTek Dimensity 8500 Extreme**, **6500 mAh** silicon-carbon, **90 W** ładowanie przewodowe + **15 W** bezprzewodowe + **10 W** reverse. Trójobiektywowy zestaw Sony Lytia 710 **3× 50 Mpix** (wide, ultrawide z AF, periscop telefoto z OIS 3,5×) plus **50 Mpix** front. Trzy lata Androida + pięć lat patchów bezpieczeństwa.

> **Potencjał contentowy:** wysoki — premium z 6500 mAh i 5200 nitów za ~2200 zł to konkretna cena/zaplecze do porównań z iPhonem 17 i flagowcami Samsunga.

---

## 2. OpenAI Codex i GPT-5.5 generalnie dostępne na AWS Bedrock

**Źródło:** Help Net Security (2 czerwca 2026), AWS About Amazon, OpenAI blog

**Codex, GPT-5.5 i GPT-5.4** weszły **2 czerwca** w stan generalnej dostępności na **Amazon Bedrock**. Wcześniej (kwiecień) były w limited preview. Dla deweloperów oznacza to: Codex **CLI, App i integracje IDE** działają teraz przez Bedrock z natywnym **IAM, VPC isolation i szyfrowaniem** AWS — czyli pełna kontrola enterprise.

Stawki cennikowe równe pierwszej stronie OpenAI, ale zużycie liczy się do **AWS commitments** (czyli można "spalać" rabat AWS na tokeny GPT). Wśród nazwanych klientów GA: **Amgen** (life sci) i **Autodesk** (CAD/inżynieria) — czyli OpenAI wchodzi twardo w branże, które wcześniej trzymały się Anthropica.

> **Potencjał contentowy:** średni — niszowy temat B2B, ale dla devów to konkretna zmiana w stacku ("Codex bez kart kredytowych OpenAI, na rabacie AWS").

---

## 3. AMD Radeon RX 9070 GRE globalnie za 549 USD

**Źródło:** Tom's Hardware (Computex live blog, 2 czerwca 2026), Igor's Lab

AMD od **2 czerwca** sprzedaje globalnie kartę **Radeon RX 9070 GRE** za **549 USD**, która do tej pory była ekskluzywna dla rynku chińskiego. To mid-range RDNA 4 z RX 9070 cuttingu — wcześniej kosztowała **4399 RMB** w Chinach.

Decyzja zbiega się z dniem inauguracji **Computex 2026** w Tajpej, gdzie AMD postawił raczej na pokazanie szerokiego portfolio (X3D anniversary, AM5 do 2029, mocniejszy push w AI) zamiast jednej hero karty. RX 9070 GRE celuje w lukę między 7800 XT a 7900 GRE.

> **Potencjał contentowy:** średni — niche dla gamerów PC, ale liczba 549 USD vs Nvidia RTX 5070 to konkretne porównanie do shorta.

---

## 4. Perplexity demonstruje hybrydowy lokalny+chmurowy orchestrator na keynote Intela

**Źródło:** VentureBeat, Zamin (3 czerwca 2026), Intel Newsroom

Na keynote Intela **3 czerwca** w Tajpej **Aravind Srinivas** (CEO Perplexity) wszedł na scenę z **Lip-Bu Tanem** i pokazał "pierwszy hybrid local-server inference orchestrator". W demo software **w czasie rzeczywistym, w trakcie zadania** decyduje, które fragmenty AI workload zostają na laptopie, a które idą do frontier modelu w chmurze.

Demo działało na **Intel Core Ultra Series 3** (NPU + Arc GPU). Pomysł: lokalny model klasyfikuje wrażliwość/koszt zapytania → wysyła tylko to, co naprawdę musi pójść do chmury. Pierwsza próba zerwania z dychotomią "albo offline mały, albo online wszystko".

Przy okazji Intel ogłosił dostępność **Xeon 6+** (288 e-cores, 576 MB L3, proces Intel 18A) — sygnał, że agentic AI wraca CPU do data center.

> **Potencjał contentowy:** wysoki — Perplexity jako pierwszy duży gracz formalizuje "co lokalnie, co w chmurze" — koniec ery "wszystko przez chmurę". Dobry kontrast z Apple Intelligence.

---

## 5. Qualcomm pcha Snapdragon X2 Elite na desktop — pierwsze mini PC od ASUS-a

**Źródło:** Republic World (2 czerwca 2026), Deccan Herald, Qualcomm newsroom

Qualcomm na Computex 2026 ogłosił **ASUS Ascent QN10** — pierwszy komercyjny mini PC oparty na **Snapdragon X2 Elite**. To pierwsze wejście układu Qualcomma na rynek **desktopowy** (do tej pory tylko laptopy). **80 TOPS NPU** umożliwia lokalne AI workloads.

Premiera obok **Acer Swift Go Spin 14 AI** (też Snapdragon X2 Elite) sygnalizuje konsolidację OEM-ów wokół ARM-Windows. Równocześnie Qualcomm odsłonił markę **Dragonfly** dla data center (CPU + AI inference accelerators + ASIC), ale szczegóły ma podać dopiero **24 czerwca na Investor Day**.

> **Potencjał contentowy:** średni — "ARM jednak wszedł na desktop" + 80 TOPS lokalnego AI to konkretny hook dla widzów, którzy widzieli Macbooki M-series.

---

## 6. ChatGPT dostaje "Active sessions" — można wreszcie wylogować się ze wszystkich urządzeń

**Źródło:** OpenAI Help Center, Patchbot ChatGPT (2 czerwca 2026)

OpenAI **2 czerwca** włączył funkcję **Active sessions** w ChatGPT. Wchodzisz w **Settings > Security > Active sessions** i widzisz: urządzenie, aplikację, przybliżoną lokalizację, czas logowania, status "zaufane urządzenie" oraz która sesja jest aktualna. Można wylogować pojedynczą sesję lub wszystkie naraz.

Funkcja pokrywa **ChatGPT, Codex i API Platform**. Nie obejmuje: aplikacji trzecich przez "Sign in with ChatGPT", Codex CLI ani podłączonych integracji. To dopełnienie wcześniejszego (kwiecień 2026) wprowadzenia passkeys i hardware key support z Yubico.

> **Potencjał contentowy:** średni — drobna funkcja, ale "wreszcie wylogujesz się z dziewczyną" jest konkretne i każdy widz ChatGPT może spróbować dzisiaj.
