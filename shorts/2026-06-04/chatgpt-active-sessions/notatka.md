# ChatGPT dostaje "Active sessions" — można wreszcie wylogować się ze wszystkich urządzeń

**Data:** 2026-06-04
**Temat:** OpenAI **2 czerwca 2026** dodało do ChatGPT panel **Active sessions** w Settings > Security, pozwalający przeglądać i ubijać aktywne sesje na urządzeniach — funkcję, którą Google, Microsoft i Apple mają od lat.

---

## Kluczowe fakty i liczby

- **2 czerwca 2026** — OpenAI włącza **Active sessions** w ChatGPT, Codex i API Platform; wcześniej jedyną opcją był prymitywny "Log out of all devices" bez listy urządzeń.
- Lokalizacja w UI: **Settings > Security > Active sessions** — każda sesja pokazuje **6 atrybutów**: urządzenie, aplikacja, przybliżona lokalizacja, czas logowania, status "trusted device" oraz znacznik "current session".
- Globalny logout ma propagację do **30 minut** — czyli **48x szybciej** niż w Microsoft Account ("up to 24 hours" w "Sign out everywhere").
- Funkcja **NIE działa** dla kont podpiętych do organizacyjnego **SSO (SAML lub OIDC)** — czyli ironicznie dla części Team i całego Enterprise z federacją tożsamości panel jest pusty/niedostępny.
- Dopełnia kwietniowy (**30 kwietnia 2026**) launch **Advanced Account Security** z passkeys i hardware keys; OpenAI sprzedaje wtedy z Yubico co-brandowane **YubiKey C NFC** i **YubiKey C Nano** w cenie **$68 za dwupak** (poniżej połowy retail).
- Powód biznesowy: w 2025 LayerX namierzył **16 złośliwych rozszerzeń Chrome** kradnących session tokeny ChatGPT — atak omijał MFA, bo cookie pozostawało ważne przez **~30 dni**.
- Feature request na forum OpenAI Community wisiał od **marca 2025** — użytkownicy skarżyli się, że Google i Microsoft mają to "od zawsze".

## Jak to działa — krok po kroku

1. Logujesz się do ChatGPT na **chatgpt.com** (web działa pewnie; mobile w trakcie rolloutu).
2. Klikasz avatar (lewy dolny róg) > **Settings**.
3. Wchodzisz w zakładkę **Security**.
4. Wybierasz **Active sessions** — widzisz listę: np. "Chrome on macOS, Warszawa, 3 czerwca 14:22, current session", "ChatGPT iOS app, Kraków, 1 czerwca, trusted device".
5. Przy konkretnej sesji klikasz **Log out** — sesja ubita natychmiast (z reguły < 5 min propagacji).
6. Albo na dole klikasz **Log out of all sessions** > confirm w modalu **"Log out of all devices"** — wylogowanie wszystkich, w tym bieżącej, w **do 30 minut**.
7. Sesje, które właśnie zostały zakończone (recently signed-out), znikają z listy — nie ma historii.

## Co obejmuje, czego nie

**Obejmuje:**
- Sesje ChatGPT web (chatgpt.com, każda przeglądarka).
- Aplikacje natywne ChatGPT (iOS, Android, macOS, Windows).
- Sesje **Codex** (web i app).
- Sesje **API Platform** (platform.openai.com — czyli dashboardowe sesje, NIE same klucze API).
- Wszystkie typy kont konsumenckich i Business workspaces.

**NIE obejmuje:**
- **Codex CLI** — tokeny z `codex login` żyją własnym życiem.
- **Sign in with ChatGPT** dla aplikacji third-party (np. logowanie przez ChatGPT do Vercel, Figmy itd.).
- **Connected apps / integracji** (np. Gmail connector, Google Drive connector — masz osobny panel).
- **Kluczy API** (sk-...) — to są bearer tokeny, żyją do ręcznej rotacji w platform.openai.com/api-keys.
- Kont z organizacyjnym **SSO (SAML, OIDC)** — nawet jeśli właśnie zalogowałeś się hasłem osobistym, panel jest wyszarzony.
- **Sesji wcześniej zakończonych** — brak audit logu po stronie usera (admini Enterprise mają to w Admin/Audit Logs API).

