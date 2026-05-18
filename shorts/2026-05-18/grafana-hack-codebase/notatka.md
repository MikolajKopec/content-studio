# Grafana Labs okradziono z kodu — odmówili 7-cyfrowego okupu

**Data:** 2026-05-18
**Temat:** Atakujący przez błędną konfigurację GitHub Action (Pwn Request) wyciągnął cały kod źródłowy Grafana Labs i zażądał okupu — firma odmówiła, włamanie wykryły canary tokeny.

---

## Kluczowe fakty i liczby

- Grafana Labs ujawniła incydent **16 maja 2026** (oficjalny komunikat firmy; część mediów datuje publikację na **17 maja**).
- Wektor: świeżo włączony GitHub Action z luką typu **„Pwn Request"** — błędna konfiguracja workflowa uruchamianego na evencie `pull_request_target`, dająca zewnętrznym kontrybutorom dostęp do produkcyjnych sekretów w trakcie CI.
- Atakujący sfork­ował publiczne repo Grafany, w PR-cie wstrzyknął komendę `curl`, zrzucił zmienne środowiskowe, zaszyfrował je swoim kluczem prywatnym i wyciągnął uprzywilejowany **token GitHub App**. Następnie skasował forka, żeby zatrzeć ślady.
- Po przejęciu tokena uderzył w **4 dodatkowe prywatne repozytoria** i pobrał cały kod źródłowy.
- Wykrycie: zadziałał jeden z **„tysięcy"** canary tokenów rozsianych po infrastrukturze — konkretnie klucz **AWS API**, którego walidacja przez atakującego (prawdopodobnie przez TruffleHog) natychmiast wzbudziła alert globalnego zespołu security.
- Czas reakcji: incydent „opanowany w ciągu minut" od wystrzelenia canary tokena.
- Sprawca: **CoinbaseCartel**, grupa data-extortion działająca od **września 2025**, według analiz odgałęzienie ekosystemu ShinyHunters / Scattered Spider / LAPSUS$. Na koncie ma **170+ ofiar** w branżach healthcare, tech, transport, manufacturing, business services.
- W pierwszych miesiącach działalności CoinbaseCartel wszedł do **Top 10 grup ransomware** według rankingu Bitdefender.
- Grafana **odmówiła zapłaty**, powołując się na wytyczne FBI: „zapłata okupu nie gwarantuje zwrotu danych" i „tworzy zachętę dla kolejnych ataków".
- Brak dostępu do danych klientów, brak wpływu na produkt, kod nie został (na dzień **18 maja 2026**) opublikowany.
- Dokładna kwota okupu **nie została ujawniona publicznie** — żaden z dostępnych raportów nie podaje liczby; określenie „7-cyfrowy" pojawia się w nagłówkach polskiej prasy, ale nie jest potwierdzone przez Grafanę.
- Wielkość skradzionego kodu (liczba linii / megabajtów / liczba repo poza wymienionymi czterema) **nie została podana**.

---

## Jak działa „Pwn Request" — w skrócie

- W GitHub Actions trigger `pull_request_target` uruchamia workflow w **kontekście repozytorium docelowego**, czyli z dostępem do sekretów i z prawem zapisu — w przeciwieństwie do bezpiecznego `pull_request`, który działa w piaskownicy forka.
- Jeśli workflow dodatkowo zrobi `checkout` kodu z PR-a forka i go uruchomi (np. testy, lint, build), to atakujący zewnętrzny dostaje **wykonanie własnego kodu z dostępem do sekretów organizacji**.
- W praktyce wystarczy jeden `curl` w skrypcie buildu, żeby wyssać `GITHUB_TOKEN`, klucze AWS, tokeny do rejestrów i wszystko, co siedzi w `${{ secrets.* }}`.
- Klasa luki znana od lat (GitHub Security Lab opisał ją publicznie); w lutym 2026 autonomiczny bot **hackerbot-claw** automatycznie wyciągnął ją z wielu wysokoprofilowych repo.

---

## Canary tokeny: pułapki Grafany

- Grafana wdrożyła **dziesiątki tysięcy** canary tokenów — „cyfrowe drutowstrząsy", które wyglądają jak prawdziwe sekrety (AWS API keys, tokeny), ale nie mają legalnego użycia w infrastrukturze. Każde ich użycie = alert.
- Tokeny były umieszczone m.in. w **secretach na poziomie organizacji i repozytorium GitHub**. Atakujący wziął je razem z prawdziwymi sekretami i walidował narzędziem typu TruffleHog — co od razu wystrzeliło alarm.
- Grafana nie zbudowała własnych canary tokenów — używa komercyjnej platformy **Thinkst Canary**, a alerty puszcza przez webhooki do **Grafana Cloud IRM** i dalej na Slacka. Open-sourcowe szablony (Terraform/Ansible/Puppet/CloudFormation) udostępnia sam Thinkst.

