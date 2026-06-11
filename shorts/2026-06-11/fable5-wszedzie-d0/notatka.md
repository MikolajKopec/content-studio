## 2. Claude Fable 5 w Copilot, Foundry, Bedrock, Cursor i Claude Code — pierwszego dnia

**Data:** 2026-06-11
**Temat:** Anthropic uruchomił Fable 5 jednego dnia we wszystkich największych dev tools świata, ale z jednym haczykiem — wymusza 30-dniową retencję danych, której żaden inny model Claude nie ma.

---

## Kluczowe fakty i liczby

- Premiera Fable 5: **9 czerwca 2026** — tego samego dnia model dostępny w **GitHub Copilot**, **Microsoft Foundry** + **Foundry Agent Service**, **AWS Bedrock**, **Cursor 4**, **Claude Code v2.1.170** i **Anthropic API**.
- Plany Copilot z dostępem: **Pro+, Max, Business, Enterprise** — wybierany z model pickera w VS Code (tryby chat, ask, edit, agent), Visual Studio, JetBrains, Xcode, Eclipse, Copilot CLI, cloud agent, github.com, mobile.
- Cena: **$10 / mln tokenów input**, **$50 / mln tokenów output** — **2× droższy niż Opus 4.8**.
- Context window: **1 mln tokenów** domyślnie, do **128k tokenów output** na request.
- Retencja danych (haczyk): **30 dni** dla każdego ruchu (safety classifiers), do **2 lat**, jeśli content zostanie sflagowany jako naruszenie usage policy.
- Wszystkie inne modele Claude (Opus 4.8, Sonnet 4.5, Haiku 4.5) działają na **Zero Data Retention** — Fable 5 jest jedynym wyjątkiem.
- CursorBench: **72,9%** — **8 punktów** nad poprzednim najlepszym wynikiem.
- Okno darmowego dostępu: **9–22 czerwca 2026** w planach Claude Pro/Max/Team/Enterprise, od **23 czerwca** wymagane usage credits.
- Regiony AWS Bedrock na start: **US East (N. Virginia)** i **Europe (Stockholm)**.

---

## Lista platform z dostępem dnia pierwszego

| Platforma | Tryby / surface | Uwagi |
|---|---|---|
| GitHub Copilot | VS Code, Visual Studio, JetBrains, Xcode, Eclipse, CLI, cloud agent, github.com, mobile | Tylko Pro+/Max/Business/Enterprise. Admin musi włączyć policy (off by default). |
| Microsoft Foundry | Foundry + Foundry Agent Service | Azure enterprise |
| AWS Bedrock | US East, EU Stockholm | Stopniowy rollout per konto |
| Claude Platform on AWS | NA, SA, EU, APAC | Natywny UX Anthropic |
| Cursor 4 | Wszystkie agent tools, thinking variant | Wymaga akceptacji retention policy w dashboardzie |
| Claude Code | v2.1.170+ | Selectable, nie default; fallback do Opus 4.8 dla flagowanych promptów |
| Anthropic API | bezpośrednio | $10/$50 per mln tokenów |
| Vertex AI | Google Cloud | GA |

## Porównanie z konkurencją modeli Claude w Copilot

| Model | Zero Data Retention | Cena Copilot |
|---|---|---|
| Claude Haiku 4.5 | TAK | standardowo |
| Claude Sonnet 4.5 | TAK | standardowo |
| Claude Opus 4.8 | TAK | standardowo |
| **Claude Fable 5** | **NIE — 30 dni / 2 lata jeśli flag** | premium + osobna policy |

## Czym Fable 5 różni się od Opus

- **Mniej tool calls** i **niższe zużycie tokenów** przy tej samej pracy (internal benchmarki Anthropic, autonomous coding).
- **3× większy postęp** w Slay the Spire z persistent memory vs Opus 4.8 (test długoterminowej autonomii).
- **Stripe**: migracja 50 mln linii Ruby — **"miesiące inżynierii skompresowane do dni"**.
- **Vision SOTA** — diagramy, wykresy, tabele w PDF/dokumentach.
- **Self-verification** — model aktualizuje własne "skills" na podstawie learnings z sesji.
- **9-godzinne autonomiczne sesje** projektowe (test referowany przez gagadget).
- Cognition FrontierCode: najwyższy wynik wśród frontier modeli, **nawet przy medium effort**.

## Implikacje dla devów

- W Copilot Enterprise/Business **admin musi ręcznie włączyć policy** — w wielu korpo dział compliance to zablokuje przez retention.
- **Microsoft sam zablokował Fable 5 wewnętrznie** dla pracowników (nie ma go w internal model pickerze Copilota), choć sprzedaje go klientom — własna firma nie ufa polityce retencji partnera.
- Harmful prompts z obszarów **cyber, bio, chem, health** → automatyczny **fallback do Opus 4.8**, klient płaci wtedy ceną Opus.
- W Cursor **automatyczny fallback do Opus**, gdy security guardrails się odpalą.
- Dla teamów na **ZDR-only compliance** (regulowane branże): Fable 5 jest praktycznie zakazany — pozostaje Opus 4.8 jako sufit jakości.

---

## Potencjalne kąty narracyjne do shorta

- "Anthropic wypuścił model i tego samego dnia masz go w Copilocie, Cursorze, Bedrocku i Foundry — wszędzie."
- "Microsoft sprzedaje Fable 5 klientom, ale **sam blokuje go swoim pracownikom**."
- "Pierwszy raz w historii Claude nie ma Zero Data Retention — **Anthropic trzyma twoje prompty 30 dni**."
- "Jeśli safety classifier cię sflaguje, Anthropic trzyma twoje dane **2 lata**."
- "Fable 5 robi tę samą pracę co Opus, ale **mniejszą liczbą tool calls** — i jest **2× droższy**."
- "Stripe zmigrował **50 milionów linii Rubiego** w dni, nie miesiące — to nowy Claude."
- "Twój CTO zobaczy Fable 5 w Copilocie i go wyłączy, zanim go włączysz — **policy off by default**."

---

## Źródła

- [Claude Fable 5 is generally available for GitHub Copilot — GitHub Changelog](https://github.blog/changelog/2026-06-09-claude-fable-5-is-generally-available-for-github-copilot/)
- [Claude Fable 5 available today in Microsoft Foundry — Microsoft Azure Blog](https://azure.microsoft.com/en-us/blog/claude-fable-5-available-today-in-microsoft-foundry-powering-the-next-era-of-autonomous-agents/)
- [Anthropic Claude Fable 5 on AWS — AWS Blog](https://aws.amazon.com/blogs/aws/anthropic-claude-fable-5-on-aws-mythos-class-capabilities-with-built-in-safeguards-now-available/)
- [Claude Fable 5 and Claude Mythos 5 — Anthropic](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Claude Fable 5 — Cursor Docs](https://cursor.com/docs/models/claude-fable-5)
- [Claude Code v2.1.170 Major Updates — DevelopersIO](https://dev.classmethod.jp/en/articles/20260609-cc-updates-v2-1-170/)
- [Microsoft Balks at Anthropic's Claude Fable 5 Data Retention Policy — PYMNTS](https://www.pymnts.com/news/artificial-intelligence/2026/microsoft-balks-at-anthropics-claude-fable-5-data-retention-policy/)
- [Companies using Fable 5 beware — Cybernews](https://cybernews.com/ai-news/claude-fable-five-data-retention-collection/)
- [Anthropic brings Mythos to the masses — VentureBeat](https://venturebeat.com/technology/anthropic-brings-mythos-to-the-masses-with-claude-fable-5-its-most-powerful-generally-available-model-ever)
