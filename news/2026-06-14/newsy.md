# Newsy technologiczne — 14 czerwca 2026

> **Quiet news day** — sobota zdominowana jedną gigantyczną historią: USA blokuje dostęp do Fable 5 i Mythos 5 dla obcokrajowców. Wszyscy Polacy stracili dostęp do najmocniejszych modeli Anthropic. Pozostałe newsy ze środy/piątku to tools-first (Kimi K2.7, Claude Code /fork) i jeden wiralowy fail (KPMG).

---

## 1. Trump nakazał Anthropic odciąć Fable 5 i Mythos 5 — wszyscy Polacy bez dostępu

**Źródło:** Anthropic statement (13.06.2026), Bloomberg (13.06.2026), Time (13.06.2026), Al Jazeera (13.06.2026), Fortune (13.06.2026)

W piątek **12 czerwca o 17:21 ET** Anthropic dostał od administracji Trumpa export-control directive — natychmiast zablokować dostęp do **Fable 5** (czołowy ogólnodostępny model klasy Mythos) i **Mythos 5** (restricted) dla **wszystkich obcokrajowców na świecie**, włącznie z własnymi pracownikami Anthropic, którzy nie są obywatelami USA. Anthropic wykonał polecenie w sobotę 13 czerwca i ogłosił to publicznie.

Rzeczywisty powód według Anthropic: rząd "uważa, że wykrył sposób na jailbreak Fable 5". Anthropic obejrzał demo i twierdzi, że to "kilka znanych, drobnych podatności" — gdyby ten standard stosować w branży, "wstrzymałby wszystkie wdrożenia frontier modeli wszystkich dostawców". Dostęp do innych modeli (Opus 4.8, Sonnet, Haiku) pozostaje. Anthropic dyplomatycznie wyraża niezgodę, ale wykonuje rozkaz.

PL kontekst: każdy polski subskrybent Claude Pro/Max stracił 13.06 dostęp do najmocniejszego modelu (80,3% SWE Bench Pro — wyższy niż Opus 4.8 z 69,2% i GPT 5.5 z 58,6%). Europejscy politycy już mówią o "ryzyku zależności od USA AI".

> **Potencjał contentowy:** wysoki — dramat USA vs reszta świata, bezpośredni wpływ na polskiego widza, czytelna eskalacja (model classified jako broń) i wielkie nazwiska (Trump, Amodei, Amazon).

---

## 2. Moonshot wypuszcza Kimi K2.7-Code — bilion parametrów open-weight za 95 centów / mln tokenów

**Źródło:** MarkTechPost (12.06.2026), VentureBeat (12.06.2026), kimi.com/code

12 czerwca Moonshot AI wypuścił **Kimi K2.7-Code** — model kodujący 1 bln parametrów (MoE, 32 mld aktywnych), 256K kontekstu, **Modified MIT license**, wagi na HuggingFace, API na platform.moonshot.ai. Cena: **$0,95 za milion tokenów input, $4,00 za output** — wielokrotnie taniej niż Claude Opus.

Wewnętrzne benchmarki Moonshot: **+21,8% na Kimi Code Bench v2** vs K2.6, +11% na Program Bench, +31,5% na MLS Bench Lite, **30% mniej "thinking tokens"** przy wyższej jakości. Praktycy z VentureBeat sceptyczni — benchmarki są autorskie Moonshot, nie SWE-Bench. Model odpalisz lokalnie via vLLM, SGLang, Docker Model Runner.

> **Potencjał contentowy:** średni — open-source tools-first, ale niszowo (devs), Chinese model = pewne tarcie. Hook ratuje cena ($0.95 vs Opus i Claude Code dropy).

---

## 3. Claude Code dostaje /fork i nowy CLI — git-style branching dla sesji AI

**Źródło:** TechTimes (13.06.2026), Anthropic changelog

Anthropic shipped w tym tygodniu komendę **`/fork`** w Claude Code — pozwala rozgałęzić bieżącą sesję z pełnym kontekstem na równoległe warianty, próbować różne podejścia bez kasowania pierwotnego. Razem z `/rewind` i `/btw` tworzy "context hygiene toolkit". Doszedł też nowy command-line interface i wsparcie dla nested sub-agents (subagent wewnątrz subagenta).

To dropuje w tygodniu zdominowanym przez awarię dostępu do Fable 5/Mythos 5 — Claude Code jednak działa, bo używa innych modeli. Update obejmuje też lepsze plugin search, naprawione bugi w session memory i model picker.

> **Potencjał contentowy:** średni — devs to nasza widownia (vertical 4), git-style branching ma dobry hook, ale temat techniczny.

---

## 4. KPMG wycofuje raport o AI bo... jest pełen halucynacji AI

**Źródło:** Financial Times (12.06.2026), TechCrunch (13.06.2026), The Register (12.06.2026), City AM (13.06.2026)

KPMG wycofał z sieci **swój flagowy raport o AI** ("Total Experience: Redefining Excellence in the Age of Agentic AI", październik 2025) po tym, jak Financial Times wykazał, że **40 z 45 cytowań to halucynacje**. Sfabrykowane case studies obejmują rzekome wdrożenia AI w **UBS, NHS, Swiss Federal Railways (SBB) i Transport for London** — instytucje, które publicznie zaprzeczyły, że taki projekt miał miejsce.

Czyli: jedna z Wielkiej Czwórki, sprzedająca usługi "AI governance" i konsultingu od milionów, wypuściła raport o AI napisany przez AI bez weryfikacji. KPMG: "wewnętrzne dochodzenie w toku, wymagamy human oversight". Trochę za późno.

> **Potencjał contentowy:** wysoki — paradoks, koroporacyjna porażka, prosty hook ("Firma sprzedaje AI governance — i sama publikuje halucynacje AI"), zero potrzeby technicznego tła.

---
