# Research: Claude Code Skills — Szczegółowa analiza tematu (Kwiecień 2026)

## TL;DR

1. **Skills ogłoszone 16 Oct 2025**, open standard od 18 Dec 2025. Adopcja: OpenAI (Codex), Microsoft, GitHub, Cursor, Figma, Atlassian.
2. **60,000+ skills na GitHubie** — ale 1k curated z 60k to quality. Większość jest niska jakość.
3. **anthropics/skills** = 111K stars, **obra/superpowers** = 137K stars (najpopularniejszy plugin), **everything-claude-code** = 142K stars.
4. **Content jest NASYCONY listiclami** ("10 best skills", "must have skills") — jest ich 7-8 dużych. Ale **zero short-form video** specyficznie o skills.
5. **Zero polskiego contentu** o Claude Code skills — ani artykuły, ani video.
6. **Sahil Lavingia** (Gumroad) zamienił książkę "Minimalist Entrepreneur" w 9 skills → tweet 459K views, 5.8K bookmarks w tydzień.
7. **Boris Cherny** (twórca Claude Code) ogłosił /simplify i /batch — używa daily.
8. **Największy problem użytkowników**: rate limits, confusion skills vs commands, context window eating.

---

## 1. Oficjalna dokumentacja i historia

### Timeline

| Data | Wydarzenie |
|---|---|
| 22 Sep 2025 | Repo anthropics/skills utworzone na GitHubie (przed publicznym ogłoszeniem) |
| 9 Oct 2025 | Plugins announced (public beta) — skills jako komponent pluginów |
| 16 Oct 2025 | **Agent Skills oficjalnie ogłoszone** — blog post Anthropic |
| 18 Dec 2025 | **Open standard** opublikowany na agentskills.io. OpenAI adoptuje w 2 dni |
| Sty 2026 | Skills "explodują" — 60K+ na GitHub. Baoyu (@dotey): "nie dlatego że koduje lepiej — ludzie odkryli non-coding use cases" |
| 28 Feb 2026 | /simplify i /batch dodane jako bundled skills (Boris Cherny) |
| 5 Mar 2026 | /claude-api skill dodany; ${CLAUDE_SKILL_DIR} variable |
| 19 Mar 2026 | `effort` frontmatter dla skills |
| 26 Mar 2026 | `paths:` frontmatter (auto-aktywacja po glob pattern) |
| 2 Apr 2026 | `disableSkillShellExecution` setting |

### Oficjalne źródła

| Zasób | URL |
|---|---|
| Blog: "Introducing Agent Skills" | anthropic.com/news/skills |
| Engineering: "Equipping Agents for the Real World" | anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills |
| Blog: "Customize Claude Code with plugins" | claude.com/blog/claude-code-plugins |
| Docs: "Extend Claude with skills" | code.claude.com/docs/en/skills |
| Docs: Hooks | code.claude.com/docs/en/hooks |
| Open Standard Spec | agentskills.io/specification |
| GitHub: anthropics/skills | github.com/anthropics/skills (111K stars) |
| GitHub: agentskills/agentskills | github.com/agentskills/agentskills |
| Anthropic PDF Guide | resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf |
| Help: Create custom Skills | support.claude.com/en/articles/12512198 |
| Help: Use Skills in Claude | support.claude.com/en/articles/12512180 |
| Anthropic Courses (Skilljar) | anthropic.skilljar.com/claude-code-in-action |

### Architektura Skills (z engineering blog)

**Progressive disclosure** — trzy poziomy:
1. **Metadata** (~100 tokenów) — name/description ładowane przy starcie
2. **Core** (<5000 tokenów) — pełny SKILL.md ładowany gdy Claude uzna za relevantne
3. **Detailed** (on demand) — dodatkowe pliki referencyjne ładowane kontekstowo

