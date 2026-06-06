# Cursor 3.7 — Canvases, multi-repo automations i 50% rabat na nowe automaty przez 7 dni

**Data:** 2026-06-06
**Temat:** Cursor wypuszcza 3.7 z Design Mode dla Canvases, raportem zużycia kontekstu i 50% rabatem na nowe automatyzacje przez 7 dni — w tle wojna agentowych IDE z Claude Code Opus 4.8 i Antigravity 2.0.

---

## Kluczowe fakty i liczby

- **4 czerwca 2026** Cursor wydaje wersję **3.7** — centralny update wokół Canvases (Design Mode + Context Usage Report) jako odpowiedź na agentowe IDE konkurencji.
- **Design Mode w Canvases** pozwala zaznaczać i adnotować elementy UI bezpośrednio na płótnie (zamiast opisywać zmiany w tekście) — agent edytuje na podstawie wskazania, jak w przeglądarce.
- **Context Usage Report** to interaktywny canvas pokazujący, gdzie idą tokeny — w **system prompcie, tool definitions, rules, skills** — z przyciskiem "Debug with Agent" do automatycznej optymalizacji.
- **Multi-repo automations** (rozwinięcie 3.5 z 20 maja): jedna automatyzacja może mieć podpiętych **wiele repo** albo **zero repo**, agent rozumuje cross-codebase i deployuje zmiany między projektami.
- **5 nowych no-repo templates** w Marketplace: Slack digest, product analytics, product FAQ, product finance, customer health — automaty, które nie pracują na kodzie, tylko na sygnałach (Slack, billing, monitoring).
- **`/loop` skill** dla lokalnych long-running agentów: prompt biega w pętli na lokalnym harmonogramie aż osiągnie cel albo użytkownik go zatrzyma — jeśli interwał nie jest ustawiony, **agent sam decyduje, kiedy się obudzić**.
- **50% rabat na agent runs dla wszystkich nowych automatyzacji przez 7 dni** od premiery — klasyczny pull dla early adopterów.
- Współdzielone canvasy można teraz oglądać **na pełnym ekranie w przeglądarce** (Pro, Teams, Enterprise) — Cursor wchodzi w prezentacyjny tryb dla teamów produktowych.

## Możliwości / Co potrafi Canvas 3.7

- Agent może osadzić w canvasie **przyciski uruchamiające konkretne prompty** — interaktywny artefakt staje się wewnętrznym narzędziem zamiast statycznym raportem.
- Lepsze auto-poprawki błędów typów w canvasie, więcej opcji customizacji wykresów i stylowania komponentów.
- TypeScript i Python SDK dostają custom tools, nested subagents i storage w JSONL — agent może być hostowany na własnej infrastrukturze.
- Cross-repo agent: test w repo A, fix w repo B, deploy w repo C — wszystko w jednej sesji.

## Pricing — kontekst restrukturyzacji z czerwca 2026

- **Hobby** — darmo, limitowane Agent requesty i Tab.
- **Individual / Pro / Pro+ / Ultra** — od **$20/mc**, frontier modele, MCP, skills, hooks, cloud agents.
- **Teams Standard** — **$40/user/mc miesięcznie**, **$32/user/mc** w wariancie rocznym.
- **Teams Premium** — **$120/user/mc miesięcznie**, **$96/user/mc** rocznie; Premium daje **5× wyższe limity** na Agent vs Standard.
- **Enterprise** — custom, z pooled usage, SCIM, SAML/OIDC SSO, audit logs.

## Porównanie z konkurencją

| Produkt | Wersja / data | Killer feature | Cena / model |
|---|---|---|---|
| **Cursor 3.7** | 4 czerwca 2026 | Canvases + Design Mode, multi-repo automations, `/loop` skill | Teams Standard **$32–40/user**, Premium **$96–120/user** |
| **Claude Code (Anthropic)** | Opus 4.8, GA 28 maja 2026 | Dynamic Workflows (do **1000 subagentów** w sesji), `/ultracode` = xhigh + workflows | Opus 4.8 ten sam cennik co 4.7 — **$5/mln input**, **$25/mln output** |
| **Google Antigravity 2.0** | Google I/O 2026 (19 maja) | Pięć powierzchni: desktop + CLI + SDK + Managed Agents API + Enterprise Agent Platform, oparte o **Gemini 3.5 Flash** | AI Ultra **$100/mc** — **5× limity** vs AI Pro |
| **OpenAI Codex on AWS** | maj/czerwiec 2026 | Codex jako agent w AWS Console / CloudShell, integracje z Bedrock | usage-based, ceny per-token |

**Punkt zapalny:** Anthropic gra benchmarkami i autonomią (Jarrod Sumner przepisał **Bun z Zig na Rust** — ~**750 000 linii** w **11 dni** z 99.8% testów zielonych przy użyciu dynamic workflows). Cursor odpowiada UX-em (Canvases jako wspólny artefakt zespołu) i ekonomią (50% off + multi-repo żeby zatrzymać teamy w jednym ekosystemie).

