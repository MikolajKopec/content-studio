# OpenAI + Dell: Codex wchodzi na servery firm — 4 mln deweloperów już go używa

**Data:** 2026-05-19
**Temat:** OpenAI podpisało partnerstwo z Dellem, żeby wepchnąć swojego agenta kodującego (Codex) do hybrydowych i on-prem środowisk korporacyjnych — w momencie, w którym ten produkt ma już **4 mln deweloperów tygodniowo** i staje się jednym z najszybciej rosnących biznesów OpenAI.

---

## Kluczowe fakty i liczby

- **4 000 000 deweloperów tygodniowo** używa Codeksa (stan na 21 kwietnia 2026). Dwa tygodnie wcześniej było to **ponad 3 mln** — czyli baza rosła o ~1 mln użytkowników w ciągu 14 dni.
- Wewnątrz ChatGPT Business i Enterprise liczba użytkowników Codeksa wzrosła **6x od stycznia 2026** do kwietnia 2026.
- **50% użytkowników Codeksa już nie używa go do kodowania** — produkt zjada knowledge work (raporty, kwalifikacja leadów, obsługa zgłoszeń, follow-upy).
- Dell ma już **ponad 5 000 klientów** wdrażających Dell AI Factory — to gotowa, ogromna lista dystrybucyjna dla Codeksa.
- Akcje Della spadły o **~3% do ok. 234 USD** w dniu ogłoszenia (18 maja 2026) — rynek nie kupił narracji "to przełom".
- OpenAI miało wcześniej zebrać **122 mld USD przy wycenie 852 mld USD** (koniec marca 2026) i szykuje się do IPO — partnerstwo z Dellem to typowy ruch "pokazujemy enterprise revenue przed giełdą".
- Klienci referencyjni Codeksa: **Virgin Atlantic, Ramp, Notion, Cisco, Rakuten** — używają go do test coverage, code review, budowy feature'ów i incident response.
- Według JetBrains (styczeń 2026) tylko **3% deweloperów na świecie używa Codeksa w pracy** (vs 29% GitHub Copilot, 18% Cursor i Claude Code) — partnerstwo z Dellem to próba przebicia tego sufitu kanałem enterprise.

## Co potrafi Codex / Architektura

Codex w 2026 to nie autocomplete — to **agent kodujący działający asynchronicznie w cloud sandboxie**, który:

- czyta i indeksuje duże repozytoria (kontekst do **1 mln tokenów**),
- robi code review pull requestów,
- pisze testy (test coverage), uruchamia je i czeka na wyniki,
- obsługuje incident response (analiza logów, propozycja fixa, PR),
- działa też w aplikacji ChatGPT na mobile (od kwietnia 2026),
- pod spodem siedzi rodzina **GPT-5.5-codex** (warianty mini/full do różnych zadań).

Architektura partnerstwa z Dellem opiera się na dwóch warstwach:

1. **Dell AI Data Platform** — warstwa storage + governance, w której firmy trzymają kody źródłowe, dokumentację, dane operacyjne **wewnątrz własnych data center**. Codex podpina się tutaj przez connectory/indexery, żeby nie trzeba było wypychać kodu do chmury OpenAI.
2. **Dell AI Factory** — warstwa compute (NVIDIA GPU, orchestration). Tu mają działać agenci Codeksa + ChatGPT Enterprise jako workloady. W planach: orkiestracja CI/CD, ITSM, model artifact provenance, secure connectory.

Innymi słowy: OpenAI **nie sprzedaje już tylko API** — sprzedaje cały stack, w którym Dell dostarcza żelazo i governance, a OpenAI agentów.

## Model biznesowy / cena

- Codex jest częścią **ChatGPT Business, Enterprise i Edu** — kupujesz seat, dostajesz Codeksa w komplecie.
- Dla devów indywidualnych: dostęp przez ChatGPT Plus (20 USD/mies.) z limitami i ChatGPT Pro (200 USD/mies.) z większymi limitami compute na agentów.
- Enterprise pricing per seat jest negocjowany — publicznie OpenAI nie podaje, ale rate card pokazuje rozliczanie **per token na requestach API + minuty compute na sandbox**.
- Model Dell + OpenAI: klient płaci **podwójnie** — licencja Codeksa + infrastruktura Dell AI Factory (serwery, GPU, support). To klasyczny enterprise stack-sell, blisko modelu IBM/Oracle z lat 90-tych, tylko zamiast bazy danych masz agenta AI.
- Kluczowy hak: **brak data egress** — kod firmowy nie wychodzi z serwerowni. To rozwiązuje problem 80% banków, ubezpieczalni, telco i sektora publicznego, które nie mogą wysłać kodu do chmury OpenAI.

## Porównanie z konkurencją (agentic IDE / coding wars)