Context capacity = "effectively unbounded" — agent używa filesystem + code execution zamiast ładowania wszystkiego do kontekstu. Skills mogą zawierać skrypty Python do deterministycznych operacji.

### Bundled Skills (wbudowane)

| Skill | Co robi |
|---|---|
| `/batch <instruction>` | Masowe równoległe zmiany w kodzie via git worktrees |
| `/claude-api` | Referencja API Claude dla języka projektu |
| `/debug [description]` | Debug logging i troubleshooting |
| `/loop [interval] <prompt>` | Powtarzaj prompt na interwale |
| `/simplify [focus]` | Review zmienionych plików — reuse, quality, efficiency (3 równoległe agenty) |

### Skills vs Hooks vs Plugins vs MCP

| Aspekt | Skills | Hooks | Plugins | MCP |
|---|---|---|---|---|
| Natura | Proaktywne procedury | Reaktywna automatyzacja | Shareable bundle | Zewnętrzne narzędzia |
| Kiedy | User wpisuje `/name` lub Claude sam aktywuje | Lifecycle events (PreToolUse, PostToolUse, Stop) | Jak skills, ale pakiet | Gdy potrzeba external API |
| Tokeny | 30-50 tokenów metadata, <5000 core | Minimalne | Zależy od zawartości | 50K+ tokenów |
| Config | SKILL.md (YAML + Markdown) | JSON w settings.json | Plugin manifest + skills + hooks | Server config |

**Kluczowe z contentu:** Skills = procedural knowledge (on-demand), MCP = external tool connections, Plugins = shareable bundles łączące skills + commands + hooks + subagents.

---

## 2. Istniejący content — YouTube / Video

### Filmy o Claude Code (ogólnie, z sekcjami o skills)

| Tytuł | Autor | Views/Engagement | Format | Ile o skills |
|---|---|---|---|---|
| "CLAUDE CODE FULL COURSE 4 HOURS" | Nick Saraev | ~773K views | Screen recording, 4h | Sekcja o skills w ramach większego kursu |
| "Claude Code Essentials" (12h) | Andrew Brown / ExamPro | freeCodeCamp | Video | Pokrywa CLI, sessions, permissions, context |
| "The ULTIMATE Claude Code Tutorial" | Sabrina Ramonov | 1.4M followers | Video + blog | Budowanie /post skill, quality gate hooks, brand voice |
| "Every Claude Code Concept Explained for Normal People" | Sabrina Ramonov | — | Talking head + screen | Skierowany do non-techów |
| "800+ Hours of Learning Claude Code in 8 Minutes" | Edmund Yong | Top-5 ranking | Screen recording, 8 min | Tips ogólne, skills wspomniane |

### Filmy SPECYFICZNIE o skills

**Prawie brak dedykowanych filmów video o Claude Code skills.** Skills pojawiają się jako sekcja w dłuższych tutorialach, ale nikt nie zrobił dedykowanego short-form lub medium video TYLKO o skills.

**To jest główna luka.**

---

## 3. Istniejący content — Artykuły i blogi

### Deep dives techniczne

| Tytuł | Autor | Kąt | URL |
|---|---|---|---|
| "Claude Agent Skills: A First Principles Deep Dive" | Han-chung Lee | Dekonstrukcja architektury od podstaw | leehanchung.github.io |
| "Claude Skills: Technical Deep-Dive into Context Injection" | Data Science Collective (Medium) | Jak działa context injection | medium.com/data-science-collective |
| "The Claude Customization Stack: MCP vs Skills vs Plugins" | Aaron Ott | Porównanie trzech warstw | ado.im |
| "Essential Claude Code Skills and Commands" | Bozhidar Batsov | Rozróżnienie slash commands vs skills | batsov.com |
| "Understanding Claude Code's Full Stack: MCP, Skills, Subagents, Hooks" | alexop.dev | Pełen stack | alexop.dev |

### Listicle / "Best of" (NASYCONE)

