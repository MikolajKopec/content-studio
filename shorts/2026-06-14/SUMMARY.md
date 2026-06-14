# Skrót dnia — 14 czerwca 2026

4 newsów researched. Quiet Saturday — dominuje Anthropic export ban + jeden wiralowy fail (KPMG). Cherry-pick poniżej.

---

## 1. Trump nakazał Anthropic odciąć Fable 5 i Mythos 5 — wszyscy Polacy bez dostępu

📂 [`anthropic-fable-mythos-banned/notatka.md`](./anthropic-fable-mythos-banned/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** W piątek 12.06 o 17:21 ET administracja Trumpa nakazała Anthropic w ciągu 24 godzin odciąć Fable 5 (80,3% SWE-Bench Pro, najlepszy coding model świata) i Mythos 5 od wszystkich obcokrajowców na świecie — łącznie z własnymi pracownikami Anthropic bez obywatelstwa USA. Polscy subskrybenci Claude Pro/Max stracili dostęp w trakcie darmowego okna testowego, a kulisy ujawniają, że trigger pociągnął CEO Amazona Andy Jassy dzwoniąc do Sekretarza Skarbu.

**Top hooks:**
- "Trump właśnie wyłączył ci Claude'a"
- "24 godziny. Tyle dał Trump Anthropic na odcięcie wszystkich Polaków od najlepszego AI."
- "Szef Amazona zadzwonił do Skarbu USA. Po 3 dniach najlepszy Claude został zbanowany dla całego świata."

---

## 2. KPMG wycofuje raport o AI bo... jest pełen halucynacji AI

📂 [`kpmg-ai-raport-halucynacje/notatka.md`](./kpmg-ai-raport-halucynacje/notatka.md)
**Potencjał:** 🔥 wysoki

**TL;DR:** KPMG wycofało flagowy raport o agentic AI z października 2025 po tym, jak GPTZero i Financial Times wykazali, że 40 z 45 cytowań to halucynacje AI, a sfabrykowane case studies z UBS, NHS, SBB i Transport for London zostały zaprzeczone przez te instytucje. Paradoks: jedna z Wielkiej Czwórki, sprzedająca usługi "AI governance" za miliony, wypuściła raport o AI napisany przez AI bez weryfikacji — i to nie pierwsza taka wpadka Big Four (Deloitte zwrócił rządowi Australii $290k, EY Canada wycofało raport z 16 halucynacjami).

**Top hooks:**
- "Firma sprzedaje AI governance — i sama publikuje raport pełen halucynacji AI."
- "40 z 45 cytowań w raporcie KPMG to halucynacje. Zostało 5 prawdziwych."
- "Jedna z Wielkiej Czwórki wycofała raport o AI bo... napisała go AI."

---

## 3. Moonshot wypuszcza Kimi K2.7-Code — bilion parametrów open-weight za 95 centów / mln tokenów

📂 [`kimi-k27-code-1t-open/notatka.md`](./kimi-k27-code-1t-open/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Chiński Moonshot wypuścił open-weight model kodujący 1 bln parametrów (MoE, 32 mld aktywnych, 256K context) za $0,95/$4 za milion tokenów — pięć razy taniej niż Claude Opus. Hak: wszystkie reklamowane benchmarki to autorskie testy Moonshota, na niezależnym KernelBench-Hard model regresował vs K2.6.

**Top hooks:**
- "95 centów za milion tokenów. Claude Opus kosztuje pięć razy więcej."
- "Moonshot mówi że jego model jest lepszy. Pokazuje benchmarki, które sam wymyślił."
- "Chińczycy pokazali bilion parametrów za darmo. Anthropic pokazał fakturę."

---

## 4. Claude Code dostaje /fork i nowy CLI — git-style branching dla sesji AI

📂 [`claude-code-fork-cli/notatka.md`](./claude-code-fork-cli/notatka.md)
**Potencjał:** ⚡ średni

**TL;DR:** Anthropic dorzucił do Claude Code komendę `/fork` (kopiuje sesję z pełnym kontekstem jak git branch), nested sub-agents do 5 poziomów w głąb (wersja 2.1.172, 10 czerwca) i nowy CLI z flagami `--fork-session`, `--safe-mode`, `/cd` — wszystko w trakcie awarii Fable 5/Mythos 5. TechTimes spakował te dropy w jeden artykuł 13 czerwca, choć faktyczne shippy są rozłożone na maj-czerwiec.

**Top hooks:**
- "Sub-agent może odpalić sub-agenta — i tak **5 razy w głąb**"
- "Cursor ma **8 sesji**, Antigravity **5 agentów**, Claude Code — **5 poziomów w głąb**"
- "Anthropic dropuje update w tygodniu, w którym ich własny model się rozsypał"

---
