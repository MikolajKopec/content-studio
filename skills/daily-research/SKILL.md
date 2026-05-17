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

### Time anchor — HARD constraint

Routine runs at 07:00 local (Europe/Warsaw) daily.
Target window: news published between **(TODAY − 2) 00:00 UTC** and **TODAY 05:00 UTC** (~53h, gives slack for late-evening breaking stories from the prior day).

**This is a hard reject criterion, not a preference.** A great tools-first story from a week ago is NOT a daily-research item — it's evergreen content and belongs elsewhere. Pipeline output must feel like *today's* news, not a "best tools released this month" digest.

**Date verification step (mandatory, run FIRST before actionable angle test):**

For every candidate, before including in newsy.md:
1. Open the primary source (or check WebSearch result metadata) for the **publication date of the actual announcement/release** — not "as of today" wrappers or aggregator re-posts.
2. If publication date is **>48h before TODAY (UTC)** → **REJECT**, no exceptions, even if perfect tools-first match.
3. If date is ambiguous ("May 2026", "this week", "recently") → **REJECT** unless you can find a primary source pinning it to within the window.
4. Re-runs / re-announcements of older items (e.g., "X is now also on Bedrock" when X launched 3 weeks ago) → reject the X story, but the *Bedrock availability* itself can be the news if it's within window.

### Less-is-more rule

If after date filtering you have fewer than 6 strong tools-first candidates, **publish fewer items**. Acceptable counts:
- **3-5 items**: fine if all are fresh + actionable. Mark as "Quiet news day" in the file header.
- **6-10 items**: normal day.
- **<3 items**: still commit, but flag in the FINAL REPORT — likely a holiday / weekend with no major releases.

**Never pad with stale releases just to hit 6.** A 3-item day of fresh narzędziowe news beats an 8-item day of mostly evergreen.

### Idempotency

If `news/{TODAY}/newsy.md` already exists with ≥3 items → **skip Stage 1**, jump to Stage 2.

### Search strategy

Use **WebSearch only** in main agent context (NOT WebFetch — that goes to sub-agents in Stage 2).

Run 6-8 parallel searches covering verticals. Query in **English** (more sources, fresher). **Embed the actual date or "today" / "this week" in queries** — generic month/year queries pull last month's evergreen content. Bias queries toward **"released / available / launched / shipping / free tier"** keywords — not "announced / unveiled / plans to". Suggested patterns (substitute `{TODAY}` with the actual ISO date e.g., 2026-05-17, `{YESTERDAY}` similarly):

1. `AI model released this week download {YESTERDAY}` — vertical 1 (tools to try)
2. `smartphone launched today price release {YESTERDAY} {TODAY}` — vertical 2
3. `ChatGPT Gemini new feature today rolled out {YESTERDAY}` — vertical 3
4. `Cursor Antigravity Claude Code update {YESTERDAY} {TODAY}` — vertical 4
5. `humanoid robot demo {YESTERDAY} this week` — vertical 5 (1/day cap)
6. `Bielik polski AI release tym tygodniu {YESTERDAY}` — PL bonus
7. `Apple iOS update available {YESTERDAY} this week` — vertical 3
8. `open weights HuggingFace Ollama release this week {YESTERDAY}` — vertical 1

**Anti-queries** (avoid these patterns — they pull business drama):
- ❌ "IPO" / "valuation" / "raises $X" / "funding round" (unless vertical 6 product hook)
- ❌ "lawsuit" / "testifies" / "court filing" (unless product consequence)
- ❌ "according to reports, plans to" / "coming in 2027" (roadmap-only)

Adapt queries to actual events — if you spot a major release cycle (e.g., WWDC, Made by Google), drill into the **shipping features**, not the keynote narrative.

### Core principle — TOOLS-FIRST, not newsroom

This channel is **narzędziowe i przyziemne** — narzędziowe (tool-oriented) and grounded. The viewer should leave each short knowing about something they can **try, buy, download, or use within 1-2 weeks**. We are NOT Bloomberg. Valuations, IPOs, lawsuits, and leadership drama are *not* the point — they only count when attached to a concrete product/feature the viewer can touch.

### Verticals — INCLUDE

1. **AI tools to try TODAY** — open-weight models (HuggingFace, Ollama, LM Studio), new AI apps/services with free tier or public beta, GA releases (paid or free). **Requirement:** an actual access path exists on the day of the news (download link, App Store, web app, waitlist with date). "Announced, ships next year" → exclude.

