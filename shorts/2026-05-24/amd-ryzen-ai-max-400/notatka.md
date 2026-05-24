# AMD Ryzen AI Max 400 "Gorgon Halo" — PC z 192 GB pamięci za $3 999, by uruchomić modele lokalnie

**Data:** 2026-05-24
**Temat:** AMD odświeżyło APU Strix Halo, dorzuciło wsparcie dla **192 GB unified RAM** (do **160 GB** widzianych jako VRAM) i pakuje to w mini-PC "Ryzen AI Halo" za **$3 999**, pozycjonując go jako pierwszy x86-owy "agent computer" do lokalnego odpalania modeli klasy 70B–300B.

---

## Kluczowe fakty i liczby

- AMD oficjalnie odsłonił rodzinę **Ryzen AI Max PRO 400** ("Gorgon Halo") **21 maja 2026** w cyklu prasowym z **22 maja**. Trzy SKU: **Max+ Pro 495**, **Pro 490**, **Pro 485** — wszystkie na **Zen 5** (CPU), **RDNA 3.5** (iGPU) i **XDNA 2** (NPU).
- Flagowy **Max+ Pro 495**: **16 rdzeni / 32 wątki**, boost **5,2 GHz**, **40 CU** iGPU (nowa **Radeon 8065S**) z boostem **3,0 GHz** (pierwszy Halo z 3-gigahercowym GPU) i NPU **55 TOPS** (vs **50 TOPS** w poprzednim Max+ 395).
- **Pro 490**: **12C/24T**, boost **5,0 GHz**, **32 CU** iGPU, NPU **50 TOPS**. **Pro 485**: **8C/16T**, boost **5,0 GHz**, **32 CU** iGPU, NPU **50 TOPS**. Tylko 495 dostaje odświeżone GPU **Radeon 8065S** — reszta zostaje przy **8060S**.
- Cała rodzina wspiera **do 192 GB pamięci unified** (LPDDR5X) — z czego **do ~160 GB** może być przydzielone GPU jako VRAM. To wystarczy, by lokalnie odpalić model klasy **Llama 3.1 405B w kwantyzacji 4-bit (~230 GB → na klastrze 2× Halo)** albo komfortowo **Qwen 3.5 122B / Llama 70B w fp8/fp16** na jednym pudle.
- **Ryzen AI Halo PC** (mini-workstation AMD): startuje z **Ryzen AI Max+ 395** + **128 GB unified RAM** + **2 TB PCIe Gen4 SSD** + **10 Gbps Ethernet** + **Wi-Fi 7**, MSRP **$3 999**, pre-ordery **od czerwca 2026**, **exclusive w Micro Center** (USA). Wariant z **Max+ Pro 495 + 192 GB** "coming soon" — Q3 2026.
- Chipy Max 400 trafią do laptopów i mini-PC od **ASUS, Lenovo, HP** w **Q3 2026**. AMD wprost ramuje to jako platformę pod **"agent computers"** — komputery, w których głównym użytkownikiem nie jest człowiek, tylko **agent AI** (a często kilku równolegle).

---

## Co potrafi (jakie modele odpalisz na 160 GB VRAM)

- **Llama 3.1 70B w fp16** = ~**140 GB wag** → mieści się z zapasem na kontekst i KV-cache.
- **Qwen 3.5 122B w q8** = ~**130 GB** → AMD samo pokazuje to jako sztandarowy workload Halo.
- **Llama 3.1 405B w q4** = ~**230 GB** → nie zmieści się na jednym chipie, ALE AMD w technicznym artykule pokazało, jak **klastrować 2-4 Halo przez llama.cpp RPC + ROCm**, by uruchomić nawet **modele 1T parametrów** lokalnie.
- Realistyczny "killer use case": **kilku agentów na raz** — np. coding agent (Qwen 32B) + research agent (Llama 70B) + lekki orkiestrator (Phi-4) odpalone równolegle w jednym pudle bez sięgania do chmury.
- Stack: AMD popycha własny **GAIA** (open-source framework do lokalnych agentów) oraz **Lemonade** (serwer LLM rozdzielający warstwy między NPU + iGPU + CPU) jako natywny "ekosystem" pod Halo.

---

## Porównanie z konkurencją (kontekst dla scenariusza)

- **Apple Mac Studio M3 Ultra (2025)**: do **512 GB unified**, ale start od **$9 499** za 256 GB. AMD bije ceną (**$3 999** vs ~**$5 500-6 500** za porównywalny Mac Studio).
- **NVIDIA Project DIGITS / DGX Spark**: **128 GB unified** za **$3 000**, GB10 (Grace + Blackwell) — mniej RAM-u, ale potężniejsze GPU. AMD wygrywa pojemnością, NVIDIA przewagą software'ową (CUDA, TensorRT).
- **Intel Arrow Lake-H / Lunar Lake**: brak odpowiednika z **40 CU iGPU + 192 GB unified** w 2026 — Intel zostaje w tej kategorii w tyle.
- "Token value" — AMD w prezentacji pokazuje koszt na 1M tokenów lokalnie vs hostowane API (Claude/GPT) jako główny argument: po ~6 miesiącach intensywnego użycia Halo wychodzi taniej niż subskrypcja chmury.

