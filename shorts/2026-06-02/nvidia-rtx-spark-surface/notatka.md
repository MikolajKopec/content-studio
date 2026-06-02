# NVIDIA RTX Spark + Surface Laptop Ultra — pierwszy konsumencki AI PC na Arm

**Data:** 2026-06-02
**Temat:** NVIDIA wchodzi z RTX Spark (Arm + Blackwell + 128 GB unified memory) do PC; Microsoft jako pierwszy OEM pakuje go w Surface Laptop Ultra — Windows na Arm celuje w MacBook Pro.

---

## Kluczowe fakty i liczby

- **1 czerwca 2026** Jensen Huang na Computex w Taipei odsłonił **RTX Spark** — pierwszą platformę Nvidii pod konsumenckie laptopy i mini-PC, wspólnie zaprojektowaną z **MediaTekiem**, produkowaną w **3 nm TSMC**.
- Top SKU (oznaczany też jako **N1X**): **20 rdzeni Arm CPU** w układzie **10× Cortex-X925 P-core do 4,1 GHz + 10× Cortex-A725 E-core**, sklejone z **Blackwell GPU** mającym **6144 jednostki CUDA** (tyle samo co desktopowy RTX 5070), Tensor Cores 5. generacji z FP4.
- **Do 128 GB unifikowanej pamięci LPDDR5X**, **do 273–300 GB/s** przepustowości, CPU↔GPU spięte **NVLink C2C** — całość deklaruje **1 petaflop AI compute** (FP4) i zdolność lokalnego uruchamiania modeli **120 mld parametrów** z kontekstem **1 mln tokenów**.
- Tańszy wariant **N1** ma dwa konfiguracje: **12 rdzeni (8+4) z 2560 CUDA** oraz **10 rdzeni (7+3) z 2048 CUDA** — to one trafią do tańszych laptopów.
- Microsoft pokazał **Surface Laptop Ultra**: **15-calowy mini-LED PixelSense Ultra**, rozdzielczość **2880 × 1920**, **262 ppi**, **peak HDR 2000 nitów** (najjaśniejszy ekran w historii Surface), chassis **poniżej 18 mm** grubości i **poniżej 2 kg** wagi, do **128 GB** unified memory, kolory Platinum i Nightfall.
- Łącznie zapowiedziano **30+ laptopów RTX Spark** plus **~10 mini-PC** od **Dell, HP, Lenovo, Asus, MSI, Microsoft Surface** (później Acer i Gigabyte). Premiera **jesień 2026**, ceny nieujawnione — Nvidia mówi o "premium price points".
- Roadmapa Nvidii: **Gen 1 (jesień 2026) Blackwell N1X**, **Gen 2 (2027) Rubin z LPDDR6**, **Gen 3 (2028+) Rosa, potem Feynman**.

---

## Porównanie z konkurencją (vs MacBook Pro / Mac Studio M4 Max)

- **Memory bandwidth:** RTX Spark **~273–300 GB/s** vs Apple **M4 Max ~400 GB/s** w MacBooku Pro i **Mac Studio M4 Max ~546 GB/s** — Apple ma ~**1,5–2× wyższą** przepustowość pamięci.
- **AI compute (FP4):** Blackwell w RTX Spark **1 PFLOPS** — Nvidia podaje, że to **~2× efektywnej przepustowości AI** standalone RTX 5090 dla kwantyzowanego inferencji. Apple nie publikuje porównywalnej liczby FP4.
- **GPU stack:** RTX Spark to **pełna CUDA + RTX + DLSS + G-SYNC** na laptopie Arm — coś, czego Apple nie ma i mieć nie będzie. Adobe, Blender, Blackmagic, OTOY, ComfyUI, Remedy, Riot — **100+ partnerów software** już zapowiedzianych.
- **Format:** Surface Laptop Ultra **<18 mm / <2 kg** vs MacBook Pro 16" M4 Max **16,8 mm / 2,14 kg** — Microsoft jest **lżejszy o ~7%** w klasie 15".
- **Display:** **2000 nitów peak HDR** mini-LED w Surface vs **1600 nitów peak HDR** w MacBooku Pro 16" — Microsoft bije Apple o **+400 nitów**.
- **Słaby punkt Spark:** Windows na Arm wciąż ma problemy z kompatybilnością x86; Apple ma **2 lata przewagi** w dojrzałości ekosystemu Arm (AppleInsider).

