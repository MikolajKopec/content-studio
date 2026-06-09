# 6. Anthropic Claude Managed Agents — agent działa w twoim sandboxie z prywatnymi MCP

**Data:** 2026-06-09
**Temat:** Anthropic przesuwa wykonanie narzędzi agenta i połączenia MCP do infrastruktury klienta — agent rozmawia z wewnętrznym CRM, bazą danych i CI bez wychodzenia w publiczny internet. Równolegle Project Glasswing rośnie do 150 organizacji w 15+ krajach.

---

## Kluczowe fakty i liczby

- Anthropic ogłosił **self-hosted sandboxes** (public beta) oraz **MCP tunnels** (research preview) podczas konferencji **Code with Claude w Londynie 19 maja 2026** — oba dotyczą Claude Managed Agents.
- Loop agenta (orkiestracja, kontekst, error recovery) zostaje na serwerach Anthropic, ale **warstwa wykonywania narzędzi** przenosi się do **infrastruktury klienta** lub jednego z **4 partnerów sandboxowych**: Cloudflare, Daytona, Modal, Vercel.
- MCP tunnel = **lekki gateway** wdrożony w sieci klienta, który otwiera **jedno wychodzące, end-to-end szyfrowane połączenie** do Anthropic — **zero inbound firewall rules, zero publicznych endpointów, zero DNS-ów** dla prywatnego MCP.
- Reference customers: **Amplitude** (Design Agent generujący on-brand mockupy z firmowego design systemu w VPC), **Clay** (agent Sculptor do GTM na Daytona), **Rogo** (analyst agent dla institutional finance na Vercel Sandbox), **DoorDash** (wewnętrzny productivity agent na Modal).
- Project Glasswing rozszerza się o **150 nowych organizacji** w **15+ krajach** (Australia, Kanada, Francja, Niemcy, Włochy, Holandia, Hiszpania, Belgia, Szwecja, Szwajcaria, Indie, Japonia, Nowa Zelandia, Korea Płd.) — nazwany roster: **Okta, Samsung, SK Hynix, SK Telecom, NATO, ENISA** (unijna agencja cyber).
- Pierwotna kohorta Glasswing (ok. **50 partnerów** od kwietnia 2026) znalazła **ponad 10 000 luk** o wysokim lub krytycznym priorytecie, używając wewnętrznego modelu **Claude Mythos Preview**.
- Anthropic szacuje, że **udany atak na kod tych firm mógłby uderzyć w ponad 100 milionów ludzi** per partner — stąd nacisk na sektory: power, water, healthcare, communications, hardware.
- Kontekst korporacyjny: **1 czerwca 2026** Anthropic złożył poufny prospekt IPO po rundzie **65 mld USD** przy wycenie **~1 bln USD**.

## Architektura — co dokładnie zostaje u klienta

| Warstwa | Gdzie wykonuje się | Kto kontroluje |
|---|---|---|
| Agent loop / orkiestracja | Serwery Anthropic | Anthropic |
| Tool execution (kod, build, image gen) | Sandbox klienta lub partner (Cloudflare/Daytona/Modal/Vercel) | Klient |
| Pliki, repo, runtime packages | Sandbox klienta | Klient (nie opuszczają perimetru) |
| Połączenia do prywatnych MCP (CRM, hurtownia, ticketing) | Sieć klienta przez MCP tunnel | Klient |
| Audit logging, network policy, DLP | Stack klienta (działa "natywnie") | Klient |

## Co oferują poszczególni partnerzy sandbox

- **Cloudflare**: microVM-y z zero-trust networking, secret injection.
- **Daytona**: long-running, stateful sandboxy z dostępem SSH (Clay buduje na tym swojego Sculptora).
- **Modal**: sub-second startup, skaluje się do **setek tysięcy równoległych** sandboxów, CPU/GPU.
- **Vercel**: startup w milisekundach, VPC peering, network-level credential injection.

## Project Glasswing — co się zmienia po rozszerzeniu

