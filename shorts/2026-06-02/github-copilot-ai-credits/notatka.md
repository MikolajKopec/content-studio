# GitHub Copilot od dziś z kredytami AI: Max za 100 USD/mc z 20 000 kredytów

**Data:** 2026-06-02
**Temat:** Od **1 czerwca 2026** GitHub Copilot dla indywidualnych użytkowników przechodzi z modelu „premium requests" (PRU) na rozliczanie w GitHub AI Credits — z nowym planem Max za **100 USD/mc**, dającym **20 000 kredytów** (czyli ~**200 USD** wartości zużycia).

---

## Kluczowe fakty i liczby

- **1 czerwca 2026** wszystkie indywidualne plany GitHub Copilot (Pro, Pro+, nowy Max) przeszły na rozliczanie tokenowe — **1 AI credit = 0,01 USD**, czyli **100 kredytów = 1 USD**.
- **Pro** (**10 USD/mc**): **1500 kredytów** total = **1000 base** (1:1 z ceną) + **500 flex**, łącznie ~**15 USD** wartości zużycia.
- **Pro+** (**39 USD/mc**): **7000 kredytów** total = **3900 base** + **3100 flex**, łącznie ~**70 USD** wartości zużycia.
- **Max** (nowy, **100 USD/mc**): **20 000 kredytów** total = **10 000 base** + **10 000 flex**, łącznie ~**200 USD** wartości zużycia — **2× wartość ceny w kredytach**.
- **Code completion** i **next edit suggestions** pozostają **unlimited** dla wszystkich płatnych planów — **nie zużywają kredytów**. Kredyty palą tylko Chat, agent mode, Copilot CLI, Spark, Spaces, code review.
- Cennik tokenów per model (za **1M tokenów**): **Claude Sonnet 4.6**: input **3 USD** / output **15 USD**; **Claude Opus 4.7**: input **5 USD** / output **25 USD** (Pro+ only); **GPT-5.4**: input **2,50 USD** / output **15 USD**; **GPT-5 mini**: input **0,25 USD** / output **2 USD**; **Gemini 2.5 Pro**: input **1,25 USD** / output **10 USD**; **Gemini 3 Flash**: input **0,50 USD** / output **3 USD**.
- **Opus został wycięty z Pro** — żeby używać Claude Opus 4.7 w Copilocie, trzeba mieć minimum **Pro+ za 39 USD/mc**.
- Domyślny budżet przekroczenia (overage) to **0 USD** — po wyczerpaniu kredytów agent po prostu staje. Trzeba *świadomie* włączyć dopłaty, żeby kontynuować.
- Subskrybenci **roczni** zostają na starym systemie PRU do końca okresu rozliczeniowego, ale mnożniki modeli skoczyły im od 1 czerwca: **Claude Opus z 7,5× na 27×**, **GPT-5.4 z 1× na 6×**, **Copilot code review na 13×**.
- **Flex allotment jest zmienny** — GitHub zastrzega, że może go dostosować „w miarę ewolucji ekonomii AI". Tylko **base credits** są gwarantowane 1:1 z ceną subskrypcji.
- Nowych zapisów na Pro / Pro+ / Max **nie ma** — GitHub wstrzymał sign-upy, plany są dostępne tylko dla obecnych subskrybentów jako upgrade.

---

## Model biznesowy / cena — tabela porównawcza

| Plan | Cena | Base | Flex | Total kredytów | Wartość $ | Stosunek wartość/cena |
|------|------|------|------|----------------|-----------|-----------------------|
| **Free** | **0 USD** | mały pool | — | ograniczone | ~0 USD | n/d |
| **Pro** | **10 USD/mc** | **1000** | **500** | **1500** | **15 USD** | **1,5×** |
| **Pro+** | **39 USD/mc** | **3900** | **3100** | **7000** | **70 USD** | **1,79×** |
| **Max** | **100 USD/mc** | **10 000** | **10 000** | **20 000** | **200 USD** | **2,0×** |

**Interpretacja:** im wyżej w drabince, tym większa „premia flex" — Max dostaje **100% bonusu** ponad bazę, Pro tylko **50%**. To bezpośrednia odpowiedź na Cursor Ultra (**200 USD/mc**) i Claude Code Max (**100–200 USD/mc**), które już od kilku miesięcy zgarniały heavy-userów Copilota.