---

## Potencjalne kąty narracyjne do shorta

**MANDATORY. 5-7 hooks. Concrete, tied to numbers/contrasts, sayable in 2 sec, self-contained.**

1. "Nvidia właśnie zrobiła swojego MacBooka — tylko z Windowsem i CUDA."
2. "**128 GB RAM** i **1 petaflop AI** w laptopie poniżej **2 kilo**."
3. "Surface Laptop Ultra ma **2000 nitów** — to **+400 nitów** więcej niż MacBook Pro."
4. "**6144 CUDA cores** w laptopie na Armie. To tyle co desktopowy RTX 5070."
5. "Pierwszy Surface, który Microsoft zbudował **od krzemu w górę** — i to z Nvidią."
6. "**30 laptopów RTX Spark** jesienią — Dell, HP, Lenovo, Asus, MSI, Microsoft. Apple ma problem."
7. "**120 miliardów parametrów** LLM lokalnie, **1 mln tokenów kontekstu** — bez chmury, na laptopie."
8. "Apple ma **546 GB/s**, Nvidia ma **300 GB/s** — ale ma CUDA. Wojna o lokalne AI właśnie się zaczęła."

---

## Źródła

- [NVIDIA Newsroom — NVIDIA and Microsoft Reinvent Windows PCs for the Age of Personal AI](https://nvidianews.nvidia.com/news/nvidia-microsoft-windows-pcs-agents-rtx-spark)
- [Microsoft Devices Blog — Introducing Surface Laptop Ultra: Made for world makers](https://blogs.windows.com/devices/2026/05/31/introducing-surface-laptop-ultra-made-for-world-makers/)
- [Tom's Hardware — Nvidia unveils RTX Spark Superchip at Computex 2026](https://www.tomshardware.com/laptops/nvidia-unveils-rtx-spark-superchip-at-computex-2026-new-platform-promises-to-turn-windows-into-an-agentic-ai-os-with-arm-cpu-blackwell-gpu-and-128gb-unified-memory)
- [Tom's Hardware — Microsoft Surface Laptop Ultra wields Nvidia's RTX Spark superchip](https://www.tomshardware.com/laptops/microsoft-surface-laptop-ultra-weilds-nvidias-rtx-spark-superchip-with-128gb-of-ram-20-arm-cpu-cores-and-a-blackwell-gpu-15-inch-mini-led-pixelsense-ultra-display-rounds-out-the-powerful-package)
- [Tom's Hardware — Nvidia RTX Spark roadmap: Rubin, Rosa, Feynman](https://www.tomshardware.com/pc-components/cpus/nvidia-unveils-dgx-sparrk-roadmap-for-laptops-and-desktop-pcs-at-computex-2026-three-generations-outlined-rubin-followed-by-rosa-feynman)
- [Windows Central — Surface Laptop Ultra: 128GB RAM, mini-LED, RTX Spark powerhouse](https://www.windowscentral.com/hardware/surface/microsoft-surface-laptop-ultra-announced-computex-2026)
- [CNBC — Nvidia jumps into PCs with Arm-based chip in Microsoft, Dell, HP laptops](https://www.cnbc.com/2026/05/31/nvidias-new-chip-to-power-fresh-line-of-windows-laptops-by-dell-hp.html)
- [MacRumors — Nvidia Challenges Apple Silicon With New RTX Spark PC Chip](https://www.macrumors.com/2026/06/01/nvidia-challenges-apple-rtx-spark-pc-chip/)
- [AppleInsider — Nvidia's Apple Silicon rival is already two years behind](https://appleinsider.com/articles/26/06/01/nvidias-n1x-apple-silicon-rival-is-two-years-behind)
- [Notebookcheck — Surface Laptop Ultra with RTX Spark and mini-LED](https://www.notebookcheck.net/Surface-Laptop-Ultra-Microsoft-shows-off-powerful-laptop-with-RTX-Spark-and-mini-LED-screen.1312025.0.html)
- [Compute Market — DGX Spark vs Mac Studio M4 Max — 128GB AI Desktop 2026](https://www.compute-market.com/blog/nvidia-dgx-spark-vs-mac-studio-m4-max-local-ai-2026)