- Z **~50 → 200** organizacji łącznie (kohorta inicjalna + 150 nowych).
- Nowe sektory: krytyczna infrastruktura (energia, woda), zdrowie, telekom, hardware — wcześniej słabo reprezentowane.
- Każdy partner musi przejść **security review** Anthropic przed dostępem do Mythos (model "specjalistyczny do znajdowania luk").
- Konkurencja: OpenAI rozesłało równolegle do testów **GPT-5.5-Cyber**, swoją odpowiedź na Mythos.
- Anthropic obiecuje "robust safeguards" przed publicznym release Mythos — w obawie, że model do szukania luk = model do exploitów.

## Implikacje dla rynku

- To wprost odpowiedź na największy blocker enterprise AI: **dział security w banku/szpitalu nie zatwierdzi agenta, który widzi publiczny internet**. Z MCP tunnel agent gada wyłącznie z wewnętrznym Jirą, Snowflake-em, Service Now.
- "Compliance team is the real bottleneck for production agents, not the model" — branżowy cytat podsumowujący ten ruch.
- Anthropic celuje w **regulowane branże** (finanse, healthcare, sektor publiczny) — które do tej pory eksperymentowały głównie z self-hosted modelami (Llama, Mistral) właśnie z powodu data residency.
- Pełnego on-prem dalej **nie ma** — loop agenta zostaje u Anthropic. To kompromis między bezpieczeństwem a kosztem hostowania frontier modelu.

---

## Potencjalne kąty narracyjne do shorta

- **"Twój agent AI nie wyjdzie z biura"** — koncept agenta zamkniętego w firmowym sandboxie, bez dostępu do publicznego internetu, gada tylko z wewnętrznym CRM-em.
- **"150 firm dostało AI, która znajduje dziury w kodzie — w tym NATO"** — konkretny roster (NATO, Okta, Samsung, ENISA) + skala 15+ krajów.
- **"10 000 krytycznych luk w 2 miesiące"** — początkowa kohorta 50 firm znalazła 10k+ podatności używając Mythos; jeden model bezpieczeństwa skanujący firmowy kod.
- **"Cloudflare, Vercel, Modal i Daytona biją się o hosting agentów Anthropic"** — 4 partnerzy infrastrukturalni walczą o miejsce w stacku enterprise AI.
- **"Atak na kod tych firm uderzyłby w 100 milionów ludzi"** — to oficjalny szacunek Anthropic dla typowego partnera Glasswing, dlatego dostają specjalny model do hardeningu.
- **"Anthropic składa IPO za bilion dolarów — i od razu daje bankom narzędzie, które obiecuje zero wycieku danych"** — timing IPO + MCP tunnels = sprzedaż enterprise jako growth story.
- **"DoorDash i Amplitude już budują na tym swoich agentów"** — konkretne logo zamiast abstrakcji "enterprise gotowy".

---

## Źródła

- [New in Claude Managed Agents: self-hosted sandboxes and MCP tunnels (Anthropic blog)](https://claude.com/blog/claude-managed-agents-updates)
- [Expanding Project Glasswing (Anthropic news)](https://www.anthropic.com/news/expanding-project-glasswing)
- [Anthropic scales Claude Mythos to critical infrastructure in 15+ countries (TechCrunch)](https://techcrunch.com/2026/06/02/anthropic-scales-claude-mythos-to-critical-infrastructure-in-15-countries/)
- [Anthropic Introduces MCP Tunnels for Private Agent Access to Internal Systems (InfoQ)](https://www.infoq.com/news/2026/05/claude-mcp-tunnels/)
- [Anthropic adds self-hosted sandboxes and MCP tunnels to Claude Managed Agents (The Decoder)](https://the-decoder.com/anthropic-adds-self-hosted-sandboxes-and-mcp-tunnels-to-claude-managed-agents/)
- [Anthropic shares Mythos with 150 more organizations, including critical infrastructure operators (Cybersecurity Dive)](https://www.cybersecuritydive.com/news/ai-anthropic-claude-mythos-project-glasswing-expand/821714/)
- [Anthropic expands Mythos to 150 additional organizations in more than 15 countries (CNBC)](https://www.cnbc.com/2026/06/02/anthropic-mythos-ai-project-glasswing.html)
- [Anthropic debuts MCP tunnels and self-hosted sandboxes to lock down AI agent infrastructure (The New Stack)](https://thenewstack.io/anthropic-mcp-tunnels-sandboxes/)
