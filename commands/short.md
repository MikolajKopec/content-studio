---
description: Wygeneruj scenariusz short-form video z notatki researchowej. Interaktywny flow z polskim outputem.
argument-hint: "[data] <topic-slug> [--new]"
---

# /short — generator scenariusza short-form

Generujesz polski scenariusz short-form video (TikTok / Reels / Shorts) na podstawie istniejącej notatki researchowej w `shorts/<data>/<topic>/notatka.md`.

**Defaulty:** TikTok, max 30-40s, typ news/edukacja, audience: polskojęzyczna, lekko techniczna, dla ogółu (nie nerdzi).

## Argumenty

Komenda jest elastyczna:

- `/short <topic-slug>` — automatycznie wybiera najnowszą datę z `shorts/` dla tego topica
- `/short <data> <topic-slug>` — eksplicytna data (format YYYY-MM-DD)
- `/short` (bez argumentów) — pokaż listę dostępnych `shorts/<data>/<topic>/` z dzisiaj i wczoraj, użytkownik wybiera
- Flaga `--new` na końcu — zapisz do `scenariusz-v2.md` (nie nadpisuj istniejącego)

Przykłady:
```
/short ai-zwolnienia
/short 2026-05-14 ai-zwolnienia
/short ai-zwolnienia --new
/short
```

## Workflow (7 kroków, interaktywny)

### Krok 1 — rozpoznaj target

1. Rozparsuj argumenty:
   - Jeśli pierwszy argument wygląda jak data (`YYYY-MM-DD`) → użyj jej, drugi argument to slug
   - Jeśli pierwszy argument to slug → znajdź najnowszy `shorts/<data>/<slug>/` (sortuj malejąco po dacie)
   - Brak argumentów → wylistuj `shorts/<dzisiaj>/*` i `shorts/<wczoraj>/*`, zapytaj który
2. Zweryfikuj że `shorts/<data>/<slug>/notatka.md` istnieje. Jeśli nie → zatrzymaj się i powiedz użytkownikowi.

### Krok 2 — wczytaj kontekst

Wczytaj **tylko**:
- `shorts/<data>/<slug>/notatka.md` (główne źródło researchowe)
- `shorts/<data>/<slug>/do-czytania.md` (jeśli istnieje — z poprzednich iteracji)

NIE wczytuj `news/<data>/newsy.md` ani innych folderów chyba że użytkownik wprost poprosi.

### Krok 3 — overwrite check

Jeśli flaga `--new`: pomiń ten krok, plik wynikowy to `scenariusz-v2.md` (lub `-v3.md`, `-v4.md` jeśli już istnieje).

Jeśli `scenariusz.md` już istnieje i nie ma flagi `--new`:
- Zapytaj użytkownika: "scenariusz.md już istnieje. Co robimy: (1) nadpisz, (2) zapisz jako scenariusz-v2.md, (3) anuluj?"
- Czekaj na odpowiedź.

W ramach tej samej sesji, **po pierwszym potwierdzeniu** kolejne iteracje (Krok 7) nadpisują bez pytania.

### Krok 4 — Twój take

To jest kluczowy krok. Po wczytaniu notatki:

1. Pokaż użytkownikowi krótkie streszczenie (3-5 bulletów) co jest w notatce — żeby miał kontekst pod ręką.
2. Zapytaj: **"Przeczytaj notatkę i powiedz mi swój take na ten temat. Co myślisz? Co chciałbyś podkreślić? Co uważasz za ważne, kontrowersyjne, niedoceniane? Jaki jest Twój pogląd? To będzie baza scenariusza."**
3. Czekaj na odpowiedź użytkownika. Może być długa lub krótka — akceptuj cokolwiek napisze.
4. Zapisz dosłowną treść take'a do `shorts/<data>/<slug>/take.md` z frontmatterem:
   ```markdown
   ---
   data: YYYY-MM-DD
   topic: <slug>
   created: YYYY-MM-DD HH:MM
   ---

   # Take

   [Dosłowna treść tego co napisał użytkownik]
   ```
   Jeśli `take.md` już istnieje — zapytaj czy nadpisać czy dopisać jako nowy wpis na końcu (`## Iteracja 2 — YYYY-MM-DD HH:MM`).

### Krok 5 — 3 hook warianty

Na podstawie:
- Notatki (fakty, liczby, detale)
- Take'a użytkownika (pogląd, akcent, perspektywa)

Wygeneruj **3 warianty hooka** w różnych archetypach (z [`../skills/_shared/psychology.md`](../skills/_shared/psychology.md) → 7 archetypes: Contrarian, Proof-first, Enemy, Question, Story-entry, Direct command, Bizarre).

Format prezentacji:
```
Wariant 1 (archetyp: Contrarian) — [hook po polsku, max 8 słów]
   Dlaczego ten: [1 zdanie uzasadnienia, dlaczego pasuje do take'a]

Wariant 2 (archetyp: Proof-first) — [hook po polsku]
   Dlaczego ten: [...]

Wariant 3 (archetyp: Story-entry) — [hook po polsku]
   Dlaczego ten: [...]
```

**Zasady polskich hooków:**
- Liczby pisz słownie ("dwadzieścia pięć miliardów" zamiast "25 mld") — łatwiej się czyta na kamerze
- Max 8 słów wymówionych
- Front-load wartości — najważniejsze słowo w pierwszych 3 słowach
- Tension > informacja (nie odsłaniaj puenty)
- Pomyśl o fonetyce, nie tylko semantyce — przeczytaj w głowie z rytmem

Zapytaj użytkownika: **"Który wariant wybierasz? (1, 2, 3, lub powiedz co zmienić — wygeneruję nowe)"**

