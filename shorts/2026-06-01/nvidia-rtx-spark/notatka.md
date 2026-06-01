# NVIDIA RTX Spark — Windows PC dla agentów AI, 1 petaflop na biurku

**Data:** 2026-06-01
**Temat:** NVIDIA wchodzi na rynek PC z superchipem RTX Spark (1 PFLOPS AI, 128 GB pamięci ujednoliconej), Windows dostaje natywny runtime dla agentów (OpenShell), a Microsoft Surface Laptop Ultra zostaje pierwszą flagową maszyną na tej platformie.

---

## Kluczowe fakty i liczby

- **1 petaflop** mocy AI w jednym laptopowym superchipie — to **1000 TOPS**, czyli ok. **22× więcej** niż **45 TOPS** wymagane przez Microsoft do certyfikacji "Copilot+ PC" na Snapdragon X / Lunar Lake / Strix Point.
- **6 144 rdzeni CUDA Blackwell** + Tensor Cores 5. generacji z **FP4**, sparowane przez **NVLink-C2C** z **20-rdzeniowym CPU NVIDIA Grace** (Arm), zaprojektowanym wspólnie z **MediaTekiem**.
- **128 GB pamięci ujednoliconej**, współdzielonej między CPU i GPU — według NVIDII **5× szybciej niż PCIe Gen 5**; pozwala lokalnie uruchamiać modele do **120 mld parametrów** i kontekst **1 mln tokenów**.
- Proces **TSMC 3 nm**, ok. **70 mld tranzystorów**; laptopy referencyjne mają **14 mm** grubości i ważą ok. **3 funty** (~1,4 kg), z OLED-em tandemowym i G-SYNC.
- **OpenShell** — wspólny z Microsoftem, open source runtime dla agentów AI: piaskownica per agent, polityki YAML, routing zapytań (lokalnie vs chmura) i **maskowanie danych osobowych** w zapytaniach do chmury.
- Pierwsze maszyny: **ASUS, Dell, HP, Lenovo, Microsoft Surface, MSI** — premiera **jesień 2026**; **Acer i GIGABYTE** dołączą później.
- Microsoft **Surface Laptop Ultra**: **15-calowy mini-LED PixelSense Ultra**, **128 GB RAM**, waga **4,5 funta** (~2 kg), wykończenia Platinum i Nightfall — pozycjonowany jako "MacBook Pro killer".
- Wydajność praktyczna: **AAA 1440p @ 100+ fps**, edycja **12K 4:2:2 wideo**, renderowanie scen **90 GB+**, generowanie wideo AI w **4K** — wszystko lokalnie, bez chmury.
- Cena: **nieujawniona** ani przez NVIDIA, ani przez Microsoft — mają być podane "bliżej premiery".

## Specyfikacja techniczna

| Komponent | Szczegóły |
|---|---|
| GPU | Blackwell RTX, 6 144 CUDA cores, Tensor Cores gen 5 (FP4) |
| CPU | 20-core NVIDIA Grace (Arm), współprojekt z MediaTek |
| Interconnect | NVLink-C2C (CPU↔GPU) |
| Pamięć | do 128 GB unified (LPDDR5X-class), 5× szybsza niż PCIe Gen 5 |
| AI compute | 1 PFLOPS (FP4) |
| Proces | TSMC 3 nm |
| Tranzystory | ~70 mld |
| Forma | Laptopy 14-16", od 14 mm grubości, ~1,4 kg; mini-desktop |
| Stack software | CUDA, DLSS 4.5, TensorRT, OptiX, Reflex, G-SYNC, Prism (emulacja x86 na Arm) |

NVIDIA nie ujawniła oficjalnie **TDP** ani **przepustowości pamięci** w GB/s.

## OpenShell — co to właściwie jest

OpenShell to **open-source runtime dla agentów AI** współtworzony przez NVIDIA i Microsoft, mający rozwiązać problem "agent może wszystko, co może użytkownik".

