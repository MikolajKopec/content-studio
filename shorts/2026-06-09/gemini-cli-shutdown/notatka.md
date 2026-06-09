# 5. Gemini CLI umiera 18 czerwca — devsi mają 9 dni na migrację do Antigravity CLI

**Data:** 2026-06-09
**Temat:** Google wyłącza open-source'owe Gemini CLI 18 czerwca 2026 i pcha deweloperów do zamkniętego Antigravity CLI (`agy`) — Enterprise zostaje na pokładzie, reszta dostaje 9 dni i HTTP 410.

---

## Kluczowe fakty i liczby

- **18 czerwca 2026** — twardy deadline. Po tym dniu auth endpoint Gemini CLI zwraca **HTTP 410 Gone**, a każda komenda `gemini` po prostu się wywala.
- Decyzję ogłoszono **8 maja 2026** — devsi dostają **~6 tygodni** na migrację, w tym tylko **9 dni od dziś (2026-06-09)**.
- Wyłączeniu podlegają subskrypcje **Google AI Pro**, **Google AI Ultra**, darmowy free tier oraz **indywidualne Gemini Code Assist**. Ratunek mają tylko **Gemini Code Assist Standard/Enterprise** — czyli ci, którzy płacą firmie, nie sobie.
- **Gemini Code Assist dla GitHuba** — od 18 czerwca brak nowych instalacji w organizacjach, a istniejące requesty przestaną być obsługiwane w kolejnych tygodniach.
- Następca: **Antigravity CLI**, komenda **`agy`** (lub `av` w niektórych dystrybucjach), napisany w **Go** zamiast Node.js — szybszy start, orkiestruje **wielu agentów równolegle** w tle.
- Domyślny model przeskakuje z `gemini-1.5-pro` na **`gemini-3-pro`**; domyślny stream emituje **SSE** zamiast plain textu; non-zero exit codes na tool-use failures (wcześniej zawsze 0 — to złamanie skryptów CI/CD).
- **Antigravity 2.0** + nowy CLI ogłoszono **19 maja 2026** na Google I/O razem z modelem **Gemini 3.5 Flash** i planem **AI Ultra za $100/mies.** (5x usage limits vs Pro) oraz **Premium $200/mies.** (zjazd z $250, ale 20x limity).

---

## Migracja krok po kroku

| Element | Stare (Gemini CLI) | Nowe (Antigravity CLI) |
|---|---|---|
| Komenda główna | `gemini` | `agy` / `av` |
| Config markdown | `GEMINI.md` | `AGENTS.md` |
| Katalog skilli | `.gemini/skills/` | `.agents/skills/` |
| State directory | `~/.gemini/agents/` | `~/.antigravity/agents/` |
| API key env | `GEMINI_API_KEY` | `AV_API_KEY` |
| Project ID env | `GEMINI_PROJECT_ID` | `AV_PROJECT_ID` |
| Region env | `GEMINI_REGION` | `AV_REGION` (default `us-central1`) |
| Komendy agent | `gemini agents run/list` | `av agent run/ls` (singular!) |
| Domyślny model | `gemini-1.5-pro` | `gemini-3-pro` |

Instalacja (macOS/Linux):
```bash
curl -fsSL https://antigravity.dev/install.sh | sh
av --version
av auth login
agy plugin import gemini   # zaciąga istniejące extensions
```

Oba narzędzia mogą **współistnieć** podczas migracji.

---

## Reakcje branży: dramat open-source

To nie jest cicha zmiana wersji — to drama, bo **Gemini CLI był Apache 2.0**, a **Antigravity CLI nie jest open-source**. Repo Antigravity na GitHubie zawiera (cytat z The Register) tylko *"a change log, readme, and a GIF file"*. Reszta to zamknięty kod.

