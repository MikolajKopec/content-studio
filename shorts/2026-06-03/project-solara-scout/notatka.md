# Microsoft Project Solara: badge'e i biurka z AI agentem zamiast ekranu

**Data:** 2026-06-03
**Temat:** Microsoft na Build 2026 pokazuje wizję komputera „post-app" — dwa reference design urządzeń agent-first (badge na szyję, biurkowy hub) plus Scout — pierwszego autonomicznego Autopilot agenta zbudowanego na OpenClaw.

---

## Kluczowe fakty i liczby

- **Project Solara** to platforma „chip-to-cloud" zaprezentowana na Build **2026-06-02**, zaprojektowana pod urządzenia, które uruchamiają **agentów zamiast aplikacji**.
- Dwa concept devices: **Solara badge** (wearable na klipsie / smyczy) i **Solara desk device** (biurkowy hub bez ekranu PC).
- Badge napędza **Qualcomm wearable silicon** (konkretny model nieujawniony), desk device — **MediaTek IoT silicon**.
- System operacyjny: **MDEP (Microsoft Device Ecosystem Platform)** — zbudowany na **AOSP (Android Open Source Project)**, **nie na Windows**.
- Pilot z **5 ujawnionymi partnerami**: AccuWeather, Best Buy, CVS Health, Levi's, Target („oraz inni"), start „w najbliższych miesiącach".
- Microsoft **nie sprzeda** tych urządzeń sam — to **reference design** dla OEM-ów i partnerów branżowych.
- **Microsoft Scout** to **pierwszy Autopilot agent** Microsoftu, ogłoszony równolegle na Build 2026.
- Scout jest oparty na **OpenClaw** — open-source frameworku, który w **2026** przekroczył **100 000+ gwiazdek na GitHubie**.
- Scout wymaga: zapisu do programu **Frontier**, konfiguracji polityk **Intune**, **opt-in attestation** użytkownika oraz **licencji GitHub Copilot**.
- Każdy Scout działa pod **osobną tożsamością Entra ID** — credentials są scope'owane do zadania i redagowane z logów.

---

## Solara badge — specyfikacja

- Wearable w formacie korporacyjnej karty dostępu, **„zawsze podłączony" companion**.
- **Qualcomm wearable silicon** — krzem dedykowany do nośnych urządzeń niskonapięciowych.
- Ekran dotykowy, **side-mounted fingerprint sensor** (Hello for Business).
- **Far-field microphone array** z wysokim SNR + głośnik.
- Side-facing camera.
- Łączność: **WiFi, Bluetooth, GNSS, 5G** (część źródeł wymienia też **satellite**).
- Fizyczny **privacy switch** + kontrola głośności.
- Use case Microsoftu: agent „w drodze" — bez wyjmowania telefonu, bez aplikacji, mówisz, badge robi.

## Solara desk device — specyfikacja

