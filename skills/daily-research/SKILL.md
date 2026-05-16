---
name: daily-research
description: Daily content research pipeline for meeko.tech — scrapes last 24h tech/AI news, generates deep-dive notes per topic. Used by cron via /daily-research slash command.
---

# Daily Research Pipeline (meeko.tech)

Daily content research for Polish tech TikTok/YouTube channel meeko.tech.

**Audience profile (data-driven):**
- 77% Polska, 63% mężczyźni, tech-savvy
- Top performers (>100k views): robotyka z dramatem, hardware comparison, dev tools wars, AI accessibility (PL bonus)
- Floppers (<25k views): pure tutorials, academic research, generic deals without hooks

Output feeds short-script generation in a separate on-demand session.

---

## Pipeline overview

Three sequential stages. **Idempotent** (resume from last successful step).

- **Stage 1**: Scrape last ~24h news → `news/{TODAY}/newsy.md` (6-10 items)
- **Stage 2**: Deep-dive per topic → `shorts/{TODAY}/{slug}/notatka.md`
- **Stage 3**: Commit + push to `main`

`TODAY` = `date -u +%Y-%m-%d`

---

## Stage 1 — News Scrape

### Time anchor

Routine runs at 07:00 local (Europe/Warsaw) daily.
Target window: news published between **(TODAY − 1) 00:00 UTC** and **TODAY 05:00 UTC** (~29h).

When WebSearch results lack explicit dates, treat as candidates but verify timestamps before including.

### Idempotency

If `news/{TODAY}/newsy.md` already exists with ≥3 items → **skip Stage 1**, jump to Stage 2.

### Search strategy

Use **WebSearch only** in main agent context (NOT WebFetch — that goes to sub-agents in Stage 2).

Run 6-8 parallel searches covering verticals. Query in **English** (more sources, fresher). Suggested:

1. `AI announcement {month name} {year}` (e.g., "AI announcement May 2026")
2. `humanoid robot news 2026`
3. `Apple Google OpenAI Anthropic news today`
4. `smartphone launch {month name} 2026`
5. `Cursor Antigravity Claude Code IDE update`
6. `Polish AI Bielik news` (PL bonus)
7. `Tesla Optimus Figure NEO robot demo`
8. `AI consumer app launch {month name} {year}`

Adapt queries to actual events — if you spot a major news cycle, drill into it.

### Verticals — INCLUDE

1. **AI / new models from major firms** — Google, Apple, OpenAI, Anthropic, Meta, Xiaomi, NVIDIA, Mistral, + **Polish AI bonus** (Bielik, polskie modele)
2. **Humanoid robotics** — Figure, Tesla Optimus, NEO, Atlas (Boston Dynamics), Unitree, Agility, Apptronik
3. **Consumer hardware with drama/comparison angle** — phones (launches, copies, fight), laptops (Apple M-series especially), gaming devices (Steam Machine, Switch), AR/VR
4. **Dev tools / Agentic IDE wars** — Cursor, Antigravity, Claude Code, Copilot, new AI dev tools
5. **AI reaching mainstream** — apps integrating AI (ChatGPT mobile features, InPost+Bielik-style integrations), consumer-facing agents

### Verticals — CONDITIONAL (only with viral hook)

6. **Big Tech business** — acquisitions, valuations, funding, leadership changes, lawsuits. **Include ONLY IF one of:**
   - Specific big number (>$1B funding/valuation/ARR)
   - Public drama / lawsuit / fight
   - Counterintuitive deal (e.g., "Apple pays competitor $1B")

   Plain "deal closed" without hook → **exclude**.

### Verticals — EXCLUDE (proven poor performance)

- ❌ Crypto / fintech
- ❌ Tech politics / regulations (EU AI Act, etc.) — too slow tempo
- ❌ Academic AI research / arXiv papers — niche
- ❌ How-to tutorials ("how to install X") — proven floppers
- ❌ Pure social media features (Instagram, TikTok feature updates) — short half-life

### Selection criteria

For each candidate, must meet **≥1**:
- Major company announcement
- Concrete specific number ($/users/percent/hours)
- New product launch or live demo
- Public drama, comparison, lawsuit, or fight
- Surprising contradiction / counterintuitive fact

**Reject if:** niche library/framework, deeply technical without consumer angle, opinion/analysis without new info, sponsored content, rumor without source.

### Target: 6-10 items

If <6 strong candidates: include the best you have, mark weaker ones `**Potencjał contentowy:** niski` but don't pad with low-quality fillers.

If >10: pick top 10 by potential.

### Output format — `news/{TODAY}/newsy.md`

```markdown
# Newsy technologiczne — {DATE_PL}

---

## 1. {Headline in Polish — punchy, concrete, max 80 chars}

**Źródło:** {1-3 source names with publication dates}

{1-3 short paragraphs in Polish. Include numbers, names, dates. No fluff.
No "interesting development" filler. Just facts.}

> **Potencjał contentowy:** {wysoki | średni | niski} — {1 sentence why}

---

## 2. ...
```

Where `{DATE_PL}` is the Polish date format like "16 maja 2026".

**Language rules:**
- Write content in Polish (PL audience)
- Search queries in English
- Keep company/product names verbatim ("Claude" not "Klaudiusz", "Figure" not "Figura")