## Porównanie z konkurencją

| Funkcja | ChatGPT (cze 2026) | Google Account | Microsoft Account | Apple ID |
|---|---|---|---|---|
| Lista aktywnych sesji | tak, z 6 atrybutami | tak ("Manage all devices") | częściowo (lista urządzeń) | tak (Settings > [name] > Devices) |
| Przybliżona lokalizacja | tak | tak | tak | nie pokazuje lokalizacji |
| Per-sesja logout | tak | tak | nie (per-device, nie per-sesja) | tak ("Remove from Account") |
| Global "sign out everywhere" | tak, do **30 min** | tak | tak, do **24 h** | tak (przez "Change Password") |
| Status "trusted device" | tak | tak | tak | tak (2FA codes) |
| Obejmuje apki third-party | nie | tak (OAuth grants) | tak | nie |
| Działa z SSO/SAML | **nie** | n/d | n/d | n/d |
| Hardware keys (passkeys + FIDO2) | tak (Yubico od kwi 2026) | tak | tak | tak |
| Powiadomienia o nowym logowaniu | częściowo (Advanced Account Security) | tak | tak | tak |

**Wniosek:** ChatGPT dogonił baseline, ale wciąż brakuje mu logu zamkniętych sesji (Google to ma) i pełnego pokrycia third-party (Apple to ma w "Apps using Apple ID").

## Implikacje praktyczne

- **Dla każdego usera ChatGPT Plus/Pro** — pierwsze, co zrobić po update'cie: wejść w Active sessions i wybić wszystko, co nie jest aktualnym laptopem/telefonem. Statystycznie znajdziesz tam zalogowaną sesję z przeglądarki znajomego sprzed 8 miesięcy.
- **Dla zagrożonych session hijackingiem** (publiczne komputery, podejrzane rozszerzenia Chrome) — kombinacja **Advanced Account Security + passkeys + Active sessions** to obecnie minimum higieny. Sam passkey nie pomoże, jeśli cookie zostanie skradzione — Active sessions to dopiero panel reagowania.
- **Dla developerów Codex CLI** — UWAGA: tokeny CLI **nie są** w Active sessions. Jeśli ktoś ukradnie ci `~/.codex/auth.json`, "Log out all" w ChatGPT go nie ubije. Trzeba rotować osobno.
- **Dla adminów Team/Enterprise z SSO** — funkcja jest dla was praktycznie martwa. Polegacie na IdP (Okta, Entra) do session revocation, ChatGPT po prostu redirectuje wszystko do dostawcy SSO.
- **Dla "casualnych" userów na free tier** — funkcja działa też dla was, ale realnie najczęstszy use case to "zalogowałem się u kuzyna na święta i zapomniałem wylogować".
- **Dla compliance / SOC 2** — to wypełnia gap, który audytorzy zaznaczali od miesięcy. ChatGPT Enterprise dostaje wreszcie "session management evidence" jak każdy SaaS dorosłego rozmiaru.

---

## Potencjalne kąty narracyjne do shorta