**Architektura "browser tab":** każdy agent działa w izolowanym sandboxie, polityki definiowane są **deklaratywnie w YAML**, a system egzekwuje je **na poziomie runtime**, nie w prompcie. Nawet zhakowany agent nie powinien móc nadpisać polityki ani wyciągnąć credentiali.

**Funkcje kluczowe dla Windows:**
- Routing zapytań: lokalny model na RTX Spark vs chmura — decyzja per zapytanie, według polityki użytkownika.
- **Anonimizacja PII**: maskowanie danych osobowych w zapytaniach wysyłanych do modeli chmurowych.
- Natywne security primitives w Windows: identity, containment, end-to-end security.

**Ekosystem:** Microsoft Security, Cisco, CrowdStrike, Google Cloud, TrendAI dla policy management; **SAP** (Joule Studio), **ServiceNow** (Project Arc), **Canonical** i **Red Hat** dla Linuksa; **OpenClaw Foundation** i **Nous Research** (Hermes Agent) dla Windows.

## Partnerzy OEM i sprzęt

- **Tier 1 (jesień 2026):** ASUS, Dell, HP, Lenovo, Microsoft Surface, MSI.
- **Tier 2 (później):** Acer, GIGABYTE.
- **Microsoft Surface Laptop Ultra** — flagship: 15" mini-LED, 128 GB RAM, 2 kg, "made for world makers" (kreatywni, deweloperzy, AI workflows).

To **pierwszy raz, kiedy NVIDIA ma własny CPU w mainstreamowym laptopie konsumenckim** — wcześniej Grace istniał wyłącznie w serwerach DGX/HGX.

## Porównanie z konkurencją

| Chip | AI TOPS | RAM | CPU | Uwagi |
|---|---|---|---|---|
| **NVIDIA RTX Spark** | **1000 (1 PFLOPS, FP4)** | do **128 GB unified** | 20-core Arm Grace | Blackwell RTX 6144 CUDA, NVLink-C2C |
| Qualcomm Snapdragon X2 Elite Extreme | ~80 NPU TOPS | do 48 GB LPDDR5X, **228 GB/s** | 18-core Oryon | Adreno GPU, słabszy do AI/gamingu |
| Apple M5 (10-core, 2025) | ~45 NPU TOPS (estymacja) | do 32 GB, **154 GB/s** | 10-core | Świetne perf/wat, brak CUDA |
| Intel Core Ultra "Lunar Lake" / Panther Lake | ~48 NPU TOPS | do 32 GB, ~120 GB/s | x86 | Najlepsza kompatybilność x86 |

**Wniosek:** RTX Spark to inny ligowy poziom mocy AI (rząd wielkości więcej TOPS) i przede wszystkim **3-4× więcej RAM** niż konkurencja — co bezpośrednio przekłada się na rozmiar modelu LLM, jaki da się uruchomić lokalnie.

## Implikacje dla rynku

- **Pierwsze realne wejście NVIDII na PC desktop/laptop** od ery Tegry (która była mobile-only). Łamie układ Intel + AMD + Qualcomm w Windowsie.
- Microsoft otwarcie pozycjonuje to przeciw Apple — Surface Laptop Ultra to "MacBook Pro killer", a **Windows on Arm dostaje paliwo**, którego brakowało przez dekadę.
- **Lokalne agenty AI** stają się głównym argumentem sprzedażowym PC, zastępując narrację "Copilot+ PC z 45 TOPS" — która już teraz wygląda na anemiczną wobec 1 PFLOPS.
- Microsoft Build (2-3 czerwca 2026) ma rozwinąć temat agentów, OpenShell i nowych prymitywów bezpieczeństwa w Windows.
- Brak ceny to red flag — flagowiec z 128 GB RAM i nowym CPU/GPU w jednym pakiecie najpewniej startuje od $2999+.

---

## Potencjalne kąty narracyjne do shorta

1. **"NVIDIA właśnie zabiła Snapdragona. 1 petaflop w laptopie. Dwadzieścia dwa razy więcej niż wymaga Copilot+ PC."** — twardy kontrast liczbowy, otwarcie agresywne.