| Narzędzie | Adopcja w pracy (JetBrains 01/2026) | Mocna strona | Słaba strona | On-prem? |
|---|---|---|---|---|
| **GitHub Copilot** | **29%** | enterprise default, integracja z GitHub | growth wyhamował, słabszy w agentyce | częściowo (GitHub Enterprise) |
| **Cursor** | 18% | najlepszy UX, AI-first IDE | brak on-prem, dev-tool a nie enterprise platform | nie |
| **Claude Code** | 18% | 1M kontekst, najlepszy SWE-bench, hook system | brak głębokiej integracji z infra korpo | przez AWS Bedrock, ograniczone |
| **OpenAI Codex** | 3% (ale **4 mln WAU**) | async agent, cloud sandbox, ChatGPT integration | dotąd brak enterprise on-prem | **TAK — od dzisiaj, przez Dell** |
| **Google Antigravity** | 6% | parallel agents, świeży produkt | track record Google w dev tools słaby | nie |
| **Windsurf / Kiro** | <5% | parallel agents, niche | mała baza, brak enterprise | nie |

**Kluczowy wniosek:** Codex był do tej pory **#4–5 w developer adoption** mimo największej bazy ChatGPT. Partnerstwo z Dellem to próba pominięcia walki o developera-hipstera (gdzie wygrywają Cursor + Claude Code) i wejścia bocznymi drzwiami **przez CIO**.

## Implikacje dla użytkownika / rynku

- **On-prem AI wraca jak bumerang.** Przez 3 lata wszyscy mówili "cloud-only", a teraz OpenAI, Anthropic (przez AWS), Google (przez Distributed Cloud) i Microsoft (przez Azure Local) ścigają się o data center klienta. Bo regulacje + paranoja CISO.
- **Dell staje się jednym z głównych dystrybutorów AI agentów** — obok HPE, Lenovo, Supermicro. To powrót do gry firmom, które miały być "umierającym żelazem".
- **Konsolidacja narzędzi dla deweloperów** — JetBrains pokazał, że **70% senior devów używa 2–4 narzędzi AI jednocześnie, a 15% używa 5+**. Enterprise CIO będzie chciał skonsolidować to do jednego dostawcy. Codex + ChatGPT Enterprise + Dell to gotowa odpowiedź.
- **Ryzyko dla Cursora i Claude Code:** ich model dystrybucji to bottom-up (dev sam ściąga, potem firma kupuje). Codex idzie top-down (CIO podpisuje, devom zostaje wepchnięte). Klasyczny zderzak Slack vs Microsoft Teams.
- **Dla polskich firm** (banki, telco, sektor publiczny): pierwszy raz mają realistyczną opcję wdrożenia "ChatGPT-class" agenta bez ruszania danych z Polski. To może odblokować dziesiątki projektów AI, które stały na compliance.

---

## Potencjalne kąty narracyjne do shorta

- **"4 miliony programistów tygodniowo używa jednego narzędzia AI — i pewnie nawet nie wiedziałeś, że istnieje."** (kontrast: Codex ma większą bazę niż Cursor, ale ledwo o nim mówią)
- **"OpenAI pakuje Codeksa do serwerów Della — bo banki nie chcą wysyłać kodu do chmury."** (konkretny biznesowy hook)
- **"Codex urósł 6 razy w 4 miesiące. To tempo, którego nawet ChatGPT nie miał."** (liczba + dramat)
- **"Połowa użytkowników Codeksa już nie używa go do kodowania."** (counterintuitive — agent zjada knowledge work)
- **"Dell, który miał umrzeć, właśnie został głównym dystrybutorem AI agentów OpenAI dla 5000 korporacji."** (paradoks comebacku)
- **"3% deweloperów używa Codeksa w pracy. OpenAI właśnie znalazło sposób, żeby to obejść — przez CIO, nie przez devów."** (strategia top-down vs bottom-up)
- **"Wojna agentów kodujących: Cursor, Claude Code, Copilot, Codex, Antigravity — i nagle Dell wchodzi do gry."** (lista + drama branżowa)

---

## Źródła

- [OpenAI and Dell Technologies partner to bring Codex to hybrid and on-premises enterprise environments — OpenAI](https://openai.com/index/dell-codex-enterprise-partnership/)
- [Scaling Codex to enterprises worldwide — OpenAI](https://openai.com/index/scaling-codex-to-enterprises-worldwide/)
- [OpenAI and Dell partner to bring Codex into enterprise AI systems — Crypto Briefing](https://cryptobriefing.com/openai-dell-partnership-enterprise-ai/)
- [OpenAI Taps Dell for On-Prem AI — StartupHub.ai](https://www.startuphub.ai/ai-news/artificial-intelligence/2026/openai-taps-dell-for-on-prem-ai)
- [OpenAI Integrates Codex with Dell Enterprise Infrastructure — Let's Data Science](https://letsdatascience.com/news/openai-integrates-codex-with-dell-enterprise-infrastructure-81607e07)
- [OpenAI & Dell partner on Codex for on-premises firms — ChannelLife](https://channellife.com.au/story/openai-dell-partner-on-codex-for-on-premises-firms)
- [OpenAI And Dell Technologies Announce Codex Partnership — Pulse 2.0](https://pulse2.com/openai-and-dell-technologies-announce-codex-partnership-to-bring-ai-agents-to-hybrid-and-on-premises-enterprise-environments/)
- [Which AI Coding Tools Do Developers Actually Use at Work? — JetBrains Research Blog](https://blog.jetbrains.com/research/2026/04/which-ai-coding-tools-do-developers-actually-use-at-work/)
- [Claude Code vs Cursor vs Copilot vs Codex: 2026 Usage — Uvik](https://uvik.net/blog/claude-code-vs-cursor-vs-copilot-vs-codex-2026/)
