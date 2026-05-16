---
description: Run daily content research pipeline (Stage 1: news scrape, Stage 2: per-topic notes, Stage 3: commit + push)
---

You are running the daily content research pipeline for meeko.tech.

Setup:
1. Run `date -u +%Y-%m-%d` to determine TODAY.
2. Read instructions: `skills/daily-research/SKILL.md`
3. Read sub-agent template: `skills/daily-research/subagent.md`
4. Execute the pipeline exactly as specified: Stage 1 → Stage 2 → Stage 3.

Rules:
- When in doubt, prefer not committing over committing wrong data.
- Never use `--force` or `--no-verify` on git operations.
- Print the FINAL REPORT block at the end (format in SKILL.md).
- If git push fails, do NOT spin retries; report the error and exit.

Begin.