---

## Potencjalne kąty narracyjne do shorta

1. "**192 GB RAM w jednym chipie** — koniec wymówki, że nie odpalisz Llamy 70B lokalnie. AMD właśnie zabił chmurę na desktopie."
2. "**$3 999** za PC, który **zastępuje serwerownię**. Mac Studio z 512 GB kosztuje **$9 499**. AMD policzyło, że nie musisz mieć tyle."
3. "AMD zbudował komputer **dla agentów, nie dla ludzi**. Pierwszy raz w historii x86 padło słowo **'agent computer'** w oficjalnym launchu CPU."
4. "**16 rdzeni Zen 5 + 40 CU GPU + 55 TOPS NPU + 192 GB unified** — jeden chip robi to, do czego rok temu potrzebowałeś trzech komponentów za $15k."
5. "AMD pokazał, że **2-4 takich pudeł połączonych Ethernetem** odpala **model 1T parametrów** lokalnie. Klaster Halo w piwnicy zamiast OpenAI API."
6. "Tylko **Max+ Pro 495** dostaje nowe **Radeon 8065S** z **3 GHz** GPU. Reszta rodziny to ten sam **8060S** co rok temu — kup top lub nie kupuj wcale."
7. "**Micro Center exclusive** w USA, w Polsce dopiero Q3 2026 przez **HP / Lenovo / ASUS**. Cena u nas? Spodziewaj się **~18-20k zł** za bazę."

---

## Źródła

- [AMD Powers Next-Generation Agent Computers with New Ryzen AI Halo Developer Platform and Ryzen AI Max PRO 400 Series Processors (amd.com, 21 maja 2026)](https://www.amd.com/en/blogs/2026/amd-powers-next-generation-agent-computers-with-new-ryzen-ai-hal.html)
- [AMD Ryzen AI Max 400 'Gorgon Halo' packs up to 192GB of unified memory (Tom's Hardware)](https://www.tomshardware.com/pc-components/cpus/amd-ryzen-ai-max-400-gorgon-halo-packs-up-to-192gb-of-unified-memory-refreshed-apu-uses-zen-5-and-rdna-3-5-and-can-clock-up-to-5-2-ghz)
- [AMD Launches the Ryzen AI Max 400 Series Processors: "Strix Halo" Gets a Memory Upgrade (TechPowerUp)](https://www.techpowerup.com/349218/amd-launches-the-ryzen-ai-max-400-series-processors-strix-halo-gets-a-memory-upgrade)
- [AMD Ryzen AI MAX PRO 400 launches in Q3, only MAX+ 495 gets updated Radeon 8065S (VideoCardz)](https://videocardz.com/newz/amd-ryzen-ai-max-pro-400-launches-in-third-quarter-only-max-495-gets-updated-radeon-8065s-graphics)
- [AMD Ryzen AI Halo PC will cost $3999 with 128GB memory on board (VideoCardz)](https://videocardz.com/newz/amd-ryzen-ai-halo-pc-will-cost-3999-with-128gb-memory-on-board)
- [AMD just dropped a compact AI workstation that makes discrete GPUs look outdated (XDA Developers)](https://www.xda-developers.com/amd-ai-halo-mini-pc-now-available/)
- [AMD Ups Ante With 192GB Ryzen AI Max PRO 400 Chips for AI Systems (ServeTheHome)](https://www.servethehome.com/amd-reveals-ryzen-ai-max-pro-400-series-192gb-ram-for-ai-systems/)
- [AMD Pushes Ryzen AI MAX 400 'Gorgon Halo' to 192GB Memory, Letting a Single Chip Run 300B+ Parameter LLMs Locally (Wccftech)](https://wccftech.com/amd-pushes-ryzen-ai-max-400-to-192gb-memory-single-chip-run-300b-ai-llms-locally/)
- [Trillion-Parameter LLM on an AMD Ryzen AI Max+ Cluster (AMD Developer)](https://www.amd.com/en/developer/resources/technical-articles/2026/how-to-run-a-one-trillion-parameter-llm-locally-an-amd.html)
- [AMD Ryzen AI Max+ PRO 495 Processor - Benchmarks and Specs (Notebookcheck)](https://www.notebookcheck.net/AMD-Ryzen-AI-Max-PRO-495-Processor-Benchmarks-and-Specs.1302238.0.html)
