# GitHub uruchamia code coverage w pull requestach (public preview)

**Data:** 2026-05-27
**Temat:** GitHub uruchomił natywne wyświetlanie code coverage prosto w PR-ach jako public preview dla wszystkich klientów GitHub Code Quality — bez Codecova, bez SonarCloud, raport Cobertura ląduje od razu w widoku review.

---

## Kluczowe fakty i liczby

- Feature ogłoszony **26 maja 2026** na github.blog/changelog jako część szerszej oferty **GitHub Code Quality**, która sama jest w public preview od **28 października 2025**.
- W PR-ze widać **agregowany procent pokrycia testami** — sygnał dla reviewera, czy nowy kod jest przetestowany, zanim zatwierdzi merge.
- Wymagany format raportu to **Cobertura XML** (de facto standard — wspierany przez Coverlet, gcovr, simplecov, JaCoCo, MATLAB).
- Setup używa nowej akcji **`upload-code-coverage`** i nowego fine-grained permission **`code-quality:write`** dla GitHub Apps i workflowów Actions.
- Dostępne dla **GitHub Enterprise Cloud** i **GitHub Team**, **brak wsparcia dla GitHub Enterprise Server** (czyli self-hosted Enterprise odpada na razie).
- W trakcie preview wszystko jest **darmowe**, ale skany Code Quality konsumują **GitHub Actions minutes** (więc rachunek za CI rośnie).
- Cały GitHub Code Quality oparty jest na **CodeQL** i obejmuje **7 języków**: C#, Go, Java, JavaScript, Python, Ruby, TypeScript + dodatkowo analiza AI na świeżo pushowanych plikach.
- Konkurent — **Codecov** (przejęty przez **Sentry w listopadzie 2022**) — kosztuje **5 USD/user/miesiąc** w planie Team (do 10 userów, 2 500 uploadów) i **12 USD/user/miesiąc** w planie Pro (unlimited).

## Jak to działa (setup)

1. **Włącz code coverage** dla repo — w ustawieniach Code Quality w zakładce Security & quality.
2. **Wygeneruj raport Cobertura** w swoim CI (Coverlet dla .NET, pytest-cov dla Pythona, JaCoCo + cobertura-reporter dla Javy, c8/nyc/vitest dla JS).
3. **Dodaj krok `upload-code-coverage`** w workflow GitHub Actions — to nowa, oficjalna akcja od GitHuba (analogicznie do `codecov/codecov-action`, tylko że zamiast SaaS-a wysyła do GitHuba).
4. **Nadaj uprawnienie `code-quality:write`** dla joba w Actions albo dla GitHub App, którego używasz do CI:

```yaml
permissions:
  contents: read
  code-quality: write
```

5. **Otwórz PR** — `github-code-quality[bot]` wstawi w widoku review aktualny % coverage. Findings static-analysis Code Quality dostają inline w diffie jako sugestie z autofixem od Copilota.
6. Opcjonalnie: **ustaw thresholdy w rulesetach** — GitHub Code Quality pozwala blokować merge, jeśli pokrycie spadnie poniżej ustalonego procentu.

## Co to zmienia dla devów

- **Mniej toolchainu w PR-ze** — przed: status check od Codecova, drugi od SonarCloud, trzeci od Coveralls. Po: jeden natywny widok GitHuba.
- **Mniej kont i secretów** — nie trzeba już generować `CODECOV_TOKEN`, dodawać go do secrets, autoryzować dodatkowego GitHub Apps. Wszystko leci po wbudowanym `GITHUB_TOKEN` z nowym permissionem.
- **Onboarding juniorów prostszy** — review w jednym widoku, % coverage obok zmian linijka po linijce, bez przełączania zakładek.
- **Standardyzacja raportów** — wymuszenie Cobertury sprawia, że zespoły będą musiały generować ten format (większość już to robi, ale projekty na Istanbul-coverage JSON będą musiały skonwertować).
- **Lock-in do GitHuba rośnie** — coverage history, dashboardy, organization-level metryki (od lutego 2026) zostają u GitHuba, nie eksportujesz tego łatwo do innej platformy.

## Konkurencja — co z Codecov i SonarCloud

**Codecov** (Sentry) — przejęty przez Sentry w listopadzie 2022 za nieujawnioną kwotę. Bazą biznesu Codecova był właśnie brak natywnego coverage w GitHubie. Plany:

- Developer (free): 1 user na private repo, 250 uploadów/miesiąc
- Team: ~5 USD/user/miesiąc, do 10 userów, 2 500 uploadów
- Pro: 12 USD/user/miesiąc, unlimited
- Enterprise: custom

Po tym ruchu GitHuba — Codecov musi się obronić "głębią": carryforward flags, components, multi-language coverage merge, integracje z Sentrym (link error → niepokryty kod). Dla małych zespołów na GitHub Team natywny widok wystarczy. Codecov zostanie tam, gdzie zespoły mają złożone repo (monorepo, wiele coverage flags) albo używają GitLaba/Bitbucketa.

