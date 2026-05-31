# Microsoft + Nvidia teasują "nową erę PC". Dell XPS z ARM-em Nvidii leci jutro

**Data:** 2026-05-31
**Temat:** Nvidia szykuje swój pierwszy konsumencki chip do laptopów od dekady — ARM-owy N1X z GPU klasy RTX 5070 — i razem z Microsoftem ogłasza "nową erę PC" na Computex 2026.

---

## Kluczowe fakty i liczby

- **29 maja 2026** Nvidia i Microsoft (konto Windows) opublikowały bliźniacze posty na X z hasłem **"a new era of PC"** i współrzędnymi **25.0528, 121.5990** — dokładnie Taipei Music Center, miejsce GTC Taipei keynote Jensena Huanga.
- Dell ma embargowane ogłoszenie XPS z N1X na **31 maja 2026** (dzisiaj), a oficjalny reveal całej platformy odbędzie się **1 czerwca 2026 o 11:00 czasu Taipei** (Jensen Huang, GTC Taipei).
- N1X to **20 rdzeni ARM v9.2** (**10× Cortex-X925** performance + **10× Cortex-A725** efficiency), **32 MB L3**, projekt współdzielony z **MediaTek**, produkcja **TSMC 3 nm**.
- Zintegrowane GPU: **6144 rdzeni CUDA** w **48 SM** na architekturze **Blackwell** — **dokładnie tyle samo, co desktopowy RTX 5070**. Do tego **5. generacja Tensor Core** z NVFP4, dedykowane RT cores, **1000 TOPS** AI (NVFP4) i **31 TFLOPs FP32**.
- Pamięć: **LPDDR5X-9400**, magistrala **256-bit**, **~301 GB/s** przepustowości, wsparcie do **128 GB** (konfiguracja z DGX Spark).
- Wycieki Geekbench: **3096** single-core / **18 837** multi-core — pojedyncze rdzenie wciąż za Apple M5 (~4200), ale multi-core w okolicach AMD Strix Halo.
- Lenovo Legion 7 **15N1X11** w dokumentacji wymaga **zasilacza 245 W** (model GX21T87698, 20 V / 12,25 A) — tyle, ile pełnoprawne laptopy z dyskretnym RTX 5070.
- Premiera urządzeń: **przed holiday 2026**, szersza dostępność początek **2027**, przewidywany przedział cenowy **$1000–$1500**.
- Nvidia **pominie warstwę emulacji Prism Microsoftu** i dostarczy natywny **ARM64 GeForce Game Ready Driver** — pierwsze laptopy Windows on ARM z **pełnym stackiem CUDA natywnie**.

## Specyfikacja N1 vs N1X

| Parametr | N1 (mainstream) | N1X (high-end) |
|---|---|---|
| Rdzenie CPU | mniej niż 20, brak detali | **20** (10P + 10E) |
| Architektura CPU | ARM v9.2 (Cortex-X925/A725) | **ARM v9.2** (Cortex-X925/A725) |
| Rdzenie CUDA | mniej, brak detali | **6144** (48 SM) |
| Architektura GPU | Blackwell | **Blackwell** |
| Klasa GPU | poniżej RTX 5070 | **~RTX 5070 mobile** |
| Proces | TSMC 3 nm | **TSMC 3 nm** |
| Pamięć | LPDDR5X | **LPDDR5X-9400, do 128 GB** |
| Cel | IdeaPad, Yoga, ultrabooki | **Legion 7, XPS, ProArt, gaming** |

## Porównanie z konkurencją

| Chip | CPU cores | Single-core GB6 | Multi-core GB6 | GPU |
|---|---|---|---|---|
| **Nvidia N1X** | 20 (10P+10E) | **~3096** | **~18 837** | **6144 CUDA / Blackwell / ~RTX 5070** |
| Qualcomm Snapdragon X2 Elite Extreme | 18 | ~4070 | **~32 000+** (88 615 AI score) | Adreno (słabsze, brak CUDA) |
| Apple M5 | 10 | **~4200** | ~17 000 | Apple GPU (10-core, brak CUDA) |
| Apple M5 Max | 16 | ~4200 | **~29 800** | Apple GPU 40-core |
| Intel Panther Lake | 16 | konkurencyjne | konkurencyjne | Xe3 (znacznie słabsze od N1X iGPU) |

N1X celuje w **gaming i CUDA workloads**, nie w surowy single-thread Apple. To inny dział rynku niż Snapdragon X2 (efektywność biurowa) i M5 (creative).

## Oś czasu

- **paź 2023** — Reuters: Nvidia rozpoczyna prace nad ARM-em do Windows.
- **kwiecień 2026** — pierwsze wycieki Geekbench N1X.
- **25 maja 2026** — Lenovo Legion 7 **15N1X11** w dokumentacji wewnętrznej (245 W).
- **29 maja 2026** — bliźniacze tease Nvidia + Microsoft, współrzędne **25.0528, 121.5990**.
- **31 maja 2026** — embargo Dell XPS z N1X (dzisiaj).
- **1 czerwca 2026, 11:00 Taipei** — keynote Jensena Huanga, oficjalny reveal N1 i N1X.
- **Computex 2026** — fala zapowiedzi OEM (Asus ProArt, MSI, Lenovo, Microsoft Surface).
- **holiday 2026** — pierwsze dostawy.
- **wiosna 2027** — szeroka dostępność.

## Lineup OEM