---

## Stage 2 — Per-topic Deep-dive

For **EACH** item in `news/{TODAY}/newsy.md` (all of them, 6-10 — not just top 5):

### Step 1 — Compute slug

From headline: lowercase, ASCII-friendly (strip PL diacritics), hyphenated, **max 30 chars**.

Examples:
- "Figure AI: robot pracuje 24/7" → `figure-ai-24-7`
- "iOS 27 i Apple Intelligence" → `ios27-apple-intelligence`
- "Xiaomi kopia iPhone 17 Pro" → `xiaomi-kopia-iphone17`

### Step 2 — Idempotency check

If `shorts/{TODAY}/{slug}/notatka.md` exists → **skip this item** (already done in prior run).

### Step 3 — Dispatch sub-agent

Use the **Task tool** (or Agent tool — whichever is available in this environment) to dispatch ONE sub-agent per topic.

Sub-agent runs in **isolated context**: its WebFetch results do NOT pollute main agent context.

**Sub-agent prompt:** see `skills/daily-research/subagent.md` — read that file and use its full content as the sub-agent prompt, with placeholders `{TODAY}`, `{slug}`, `{headline}`, `{news_item_markdown}` substituted.

Pass to sub-agent (inline):
- `{TODAY}` (the date)
- `{slug}` (the computed slug)
- `{headline}` (just the H2 line from newsy.md)
- `{news_item_markdown}` (full markdown block of this news item, copy-pasted)

### Step 4 — Sub-agent return

Sub-agent returns a **structured RESULT block** (see `subagent.md` for the full format). Parse it to extract:
- `status` (OK | FAIL)
- `slug`, `headline`, `tldr`, `hook_1/2/3`, `potencjal`

**Main agent does NOT read the full notatka.md content** — it's on disk for later use. Keep all parsed RESULT blocks in memory (cheap, ~500 bytes each) for use in Step 5.

### Parallelism

Dispatch sub-agents **sequentially** by default (one at a time) for safety. If your environment supports parallel Task dispatch, max **3 in flight** at once.

### Step 5 — Generate SUMMARY.md (after ALL sub-agents finish)

**Idempotency:** if `shorts/{TODAY}/SUMMARY.md` already exists → skip this step.

Otherwise, write `shorts/{TODAY}/SUMMARY.md` aggregating all OK results:

```markdown
# Skrót dnia — {DATE_PL}

{N} newsów researched. Cherry-pick poniżej.

---

## 1. {headline_1}

📂 [`{slug_1}/notatka.md`](./{slug_1}/notatka.md)
**Potencjał:** {emoji_1} {potencjal_1}

**TL;DR:** {tldr_1}

**Top hooks:**
- {hook_1_1}
- {hook_1_2}
- {hook_1_3}

---

## 2. ...
```

Where:
- `{DATE_PL}` — Polish date format like "17 maja 2026"
- `{emoji}` — 🔥 for wysoki, ⚡ for średni, 💧 for niski
- Order topics by potential (wysoki first, then średni, then niski) for easy cherry-pick
- Include ONLY status=OK results. FAIL ones get a short "## ❌ Failed topics" section at the bottom if any.

If all sub-agents failed → write SUMMARY.md with just header + "Wszystkie sub-agenty padły — sprawdź logi".

---

## Stage 3 — Commit + Push

After Stage 1 + Stage 2 complete:

```bash
git status --short
```

If no changes → print FINAL REPORT with "No new content today" and exit clean (exit 0).

Otherwise:
```bash
git add news/{TODAY}/ shorts/{TODAY}/
git commit -m "Daily content prep {TODAY} — {N} newsów, {M} notatek + SUMMARY.md"
git pull --rebase --autostash origin main
git push origin main
```

Where `{N}` = item count in newsy.md, `{M}` = number of notatka.md files created (not skipped).

**NEVER** use `--force` or `--no-verify` flags.

**If push fails:**
- Print exact stderr to FINAL REPORT
- Do **NOT** retry beyond the built-in `git pull --rebase` above
- Exit non-zero (1)

---

## Final Report

**Always print this block as the last action**, regardless of success/failure:

```
=== DAILY CONTENT REPORT {TODAY} ===
Stage 1 (newsy.md):  {N items written | skipped — file already existed}
Stage 2 (notatki):   {M created | K skipped (already existed) | F failed}
Stage 2.5 (SUMMARY): {created | skipped — already existed}
Stage 3 (git):       {SUCCESS | FAIL: <reason>}
Total runtime:       {minutes}
Notable issues:      {empty search results | sub-agent failures | etc.}
=========================================
```

---

## Error handling rules

- **WebSearch returns empty / very few results** → still commit (even with 2-3 items + low-quality markers). Continue to Stage 2.
- **Sub-agent fails for one topic** → continue with others, commit partial. Resume on next run will retry the failed ones (idempotency).
- **Git push fails** → report verbatim error, exit non-zero. Do NOT loop retries.
- **Repo dirty before pipeline starts** (uncommitted changes from prior failed run) → run `git stash --include-untracked` first, do work, do NOT pop the stash (it might conflict). Report this in FINAL REPORT.