**SonarCloud (SonarQube Cloud)** — gra na innym polu: static analysis + security + coverage łącznie, z ~5 000 reguł na ponad 30 językach. GitHub Code Quality robi static analysis na 7 językach (CodeQL). SonarCloud nadal wygrywa głębią analiz dla teamów regulowanych (banki, fintech), ale w prostszym scenariuszu "PR + coverage gate" GitHub zjada mu kawałek tortu.

**Coveralls** — od dawna w drugim szeregu za Codecovem, pricing per repo, popularne w OSS. Dla open-source przegra szybciej, bo OSS-y zwykle siedzą na GitHubie i wezmą natywne.

**Coverity** (Synopsys/Black Duck) — to inna liga, enterprise SAST, nie konkuruje bezpośrednio z coverage-only.

## Co jest w pakiecie GitHub Code Quality

- **Wykrywanie issuesów** reliability + maintainability w PR-ach i pełnych skanach repo (CodeQL-based).
- **Copilot Autofix** — inline w PR-ze sugestie poprawek wygenerowane przez Copilota, z one-click apply.
- **Repository i organization dashboards** — reliability score, trendy, breakdown by rule (org-level w preview od lutego 2026).
- **Rulesets / quality thresholds** — gate na merge: blokuj PR, jeśli reliability score spadnie lub coverage poniżej X%.
- **Code coverage** (od 26 maja 2026) — Cobertura uploads, %coverage w PR view.
- **Bulk dismissal i file search** (od kwietnia 2026) — UX-owe usprawnienia dla rule pages.
- **Delegacja do Copilot cloud agents** — możesz wypchnąć remediation do background agenta, który sam podniesie PR z poprawkami.
- **Brak wymaganej licencji Copilot / Code Security** — basic functionality dostępna bez dodatkowych licencji w czasie preview.

---

## Potencjalne kąty narracyjne do shorta

1. **"Codecov ma problem — GitHub właśnie wbudował to, na czym oni zarabiali."** Hook na konflikt: Sentry kupiło Codecov za grube miliony, a GitHub robi to natywnie. Zaskoczenie + perspektywa platform-killera.
2. **"3 status checki w PR-ze? Wywal je. GitHub zrobił coverage natywnie."** Praktyczny angle dla devów — pokazujesz przed/po: 5 zakładek vs jeden widok. Bardzo wizualne.
3. **"GitHub Code Quality vs SonarCloud — kto wygrywa w 2026?"** Comparison short: 7 języków vs 30, CodeQL vs Sonar rules, cena, deep dive w jakim scenariuszu co.
4. **"Nowy permission, o którym nie wiesz: `code-quality:write`. Twój CI go potrzebuje."** Hook na FOMO/techniczny detail — pokazujesz YAML, dwie linijki, gotowe.
5. **"Cobertura — format który właśnie wygrał wojnę o coverage."** Historyczny angle: dlaczego GitHub wybrał akurat Cobertura XML (a nie LCOV, Istanbul, JaCoCo native) i co to znaczy dla Twojego CI.
6. **"GitHub Team za 4$/user vs Codecov za 5$/user — kalkulacja, kiedy się przesiąść."** Konkret biznesowy, przeliczenie dla 10-osobowego zespołu, ROI w 30 sekund.
7. **"Enterprise Server zostaje w tyle — znowu."** Angle dla self-hosted: dlaczego on-prem GitHub dostaje feature dopiero po Cloud, ile to potrwa, i co to znaczy strategicznie dla firm regulowanych.

---

## Źródła

- [Code coverage on pull requests is now in public preview — GitHub Changelog (26.05.2026)](https://github.blog/changelog/2026-05-26-code-coverage-in-pull-requests-is-now-in-public-preview/)
- [GitHub Code Quality in public preview — GitHub Changelog (28.10.2025)](https://github.blog/changelog/2025-10-28-github-code-quality-in-public-preview/)
- [About GitHub Code Quality — GitHub Docs](https://docs.github.com/en/code-security/concepts/about-code-quality)
- [GitHub Code Quality: Improvements to standard findings — Changelog (14.04.2026)](https://github.blog/changelog/2026-04-14-github-code-quality-improvements-to-standard-findings-in-public-preview/)
- [GitHub Code Quality: Organization-level dashboard in public preview — Changelog (24.02.2026)](https://github.blog/changelog/2026-02-24-github-code-quality-organization-level-dashboard-in-public-preview/)
- [Setting code quality thresholds for pull requests — GitHub Docs](https://docs.github.com/en/code-security/how-tos/maintain-quality-code/set-pr-thresholds)
- [Codecov pricing](https://about.codecov.io/pricing/)
- [Sentry Acquires Codecov — Press release (listopad 2022)](https://sentry.io/about/press-releases/sentry-acquires-codecov/)
- [Code Coverage Summary action (Cobertura support) — GitHub Marketplace](https://github.com/marketplace/actions/code-coverage-summary)