---

## Oś czasu

| Data | Wydarzenie |
|---|---|
| wrzesień 2025 | Pojawia się grupa CoinbaseCartel |
| luty 2026 | Bot hackerbot-claw masowo eksploituje Pwn Request w GitHub Actions |
| ~15 maja 2026 | Atak na Grafanę: fork, wstrzyknięcie `curl`, kradzież tokena, pobranie kodu, włamanie do 4 dodatkowych repo |
| ~15 maja 2026 | Wystrzelenie canary tokena → wykrycie w ciągu minut |
| 16 maja 2026 | Oficjalne ujawnienie przez Grafana Labs; ransom demand i odmowa |

---

## Reakcje i implikacje

- Dla devów: każdy workflow z `pull_request_target` + `checkout` PR-a to **dziura wielkości tira** — i to nie teoria, tylko realny scenariusz.
- Dla firm: canary tokeny okazały się nieporównanie skuteczniejsze niż klasyczne SIEM-y — w przypadku Grafany dały detekcję **w czasie rzeczywistym**, nie po dniach.
- Dla branży: Grafana to firma, która **monitoruje cudzą infrastrukturę** (miliony dashboardów, alerty, observability) — i sama padła ofiarą prozaicznego misconfiga w CI. Dramatyczne, że „od monitoringu" nie wystarczy, jeśli nie ma się porządnych pułapek wewnątrz.
- Decyzja o niepłaceniu zgodna z wytycznymi FBI — wpisuje się w trend: Cloudflare (2024), inne big tech też publicznie odmawiały. Każde takie „nie" osłabia model biznesowy data-extortion.

---

## Potencjalne kąty narracyjne do shorta

- „Okradli firmę, która **monitoruje cudzą infrastrukturę** — i nie zauważyła ataku, dopóki nie zadziałała pułapka."
- „Grafana rozsiała **tysiące fałszywych haseł** po swojej infrastrukturze. Jedno z nich uratowało im tyłek."
- „Hakerzy wyciągnęli cały kod źródłowy Grafany przez **JEDEN `curl`** w pull requeście."
- „CoinbaseCartel: **170 ofiar** w 8 miesięcy, Top 10 grup ransomware. Grafana powiedziała im NIE."
- „Atakujący skasował forka, żeby zatrzeć ślady. Nie wiedział, że już 5 minut wcześniej **canary token** zdradził go AWS-owi."
- „Grafana odmówiła okupu, powołując się na FBI: **„zapłata nie gwarantuje niczego, tylko finansuje kolejne ataki"**."
- „**`pull_request_target` w GitHub Actions** — jedna linijka w YAML-u, która kosztuje cały kod firmy."

---

## Źródła

- [Grafana GitHub Token Breach Led to Codebase Download and Extortion Attempt — The Hacker News](https://thehackernews.com/2026/05/grafana-github-token-breach-led-to.html)
- [Grafana Labs Security Breach – Hackers Access GitHub and Download Codebase — Cybersecurity News](https://cybersecuritynews.com/grafana-labs-security-breach/amp/)
- [Grafana Says It Rejected Ransom Demand After Source Code Theft — Hackread](https://hackread.com/grafana-source-code-theft-rejected-ransom-demand/)
- [Grafana Labs Refuses Ransom After GitHub CI Flaw Exposed Its Source Code — Cyber Kendra](https://www.cyberkendra.com/2026/05/grafana-labs-refuses-ransom-after.html)
- [Grafana Labs Security Breach: Hackers Stole the Entire Codebase — Hoplon InfoSec](https://hoploninfosec.com/grafana-labs-security-breach-github-codebase-hack)
- [Grafana GitHub Token Breach Leads to Codebase Theft and Extortion Attempt — Aviatrix Threat Research](https://aviatrix.ai/threat-research-center/grafana-github-token-breach-2026/)
- [Canary tokens: Learn all about the unsung heroes of security at Grafana Labs — Grafana Labs Blog](https://grafana.com/blog/2025/08/25/canary-tokens-learn-all-about-the-unsung-heroes-of-security-at-grafana-labs/)
- [Ransomware Group coinbasecartel Hits: Grafana — HookPhish](https://www.hookphish.com/blog/ransomware-group-coinbasecartel-hits-grafana/)
- [Keeping your GitHub Actions and workflows secure: Preventing pwn requests — GitHub Security Lab](https://securitylab.github.com/resources/github-actions-preventing-pwn-requests/)
