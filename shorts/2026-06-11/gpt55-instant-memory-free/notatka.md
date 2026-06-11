# ChatGPT Free dostaje personalizację z dawnych chatów + każdy widzi swoje "Memory sources"

**Data:** 2026-06-11
**Temat:** OpenAI 9 czerwca 2026 otworzył personalizację GPT-5.5 Instant dla planów Go i Free, a wszystkim użytkownikom pokazał "Memory sources" — listę zapisanych wspomnień i poprzednich chatów, które wpłynęły na konkretną odpowiedź.

---

## Kluczowe fakty i liczby

- **9 czerwca 2026** OpenAI ogłosił, że personalizacja GPT-5.5 Instant (czerpanie kontekstu z poprzednich chatów) trafia także do planów **Go i Free** — wcześniej była zarezerwowana dla Plus i Pro.
- Free i Go dostają **ograniczony zbiór** poprzednich chatów jako kontekst — Plus/Pro mają **2x większą pojemność pamięci** i dodatkowo podpięte pliki oraz integrację z Gmail.
- **Memory sources** — nowa funkcja widoczna we **wszystkich modelach ChatGPT** — pokazuje, **który zapisany "memory" lub poprzedni chat** wpłynął na daną odpowiedź. Użytkownik może to **edytować lub usunąć** ręcznie.
- W GPT-5.5 Instant i GPT-5.5 Thinking **wyłączono Canvas** — writing i coding mają być teraz obsługiwane przez **"writing blocks" i "code blocks" inline** w odpowiedzi (zmiana ogłoszona już 28 maja 2026, weszła do release notes 3 czerwca).
- Płacący użytkownicy zachowują dostęp do Canvas **tylko przez modele legacy** (GPT-4.5 do 27 czerwca 2026, o3 do 26 sierpnia 2026), potem znika definitywnie.
- GPT-5.5 Instant w testach OpenAI generuje **52,5% mniej halucynacji** niż GPT-5.3 Instant na "high-stakes" promptach (medycyna, prawo, finanse).
- Rollout startuje w **USA**, a kolejne kraje "w nadchodzących tygodniach" — bez sztywnej daty dla Europy.

## Co się zmienia dla Free vs Plus/Pro

| Funkcja | Free / Go | Plus / Pro |
|---|---|---|
| Personalizacja z poprzednich chatów | **TAK**, ograniczony zbiór | Pełna, większa pojemność |
| Memory sources (transparentność) | TAK | TAK |
| Pliki jako źródło kontekstu | NIE | TAK |
| Połączony Gmail jako kontekst | NIE | TAK |
| Pojemność pamięci | 1x | **2x** |
| Canvas | Wyłączony w 5.5 | Wyłączony w 5.5, dostępny w modelach legacy do sunsetu |
| Reklamy (UK) | TAK (od 4 czerwca) | NIE |

## Memory sources — jak to wygląda

- Po wygenerowaniu odpowiedzi użytkownik może kliknąć i zobaczyć **listę źródeł** użytych do personalizacji: zapisane wspomnienia, fragmenty starych chatów, custom instructions, pliki, połączony Gmail.
- Każde źródło można **usunąć lub poprawić** w miejscu — wcześniej był to tzw. "czarny boks", w którym model "wiedział o tobie coś", ale nie było jasne co.
- OpenAI dodaje zastrzeżenie: **"sources may not show every factor that shaped a response"** — czyli to nie jest pełen audyt, tylko orientacyjny ślad.
- Strona "Memory Summary" też **nie zawiera wszystkiego**, co ChatGPT pamięta — funkcja transparentności ma swoje twarde limity.
- Usunięcie konwersacji **nie usuwa wspomnień wyciągniętych z niej** — żeby naprawdę "wyczyścić ślad", trzeba kasować i memory entry, i sam chat. Logi usuniętych saved memories OpenAI trzyma do **30 dni**.

## Canvas → writing blocks i code blocks

- Canvas to był oddzielny side panel: pisanie i kod w wydzielonym oknie, z wersjonowaniem, podświetlaniem fragmentów do edycji, restore previous version.
- W GPT-5.5 Instant i GPT-5.5 Thinking **panel znika** — w jego miejsce wchodzą **inline writing blocks** i **code blocks** w głównym wątku rozmowy.
- Powód oficjalny: odpowiedzi mają być "bardziej naturalne, lepiej czytelne, mniej bullet-heavy". W praktyce — krótsze i mniej formalne.
- Krytyka społeczności (m.in. esej M. Ballard "The Real Loss of 5.5 is Not Canvas"): writing blocks **trudniej edytować punktowo**, brakuje wersjonowania, neurodywergentni użytkownicy tracą "external working memory".
- Konkurencja (Claude Artifacts) nadal trzyma dedykowany panel do długich tekstów i kodu — co dla części power-userów staje się argumentem do zmiany narzędzia.

