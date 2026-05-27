# Skrót dnia — 27 maja 2026

5 newsów researched (spokojny dzień). Cherry-pick poniżej.

---

## 1. Anthropic wypuszcza preview Claude Mythos — model znajdujący zero-daye

📂 [`claude-mythos-preview/notatka.md`](./claude-mythos-preview/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Anthropic oficjalnie potwierdził Claude Mythos — model, który w pierwszym miesiącu Project Glasswing znalazł ponad 10 000 krytycznych podatności, w tym 27-letni bug w OpenBSD i 271 zero-dayów w Firefoxie 150. Mythos miażdży Opus 4.6 (181 vs 2 działających exploitów na Firefox JS engine), ale Anthropic sam przyznaje, że nie ma jeszcze safeguardów wystarczająco silnych, by zapobiec misuse.

**Top hooks:**
- "Anthropic właśnie potwierdził model, który w miesiąc znalazł **10 tysięcy** krytycznych podatności — i celowo trzymał go w bunkrze."
- "Model Claude Mythos znalazł **27-letni** bug w OpenBSD — systemie, który całe życie reklamuje się jako najbezpieczniejszy na świecie."
- "Opus 4.6 pisał exploity z **2 sukcesami na kilkaset prób**. Mythos? **181**. To nie jest update, to inna liga."

---

## 2. Xiaomi 17T i 17T Pro — globalny debiut w Wiedniu już jutro (28.05)

📂 [`xiaomi-17t-launch/notatka.md`](./xiaomi-17t-launch/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** Xiaomi 17T Pro debiutuje 28.05 o 15:00 CEST w Wiedniu za 999 € / 4249 zł z baterią 7000 mAh, ładowaniem 100 W kabel + 50 W bezprzewodowo, Dimensity 9500 i 6,83" 144 Hz — bije Samsunga Galaxy S26 Ultra na baterii o 40% i jest 300 € tańszy. Standardowy 17T startuje od 749 € / 3199 zł z baterią 6500 mAh.

**Top hooks:**
- "7000 mAh za 4249 zł vs 5000 mAh za 6500 zł" — bezpośrednie porównanie pojemności baterii i ceny: Xiaomi 17T Pro vs Samsung Galaxy S26 Ultra. Hook: "Xiaomi daje +40% baterii i jest 2200 zł tańszy. Samsung się wkur***".
- "144 Hz, 100 W, 7000 mAh — i to nawet nie jest flagowiec" — pokazanie, że "sub-flagman" T-series ma już parametry, których nie ma żaden topowy Samsung ani iPhone. Hook: "Najtańszy telefon, który bije S26 Ultra w trzech kategoriach na raz".
- "iPhone 17 Pro Max ma 4823 mAh. Xiaomi 17T Pro 7000. Pomyślcie." — czysta matematyka baterii. Hook na pierwsze 2 sekundy: ekran iPhone'a vs ekran 17T Pro, na żywo procenty baterii.

---

## 3. Meta po cichu wypuszcza Forum — wyodrębniony klon Reddita zbudowany z Facebook Groups

📂 [`meta-forum-app/notatka.md`](./meta-forum-app/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Meta 22 maja 2026 bez żadnego ogłoszenia wrzuciła do App Store aplikację Forum — wyodrębnione z Facebooka grupy w stylu Reddita, z AI-funkcją Ask agregującą odpowiedzi z wielu grup. Dostępne tylko na iOS w USA; akcje Reddita w dniu wykrycia apki spadły o ponad 5%.

**Top hooks:**
- Meta właśnie sklonowała Reddita i nikt o tym nie powiedział
- 50 aplikacji Zuckerberga — Forum to numer 2
- Cmentarz drugich aplikacji Meta

---

## 4. GitHub uruchamia code coverage w pull requestach (public preview)

📂 [`github-coverage-pr/notatka.md`](./github-coverage-pr/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** GitHub uruchomił natywne wyświetlanie code coverage w PR-ach jako public preview dla GitHub Code Quality (Team + Enterprise Cloud) — Cobertura upload przez nową akcję `upload-code-coverage` z permissionem `code-quality:write`, bez potrzeby Codecova czy SonarCloud. To bezpośredni cios w Codecov (przejęty przez Sentry w 2022), który zarabiał na braku natywnego coverage.

**Top hooks:**
- "Codecov ma problem — GitHub właśnie wbudował to, na czym oni zarabiali."
- "3 status checki w PR-ze? Wywal je. GitHub zrobił coverage natywnie."
- "GitHub Code Quality vs SonarCloud — kto wygrywa w 2026?"

---

## 5. Apple seeded iOS 26.6 beta 1 — wcześniej niż zwykle, ale bez nowych funkcji

📂 [`ios-26-6-beta1/notatka.md`](./ios-26-6-beta1/notatka.md)
**Potencjał:** 💧 niski

**TL;DR:** Apple wypuścił 26 maja 2026 pierwsze developerskie bety iOS/iPadOS/watchOS/tvOS/macOS 26.6 (build 23G5028e) — dwa tygodnie po iOS 26.5 i 12 dni przed WWDC, z zerem oficjalnych release notes, ale z cichym dorzuceniem security frameworka Maps BlastDoor i 183 nowych plików systemowych. Beta x.6 przed WWDC nie pojawiała się od 2 lat — sygnał, że Apple pakuje cykl iOS 26, by w pełni skupić się na iOS 27 z przeprojektowanym Siri.

**Top hooks:**
- Apple śpieszy się jakby coś chowali — pierwsza beta x.6 PRZED WWDC od 2 lat, nowy security framework Maps BlastDoor, 183 nowe pliki systemowe. Czy Apple wie o exploicie, którego my nie znamy?
- Ostatni nudny iOS przed katastrofą wizualną iOS 27 — 26.6 to dosłownie ZERO funkcji, Apple sam pisze „no new release notes", ale za 12 dni dostaniemy Siri redesign, nowy Dynamic Island i dedykowaną appkę Siri.
- Maps BlastDoor — Apple właśnie cicho dorzucił do iOS pancerz, którego nie chwalą się ogłaszać. Analogia do iMessage BlastDoor z iOS 14, które zatrzymało Pegasus. Czy Apple Maps stało się celem zero-click ataków?

---