- Biurkowy hub, **bez tradycyjnego ekranu komputerowego** (ma swój touchscreen, ale nie jest „monitorem").
- **MediaTek IoT silicon**.
- Touchscreen + **face authentication** (Hello for Business).
- **Dual far-field microphone array** + full-range speaker.
- **UWB presence sensor** (wykrywa, że jesteś przy biurku).
- **2× USB-C**, WiFi, Bluetooth.
- Privacy lock buttons + microphone mute (fizyczne).
- „Z podłączonym monitorem staje się pełnoprawnym Windowsem w chmurze" — czyli formalnie nie ma własnego desktopu.

## Microsoft Scout / kategoria Autopilots

- Microsoft wymyślił nową kategorię agentów: **Autopilots** — „zawsze on", autonomiczne, z **własną tożsamością**, działające **bez prompta**.
- Scout integruje się z: **Teams, Outlook, OneDrive, SharePoint**, plus desktop extensions (browser, lokalne pliki, **MCP servers**).
- Co Scout robi proaktywnie: koordynacja kalendarza między strefami czasowymi, flagowanie ważnych spotkań, generowanie materiałów przygotowawczych, blokowanie czasu w kalendarzu, wykrywanie ryzyk (np. „decyzja utknęła").
- VP Omar Shahine: „agent staje się bardziej kompetentny, lepiej cię rozumie i zyskuje agency oraz osądy".
- Pre-built skills: zarządzanie kalendarzem, draftowanie agendy spotkań. Użytkownicy budują własne z czasem.
- Architektura: **lokalna aplikacja desktopowa** (a nie czysto chmurowy Copilot Chat) — może działać na lokalnych plikach + danych M365.

## Work IQ — silnik kontekstu

- **Work IQ** to warstwa intelligence Microsoftu: zbudowana na **data + memory + inference**.
- Łączy się z wewnętrznymi danymi: **SharePoint files, Outlook emails, Teams meetings**.
- Buduje **spersonalizowaną pamięć** o preferencjach, nawykach i workflow użytkownika.
- To Work IQ daje Scoutowi „kontekst" — bez niego Scout byłby tylko OpenClaw bez wiedzy o firmie.

## OpenClaw vs MCP — czym to się różni

- **OpenClaw** = open-source framework do budowy lokalnych, autonomicznych agentów; **100k+ gwiazdek na GitHubie** w 2026.
- Architektura OpenClaw: **3 warstwy** — Tools (25+ wbudowanych atomowych funkcji, JSON Schema) → Skills (wyższego rzędu workflow w plikach **SKILL.md**) → Agent.
- **MCP (Model Context Protocol)** to **standard komunikacji**, nie framework — definiuje, jak agent rozmawia z zewnętrznymi narzędziami.
- W OpenClaw **każdy skill na ClawHub jest serwerem MCP** — to nie konkurencja, OpenClaw używa MCP jako warstwy narzędziowej.
- Co dodaje Microsoft do OpenClaw: **policy conformance** — wkład upstreamowy, który pozwala firmom walidować, czy środowisko spełnia ich politykę bezpieczeństwa, generuje **audit trails**.
- Praktycznie: Microsoft bierze open-source bazę, dodaje enterprise governance + Work IQ + Entra identity i sprzedaje to jako Scout.

## Porównanie z Humane AI Pin / Rabbit R1

- **Humane AI Pin** (premiera 2024, ~$699 + $24/mc): zwrócony przez większość recenzentów, firma sprzedała aktywa HP w **2025** za bezcen.
- **Rabbit R1** (2024, $199): okazał się być w 95% appką Androida w plastiku, brak deklarowanych zdolności „large action model".
- **Wspólna porażka**: oba próbowały zastąpić apki agentem **na rynku konsumenckim**, z niedojrzałą technologią i bez ekosystemu.
- **Co robi Solara inaczej**: **enterprise-first** (pilot z Best Buy/CVS/Target — duże floty), reference design dla OEM (Microsoft nie sprzedaje sam), **integracja z Microsoft 365** (gotowy data graph), AOSP base (a nie własny custom OS).
- **Ale**: Solara dziedziczy też wszystkie znaki zapytania — czy ktokolwiek chce nosić **drugie urządzenie** obok telefonu? Czy biurkowy hub bez monitora ma sens, gdy każdy ma już laptopa?

## Implikacje wizji „agent-first"

- Microsoft otwarcie mówi, że **nie sprzeda tego w 2026** — to **pokazówka kierunku**, manifest, „tak będzie wyglądał komputer w erze agentów".
- Wybór **AOSP zamiast Windows** to ogromne thesis statement: Microsoft uważa, że era „okien" się skończyła i nowa platforma musi być lekka, zdalna, agent-shellem.
- Agent Shell **dynamicznie ładuje i taluje wielu agentów chmurowych** — czyli architektura jest „bring your own agent", nie monolityczna.
- Frontier program + GitHub Copilot license + Intune attestation = **wysoka bariera wejścia**, to nie jest „każdy dostanie" — to early access dla największych klientów enterprise.
- Pytanie biznesowe: **kto kupi badge'a obok smartfona, smartwatcha i laptopa?** Microsoft odpowiada: firmy, które już dają pracownikom badge'e dostępu — Best Buy, CVS, Target. Czyli **frontline workers**, nie programiści.

---

## Potencjalne kąty narracyjne do shorta

1. **„Microsoft pokazał komputer bez ekranu — biurkowy hub na MediaTeku, który nie ma własnego desktopa. To AOSP, nie Windows. W 2026."** — szok-hook: Microsoft otwarcie porzuca Windowsa jako platformę następnej generacji.

2. **„Pamiętacie Humane AI Pin za $699, który zwrócili wszyscy? Microsoft właśnie pokazał **Project Solara** — to samo, ale dla firm. Badge z Qualcomma na smyczy, integracja z Teams i Outlookiem. Premiera: ‘w najbliższych miesiącach' pilot z Best Buy, CVS, Target."** — kąt cynika: drugie podejście do tej samej idei, tym razem enterprise.

3. **„Scout to pierwszy **Autopilot agent** Microsoftu — działa **bez prompta**. Sam blokuje ci kalendarz, generuje materiały na spotkanie, wykrywa, że ktoś nie podjął decyzji. Pod spodem? **OpenClaw** — open-source z **100 000+ gwiazdkami** na GitHubie."** — kąt techniczny: Microsoft tym razem bierze open-source i dokłada governance.

4. **„Każdy **Scout** w Microsoft 365 ma **własną tożsamość Entra ID**, własne credentials scope'owane do zadania, własny audit log. To pierwszy raz, kiedy agent nie udaje, że jest tobą — jest **osobnym pracownikiem** w AD."** — kąt enterprise/security: koniec agentów udających usera.

5. **„MDEP, czyli Microsoft Device Ecosystem Platform — nowy system Microsoftu zbudowany na **Androidzie**, nie na Windowsie. Powtarzam: **Microsoft buduje Androida**, żeby na nim chodziły AI agenty. 30 lat strategii się rozsypało w jedną prezentację na Build 2026."** — historyczny hook.

6. **„Żeby dostać **Microsoft Scout** musisz mieć: zapis do programu **Frontier**, polityki **Intune**, opt-in attestation i licencję **GitHub Copilot**. Czyli — najbardziej autonomiczny agent Microsoftu jest **niedostępny** dla 99% firm. To nie produkt, to flex."** — kąt „kogo to obchodzi".

7. **„Pilot Project Solara: AccuWeather, Best Buy, CVS Health, Levi's, Target. Co je łączy? **Frontline workers** z badge'ami dostępu. Microsoft nie celuje w programistów ani knowledge workers — celuje w **kasjera w Targecie**, którego badge zostanie agentem."** — kąt „prawdziwy target group" — niespodzianka.

---

## Źródła

- [Composing a new platform for agent-first devices — Microsoft Command Line blog](https://commandline.microsoft.com/project-solara-build-2026/) — primary, oficjalny post Microsoftu z Build 2026
- [Introducing Microsoft Scout: Your always-on personal agent — Microsoft 365 Blog](https://www.microsoft.com/en-us/microsoft-365/blog/2026/06/02/introducing-microsoft-scout-your-always-on-personal-agent/) — primary, ogłoszenie Scout
- [Build 2026: Microsoft Project Solara Envisions a Future of Agent-First Devices — Thurrott](https://www.thurrott.com/smart-tech/336967/build-2026-microsoft-project-solara-envisions-a-future-of-agent-first-devices) — deep dive na Solarę z pełnymi specami
- [Build 2026: Microsoft Unveils New 'Scout' Personal Work Agent Powered by OpenClaw — Thurrott](https://www.thurrott.com/a-i/336926/build-2026-microsoft-unveils-scout-personal-work-agent-and-new-in-house-ai-models) — deep dive na Scout, OpenClaw, Frontier
- [Microsoft launches Scout, an OpenClaw-inspired personal assistant — TechCrunch](https://techcrunch.com/2026/06/02/microsoft-launches-scout-an-openclaw-inspired-personal-assistant/) — analiza, cytaty Omara Shahine, policy conformance
- [Inside Microsoft's Project Solara — GeekWire](https://www.geekwire.com/2026/inside-microsofts-project-solara-a-new-platform-for-devices-that-run-ai-agents-instead-of-apps/) — kontekst, pilot partners
- [Microsoft "Project Solara": The vision of agent-centric hardware — Heise](https://www.heise.de/en/news/Microsoft-Project-Solara-The-vision-of-agent-centric-hardware-11316109.html) — porównanie z Humane AI Pin / Rabbit R1
- [Microsoft outlines its vision for "the next computer" with Project Solara — Windows Central](https://www.windowscentral.com/microsoft/project-solara-agentic-os-build-2026-announcement) — szersze tło wizji
- [How OpenClaw Works: Understanding AI Agents Through a Real Architecture — Medium / Bibek Poudel](https://bibek-poudel.medium.com/how-openclaw-works-understanding-ai-agents-through-a-real-architecture-5d59cc7a4764) — architektura OpenClaw (3 warstwy)
- [OpenClaw + MCP — Model Context Protocol Skills Guide](https://openclawlaunch.com/guides/openclaw-mcp) — relacja OpenClaw ↔ MCP