## Oś czasu

| Data | Wydarzenie |
|---|---|
| 5 maja 2026 | GPT-5.5 Instant staje się domyślnym modelem ChatGPT (zastępuje GPT-5.3 Instant) |
| 28 maja 2026 | OpenAI ogłasza wyłączenie Canvas w 5.5 + writing/code blocks |
| 3 czerwca 2026 | Zmiana wchodzi do oficjalnych release notes |
| 4 czerwca 2026 | "Dreaming" memory architecture + Memory sources rusza dla Plus/Pro w USA |
| **9 czerwca 2026** | **Personalizacja + Memory sources rozszerzone na Free i Go** |
| 27 czerwca 2026 | Sunset GPT-4.5 w ChatGPT |
| 26 sierpnia 2026 | Sunset o3 w ChatGPT |

## Implikacje dla użytkownika

- Pierwszy raz **darmowy ChatGPT pamięta** kontekst między rozmowami w sposób półautomatyczny — to zmienia "ad hoc tool" w "asystenta, który cię zna".
- Memory sources to **PR-owa odpowiedź na zarzuty o "czarną skrzynkę"** i pretekst pod zbliżające się regulacje (AI Act w UE, dyskusja o data deletion w USA).
- Wyłączenie Canvas to subtelne **wpychanie userów w krótsze, bardziej konwersacyjne odpowiedzi** — co OpenAI sprzedaje jako "natural", ale czytelnie obniża koszt inference.
- Power-userzy code/writing przesuną się do modeli legacy (do sunsetu) albo do Claude.
- Reklamy na Free/Go (UK, od 4 czerwca) + personalizacja z chatów = ChatGPT zaczyna **przypominać model biznesowy Google** (darmowe + targetowane).

---

## Potencjalne kąty narracyjne do shorta

- "ChatGPT za darmo zaczyna cię pamiętać — pierwszy raz w historii"
- "Otwierasz ChatGPT i widzisz dokładnie, co o tobie wie"
- "OpenAI właśnie wyrzucił Canvas — power-userzy są wściekli"
- "Darmowy ChatGPT już nie zapomina rozmowy sprzed tygodnia"
- "52% mniej halucynacji, ale Canvas znika — dziwna wymiana"
- "Skasujesz chat, a ChatGPT i tak zapamięta — przez 30 dni"
- "OpenAI mówi 'pokazujemy wszystko', a w drobnym druku: 'nie wszystko'"

---

## Źródła

- [GPT-5.5 Instant: smarter, clearer, and more personalized — OpenAI](https://openai.com/index/gpt-5-5-instant/)
- [ChatGPT Updates by OpenAI — June 2026 — Releasebot](https://releasebot.io/updates/openai/chatgpt)
- [OpenAI gives GPT-5.5 Instant a readability upgrade while phasing out two older models — The Decoder](https://the-decoder.com/openai-gives-gpt-5-5-instant-a-readability-upgrade-while-phasing-out-two-older-models/)
- [GPT-5.5 Instant Response-Style Update: What Shorter, Canvas-Free Answers Mean — reconnAI](https://reconn-ai.com/news/gpt-5-5-instant-response-style-ai-visibility/)
- [OpenAI Updates GPT-5.5 Instant for Response Style and Quality — Thurrott](https://www.thurrott.com/a-i/openai-a-i/336775/openai-updates-gpt-5-5-instant-for-response-style-and-quality)
- [ChatGPT Memory Dreaming Update: OpenAI Rewrites Personalization Engine — TechTimes](https://www.techtimes.com/articles/317840/20260605/chatgpt-memory-dreaming-update-openai-rewrites-personalization-engine-limits-audit-trail.htm)
- [ChatGPT Update: OpenAI's "Dreaming" System Gives Plus and Pro Users Time-Aware Memory — Techjacksolutions](https://techjacksolutions.com/ai-brief/chatgpt-update-openais-dreaming-system-gives-plus-and-pro-us/)
- [The Real Loss of 5.5 is Not Canvas — M. Ballard (Substack)](https://citeline.substack.com/p/the-real-loss-of-55-is-not-canvas)
- [OpenAI upgrades GPT-5.5 readability, removes Canvas from Instant — AI Daily Post](https://aidailypost.com/news/openai-upgrades-gpt-55-readability-removes-canvas-from-instant)