### Krok 6 — pełny scenariusz

Wywołaj skill [`short-script`](../skills/short-script/SKILL.md) z kontekstem:
- Notatka jako research source
- Take użytkownika jako "lens" / unique angle
- Wybrany hook jako otwarcie

Wygeneruj scenariusz wg **polskiego templatu** (poniżej).

Zapisz do `shorts/<data>/<slug>/scenariusz.md` (lub `scenariusz-vN.md` jeśli `--new`).

### Krok 7 — auto-generuj do-czytania.md

Z gotowego scenariusza wyciągnij **tylko tekst mówiony** (cudzysłowy w sekcji "[X-Ys] BEAT" — bez headerów, timestampów, kamery, on-screen text).

Format `do-czytania.md`:
- Każdy beat = osobny akapit
- Bez nagłówków, bez bulletów, bez tagów
- Czysty tekst, jak do TTS lub teleprompter

Zapisz do `shorts/<data>/<slug>/do-czytania.md` (nadpisz jeśli istnieje — to deterministyczna ekstrakcja).

### Krok 8 — pokaż lokalizacje + zostań w rozmowie

Po zapisie:
```
Gotowe.
- shorts/<data>/<slug>/take.md
- shorts/<data>/<slug>/scenariusz.md
- shorts/<data>/<slug>/do-czytania.md

Jakieś zmiany? (free-form — możesz powiedzieć "skróć", "inny hook", "więcej liczb", "zmień beat 3 na bardziej kontrarian", cokolwiek)
```

Czekaj na free-form feedback. Po każdej iteracji:
- Regeneruj scenariusz.md (auto-overwrite, bez pytania — to ta sama sesja)
- Auto-regeneruj do-czytania.md
- Pokaż diff lub krótkie podsumowanie zmian

---

## Polski template `scenariusz.md`

```markdown
# [Tytuł — kąt redakcyjny, nie news-headline]
Platforma: TikTok/Reels/Shorts  |  Długość: ~[Xs]  |  Typ: [news/edukacja/insight]
Data: YYYY-MM-DD

## Take (baza scenariusza)
[Skrót Twojego poglądu z take.md — 2-3 zdania. Pełna wersja w take.md]

## Hook — 3 warianty
1. "[Wariant 1]" *(wybrany)*
2. "[Wariant 2]"
3. "[Wariant 3]"

## Scenariusz (wybrany hook nr X)

**[0–Xs] HOOK**
"[Tekst mówiony — liczby słownie]"
- Kamera: [opis kadru]
- B-roll: [opis lub "brak"]
- On-screen text: [max 5-7 słów]
- Pacing: [tempo + ewentualne pauzy]
- Audio: [muzyka/SFX lub "brak"]

**[X–Ys] KONTEKST (BUT/THEREFORE)**
"[Tekst mówiony]"
- Kamera: [...]
- B-roll: [...]
- On-screen text: [...]
- Pacing: [...]

[... kolejne beaty z odpowiednimi etykietami: SEDNO, MECHANIZM, REFRAME, LAST DAB, HAK KOMENTARZOWY ...]

## Framework
[Nazwa frameworka z frameworks.md + jak zaadaptowany — 2-4 zdania]

## Notatki produkcyjne
- Kluczowe momenty wizualne: [lista z timestampami]
- Muzyka: [styl/mood lub "brak"]
- Loop: [jak końcówka łączy się z hookiem]
- CTA: [typ + uzasadnienie — komentarz/save/follow]
- Pauzy: [konkretne sekundy + dlaczego tam pauza]

## Content Lego testowany
[Co iteruje ten scenariusz vs poprzednie — 1-2 zdania]

## STEPPS Score: [X/6]
- Social Currency: [tak / częściowo / nie] — [krótkie uzasadnienie]
- Trigger: [...]
- Emotion: [...]
- Public: [...]
- Practical Value: [...]
- Story: [...]

## Weryfikacja długości
Słowa mówione: ~[N]. Tempo: ~2,4 słowa/s (naturalne polskie tempo). Szacowany czas: ~[Xs]. Hard max 40s: [zachowany / przekroczony o Xs].

## Źródło
Notatka: `shorts/[data]/[slug]/notatka.md`
Take: `shorts/[data]/[slug]/take.md`
```

---

## Reguły jakości — to MA być w każdym scenariuszu

**Liczby:** mówione słownie w hooku i kluczowych beatach. Cyfry tylko w `On-screen text`.

**But/Therefore:** każde przejście między beatami musi być (BUT) lub (THEREFORE). NIGDY (AND THEN). Etykiety w nagłówku beatu w nawiasach.

**Last Dab:** ostatni beat (przed CTA) ma być najsilniejszy — reframe, kontrarian twist, lub gra słów. Musi się łączyć z hookiem (loop).

**Pauzy:** dla polskiego tempa wskazane są wyraźne pauzy w pacingu — minimum 1, optymalnie 2-3 w 30-40s scenariuszu. Zaznacz je explicite ("pauza po słowie X").

**CTA:** preferuj komentarzowy (pytanie do widza) nad follow/save — chyba że take wyraźnie sugeruje inaczej.

**Tempo:** ~2,4 słowa/s dla polskiego (test: 90 słów ≈ 38s). Zawsze weryfikuj w sekcji Weryfikacja długości.

**Audience check:** czy ktoś nie-techniczny zrozumie hook i pierwszy beat? Jeśli nie — uprość terminologię ("LLM" → "model AI", "compute" → "moc obliczeniowa").

**Format pliku:** UTF-8, polskie znaki, markdown, bez emoji w treści scenariusza (chyba że take użytkownika ich wymaga).
