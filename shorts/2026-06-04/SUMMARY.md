# Skrót dnia — 4 czerwca 2026

6 newsów researched. Cherry-pick poniżej.

---

## 1. Motorola Edge 70 Pro+ debiutuje w Indiach: 6500 mAh, 144 Hz, od ~47 999 INR

📂 [`motorola-edge-70-pro-plus/notatka.md`](./motorola-edge-70-pro-plus/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Motorola startuje 4 czerwca 2026 sprzedaż Edge 70 Pro+ w Indiach (Flipkart, Moto.in) od 47 999 INR za 12/256 GB — pakiet 6,8" 144 Hz AMOLED z 5200 nit, MediaTek Dimensity 8500 Extreme, 6500 mAh silicon-carbon z 90 W ładowaniem i potrójnym aparatem 50 Mpix (Sony LYTIA 710 + ultrawide + peryskop 3,5×) pozycjonuje go jako "value flagship" o pojemności baterii ~50% większej niż iPhone 17 Pro za połowę ceny.

**Top hooks:**
- "Motorola wsadza 6500 mAh do telefonu cieńszego niż iPhone — i to za połowę ceny." Bezpośrednie porównanie pojemności (6500 vs 3988 mAh) przy zbliżonej grubości 7,2 mm.
- "Za 2200 zł kupisz telefon, który świeci jaśniej niż twoje biuro." Hook na 5200 nitów szczytowej jasności vs typowe 400–500 nitów monitora biurowego — wizualnie szokujący kontrast.
- "Motorola właśnie zrobiła peryskop 3,5× tańszy niż w iPhonie i Samsungu razem wziętych." Atak na pozycjonowanie cenowe — peryskop dotąd był znacznikiem klasy premium za 5000+ zł.

---

## 2. Perplexity demonstruje hybrydowy lokalny+chmurowy orchestrator na keynote Intela

📂 [`perplexity-intel-hybrid-ai/notatka.md`](./perplexity-intel-hybrid-ai/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Na keynote Intela na Computex 2026 (2 czerwca) Aravind Srinivas zaprezentował pierwszy publiczny "hybrid local-server inference orchestrator" — software, który per podzadanie decyduje, co zostaje na NPU Core Ultra Series 3, a co leci do frontier modeli w chmurze; funkcja trafi do Perplexity Computer w lipcu 2026, a Intel przy okazji ogłosił Xeon 6+ z 288 e-cores na 18A jako CPU dla agentic AI.

**Top hooks:**
- Pierwszy raz, kiedy NPU w twoim laptopie naprawdę coś robi — przez 2 lata Intel sprzedaje TOPSy, a Perplexity Computer + Core Ultra Series 3 to pierwszy moment, kiedy 50 TOPS NPU obsługuje real workload.
- Perplexity właśnie skopiowała Apple Intelligence — ale na cudzym sprzęcie: ta sama architektura on-device + Private Cloud Compute, tylko chip-agnostic i model-agnostic (Claude, GPT, Gemini, Grok jednocześnie).
- Intel właśnie sprzedał agentic AI jako CPU story — Xeon 6+ z 288 e-cores na 18A to kontra dla NVIDIA: "agent nie potrzebuje GPU na każdym kroku, potrzebuje gęstego concurrency".

---

## 3. OpenAI Codex i GPT-5.5 generalnie dostępne na AWS Bedrock

📂 [`codex-gpt55-aws-bedrock/notatka.md`](./codex-gpt55-aws-bedrock/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** 1 czerwca 2026 OpenAI i AWS ogłosiły GA dla GPT-5.5, GPT-5.4 i Codexa na Amazon Bedrock z cennikiem identycznym z first-party OpenAI ($5/$30 i $2.50/$15 za 1M tokenów), ale zużyciem liczonym do AWS commitments / EDP. Pierwsi klienci GA: Amgen, Autodesk, Box — Bedrock staje się jedyną platformą z jednoczesnym dostępem do OpenAI i Anthropic pod jednym IAM-em.

**Top hooks:**
- "Microsoft właśnie stracił monopol na GPT w enterprise" — od 2023 r. każdy korpo, który chciał oficjalnie GPT, musiał iść do Azure. Od 1 czerwca to się skończyło i pierwszą ofiarą jest dział sprzedaży Azure AI.
- "AWS pozwala spalić niewykorzystany budżet chmury na tokeny GPT-5.5" — finansowy hack: jeśli twoja firma ma EDP na $20M i nie wykorzysta — możesz teraz w grudniu palić to na Codexa zamiast zwracać AWS.
- "Codex bez seat license po raz pierwszy realnie zagraża Cursor i GitHub Copilot" — pay per token zamiast $39/seat zmienia ekonomikę dla teamów >50 osób.

---

## 4. AMD Radeon RX 9070 GRE globalnie za 549 USD

📂 [`amd-rx-9070-gre-global/notatka.md`](./amd-rx-9070-gre-global/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** AMD wyprowadza dawniej-chińską RX 9070 GRE (Navi 48 XL, 48 CU, 12 GB GDDR6) na rynek globalny w cenie 549 USD podczas Computex 2026, pozycjonując ją jako tańszą o ~50 USD alternatywę dla RTX 5070; pierwsze recenzje pokazują, że karta przegrywa raster o 5-10% i remisuje w RT, a sprzedaż w pierwszym tygodniu jest fatalna (Mindfactory: 0 sztuk).

**Top hooks:**
- "AMD pokazał na Computex kartę, której nie da się sprzedać" — 0 sztuk w Mindfactory w pierwszym tygodniu, bo 12 GB VRAM w 2026 to za mało za 549 USD.
- "GRE ma WYŻSZY zegar niż pełny RX 9070 — a i tak jest wolniejszy" — paradoks specki: 2790 MHz vs 2520 MHz, a w benchmarkach trace 15% wolniej.
- "FSR 4 daje 9070 GRE +82% FPS — więcej niż DLSS 4 daje RTX 5070" — viral angle dla fanów AMD, upscaling jako great equalizer dla VRAM-limited GPUs.

---

## 5. Qualcomm pcha Snapdragon X2 Elite na desktop — pierwsze mini PC od ASUS-a

📂 [`snapdragon-x2-elite-mini-pc/notatka.md`](./snapdragon-x2-elite-mini-pc/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** ASUS na Computex 2026 odsłonił Ascent QN10 — pierwszy desktopowy mini PC na Snapdragonie X2 Elite z 18 rdzeniami Armv9 i 80 TOPS NPU, w obudowie 0,7 L i wadze 720 g. Równolegle Qualcomm ogłosił markę Dragonfly dla data center (CPU + AI inference + ASIC), z pełnym roadmapem zapowiedzianym na Investor Day 24 czerwca 2026.

**Top hooks:**
- „Pierwszy w historii desktop Snapdragon waży 720 gramów i ma 80 TOPS — Mac mini ma 38."
- „ARM na Windows w 2026: 90 % czasu użytkownika to natywne, reszta przez Prism z 10 % narzutu — czyli compat jest już niezauważalny."
- „Qualcomm szykuje Dragonfly do data center — to pierwsza próba od czasu fail Centriq 2400 w 2018. Inwestorzy nie wiedzą, czy się cieszyć (-9 % w dniu ogłoszenia)."

---

## 6. ChatGPT dostaje "Active sessions" — można wreszcie wylogować się ze wszystkich urządzeń

📂 [`chatgpt-active-sessions/notatka.md`](./chatgpt-active-sessions/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** OpenAI 2 czerwca 2026 dodało do ChatGPT panel Active sessions w Settings > Security, pozwalający przeglądać i ubijać aktywne sesje na urządzeniach — funkcję, którą Google, Microsoft i Apple mają od lat. Obejmuje ChatGPT, Codex i API Platform, ale nie Codex CLI, third-party apps ani kont na SSO/SAML.

**Top hooks:**
- "OpenAI dopiero w czerwcu 2026 dodaje funkcję, którą Google ma od 2013"
- "Twój ChatGPT prawdopodobnie jest zalogowany na 5 urządzeniach, o których zapomniałeś"
- "Passkey + YubiKey nie uchronią cię przed kradzieżą sesji — oto czego brakowało"