Hacker News (thread #48196867):

- **simonw**: *"Gemini CLI was open source (Apache 2)... Antigravity CLI is not"*
- **exploderate**: *"This is not good for open-source. Claude is not open-source, copilot-cli is not and antigravity-cli isn't either."*
- **silverlight**: *"Google really can't help themselves but to have some internal re-org kill off a public thing people are actively using."*
- **jesse_dot_id**: *"I stopped using Google products due to their propensity for killing them off. I continue to be proven correct."*
- **Ozzie-D**: *"You can't build a workflow around something that gets renamed or killed every 6 months."*
- **TheFragenTaken**: *"Fool me once, shame on you. Fool me 305+1 times, shame on me"* (link do killedbygoogle.com).

The Register puentuje to jeszcze ostrzej: *"open your wallets if you want access to this open-source product"* — Gemini CLI technicznie pozostaje na GitHubie jako repo Apache 2.0, ale żeby z niego sensownie korzystać po 18 czerwca, musisz kupić licencję Enterprise.

Wątek pojawiający się na GitHubie i HN: społeczność czuje, że ich **darmowa praca open-source** posłużyła Google do dopracowania zamkniętego produktu — i teraz są z tego wyrzucani.

---

## Co to znaczy dla rynku

- **Google Killed By Google #306+**: kolejny produkt, kolejny shutdown, kolejna utrata zaufania devów. killedbygoogle.com dostaje świeży wpis.
- **Open-source jako leadgen do enterprise**: schemat „darmowe OSS narzędzie → community contributions → zamknięty produkt premium" staje się normą (Claude Code, Copilot CLI, teraz Antigravity).
- **Hard deadline = panika w CI/CD**: skrypty z `gemini` w Makefile/GitHub Actions trzeba przepisać, bo nowe **non-zero exit codes** złamią pipeline'y, które wcześniej milcząco ignorowały błędy.
- **Wojny dev tooli**: Google pozycjonuje Antigravity bezpośrednio przeciwko Claude Code i Cursorowi — multi-agent orchestration w terminalu to nowe pole bitwy.
- **Enterprise tax**: jeśli chcesz utrzymać Gemini CLI po 18 czerwca, kup **Gemini Code Assist Enterprise**. Indywidualni devsi zostają wpychani na Antigravity albo migrują na konkurencję.

---

## Potencjalne kąty narracyjne do shorta

- **"Google zabija swoje narzędzie za 9 dni"** — twardy deadline, konkretna liczba, urgency: 18 czerwca komenda `gemini` przestaje działać i zwraca HTTP 410 Gone.
- **"Twój open-source kod właśnie zamknęli na klucz"** — Gemini CLI był Apache 2.0, Antigravity CLI nie jest. Repo Antigravity na GitHubie zawiera *"a change log, readme i jeden GIF"*. Reszta to czarna skrzynka.
- **"306. produkt w cmentarzu Google'a"** — killedbygoogle.com dostaje nowy wpis, a devsi cytują *"Fool me 305+1 times, shame on me"*.
- **"Płać $200 miesięcznie albo żegnaj"** — tylko Enterprise zostaje na Gemini CLI. Free tier, Pro za $20, Ultra za $100 — wszyscy out. Open-source dla bogatych.
- **"4 zmiany w pliku ratują ci CI/CD"** — `GEMINI.md` → `AGENTS.md`, `.gemini/skills` → `.agents/skills`, `GEMINI_API_KEY` → `AV_API_KEY`, `gemini` → `agy`. Pozornie proste, ale exit codes się zmienią i pipeline padnie.
- **"Google wyrzuca Node.js, przesiada się na Go"** — Antigravity CLI napisany od zera w Go, parallel agents w tle. Szybciej, ale closed-source.
- **"Twój wkład w open-source poszedł do zamkniętego produktu"** — community na HN: *"using open-source contributions to improve a new closed-source product"*. Dev gniew level 100.

---

## Źródła

- [An important update: Transitioning Gemini CLI to Antigravity CLI — Google Developers Blog](https://developers.googleblog.com/an-important-update-transitioning-gemini-cli-to-antigravity-cli/)
- [Bye-bye, Gemini CLI; Google nudges devs toward Antigravity — The Register](https://www.theregister.com/ai-ml/2026/05/20/bye-bye-gemini-cli-google-nudges-devs-toward-antigravity/5243605)
- [Gemini CLI will stop working from June 18, 2026 — Hacker News thread #48196867](https://news.ycombinator.com/item?id=48196867)
- [Google launches Antigravity 2.0 with an updated desktop app and CLI tool at IO 2026 — TechCrunch](https://techcrunch.com/2026/05/19/google-launches-antigravity-2-0-with-an-updated-desktop-app-and-cli-tool-at-io-2026/)
- [Google Kills Gemini CLI on June 18: Builder Migration Guide — AI Builder Club](https://www.aibuilderclub.com/blog/google-kills-gemini-cli-june-18-2026)
- [Gemini CLI Is Dead: 15-Minute Migration to Antigravity CLI Before June 18 — Harsh Rastogi](https://www.harshrastogi.tech/blog/gemini-cli-shutdown-antigravity-migration-guide)
- [Antigravity CLI Tutorial — Google Cloud Community / Medium](https://medium.com/google-cloud/antigravity-cli-tutorial-series-12b46cfe3bf2)