2. **"Twój laptop za rok odpali model AI ze 120 miliardami parametrów. Lokalnie. Bez chmury. Bez subskrypcji."** — przekłada 128 GB unified memory na konkretną korzyść dla widza.

3. **"Microsoft mówi wprost: ten laptop ma zabić MacBooka Pro. I po raz pierwszy od pięciu lat ma czym."** — narracja Apple vs Microsoft, hak na fanów obu obozów.

4. **"NVIDIA przez 30 lat robiła karty graficzne. W zeszłym tygodniu zrobiła procesor do laptopa. I właśnie wjechała Intelowi, AMD i Qualcommowi po dywanie."** — historia branżowa, drama wejścia na nowy rynek.

5. **"OpenShell to nowy Docker dla agentów AI. Jak agent zhakuje twój komputer, nie wyniesie z niego ani jednego pliku."** — wyjaśnia OpenShell przez analogię, hak bezpieczeństwa.

6. **"Surface Laptop Ultra: 128 GB RAM, mini-LED, dwa kilogramy. Cena? Microsoft milczy. To zawsze oznacza jedno — nie chcesz wiedzieć."** — żartobliwy, ale ostry; gra na lęku przed ceną.

7. **"Pierwszy raz w historii Windows ma procesor zaprojektowany od zera dla agentów AI. Tłumaczę, dlaczego to ważniejsze niż wszystkie zapowiedzi z keynote'u Apple razem wzięte."** — pozycjonowanie jako moment przełomowy, klikowe.

---

## Źródła

- [NVIDIA Newsroom — NVIDIA and Microsoft Reinvent Windows PCs for the Age of Personal AI](https://nvidianews.nvidia.com/news/nvidia-microsoft-windows-pcs-agents-rtx-spark)
- [NVIDIA GeForce — Computex 2026: RTX Spark, DLSS 4.5, RTX Updates](https://www.nvidia.com/en-us/geforce/news/computex-2026-nvidia-geforce-rtx-announcements/)
- [NVIDIA Blog — Local AI Agents Across RTX PCs and DGX Spark](https://blogs.nvidia.com/blog/rtx-ai-garage-computex-spark-local-agents/)
- [NVIDIA Blog — How Autonomous AI Agents Become Secure by Design With OpenShell](https://blogs.nvidia.com/blog/secure-autonomous-ai-agents-openshell/)
- [Windows Experience Blog — A powerful new chapter for Windows PCs, accelerated by NVIDIA RTX Spark](https://blogs.windows.com/windowsexperience/2026/05/31/introducing-a-powerful-new-chapter-for-windows-pcs-accelerated-by-nvidia-rtx-spark/)
- [Microsoft Devices Blog — Introducing Surface Laptop Ultra: Made for world makers](https://blogs.windows.com/devices/2026/05/31/introducing-surface-laptop-ultra-made-for-world-makers/)
- [Tom's Guide — NVIDIA RTX Spark: everything you need to know about the super chip](https://www.tomsguide.com/computing/cpus/nvidia-rtx-spark-is-here-and-no-its-not-called-n1x-everything-you-need-to-know-about-the-super-chip-thats-about-to-change-laptops-forever)
- [HotHardware — NVIDIA Officially Enters PC Market: RTX Spark Unveiled At Computex 2026](https://hothardware.com/news/nvidia-announces-rtx-spark-at-computex-2026)
- [Windows Central — Surface Laptop Ultra: 128GB RAM, mini-LED, RTX Spark powerhouse](https://www.windowscentral.com/hardware/surface/microsoft-surface-laptop-ultra-announced-computex-2026)
- [The New Stack — Jensen Huang and Bill McDermott bet on OpenShell to secure enterprise AI agents](https://thenewstack.io/nvidia-openshell-agent-runtime/)
- [GitHub — NVIDIA/OpenShell repository](https://github.com/NVIDIA/OpenShell)
- [Engadget — NVIDIA's RTX Spark is an AI "superchip" that will power Windows laptops and desktops](https://www.engadget.com/2184558/nvidia-rtx-spark-chip-windows-pcs/)
