# 6. Microsoft Patch Tuesday: rekord wszech czasów — 200 luk, 6 zero-day

**Data:** 2026-06-11
**Temat:** Microsoft 10 czerwca załatał 200 podatności w jednym Patch Tuesday — rekord programu, w tym 6 zero-day (1 już aktywnie eksploatowany w Exchange Server).

---

## Kluczowe fakty i liczby

- **200 luk bezpieczeństwa** załatanych w jednym wydaniu — **największe Patch Tuesday w historii programu**, poprzedni rekord to **167 CVE** (październik 2025).
- **33 podatności oznaczone jako Critical**, 166 jako Important, 1 jako Moderate.
- **28 z 33 critical** to **remote code execution** — wykonanie kodu bez interakcji ofiary; pozostałe 4 to eskalacja uprawnień, 1 to information disclosure.
- **6 zero-day**: **5 publicznie ujawnionych przed łatką**, **1 aktywnie wykorzystywany w atakach**.
- **Aktywnie eksploatowany**: **CVE-2026-42897** w Exchange Server (XSS przez spreparowanego maila w Outlook Web Access) — **CISA dodała do KEV** z deadlinem **1 lipca 2026** dla agencji federalnych.
- Microsoft łata problem **on-premises** (Exchange Server 2016, 2019, Subscription Edition); Microsoft 365 / Exchange Online **nie jest podatny**.
- Według analityków **ponad 40% poprawek pochodzi z AI-assisted discovery** (red teamy, fuzzery, Security Copilot, OpenAI Codex).
- **Wzrost z 167 do 200 CVE** to skok o **~20%** — w skali roku liczba luk rośnie znacznie szybciej niż w poprzednich latach.

## Breakdown krytyczności

| Kategoria | Liczba |
|---|---|
| Critical | **33** (z czego **28 RCE**) |
| Important | **166** |
| Moderate | **1** |
| **Razem** | **200** |

Dodatkowo: 65 elevation of privilege, 55 RCE łącznie ze wszystkich poziomów, 30 information disclosure, 27 spoofing, 19 security feature bypass, 7 denial of service.

## Zero-daye — szczegóły

**1. CVE-2026-42897 — Exchange Server (AKTYWNIE EKSPLOATOWANY)**
- XSS przez specjalnie spreparowanego maila otwartego w Outlook Web Access.
- **CVSS 8.1**, wykorzystywany **od kilku tygodni przed łatką**.
- Microsoft wcześniej wdrożył mitygację przez **Exchange Emergency Mitigation Service** (włączoną domyślnie).

**2. CVE-2026-49160 — "HTTP/2 Bomb"**
- Denial of service na **Windows IIS** i innych usługach opartych o HTTP.sys.
- Atakujący wysyła **bardzo małe ilości danych w ramkach HTTP/2**, które zmuszają serwer do alokacji **nieproporcjonalnie dużej ilości pamięci**.
- Mitygacja: nowy klucz rejestru **MaxHeadersCount**.

**3. CVE-2026-45586 — Windows CTFMON ("GreenPlasma")**
- Eskalacja uprawnień lokalnie do **SYSTEM** w Collaborative Translation Framework (ctfmon.exe).
- **Improper link resolution before file access** (path traversal w resolverze linków).
- Ujawnione przez badacza **Nightmare Eclipse**.

**4. CVE-2026-50507 — BitLocker bypass ("bitskrieg")**
- Obejście szyfrowania dysku BitLocker, ocena **"Exploitation More Likely"**.

**5. CVE-2026-45585 — BitLocker bypass ("YellowKey")**
- Drugi niezależny bypass BitLocker w tym samym wydaniu.

**6. CVE-2020-17103 — Cloud Files driver ("Mini-Plasma")**
- Stara luka z 2020 dopiero teraz dostała oficjalny zero-day status.

## LLM-driven discovery

