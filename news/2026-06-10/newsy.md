# Newsy technologiczne — 10 czerwca 2026

Dzień po WWDC 2026 — Apple zaskoczyło partnerstwem z Google Gemini. Plus świeże dropy w dev tools (Claude Code, Cursor, Ollama) i niespodziewany Nintendo Direct.

---

## 1. Apple odda mózg Siri Google'owi — Gemini napędzi Apple Intelligence

**Źródło:** Apple Newsroom (8 czerwca 2026), TechCrunch (9 czerwca 2026), CNBC, MacObserver

Apple oficjalnie ogłosiło na WWDC 2026, że **następna generacja Apple Foundation Models będzie oparta na modelach Google Gemini**. Nowy asystent nazywa się "Siri AI" — Apple przebudowało go od zera w nowoczesnego chatbota z pamięcią rozmów, świadomością ekranu (on-screen awareness) i kontekstem osobistym.

Architektura jest trzywarstwowa: warstwa modeli (własne Apple Foundation Models + Gemini), warstwa Personal Context, warstwa Siri i App Actions. Apple zachowuje prywatność przez **Private Cloud Compute** — wrażliwe dane nie wychodzą poza zaszyfrowane enklawy.

Co ciekawe — Apple **otwiera Siri na konkurencję**: użytkownicy iOS 27 będą mogli wybrać Claude lub Gemini jako alternatywę dla Siri w "Extensions". Pierwsza wersja Siri AI startuje jako beta **jesienią 2026** w języku angielskim. Bez Chin i bez UE na start (DMA).

> **Potencjał contentowy:** wysoki — Apple płaci konkurentowi za AI to klasyczny meeko-hook, podobny do dawnego "Apple płaci Google za wyszukiwarkę 1 mld $".

---

## 2. iOS 27, iPadOS 27 i macOS Golden Gate — bety deweloperskie dostępne dziś

**Źródło:** MacRumors (8 czerwca 2026), Cult of Mac, Wikipedia macOS Golden Gate

Apple uruchomiło **pierwsze bety deweloperskie iOS 27, iPadOS 27, watchOS 27, visionOS 27 oraz macOS 27 "Golden Gate"** zaraz po keynote 8 czerwca 2026. Publiczna beta — w lipcu, finalna premiera — jesienią.