| Tytuł | Źródło | URL |
|---|---|---|
| "10 Must-Have Skills for Claude in 2026" | unicodeveloper (Medium) | medium.com/@unicodeveloper |
| "Top 10 Claude Code Skills Every Builder Should Know" | Composio | composio.dev/content/top-claude-skills |
| "10 Best Skills for Claude Code (Tested & Reviewed)" | Agensi.io | agensi.io/learn/best-claude-code-skills-2026 |
| "Top 10 Skills You Should Install Right Now" | UCStrategies | ucstrategies.com |
| "Best Claude Code Skills & Plugins (2026 Guide)" | raxxostudios (Dev.to) | dev.to/raxxostudios |
| "Top 50 Claude Skills and GitHub Repos" | Blockchain Council | blockchain-council.org |
| "5 Must-Know Claude Code Skills" | MindWiredAI | mindwiredai.com |
| "15 Best Claude Code Skills 2026" | The Prompt Shelf | thepromptshelf.dev |

### How-To / Poradniki

| Tytuł | Źródło | Kąt | URL |
|---|---|---|---|
| "How to Build Claude Skills 2.0 Better than 99% of People" | Gao Dalie (Substack) | Budowanie skills step by step | gaodalie.substack.com |
| "Claude Skills Explained: Build, Configure, Use" | Analytics Vidhya | Kompletny walkthrough | analyticsvidhya.com |
| "Claude Code Skills Tutorial: Create, Run & Publish" | Geeky Gadgets | Tworzenie → publikacja | geeky-gadgets.com |
| "How to Build Claude Skills: Lesson Plan Generator" | Codecademy | Praktyczny przykład | codecademy.com |
| "How to Install Skills: 3 Methods" | Dev.to | Plugin browser, marketplace, manual | dev.to |
| "Claude Skills 2.0 — my FULL guide for non-techies" | Pietro Montaldo (Substack) | Nie-techniczny | pietromontaldo.substack.com |
| "How to Build Skills in Claude" | Alex Banks (The Signal) | Step-by-step | thesignal.substack.com |

### Newslettery / Substack

| Tytuł | Autor | URL |
|---|---|---|
| "The Ultimate Guide to Claude Code Skills" | Corporate Waters | corpwaters.substack.com |
| "The Ultimate Guide to Claude Skills" | Linas Beliunas | linas.substack.com |
| "Claude Skills" (explainer) | Ruben Hassid (How to AI) | ruben.substack.com |
| "Claude Skills Explained" | MrPrompts | mrprompts.substack.com |
| "Get the Most Out of Claude Code" | McKay Johns | mckayjohns.substack.com |
| "32 Claude Code Tips" | YK (Agentic Coding) | agenticcoding.substack.com |
| "Claude Code, Cowork, Skills: Tested Guides" | Karo Zieminski | karozieminski.substack.com |
| "How I use every Claude feature" | Charlie Hills | charliehills.substack.com |
| "The Genius of Anthropic's Agent Skills" | offthegridxp | offthegridxp.substack.com |

### Press / Tech Media

| Tytuł | Źródło | URL |
|---|---|---|
| "Agent Skills: Anthropic's Next Bid to Define AI Standards" | The New Stack | thenewstack.io |
| "Anthropic Launches Skills Open Standard" | AI Business | aibusiness.com |
| "Anthropic makes agent Skills an open standard" | SiliconANGLE | siliconangle.com |
| "Anthropic launches enterprise Agent Skills" | VentureBeat | venturebeat.com |
| "Claude Code and the Great Productivity Panic of 2026" | Bloomberg | bloomberg.com |

---

## 4. Social media — Twitter/X

### Viralowe tweety o skills

