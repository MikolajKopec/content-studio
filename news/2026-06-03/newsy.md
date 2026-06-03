## Newsy technologiczne — 3 czerwca 2026

---

## 1. MiniMax M3: pierwszy open-weights model klasy frontier z kodowania

**Źródło:** VentureBeat (2026-06-01), The Decoder (2026-06-01), TechTimes (2026-06-01)

Chiński MiniMax wypuścił 1 czerwca 2026 model **M3** — pierwszy open-weights LLM, który jednocześnie ogarnia kodowanie na poziomie frontier, ma kontekst **1 miliona tokenów** i jest natywnie multimodalny (tekst + obraz + wideo + sterowanie komputerem).

Cennik startowy: **0,60 USD za milion tokenów wejściowych** (z promocją 0,30 USD) i **2,40 USD za milion output**. Na SWE-Bench Pro **59,0%** — bije GPT-5.5 (58,6%) i Gemini 3.1 Pro, ale traci do Opusa 4.8 (69,2%). Na BrowseComp 83,5 — przebija autonomous browsing Anthropica.

Architektura **MiniMax Sparse Attention (MSA)** daje **15,6× szybsze dekodowanie** i **9,7× szybszy prefill** przy kontekście 1M tokenów względem M2. API już online, wagi spadną na HuggingFace w ciągu 10 dni od premiery.

> **Potencjał contentowy:** wysoki — drama "chińczyk za 5-10% ceny GPT-5.5", liczby konkretne, otwarte wagi, ciekawy bench wynik

---

## 2. Microsoft pokazuje MAI-Code-1-Flash: własny model wjeżdża do Copilota

**Źródło:** TechTimes (2026-06-02), Tom's Guide (2026-06-02), Notebookcheck (2026-06-02)

Na otwarciu **Microsoft Build 2026** (2 czerwca, San Francisco) Satya Nadella ogłosił **siedem własnych modeli MAI** trenowanych od zera bez destylacji z OpenAI. Flagowy reasoning to **MAI-Thinking-1**, ale dla użytkowników najważniejszy jest **MAI-Code-1-Flash** — model kodowy zoptymalizowany pod GitHub Copilot.

Od **2 czerwca 2026** MAI-Code-1-Flash rolluje się stopniowo we **wszystkich planach Copilota: Free, Pro, Pro+ i Max**. W ślepych testach niezależni oceniający preferują go nad **Sonnet 4.6**, a na **SWE Bench Pro** dorównuje **Opusowi 4.6**.

To pierwsza twarda manifestacja strategii Microsoftu „multi-vendor, multi-model" — koniec wyłącznej zależności od modeli OpenAI w Copilocie.

> **Potencjał contentowy:** wysoki — drama Microsoft vs OpenAI, własny model Microsoftu w Copilocie, można odpalić od dziś

---

## 3. OpenAI Codex i GPT-5.5 wjeżdżają do AWS Bedrock (GA)

**Źródło:** AWS Blog (2026-06-01), OpenAI (2026-06-02), Help Net Security (2026-06-02)

1 czerwca 2026 AWS ogłosił **general availability** modeli **GPT-5.5, GPT-5.4** oraz agenta kodowego **Codex** na **Amazon Bedrock** — w regionach komercyjnych i GovCloud. To efekt poszerzonego partnerstwa OpenAI ↔ Amazon.

GPT-5.5 dostępny w US East (Ohio), GPT-5.4 w US East (Ohio) + US West (Oregon). **Codex** rozliczany pay-per-token, inferencja przez Responses API na Bedrocku, użycie wliczane w istniejące zobowiązania AWS. Klienci mogą korzystać z Codex App, Codex CLI oraz integracji w VS Code, JetBrains i Xcode — wszystko routowane przez Bedrock.

To kolejny tydzień, w którym frontier modele OpenAI wychodzą poza Azure — strategicznie ważny pivot.

