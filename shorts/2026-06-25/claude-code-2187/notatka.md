# Claude Code 2.1.187: blokada dostępu do credentiali w sandboxie

**Data:** 2026-06-25
**Temat:** Claude Code 2.1.187 dodaje dedykowane ustawienie blokujące sandboxowanym poleceniom dostęp do plików z credentialami i zmiennych środowiskowych z sekretami — odpowiedź na realne luki bezpieczeństwa ujawnione wcześniej w 2026 r.

---

## Kluczowe fakty i liczby

- Wersja **2.1.187** wydana **23 czerwca 2026** przez Anthropic (GitHub: @ashwin-ant)
- Nowe ustawienie `sandbox.credentials` blokuje odczyt plików z credentialami (np. `~/.aws/credentials`, `~/.ssh`) i usuwa zmienne środowiskowe z sekretami (np. `GITHUB_TOKEN`, `NPM_TOKEN`) przed każdym sandboxowanym poleceniem
- Wcześniej (przed v2.1.90) sandbox domyślnie pozwalał sandboxowanym poleceniom czytać **cały system plików** — w tym `~/.aws/credentials`, `~/.ssh/` i zmienne środowiskowe z tokenami; od v2.1.90 można to blokować ręcznie przez `denyRead`, a od v2.1.187 mamy dedykowany, semantycznie wyraźny blok `credentials`
- Luka SOCKS5 null-byte injection (łatana cicho w v2.1.90 w kwietniu 2026) była aktywna przez **~5,5 miesiąca** w **~130 wersjach** (v2.0.24–v2.1.89) i umożliwiała eksfiltrację credentiali przez sieć
- Raport GitGuardian (State of Secrets Sprawl 2026): commity wspomagane przez Claude Code wyciekały sekrety w **3,2%** przypadków — vs. **1,5%** średnia dla wszystkich publicznych commitów na GitHubie (ponad **2x** więcej)
- Nowe ograniczenia modeli konfigurowane przez organizację (`availableModels` w managed settings) obejmują: picker `/model`, flagę `--model`, zmienną `ANTHROPIC_MODEL` — z komunikatem "restricted by your organization's settings"
- Wersja **2.1.187** zawiera łącznie **21 zmian CLI**, w tym poprawki dla remote MCP (timeouty po **5 minutach** zamiast nieskończonego blokowania), Windows Terminal i obsługi sesji
- Ustawienie `sandbox.credentials` działa wyłącznie od v2.1.187 — starsze wersje muszą używać `filesystem.denyRead` ręcznie

## Implikacje dla użytkownika / rynku

**Dla deweloperów-indywidualistów:** zmiana jest przede wszystkim porządkująca — zamiast ręcznie wpisywać ścieżki do `denyRead`, masz dedykowany blok `credentials` który grupuje pliki i zmienne razem. Semantycznie czytelniejsze, ale efekt ten sam co wcześniejsze `denyRead`.

**Dla enterprise:** `sandbox.credentials` to właśnie to, czego brakowało do sensownego wdrożenia sandboxingu w środowiskach firmowych. Teraz można przez managed settings wymusić blokadę AWS/SSH/GitHub credentiali na całej flocie deweloperów jedną zmianą konfiguracji — bez ryzyka, że ktoś zapomni dodać ścieżkę do `denyRead`. Ważny kontekst: Anthropic wciąż nie ma wbudowanej listy domyślnych credentiali do blokowania — trzeba je wypisać explicite.

**Ograniczenia nadal istnieją:** sandbox to defense-in-depth, nie twarda granica bezpieczeństwa. `sandbox.credentials` nie chroni przed atakami przez Unix sockety, domain fronting przez dozwolone hosty ani przed poleceniami wykluczonymi z sandbox (`excludedCommands`). Firma Adversa AI udokumentowała bypass reguł deny przez mechanizm oszczędzania tokenów — nie jest to problem rozwiązany przez tę aktualizację.

---

## Potencjalne kąty narracyjne do shorta

**1. "Przez 5 miesięcy i 130 wersji Claude Code mógł wysłać twoje hasła AWS gdziekolwiek chciał — bez twojej wiedzy"**
Luka SOCKS5 null-byte z 2025/2026 r., cicho naprawiona, zero komunikatu od Anthropic. Kontekst bezpieczeństwa dla tego, dlaczego sandbox.credentials w ogóle istnieje.

**2. "Commity z pomocą Claude Code wyciekają sekrety 2 razy częściej niż średnia na GitHubie"**
Konkretna liczba z raportu GitGuardian 2026 — 3,2% vs 1,5%. Nie chodzi o to że Claude jest głupi, chodzi o to że sandbox domyślnie widzi twoje credentiale.

**3. "Dopiero w 2026 roku asystent AI do kodowania dostał ustawienie żeby nie czytać twoich haseł"**
Kontrast: narzędzie do pisania kodu, które przez lata miało dostęp do ~/.aws/credentials i tokenów GitHub w środowisku pracy — i nikt o tym głośno nie mówił.

**4. "Twoja firma może teraz zablokować Claudowi dostęp do credentiali całego działu jedną linią JSONa"**
Kąt enterprise/praktyczny — managed settings + sandbox.credentials = jedno miejsce kontroli dla wszystkich deweloperów naraz.

**5. "Claude Code 2.1.187: 21 zmian, z czego jedna może ochronić cię przed wyciekiem API keys"**
Kontrastuje objętość aktualizacji z tym co naprawdę istotne — reszta to bugfixy (remote MCP timeout, Windows Terminal), ale sandbox.credentials to realna zmiana bezpieczeństwa.

**6. "Anthropic wydało narzędzie blokujące dostęp do credentiali — ale nie ma wbudowanej listy co blokować"**
Hak kontrariański — ustawienie istnieje, ale domyślna lista jest pusta. Musisz sam wiedzieć, że ~/.aws/credentials istnieje i je wypisać. Ile osób to zrobi?

**7. "Sandbox w Claude Code chronił przed pisaniem plików — ale czytał twoje hasła AWS bez ograniczeń"**
Asymetria bezpieczeństwa sandbox: domyślny zapis tylko do working directory, domyślny odczyt — cały system plików. Dopiero v2.1.187 to naprawia semantycznie.

---

## Źródła

- [Release v2.1.187 · anthropics/claude-code (GitHub)](https://github.com/anthropics/claude-code/releases/tag/v2.1.187) — oficjalne release notes
- [Configure the sandboxed Bash tool — Claude Code Docs](https://code.claude.com/docs/en/sandboxing) — pełna dokumentacja sandbox.credentials z przykładami
- [[DOCS] Sandbox docs omit sandbox.credentials setting — Issue #70440](https://github.com/anthropics/claude-code/issues/70440) — bug report ujawniający brak dokumentacji nowej funkcji
- [Claude Code's Network Sandbox Vulnerability Exposes User Credentials — CyberPress](https://cyberpress.org/claude-code-sandbox-flaw/) — analiza luki SOCKS5 i historii podatności sandboxu
- [Claude Code Changelog: All Release Notes (2026) — claudefa.st](https://claudefa.st/blog/guide/changelog) — zbiorczy changelog
- [Claude Code Updates by Anthropic — June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code) — zestawienie aktualizacji czerwiec 2026
- [Critical Claude Code vulnerability: Deny rules silently bypassed — Adversa AI](https://adversa.ai/blog/claude-code-security-bypass-deny-rules-disabled/) — kontekst dalszych problemów z bezpieczeństwem sandbox