| Autor | Treść | Engagement | URL |
|---|---|---|---|
| **Sahil Lavingia** (@shl) | "Minimalist Entrepreneur" jako 9 Claude Skills (/find-community, /validate-idea, /mvp, /first-customers, /pricing, /marketing-plan, /grow-sustainably, /company-values, /minimalist-review) | **459K views, 5.8K bookmarks** w tydzień | x.com/shl/status/2036162956761715096 |
| **Boris Cherny** (twórca CC) | Announcement /simplify i /batch | — | x.com/bcherny/status/2027534984534544489 |
| **Baoyu** (@dotey) | "Why did Claude Skills explode in January 2026?" — nie dlatego że koduje lepiej, ludzie odkryli non-coding use cases | — | x.com/dotey/status/2013148926426132938 |
| **Andrej Karpathy** | "80% agent coding, 20% edits+touchups" | — | x.com/karpathy/status/2015883857489522876 |

### Boris Cherny — howborisusesclaudecode.com

Companion site twórcy Claude Code z praktycznymi tipami. Ktoś zamienił je w skill (Boris Cherny's Claude Code Tips Are Now a Skill — Medium).

---

## 5. Social media — Reddit

- **r/ClaudeCode** ma 4,200+ weekly contributors (Mar 2026)
- Claude Code generuje **4x więcej dyskusji niż Codex** na Reddit
- **#1 complaint**: Pro plan rate limits — "runs out after roughly 12 heavy prompts"
- **Sentiment pattern**: devs którzy inwestują czas w CLAUDE.md/skills/hooks = produktywność. Ci co traktują jak autocomplete = frustracja.
- **Top rada**: "Krótkie sesje > maratony" + "Rollback zamiast fix forward"

---

## 6. Social media — Hacker News

| Wątek | Data | Key insight |
|---|---|---|
| "Claude Skills" (official launch) | Oct 2025 | Premiera |
| **"Claude Skills are awesome, maybe a bigger deal than MCP"** | Oct 2025 | Silne twierdzenie skills > MCP |
| "You don't need MCP. You need Claude Skills." | Nov/Dec 2025 | Powtórzenie tezy |
| "Claude Skills vs. MCP: Complementary Philosophies" | — | Balans |
| "Show HN: Agent Skills — 1k curated from 60k+" | Jan 2026 | **60K+ skills na GitHub**, ale quality problem |
| "Show HN: Agent37 — Monetize your Claude skills" | Dec 2025 | Monetyzacja skills |
| "Claude Code Emergent Behavior: When Skills Combine" | — | Multi-skill orchestration |
| "Claude Code Skills for Startup Founders — 12 Commands" | — | Non-dev use case |
| "What to Put in a Skill for Reviewing Your Team's Code" | — | Praktyczny |

---

## 7. GitHub — Top skill repos

| Repo | Stars | Opis |
|---|---|---|
| **affaan-m/everything-claude-code** | 142,014 | Agent harness: skills, instincts, memory, security |
| **obra/superpowers** | 137,069 | Agentic skills framework. THE most popular plugin |
| **anthropics/skills** | 111,427 | Oficjalne Anthropic (17 skills) |
| **hesreallyhim/awesome-claude-code** | 36,878 | Curated awesome list |
| **sickn33/antigravity-awesome-skills** | 31,020 | 1,340+ skills, installer CLI |
| **coreyhaines31/marketingskills** | 19,106 | Marketing: CRO, copywriting, SEO, analytics |
| **OthmanAdi/planning-with-files** | 18,128 | Manus-style persistent markdown planning |
| **pbakaus/impeccable** | 16,193 | Design language. 20 commands, 7 reference guides |
| **VoltAgent/awesome-agent-skills** | 14,395 | 1000+ skills from dev teams |
| **blader/humanizer** | 12,537 | Usuwa ślady AI w tekście |
| **travisvn/awesome-claude-skills** | 10,659 | OG curated list |
| **alirezarezvani/claude-skills** | 9,700 | 220+ skills, 10+ agentów |
| **slavingia/skills** | 7,000 | Sahil Lavingia — Minimalist Entrepreneur |
| **Jeffallan/claude-skills** | 7,889 | 66 specialized full-stack skills |
| **trailofbits/skills** | 4,329 | Security: vuln detection, audit workflows |

### Najpopularniejsze INDYWIDUALNE skills

1. **Superpowers** (obra) — 137K stars. Socratic brainstorming, TDD, parallel sub-agents, code review
2. **Impeccable** (Paul Bakaus) — 16K stars. Frontend design. "Gold standard for design skills"
3. **Planning-with-files** — 18K stars. Persistent markdown planning (task_plan.md/progress.md/findings.md)
4. **Frontend Design** — 277K+ installs (oficjalna metryka)
5. **Humanizer** — 12.5K stars. Usuwa markery AI-generated writing
6. **Marketing Skills** (Corey Haines) — 19K stars. CRO, copywriting, SEO
7. **Trail of Bits** — 4.3K stars. Security auditing, smart contract analysis
8. **Sahil Lavingia's skills** — 7K stars. 9 startup methodology skills

---

## 8. Marketplaces i directories

| Platforma | URL | Opis |
|---|---|---|
| Claude Skills (oficjalny) | claude.com/skills | Oficjalny directory Anthropic |
| SkillsMP | skillsmp.com | Marketplace: Claude, Codex, ChatGPT |
| ClaudeMarketplaces | claudemarketplaces.com | Plugins, skills, MCP servers z voting |
| MCP Market | mcpmarket.com/tools/skills | Skills directory |
| Agensi.io | agensi.io | Marketplace z 8-point security scan |
| PolySkill.ai | polyskill.ai | Open-source registry, cross-platform |
| Claude Skills 360 | claudeskills360.com | 2,350+ skills & templates |
| AwesomeClaude.ai | awesomeclaude.ai | Visual directory |
| LobeHub | lobehub.com/skills | Agent Skills Marketplace |

---

## 9. Problemy i frustracje użytkowników

### Rate limits (#1 complaint)
- Pro plan wyczerpuje się po ~12 ciężkich promptach
- Mar 2026: Max subscribers zgłaszali limity kończące się w 1-2h zamiast 5
- The Register: "Anthropic admits Claude Code quotas running out too fast"

### Skills vs slash commands — confusion
- Oba wywoływane przez `/`, historycznie osobne systemy
- Nowi użytkownicy nie wiedzą co jest skill a co command

### Context window eating
- Skills ładują się do kontekstu → jedzą tokeny
- Ciężkie setupy skills → szybsza auto-compaction (~turn 50-80 przy 200K)
- "Lost in the middle" problem — model gorzej czyta środek kontekstu

### Quality variance
- 60K skills na GitHub, ale "1k curated from 60k" = większość jest niska jakość
- Corporate Waters testował 47 skills → **40 pogorszyło output**
- Brak standardu quality assurance

### "1 in 5 tasks still need human intervention" (nawet z Opus 4.6)

### Repetitive unwanted behavior
- Kelsey Piper (The Argument): "I can't stop yelling at Claude Code" — Claude dodawał instrukcje tekstowe na stronach mimo wielokrotnych próśb
- "99% czasu to magia. Pozostały 1% jest absolutnie maddening."

---

## 10. Analiza luk — co tworzyć

### Nasycone (nie rób tego)
- Listicle "10 best skills" — jest ich 8+, kolejna nie przebije
- Ogólny "what are Claude Code skills" artykuł — jest ich 20+
- Skills vs MCP vs Plugins porównanie — jest 5+

### Luki (szanse)

| Luka | Dlaczego szansa | Format |
|---|---|---|
| **Short-form video o skills** | Zero dedykowanych filmów. Skills pojawiają się tylko jako sekcja w dłuższych tutorialach | TikTok/Reels/Shorts seria |
| **Polski content** | Zero. Ani artykuły, ani video | Jakikolwiek format |
| **"Które skills naprawde działają" — rzetelne testy** | Corporate Waters: 40/47 pogorszyło output. Nikt nie robi rygorystycznych testów | Video + artykuł |
| **Non-coding use cases** | Baoyu: "explodowały bo odkryto non-coding use cases". Sahil: skills do strategii startupowej | Short-form seria |
| **Budowanie skill od zera (video)** | Jest tekst, brak video walkthrough | Screen recording |
| **Skill economy / monetyzacja** | Agent37 na HN, ale mało contentu | Artykuł / video |
| **Advanced patterns** | Multi-skill orchestration, conditional loading, skill chaining | Deep dive |

### Co działa w contencie o skills (wzorce z top performers)

1. **Sahil Lavingia** — zamienił KSIĄŻKĘ w 9 skills → 459K views. **Pattern: "zamień X w skills"**
2. **Boris Cherny** — twórca narzędzia pokazuje jak sam go używa. **Pattern: "insider tips"**
3. **Baoyu** — wyjaśnił DLACZEGO skills explodowały, nie co to jest. **Pattern: "why, not what"**
4. **Corporate Waters** — testował 47 skills, 40 pogorszyło. **Pattern: "honest testing"**
5. **obra/superpowers** — 137K stars bo to METODOLOGIA, nie single skill. **Pattern: "system > skill"**

---

## 11. Rekomendacje dla odcinka #1 (Skills)

### Skrypt "vibe-coding-01-skills.md" — walidacja po research

**Co się potwierdza:**
- Hook "Nie ucz się kodować. Zainstaluj skille." — trafia w lukę (zero short-form o skills)
- Lens "skills jako infrastruktura" — potwierdzone przez Baoyu: "nie dlatego że koduje lepiej"
- Porównanie "App Store dla AI" — naturalne, marketplace'y istnieją
- CTA seria = najlepsza strategia

**Co warto zmienić/wzmocnić:**
- Dodać **konkretny wizualny przykład** — np. pokazać /simplify w akcji (built-in, nie wymaga instalacji)
- Wspomnieć **skalę** — "60 tysięcy skills na GitHubie" = wow factor, ale "tylko 1000 jest dobrych" = honest take
- Rozważyć **Sahil Lavingia angle** jako proof w przyszłym odcinku — "zamienił książkę w 9 skills"

### Propozycja serii Claude Code Tutorials (rozszerzenie)

| # | Temat | Hook | Kąt | Istniejący content (konkurencja) |
|---|---|---|---|---|
| 1 | Skills intro | "Nie ucz się kodować. Zainstaluj skille." | Skills jako infrastruktura | Zero short-form |
| 2 | 5 skills na start | "Te 5 instaluję pierwszego dnia." | Curated, testowane | Listicle tekst (nasycony), video (pusto) |
| 3 | Budowanie skill | "Zrobiłem własnego skilla w 3 minuty." | DIY, empowerment | Tekst how-to (jest), video (pusto) |
| 4 | Skills nie-do-kodu | "Skills nie służą do kodowania." | Baoyu insight, Sahil | Prawie zero |
| 5 | Które skills NAPRAWDĘ działają | "Przetestowałem 20 skills. 15 było śmieci." | Honest testing (Corporate Waters pattern) | Prawie zero |
| 6 | CLAUDE.md | "Jeden plik zmienia wszystko." | Pamięć projektu | Średnio pokryte |
| 7 | /simplify i /batch | "Claude właśnie się sklonował." | Wow factor, built-in | Nowe (Feb 2026), mało contentu |
| 8 | Superpowers plugin | "137 tysięcy gwiazdek. Dlaczego?" | Case study najlepszego pluginu | Mało |
| 9 | Skills economy | "Ludzie sprzedają skills. I zarabiają." | Monetyzacja | Prawie zero |
| 10 | Od skills do systemu | "Skill to nie prompt. To system." | Metodologia > narzędzie | Zero |