iOS 27 daje **do 30% szybsze uruchamianie aplikacji** i działa na każdym sprzęcie, który dostał iOS 26 (od iPhone'a 11). macOS Golden Gate **wycina wsparcie dla Intel Maców** — tylko Apple Silicon. Spotlight, Mail i Photos dostały przepisaną architekturę wyszukiwania.

W Polsce — bety można instalować od razu po zarejestrowaniu Apple ID w developer.apple.com (darmowe od kilku lat).

> **Potencjał contentowy:** wysoki — "iOS 27 dostępny TERAZ na 5-letnim iPhonie" to bardzo actionable angle dla PL widza, który nie kupuje co rok.

---

## 3. Apple cofa się z Liquid Glass — wprowadza suwak "od przezroczystego do matowego"

**Źródło:** TechCrunch (8 czerwca 2026), Neowin, MacObserver, SiliconANGLE

Po roku narzekań na czytelność Liquid Glass (wprowadzonego na WWDC 2025), Apple **dodaje suwak w Ustawieniach** pozwalający regulować efekt od "ultra clear" do "fully tinted". Dodatkowo: lepszy kontrast, bardziej jednolita refrakcja, ostrzejsze ikony i przeprojektowane app icons dla spójności wizualnej.

Apple oficjalnie przyznało, że "diffuses complex content behind to create more depth and separation between content panels" — czyli wreszcie tło nie miesza się z treścią. Suwak będzie dostępny **w iOS 27 i macOS Golden Gate od pierwszej bety**.

To rzadki moment, gdy Apple publicznie cofa decyzję designerską po feedbacku użytkowników — ostatnio podobnie było z butterfly keyboard.

> **Potencjał contentowy:** średni — drama "Apple poprawia własne błędy" + porównanie before/after w shorta wizualnie się sprzeda.

---

## 4. Apple wprowadza "Child Account" z Ask to Browse — rodzic zatwierdza strony przez iMessage

**Źródło:** Apple Newsroom (8 czerwca 2026), Newegg Insider, Business Standard, ITP.net

Apple **rozszerza kontrolę rodzicielską na poziomie systemu**. Główna nowość: **Child Account** — jeden przełącznik dla rodzica, który automatycznie konfiguruje limity czasowe, filtry stron, kontakty i wiadomości na każdym urządzeniu Apple dziecka.

Konkretne narzędzia:
- **Time Allowance** — różne limity dla różnych kategorii apps (gry vs nauka)
- **Ask to Browse** — dziecko prosi rodzica o dostęp do strony przez Messages, rodzic klika "approve"
- **Safety APIs dla deweloperów** — app sam dostosowuje treści do wieku użytkownika bez ręcznej konfiguracji

Funkcje rolują "w kolejnych miesiącach" wraz z jesiennymi premierami systemów.

> **Potencjał contentowy:** średni — rodzice są niedoreprezentowani na meeko, ale "iPhone pyta dziecko czy to bezpieczna strona" to konkretny mechanik.

---

## 5. Claude Code v2.1.169 — safe mode i komenda /cd bez gubienia cache'u

**Źródło:** Releasebot Anthropic (8 czerwca 2026), DevelopersIO, GitHub anthropics/claude-code

Anthropic wypuściło **Claude Code v2.1.169 dnia 8 czerwca 2026** — 30 zmian, w tym 3 nowe ficzery:

- **`--safe-mode`** (flaga + `CLAUDE_CODE_SAFE_MODE` env) — startuje Claude Code z wyłączonymi wszystkimi customizacjami: CLAUDE.md, plugins, skills, hooks, MCP servers. Klasyczny "bisect dla AI agenta" — kiedy coś się psuje, odpalasz w trybie czystym.
- **`/cd`** — zmiana katalogu roboczego bez utraty prompt cache'u w trakcie sesji. Wcześniej trzeba było restartować Claude Code (= ~$0.50 marnowane na re-feed kontekstu).
- **`disableBundledSkills`** — ukrywa wbudowane skille, workflows i slash commands przed modelem.

Plus 12 fixów dla Windows/macOS, redukcja zużycia CPU, usprawniona obsługa background agents i remote sessions.

> **Potencjał contentowy:** wysoki — niszowy ale przeznaczony dla rdzennej widowni meeko (devtech), a `/cd` to praktyczny żart "Anthropic w końcu zauważył, że ludzie zmieniają foldery".

---

## 6. Cursor wprowadza Premium Seat za $96/mc — 5× więcej usage za 3× cenę

**Źródło:** Cursor blog (czerwiec 2026), Cursor Docs, StartupHub.ai

Cursor **restrukturyzuje pricing Teams** — od razu dla nowych klientów, od 1 lipca 2026 dla obecnych przy odnowieniu:

- **Standard seat:** $32/mc (roczny) lub $40/mc (miesięczny) — bez zmiany ceny, ale **więcej usage w tej samej cenie**
- **Premium seat:** $96/mc (roczny) lub $120/mc (miesięczny) — **5× usage Standard za 3× ceny**

Każdy seat dostaje teraz **dwa osobne pule**: Composer/Auto (modele Cursor) i Third-Party API (modele zewnętrzne). Premium seat ma pokryć **99% miesiąca ciężkiego usage** wg Cursora.

Tymczasem konkurencyjny Antigravity 2.0 (Google) miał launch na I/O 19 maja — Gemini CLI **kończy działać 18 czerwca 2026** i zostaje zastąpiony Antigravity CLI.

> **Potencjał contentowy:** wysoki — "wojna AI IDE: Cursor podnosi top tier, Google forsuje Antigravity, Anthropic dropuje update" to multi-podmiotowa drama na 30s.

---

## 7. Ollama v0.30.7 — Hermes Desktop i Gemma 4 z optymalizacją QAT

**Źródło:** GitHub ollama/ollama releases (8 czerwca 2026), Releasebot Ollama, Ollama blog

Ollama wypuściło **release v0.30.6/v0.30.7 dnia 8 czerwca 2026**. Główne nowości:

- **Hermes Desktop** — natywny interfejs desktopowy dla agenta Hermes. Ollama wchodzi w segment "okienkowych" lokalnych AI (jak LM Studio).
- **Gemma 4 QAT (Quantization-Aware Training)** — Google'owski Gemma 4 (E2B / E4B / E12B-MoE / E27B-dense) **dramatycznie mniejszy w pamięci** dzięki QAT. Wcześniej E27B wymagało 32 GB VRAM, teraz mieści się znacznie sprawniej.
- **Cline CLI auto-install**, integracja Qwen code, lepsze limity lokalnych modeli, wsparcie Windows config path.
- Aktualnie dostępne przez Ollama: Kimi-K2.6, GLM-5.1, MiniMax, DeepSeek, gpt-oss, Qwen, Gemma 4.

Do pobrania `ollama pull gemma4` od razu.

> **Potencjał contentowy:** średni — niszowy hardware-flex angle ("Gemma 4 27B chodzi na MacBooku Air") dla widzów geek.

---

## 8. Nintendo Direct 9 czerwca — Ocarina of Time remake na Switch 2

**Źródło:** SteamDeckHQ Nintendo Direct summary (9 czerwca 2026)

Nintendo zorganizowało niespodziewany **Direct 9 czerwca 2026** z mocnym lineupem na Switch 2:

- **The Legend of Zelda: Ocarina of Time** — pełny remake na Switch 2, premiera "later in 2026"
- **Metal Gear Solid Master Collection Vol. 2** — 27 sierpnia 2026, równolegle na Switch 1 i Switch 2
- **Rise of the Tomb Raider** — Switch 2, ten sam dzień

Ocarina to **najsilniejszy IP-flex Nintendo z N64** — od 1998 roku nigdy nie dostał pełnego remake'u (tylko HD na 3DS w 2011). Dla PL widowni — Switch 2 jest dostępny w sklepach od marca 2025 za ~2500 zł.

> **Potencjał contentowy:** wysoki — Ocarina of Time to "święta krowa" gamingu, remake po 28 latach + Switch 2 angle = nostalgia bait na 100k views.
