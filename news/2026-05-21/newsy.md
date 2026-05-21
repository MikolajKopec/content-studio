# Newsy technologiczne — 21 maja 2026

> Dzień zdominowany przez Google I/O 2026 (19 maja). Większość newsów pochodzi z konsekwencji konferencji, plus jedna ciekawa decyzja Apple.

---

## 1. Gemini 3.5 Flash wystartował — bije 3.1 Pro w benchmarkach, kosztuje 40% mniej

**Źródło:** Simon Willison (19 maja 2026), Google Developers Blog (19 maja), llm-stats.com (19 maja), R&D World (19 maja)

Google ogłosił Gemini 3.5 Flash na I/O 19 maja jako pierwszy model rodziny 3.5 — i od razu zrobił z niego nowy domyślny model w wyszukiwarce AI Mode dla wszystkich na świecie. Model ma kontekst **1M tokenów**, wejście multimodalne (tekst, obraz, audio, video, PDF) i wynik **76,2% na Terminal-Bench 2.1** — w okolicach flagowca Anthropica, ale **4× szybciej**.

Cena API: **$1.50 za milion tokenów wejścia, $9.00 za wyjście** (cache: $0.15/M, czyli 90% taniej). To **3× drożej** od Gemini 3 Flash Preview ($0.50/$3.00) i **6× drożej** od 3.1 Flash-Lite, ale **~40% taniej** od Gemini 3.1 Pro ($2.00/$12.00). Model jest GA tego samego dnia w Gemini API, AI Studio, Google Antigravity, Vertex AI, aplikacji Gemini i Search AI Mode.

> **Potencjał contentowy:** wysoki — porównanie cen z Claudem i GPT-5.5 + benchmark szybkości to klasyczny temat dla dev-audience.

---

## 2. Antigravity 2.0 — Google buduje agentic IDE i zabija Gemini CLI

**Źródło:** TechCrunch (19 maja 2026), MarkTechPost (19 maja), 9to5Google (19 maja), Google Developers Blog (19 maja)

Google relauncuje Antigravity jako **samodzielną aplikację desktopową** z redesignem, plus **Antigravity CLI** (napisane w Go, zastępuje **Gemini CLI dla konsumentów od 18 czerwca 2026**), publiczne **SDK**, **dynamic subagents** do równoległej pracy, **scheduled background tasks** i Gemini 3.5 Flash jako domyślny model. Managed Agents w Gemini API pozwalają zawołać jeden endpoint i dostać w pełni zainicjalizowanego agenta z remote sandbox.

To bezpośredni atak na **Cursor (Composer 2.5), Claude Code i Codex CLI**. Google twierdzi, że Gemini 3.5 Flash w Antigravity działa **12× szybciej** niż w innych frontendach. Wszystko dostępne od dziś.

> **Potencjał contentowy:** wysoki — wojna agentic IDE, dev tools, znane marki = bańka tech-Twittera w jednym shorcie.

---

## 3. Google obniża cenę AI Ultra z $250 do $200 i dodaje nowy tier za $100

**Źródło:** Android Authority (19 maja 2026), Winbuzzer (19 maja), Dataconomy (20 maja), blog.google (19 maja)

Google zresetował cały cennik subskrypcji 19 maja na I/O:
- **AI Plus**: ~$8/mc (entry)
- **AI Pro**: $20/mc
- **AI Ultra (nowy entry)**: **$100/mc** (5× limity Antigravity vs Pro, 20TB cloud)
- **AI Ultra (top)**: **$200/mc** (było $250) — 20× limity vs Pro

Nowy $100 tier jest pozycjonowany pod developerów i tech leadów (Antigravity heavy users). Obniżka top-tieru o **$50/mc** to nieoczywisty ruch — wcześniej Google podnosił ceny w 2025 razem z OpenAI i Anthropic.

> **Potencjał contentowy:** średni — liczby porównawcze z ChatGPT Pro ($200) i Claude Max ($200) robią z tego ranking subskrypcji AI.

---

## 4. Daily Brief w aplikacji Gemini — AI robi Ci poranny przegląd Gmaila, kalendarza i zadań

**Źródło:** 9to5Google (19 maja 2026), Android Authority (19 maja), TechCrunch (19 maja), Winbuzzer (20 maja)

Google wypuścił dziś (19 maja) **Daily Brief** — personalny digest, który ma być "pierwszym przystankiem każdego ranka". Gemini w tle łączy się ze skrzynką Gmail, kalendarzem i listą zadań i serwuje uporządkowany overview z priorytetami i sugerowanymi next-stepami. Funkcja **rolluje się dziś dla AI Plus, Pro i Ultra w USA**.