1. **"OpenAI dopiero w czerwcu 2026 dodaje funkcję, którą Google ma od 2013"** — kąt: jak duży ChatGPT urósł, zanim ktokolwiek w OpenAI pomyślał o podstawach session management. Bazowa higiena bezpieczeństwa była przez 3 lata gorsza niż w bezpłatnym Gmailu.
2. **"Twój ChatGPT prawdopodobnie jest zalogowany na 5 urządzeniach, o których zapomniałeś"** — kąt how-to: wejdź teraz w Settings > Security > Active sessions, podpowiedź co tam zobaczysz. Hak: 95% widzów znajdzie tam minimum jedną "zombie sesję".
3. **"Passkey + YubiKey nie uchronią cię przed kradzieżą sesji — oto czego brakowało"** — kąt edukacyjny: tłumaczysz session hijacking przez 16 złośliwych rozszerzeń Chrome (LayerX 2025) i pokazujesz, dlaczego dopiero Active sessions zamyka tę dziurę.
4. **"30 minut vs 24 godziny — porównanie 'log out everywhere' w ChatGPT, Microsoft, Google i Apple"** — kąt benchmarkowy: tabelka z propagacją globalnego wylogowania, mała wojna "który Big Tech reaguje najszybciej na compromised account".
5. **"Pułapka dla Enterprise: jeśli masz SSO, panel Active sessions w ChatGPT jest dla ciebie pusty"** — kąt niszowy dla IT/CISO: dlaczego ta funkcja praktycznie nie istnieje dla firm na SAML, i dlaczego polegasz na Okcie/Entrze.
6. **"Codex CLI nadal cię zdradzi: jednej rzeczy nowe Active sessions NIE ubije"** — kąt deweloperski: pokazujesz, że tokeny w `~/.codex/auth.json` żyją własnym życiem, plus how-to rotacji.
7. **"Od marca 2025 do czerwca 2026 — 15 miesięcy, ile zajęło OpenAI dodanie listy zalogowanych urządzeń"** — kąt o priorytetach product team: feature request, krytyczne luki w bezpieczeństwie, dopiero teraz reakcja. Co to mówi o roadmapie security w hiper-scale AI.

---

## Źródła

- [Managing active sessions in ChatGPT — OpenAI Help Center](https://help.openai.com/en/articles/20001257-managing-active-sessions-in-chatgpt) — dokumentacja primary, UI flow, lista atrybutów sesji, limity SSO.
- [ChatGPT Updates by OpenAI — June 2026 (Releasebot)](https://releasebot.io/updates/openai/chatgpt) — agregator release notes, potwierdzenie daty **2 czerwca 2026**.
- [OpenAI Rolls Out Advanced Security for ChatGPT Accounts — SecurityWeek](https://www.securityweek.com/openai-rolls-out-advanced-security-for-chatgpt-accounts/) — kontekst kwietniowego launchu passkeys + Yubico, target users.
- [OpenAI and Yubico Partner to Bring Custom Phishing-Resistant YubiKeys — Yubico press release](https://www.yubico.com/press-releases/openai-and-yubico-partner-to-bring-custom-phishing-resistant-yubikeys-to-openai-users/) — specyfikacja YubiKey C NFC / C Nano, cena $68 / dwupak.
- [OpenAI announces new advanced security for ChatGPT — TechCrunch (30 kwi 2026)](https://techcrunch.com/2026/04/30/openai-announces-new-advanced-security-for-chatgpt-accounts-including-a-partnership-with-yubico/) — daty kwietniowego launchu, deadline 1 czerwca dla Trusted Access for Cyber.
- [Feature Request: Ability to Manage Active Sessions & Remote Logout — OpenAI Developer Community](https://community.openai.com/t/feature-request-ability-to-manage-active-sessions-remote-logout/1142500) — historia żądania feature'a od marca 2025, opis braku.
- [Researchers find 16 browser extensions stealing ChatGPT session tokens — SC Media](https://www.scworld.com/news/researchers-find-16-browser-extensions-stealing-chatgpt-session-tokens) — kontekst zagrożenia session hijackingiem, raport LayerX.
- [How to sign out of your Microsoft account everywhere — Microsoft Support](https://support.microsoft.com/en-us/accounts-billing/manage/how-to-sign-out-of-your-microsoft-account-everywhere) — porównanie: Microsoft "up to 24 hours".
- [See devices with account access — Google Account Help](https://support.google.com/accounts/answer/3067630) — porównanie Google "Manage all devices".
- [Check your Apple Account device list — Apple Support](https://support.apple.com/en-us/102649) — porównanie Apple ID Devices.