- **Dell:** XPS z N1X (embargo 31 maja), prawdopodobnie też Alienware w testach.
- **Lenovo:** Legion 7 **15N1X11** (245 W), IdeaPad Slim 5, Yoga Pro 7, Yoga 9 2-in-1.
- **Asus:** ProArt (kreatywni profesjonaliści) — teaser potwierdzony.
- **MSI:** modele z N1X potwierdzone.
- **Microsoft Surface:** sugerowany przez szefa Surface Pavana Davuluriego.

## Implikacje dla rynku PC

- **Pierwszy laptop Windows on ARM z natywnym CUDA** — koniec wieloletniej monopolizacji Nvidii na x86. Cały stack AI/ML/CUDA staje się dostępny w cienkim ARM-owym laptopie.
- Gaming na ARM przestaje być żartem: natywny **ARM64 GeForce Game Ready Driver** omija Prism (zoptymalizowany pod Qualcomma), Microsoft niedawno ogłosił, że Prism wspiera **85% gier** z Xbox PC app na ARM.
- Intel i AMD dostają drugi front (po Qualcommie i Apple) — N1X celuje w segment, w którym oba miały komfort: **gaming/creator laptopy 14–16 cali**.
- 245 W TDP dla Legion 7 to sygnał, że Nvidia **nie schodzi z wydajnością na rzecz baterii** — ale projekcje **15–20+ h** w lekkim użyciu sugerują, że efficiency cores i Blackwell power gating działają.
- Microsoft + Nvidia wspólnym teasem cementują **strategiczny sojusz** przeciw Apple Silicon — pierwszy raz, kiedy te dwa konta robią skoordynowany post brandingowy.

---

## Potencjalne kąty narracyjne do shorta

1. "Nvidia robi swój pierwszy konsumencki CPU od dekady. I robi go z ARM-em. Do laptopów."
2. "6144 rdzeni CUDA — tyle co desktopowy RTX 5070 — w cienkim laptopie z ARM-em. Intel, mamy problem."
3. "Microsoft i Nvidia wrzuciły identyczny post na X z koordynatami. Tłumaczę co właśnie się stało."
4. "Pierwszy laptop Windows on ARM z natywnym CUDA. Cały AI/ML stack przenosi się na 3 nm i ARM-a."
5. "Lenovo Legion z ARM-em i zasilaczem 245 W. Gaming na ARM przestaje być żartem."
6. "Nvidia omija Prism Microsoftu i pisze własny ARM64 GeForce Driver. To nie kolaboracja — to wrogie przejęcie warstwy gamingu."
7. "Dell XPS z chipem Nvidii leci dziś. Apple, Qualcomm i Intel właśnie dostali wspólnego wroga."

---

## Źródła

- [Nvidia and Microsoft tease "a new era of PC" ahead of Computex 2026 — Tom's Hardware](https://www.tomshardware.com/laptops/nvidia-and-microsoft-tease-a-new-era-of-pc-ahead-of-computex-2026-coordinated-social-media-posts-could-indicate-that-rumored-n1x-laptops-will-be-windows-on-arm-systems)
- [Nvidia ARM Laptop Chip N1X Confirmed for Computex: CUDA and RTX 5070 GPU Onboard — TechTimes](https://www.techtimes.com/articles/317428/20260530/nvidia-arm-laptop-chip-n1x-confirmed-computex-cuda-rtx-5070-gpu-onboard.htm)
- ["A new era of PC": Microsoft and NVIDIA tease major announcement — Windows Central](https://www.windowscentral.com/hardware/surface/a-new-era-of-pc-microsoft-and-nvidia-tease-major-announcement-experts-predict-to-be-the-fabled-n1x-chip)
- [Dell confirms XPS laptop with NVIDIA N1X at Computex — VideoCardz](https://videocardz.com/newz/dell-confirms-xps-laptop-with-nvidia-n1x-at-computex)
- [NVIDIA teases "new era of PC" ahead of N1 and N1X laptop chip announcement — VideoCardz](https://videocardz.com/newz/nvidia-teases-new-era-of-pc-ahead-of-n1-and-n1x-laptop-chip-announcement)
- [NVIDIA and Microsoft tease 'a new era of PC' — TweakTown](https://www.tweaktown.com/news/111882/nvidia-and-microsoft-tease-a-new-era-of-pc-ahead-of-computex-and-its-hard-not-to-link-this-to-the-fabled-n1x-chip/index.html)
- [NVIDIA N1 N1X laptop chips: Computex reveal 1 June — tbreak](https://tbreak.com/nvidia-n1-n1x-laptop-chips-computex/)
- [Lenovo Legion 7 with NVIDIA N1X to feature 245W power supply — VideoCardz](https://videocardz.com/newz/lenovo-legion-7-with-nvidia-n1x-to-feature-245w-power-supply-similar-to-rtx-5070-laptops)
- [Nvidia's 20-core N1X leaks with 3000+ single-core Geekbench score — Tom's Hardware](https://www.tomshardware.com/pc-components/cpus/nvidias-20-core-n1x-leaks-with-3000-single-core-geekbench-score-arm-chip-could-rival-intel-and-amds-laptop-offerings)
- [Nvidia's N1X could be the jolt Windows laptops need — PCWorld](https://www.pcworld.com/article/3151058/nvidias-n1x-could-be-the-jolt-windows-laptops-need-with-one-big-catch.html)
- [Snapdragon X2 Elite vs Apple M5 benchmarks — Tom's Guide](https://www.tomsguide.com/computing/cpus/apple-m5-vs-snapdragon-x2-elite-extreme-benchmarks-the-early-verdict-is-in-and-its-a-surprise)
- [Microsoft and NVIDIA Jointly Tease Possible N1X Debut — TechPowerUp](https://www.techpowerup.com/349514/microsoft-and-nvidia-jointly-tease-possible-n1x-debut-as-a-new-era-of-pc)