> **Potencjał contentowy:** średni — głównie dla deweloperów + cloud people, ale konkret: GPT-5.5 + Codex w Bedrocku z dnia na dzień

---

## 4. GitHub Copilot przechodzi na AI Credits + nowy plan Max za 100 USD

**Źródło:** GitHub Blog (2026-06-01), GitHub Changelog (2026-06-01), FindSkill (2026-06-01)

Od **1 czerwca 2026** wszystkie plany Copilota są rozliczane **na bazie AI Credits** zamiast flat subscription. Stare ceny zostają (Pro **10 USD/mies.**, Pro+ **39 USD/mies.**), ale w środku siedzi nowy model:

- **Pro:** **1 000 base + 500 flex = 1 500 credits**
- **Pro+:** **3 900 base + 3 100 flex = 7 000 credits**
- **Max (nowy plan):** **100 USD/mies. → 10 000 base + 10 000 flex = 20 000 credits**

**1 AI credit = 0,01 USD**, czyli credits to po prostu tokeny po cennikach API per-model. Plan Max celuje w deweloperów uruchamiających długie agentic workflows — czyli Cursor / Claude Code power-userów, których Microsoft chce odbić.

> **Potencjał contentowy:** średni — devom się to liczy, ale przeciętny widz nie ogarnia AI Credits. Hook: "Copilot dla heavy userów dorównał Cursorowi ceną"

---

## 5. AMD wypuszcza Radeon RX 9070 GRE globalnie za 549 USD

**Źródło:** Tom's Hardware (2026-06-02), TechPowerUp (2026-06-02), VideoCardz (2026-06-02)

**2 czerwca 2026** AMD wypuściło globalnie kartę **Radeon RX 9070 GRE** za **549 USD MSRP** — wcześniej była ekskluzywem na rynku chińskim. Karta wypełnia lukę między RX 9060 XT i RX 9070, na **RDNA 4**, Navi 48 (TSMC 4nm).

Specyfikacja: **48 Compute Units** (o ~14% mniej niż RX 9070), **12 GB GDDR6** na **192-bit bus**, **432 GB/s przepustowości**. W 1440p raster bije RTX 5060 Ti 16GB, ale przy ray tracingu **12 GB VRAM dusi się powyżej 1080p** — wytyk niezależnych recenzentów.

Board partnerzy: **ASUS PRIME RX 9070 GRE O12G, Sapphire PULSE Gaming OC 12GB, XFX Swift Triple Fan** — wszystko w sprzedaży od dziś.

> **Potencjał contentowy:** średni — gracze tak, mainstream nie. PL przekaz: realne ceny od 2300-2500 PLN powinny zacząć się pojawiać

---

## 6. Microsoft Project Solara: badge'e i biurka z AI agentem zamiast ekranu

**Źródło:** Bloomberg (2026-06-02), Thurrott (2026-06-02), Engadget (2026-06-02)

Na Build 2026 Microsoft pokazał **Project Solara** — platformę „chip-to-cloud" do urządzeń **agent-first**. Dwa koncepty reference design:

- **Solara badge** — wearable do interakcji z agentem w drodze (krzemowy SoC od Qualcomma)
- **Solara desk device** — biurkowe urządzenie bez tradycyjnego ekranu (SoC IoT od MediaTeka)

Równolegle Microsoft wypuścił **Scout** — swojego **pierwszego Autopilot agenta**: długo działającego, autonomicznego, zintegrowanego z Teams, Outlookiem, OneDrive i SharePointem. Scout jest powered by **OpenClaw** (open-source) z **Work IQ** jako context engine. Na razie tylko dla klientów z programu **Frontier** w early access.

To nie shipping product — to pokazówka „jak będzie wyglądał komputer w erze agentów". Ciekawa wizualnie, ale 0% szans, że ktoś kupi to w 2026.

> **Potencjał contentowy:** średni — visual hook (badge zamiast laptopa), ale akcja "nie do kupienia". Może działać jako filozoficzny short