Plus aplikacja Gemini dostała redesign "Neural Expressive" — bardziej żywe animacje i konwersacyjny UX (też 19 maja).

> **Potencjał contentowy:** średni — codzienna funkcja, którą da się porównać z ChatGPT Pulse z lipca 2025, brak PL = mniejszy oddźwięk lokalnie.

---

## 5. Gemini Omni Flash — Google odpala generację video z dowolnego inputu, 10 sekund klipu

**Źródło:** TechCrunch (19 maja 2026), Engadget (19 maja), Tech Times (19 maja), WaveSpeed Blog (19 maja)

**Gemini Omni Flash** to nowy multimodalny model video — łączy obraz, audio, video i tekst w jednym promptcie i generuje **10-sekundowe klipy** z SynthID watermark. Rolluje się od dziś dla AI Plus / Pro / Ultra globalnie w aplikacji Gemini i Flow, **plus za darmo dla użytkowników YouTube Shorts i YouTube Create od tego tygodnia**.

Funkcja "digital avatar" pozwala wygenerować postać, która wygląda i mówi Twoim głosem. Google chwilowo wstrzymał najbardziej ryzykowną funkcję edycji audio. Wyższy Omni Pro zapowiedziany, bez daty.

> **Potencjał contentowy:** wysoki — darmowe AI video dla YT Shorts to bezpośredni "spróbuj dziś" hook, plus angle "Twoja kopia mówi Twoim głosem".

---

## 6. Universal Cart — Google chce być Twoim agentowym koszykiem online

**Źródło:** blog.google (19 maja 2026), TechRadar (19 maja), The Next Web (19 maja), Winbuzzer (20 maja)

Google ogłosił **Universal Cart** — jeden koszyk między sklepami, który działa w Search, aplikacji Gemini, na YouTube i w Gmail. Gemini w tle monitoruje **spadki cen, historię cen, alerty restock, kompatybilność produktów i loyalty rewards**.

Partnerzy startowi: **Nike, Sephora, Target, Walmart, Wayfair, Shopify merchants**. Rollout: **lato 2026 w USA**, najpierw Search i Gemini, później YouTube i Gmail.

> **Potencjał contentowy:** średni — angle "Google chce robić Twoje zakupy za Ciebie" pasuje do PL audience, ale brak PL availability na start to minus.

---

## 7. Google ogłasza śmierć "Google jakim znamy" — Search to teraz AI Search, globalnie

**Źródło:** TechCrunch (19 maja 2026), TIME (20 maja), blog.google (19 maja), Tech Wyse (19 maja)

Google ogłosił, że **"Google Search is AI Search"** — nie funkcja Search, ale Search jako taki. Nowy intelligent Search box (pierwszy redesign skrzynki od **25+ lat**) **rolluje się 19 maja globalnie** we wszystkich krajach i językach, gdzie AI Mode jest dostępne. Skrzynka dynamicznie się rozszerza, pozwala wrzucić obrazy, pliki, video lub karty Chrome jako input.

Liczby: **AI Mode przekroczył 1 miliard użytkowników miesięcznie** rok po debiucie, queries podwajają się co kwartał. Information agents dla Pro/Ultra subscribers ruszają latem — agentic booking dla lokalnych usług (np. "znajdź mi prywatny pokój karaoke z X").

> **Potencjał contentowy:** wysoki — "koniec Google jakie znamy" + 1 miliard MAU + 25 lat bez zmian = klasyczny meeko hook.

---

## 8. Apple zamknął furtkę — iOS 26.5 nie pozwala już cofnąć się do starszej wersji

**Źródło:** 9to5Mac (20 maja 2026), MacRumors (różne, 11-20 maja)

Apple po wydaniu iOS 26.5 12 maja **przestał podpisywać iOS 26.4.1** — co oznacza, że użytkownicy, którzy zaktualizowali się i nie polubili 26.5, **nie mogą już wrócić** do poprzedniej wersji. To standardowy ruch Apple (zwykle ~2 tygodnie po release), ale 20 maja kwestia stała się publiczna na 9to5Mac.

iOS 26.5 sam w sobie wnosi end-to-end encrypted RCS (między iPhone i Android), nowe Pride wallpapers i poprawia **ponad 50 luk bezpieczeństwa**. Apple jest **mniej niż 3 tygodnie przed WWDC**, gdzie pokaże iOS 27.

> **Potencjał contentowy:** średni — "Apple wymusza upgrade" to angle, który robi viral co kilka miesięcy, plus security update relevant dla każdego iPhone'a w PL.

---