- Microsoft oficjalnie potwierdził: **"both its engineers and the security community are increasingly using artificial intelligence tools to find bugs"**.
- **CVE-2026-49160 (HTTP/2 Bomb)** został wykryty przez **OpenAI Codex** podczas zautomatyzowanego audytu.
- Analitycy wskazują skok z 167 do 200 CVE jako efekt **masowego użycia LLM-tooling** do audytu kodu — zarówno przez Microsoft, jak i niezależnych badaczy.
- Konsekwencja: Patch Tuesday przestaje być **comiesięcznym eventem**, robi się **continuous risk management** — łatki out-of-band, mitygacje, rozproszone CVE.

## Implikacje dla użytkownika i administratorów

- **Priorytet #1**: Exchange Server on-premises (CVE-2026-42897) — łatać natychmiast, ataki trwają.
- **Priorytet #2**: serwery IIS — wdrożyć MaxHeadersCount i łatkę HTTP/2 Bomb (publiczny exploit istnieje).
- **Priorytet #3**: BitLocker — dwa niezależne bypassy w tym samym miesiącu, dyski zaszyfrowane traktować jako potencjalnie odczytywalne dla atakującego z dostępem fizycznym.
- Użytkownicy domowi: zwykły Windows Update wystarczy, ale **patch może mieć rozmiar rekordowy** (200 CVE = długi reboot).
- **Trend**: rosnąca liczba zero-day publicznie ujawnianych przed łatką (5/6 w tym miesiącu) oznacza, że **okno między ujawnieniem a załataniem skraca się dramatycznie**.

---

## Potencjalne kąty narracyjne do shorta

- "Microsoft załatał 200 dziur w jeden dzień — rekord w historii Windowsa"
- "Sześć zero-day w jednym Patch Tuesday — jeden już wykorzystywany przez hakerów"
- "OpenAI Codex znalazł lukę w Windowsie, której Microsoft nie widział"
- "28 z 33 krytycznych luk pozwala wykonać kod zdalnie — bez kliknięcia ofiary"
- "Wystarczy mail w Outlooku, żeby haker przejął twój Exchange — Microsoft łata to dopiero teraz"
- "AI znajduje dziury w Windowsie szybciej niż Microsoft jest w stanie je łatać"
- "Patch Tuesday przestaje istnieć — łaty wychodzą teraz codziennie"

---

## Źródła

- [Microsoft June 2026 Patch Tuesday fixes 6 zero-days, 200 flaws — BleepingComputer](https://www.bleepingcomputer.com/news/microsoft/microsoft-june-2026-patch-tuesday-fixes-6-zero-days-200-flaws/)
- [June 2026 Patch Tuesday Fixes 200 Microsoft Vulnerabilities — The Cyber Express](https://thecyberexpress.com/june-2026-patch-tuesday-200-microsoft/)
- [Microsoft's Record-Breaking Patch Tuesday Fixes Over 200 Security Flaws — TechRepublic](https://www.techrepublic.com/article/news-microsoft-june-patch-tuesday-record-breaking/)
- [A Record-Breaking Patch Tuesday for June 2026 — Krebs on Security](https://krebsonsecurity.com/2026/06/a-record-breaking-patch-tuesday-for-june-2026/)
- [Microsoft's June 2026 Patch Tuesday Addresses 198 CVEs — Tenable](https://www.tenable.com/blog/microsofts-june-2026-patch-tuesday-addresses-198-cves-cve-2026-49160-cve-2026-50507)
- [June 2026 Patch Tuesday: Record 200 Fixes and the Shift to Continuous Risk Management — Windows News](https://windowsnews.ai/article/june-2026-patch-tuesday-record-200-fixes-and-the-shift-to-continuous-risk-management.425014)
- [CVE-2026-42897: Microsoft confirms active exploitation of Exchange Server zero-day — Security Affairs](https://securityaffairs.com/192204/security/cve-2026-42897-microsoft-confirms-active-exploitation-of-exchange-server-zero-day.html)
- [Unpatched Microsoft Exchange Server vulnerability exploited (CVE-2026-42897) — Help Net Security](https://www.helpnetsecurity.com/2026/05/15/exchange-server-cve-2026-42897-exploited/)