## Reakcje branży

- Na HN przy poprzednim Cursor 3 (kwiecień 2026) jeden z komentarzy: "wydawałem **$2k/tydzień** na premium models w Cursorze, przeszedłem na Claude Code Max, jestem tak samo produktywny za **1/10 ceny**". 3.7 z 50% rabatem na agent runs to próba zamknięcia tej luki cenowej.
- Lee Robinson (Cursor) na HN: tradycyjny widok IDE nadal istnieje i jest rozwijany — defensywa wobec narracji "Cursor porzuca IDE-first".
- Addy Osmani o long-running agentach: "planowanie to wszystko, czego potrzebujesz" — `/loop` skill to operacjonalizacja tego insightu w produkcie.

## Implikacje dla rynku

- Agentic IDE wars wchodzą w fazę **artefaktów** — kto pierwszy zrobi z agenta nie tylko "wykonawcę PR", ale autora **interaktywnych dashboardów/narzędzi**, które żyją w teamie.
- 50% rabat na **nowo utworzone** automaty (a nie na istniejące) to inżynieria zachowania: zachęta do dodawania kolejnego automatu, nie do migracji z konkurencji.
- Multi-repo i no-repo automaty rozszerzają TAM Cursora poza dev-team — Slack digest, finance, customer health to use-case'y, które rywalizują z Zapier/n8n/AI ops, nie z Copilotem.

---

## Potencjalne kąty narracyjne do shorta

- **"50% taniej przez 7 dni — Cursor desperacko walczy o programistów"** (rabat + napięcie + deadline w pierwszych 3 sekundach)
- **"Jeden agent, pięć repo, zero promptów — tak teraz koduje się produkcję"** (multi-repo automation jako konkret, którego nie da się zignorować)
- **"Bun przepisany z Zig na Rust w 11 dni — 750 000 linii, 99.8% testów zielonych"** (najlepsza demonstracja co potrafi Opus 4.8 + dynamic workflows, kontekst dla "dlaczego Cursor musi gonić")
- **"$2000 tygodniowo w Cursorze, $200 w Claude Code — programista mówi 'jestem tak samo produktywny'"** (cena vs wartość, dramat, cytat z HN)
- **"Cursor pokazuje, gdzie marnujesz tokeny — i sam to naprawia"** (Context Usage Report jako counterintuitive feature: AI debuguje samo siebie)
- **"Agent, który budzi się sam, gdy uzna to za stosowne"** (`/loop` skill bez interwału — emocjonalny hook o autonomii)
- **"Trzy IDE walczą o twojego seniora: Cursor, Claude Code, Antigravity — wygrywa ten, kto ma Canvases"** (mapowanie wojny dla widza, który nie śledzi codziennie)

---

## Źródła

- [Cursor changelog — Canvas Design Mode and Context Usage Report (3.7, 4 czerwca 2026)](https://cursor.com/changelog/canvas-improvements)
- [Cursor changelog — Improvements to Cursor Automations (3.5, 20 maja 2026)](https://cursor.com/changelog/05-20-26)
- [Cursor — Expanding our long-running agents research preview (/loop, planowanie)](https://cursor.com/blog/long-running-agents)
- [Cursor — Pricing (Teams Standard / Premium, Enterprise)](https://cursor.com/pricing)
- [Releasebot — Cursor Release Notes, czerwiec 2026 (3.5/3.7, rabat 50%, pricing $32/$96)](https://releasebot.io/updates/cursor)
- [Anthropic — Introducing Claude Opus 4.8 (28 maja 2026)](https://www.anthropic.com/news/claude-opus-4-8)
- [MarkTechPost — Anthropic Ships Claude Opus 4.8 + Dynamic Workflows (cap 1000 subagentów)](https://www.marktechpost.com/2026/05/28/anthropic-ships-claude-opus-4-8-alongside-dynamic-workflows-and-cheaper-fast-mode-with-workflows-capped-at-1000-subagents/)
- [ThePlanetTools — Claude Opus 4.8, Ultracode i Dynamic Workflows w Claude Code (maj 2026)](https://theplanettools.ai/blog/claude-opus-4-8-dynamic-workflows-ultracode-claude-code-may-2026)
- [TechCrunch — Google launches Antigravity 2.0 with updated desktop app and CLI at I/O 2026](https://techcrunch.com/2026/05/19/google-launches-antigravity-2-0-with-an-updated-desktop-app-and-cli-tool-at-io-2026/)
- [Hacker News — Cursor 3 discussion (komentarze o cenie, $2k/tydzień)](https://news.ycombinator.com/item?id=47618084)
- [InfoQ — Cursor 3 Introduces Agent-First Interface (kontekst wojen agentowych IDE)](https://www.infoq.com/news/2026/04/cursor-3-agent-first-interface/)