**Co konsumuje kredyty:**
- Chat (każde pytanie do agenta, mnożnik zależy od modelu)
- Agent mode (długie sesje wieloplikowe — najdroższe)
- Copilot CLI (terminalowe komendy)
- Copilot code review na PR (dodatkowo zżera **GitHub Actions minutes**)
- Spark, Spaces, custom agents

**Co NIE konsumuje kredytów (na płatnych planach):**
- Inline code completion (ghost text)
- Next edit suggestions
- Podstawowa nawigacja po dokumentacji

**Praktyczny przykład zużycia:** jedna rozmowa z agentem Claude Sonnet 4.6 na **50k tokenów wejścia + 5k wyjścia** = **0,15 USD + 0,075 USD = 0,225 USD = 22,5 kredyta**. Czyli z 1500 kredytów Pro robisz ~**66 takich sesji miesięcznie**. Na Maxie — **~888 sesji**.

---

## Potencjalne kąty narracyjne do shorta

1. **„Twój Copilot Pro ma od dziś licznik. Wchodzisz na github.com/settings/billing i widzisz: zostało Ci 1500 kredytów. Wiesz, ile to jest? Około 60 rozmów z agentem na Sonnecie. To wszystko."**

2. **„GitHub właśnie wprowadził plan za 100 dolarów. Max. 20 tysięcy kredytów. Dostajesz 200 dolarów wartości za 100 — czyli kupujesz tokeny z 50% rabatem. Pytanie tylko, czy zużyjesz."**

3. **„Claude Opus zniknął z planu Pro. Jeśli płacisz 10 dolarów i lubiłeś Opusa — od dziś musisz przesiąść się na Pro+ za 39. Albo zostać na Sonnecie. Tertium non datur."**

4. **„Roczni subskrybenci Copilota dostali ciche podwyżki. Mnożnik Opusa: z 7,5× na 27×. Mnożnik code review: 13×. Twój roczny plan właśnie zaczął kosztować trzy razy więcej za tę samą pracę."**

5. **„Code completion zostaje unlimited. To dobra wiadomość. Zła: każda rozmowa z agentem, każdy `gh copilot suggest`, każdy PR review — wszystko to zżera kredyty. I gdy się skończą, domyślnie Copilot się wyłącza. Nie zwolnij — stanie."**

6. **„Pro: 1,5× wartości w kredytach. Pro+: 1,79×. Max: 2×. Im więcej płacisz GitHubowi, tym więcej dostajesz w kredytach. Klasyczny model premium SaaS — z subsydium dla power-userów."**

7. **„20 000 kredytów w Maxie brzmi dużo, dopóki nie odpalisz agenta z kontekstem 200 tysięcy tokenów na Opusie. Wtedy jedna sesja to 25 kredytów. Mam ich 20 tysięcy — czyli 800 sesji. Brzmi dużo? Sprawdź swoje zeszłomiesięczne logi."**

---

## Źródła

- [GitHub Blog — Individual plans: flex allotments + Max](https://github.blog/news-insights/company-news/github-copilot-individual-plans-introducing-flex-allotments-in-pro-and-pro-and-a-new-max-plan/)
- [GitHub Blog — Copilot moving to usage-based billing](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/)
- [GitHub Changelog — Updates to Copilot billing (2026-06-01)](https://github.blog/changelog/2026-06-01-updates-to-github-copilot-billing-and-plans/)
- [GitHub Docs — Models and pricing for GitHub Copilot](https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing)
- [GitHub Docs — About individual GitHub Copilot plans and benefits](https://docs.github.com/en/copilot/concepts/billing/individual-plans)
- [GitHub Features — Copilot Plans & Pricing](https://github.com/features/copilot/plans)
- [GitHub Community — Announcement & FAQ: Changes to Copilot Individual Plans (#192963)](https://github.com/orgs/community/discussions/192963)
- [FindSkill.ai — Copilot's New AI Credits Billing: What Changes June 1](https://findskill.ai/blog/github-copilot-ai-credits-billing-june-2026/)