2. **Consumer hardware to buy** — phones, laptops, AR/VR, wearables, AI gadgets, gaming devices. **Requirement:** at least one of: confirmed sale date (within 90 days), pre-order open, official price (USD/EUR/PLN). Prefer products with PL availability or price context. "Concept reveal, no date/price" → exclude.

3. **Features in apps people actually use** — ChatGPT, Gemini app, Gmail, iOS/iPadOS, Android, Spotify, banking apps (PSD2 / Open Banking), Telegram, WhatsApp, InPost, Allegro, mObywatel, Microsoft 365, Notion. **Requirement:** feature is rolling out now or has a concrete start date — not a vague "later this year".

4. **Dev tools / Agentic IDE wars** — Cursor, Antigravity, Claude Code, Copilot, Codex CLI, MCP servers, Windsurf, new AI dev tools. Devs use these = inherently narzędziowe. Includes pricing/limit changes (free tier shrinks, new plan tiers).

5. **Humanoid robotics** — Figure, Tesla Optimus, NEO, Atlas (Boston Dynamics), Unitree, Agility, Apptronik. **HARD LIMIT: max 1 robot story per day.** **Requirement:** either (a) demo showing a concrete new capability with metrics (e.g., "Figure 36h non-stop, 40k packages"), or (b) buyable product with price (e.g., Unitree G1 $16k OK; $650k mecha no — too abstract).

### Verticals — CONDITIONAL — Big Tech business **only if tied to product**

6. **Acquisitions, funding, IPO, lawsuits, leadership shifts** — include **ONLY if BOTH apply**:
   - Tied to a concrete consumer/tool outcome (a release, integration, price change, layoff affecting a product, deal that unlocks distribution)
   - Viral hook: drama / counterintuitive / massive PL-relevant number

   **Examples of include:** "Anthropic closes $50B — Claude Pro price doubles next month", "Cerebras IPO — chips now available via AWS Bedrock", "Musk lawsuit forces OpenAI to open-source model X".

   **Examples of EXCLUDE (today's bad ones):** "Anthropic valued at $950B" alone, "Cerebras IPO +108%" with no product news, "Altman testified Musk wanted 90%" without product consequence.

   Pure financial milestone with no tool/product touchpoint → **exclude**, even with big numbers. We are not CNBC.

### Verticals — EXCLUDE (proven poor performance OR off-mission)

- ❌ Crypto / fintech (zero precedent in 15 films)
- ❌ Tech politics / regulations (EU AI Act, etc.) — too slow tempo
- ❌ Academic AI research / arXiv papers — niche
- ❌ How-to tutorials ("how to install X") — proven floppers
- ❌ Pure social media features (Instagram, TikTok feature updates) — short half-life
- ❌ **Pure business drama** — IPO, valuation, fundraising round, lawsuit, leadership shuffle WITHOUT a tied product/feature outcome
- ❌ **Future-roadmap announcements** without release date, price, or open waitlist (e.g., "we'll launch X in 2027", "factory of the future in 24 months")
- ❌ Conference keynote summaries without specific shipped/shipping items

### Selection criteria — actionable angle is mandatory

Each candidate must meet the **actionable angle test**:

> Can the viewer, within 1-2 weeks of watching, **download / buy / try / sign up for / measurably benefit from** what this news describes?

If yes → include. If no → exclude unless it's a robot demo (vertical 5) or B2B dev tool (vertical 4) where the visual / professional angle compensates.

In addition, must meet **≥1** of:
- **Actionable + concrete**: ship date, price, free tier limit, benchmark number tied to a working product
- **Product comparison / drama** between things viewers know (Cursor vs Antigravity ✓; Anthropic vs OpenAI valuation ✗)
- **New product launch or live demo** with metrics — preferably already in customers' hands or public beta
- **Surprising fact about a working product** (not a roadmap, not a research paper)

**Reject if:** niche library without UI, deeply technical without consumer/dev angle, opinion/analysis, sponsored content, rumor without source, "announced but ships in 12+ months", keynote roadmap without dates.

### Target count

See "Less-is-more rule" above. Normal day: 6-10 items. Quiet day: 3-5 is fine — just be fresh + actionable. If >10 strong candidates: pick top 10 by potential.

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
