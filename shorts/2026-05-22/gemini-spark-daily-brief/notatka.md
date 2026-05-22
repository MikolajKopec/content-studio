# Gemini Spark, Daily Brief i Omni — Google zamienia czatbota w agenta 24/7

**Data:** 2026-05-22
**Temat:** Na Google I/O 2026 Google przerobił Gemini z czatu w proaktywnego asystenta: Spark działa non-stop w chmurze i sam wykonuje zadania, Daily Brief generuje poranny digest z maila i kalendarza, a Omni tworzy wideo i AI-awatara użytkownika.

---

## Kluczowe fakty i liczby

- Aplikacja Gemini ma już **900 mln użytkowników miesięcznie** w ponad **230 krajach** i **70+ językach** — to ten sam rząd wielkości co ChatGPT.
- Cena planu **Google AI Ultra spadła z 250 do 100 USD/miesiąc** (a nowy "premium" stoi przy **200 USD/miesiąc**), żeby agresywnie podciąć ChatGPT Pro i Claude Max.
- **Gemini Spark** to agent działający **24/7** na dedykowanej maszynie wirtualnej w Google Cloud — nie musisz mieć otwartego laptopa, bo agent siedzi w chmurze.
- Sparka da się **wysłać maila** na dedykowany adres Gmail i daje zadanie tak, jakbyś pisał do współpracownika; integruje się z Gmailem, Docsami, Sheets, Slides, a od lata też z **Microsoft SharePoint, OneDrive i ServiceNow** przez MCP.
- Spark działa na **Gemini 3.5 Flash**, który osiąga **76,2% na Terminal-Bench 2.1** i **83,6% na MCP Atlas** oraz generuje tokeny **4x szybciej** niż konkurencyjne modele frontier, kosztując **1/3–1/2 mniej**.
- **Daily Brief** to poranny digest składany **w nocy** z Gmaila, Kalendarza i Tasków, z sekcjami "Top of mind" i "Looking ahead" — proponuje konkretne akcje (odpisz, umów, kup bilet).
- **Gemini Omni** generuje wideo z miksu tekstu, obrazu, audio i innych wideo; pierwszy model rodziny — **Omni Flash** — jest dostępny już teraz dla AI Plus, Pro i Ultra **globalnie** w aplikacji Gemini i Google Flow.
- Setup AI-awatara: **2 minuty** (kilka ujęć twarzy + nagranie kilku losowych fraz głosem), generacja wideo "kilka minut" — recenzent Chromeunboxed pisał "shockingly good" o synchronizacji ust i mikro-mimice.
- Awatara mogą tworzyć **tylko osoby 18+** — Google wymaga fizycznej obecności właściciela konta podczas onboardingu i wstawia w każde wideo **niewidoczny znak wodny SynthID**.
- Spark wymaga **wyraźnej akceptacji** wszystkich "high-risk" akcji (np. wydawania pieniędzy), ale Google zapowiada, że z czasem będzie samodzielnie **finalizował zakupy**.

## Trzy nowości w jednej premierze

| Funkcja | Co robi | Dla kogo | Gdzie |
|---|---|---|---|
| Gemini Spark | Agent 24/7 w chmurze, wykonuje długie zadania (maile, dokumenty, monitoring) | Google AI Ultra | USA, beta od przyszłego tygodnia |
| Daily Brief | Poranny digest z inboxa, kalendarza, tasków + sugerowane akcje | Google AI Plus, Pro, Ultra | USA, od dziś |
| Gemini Omni (Flash) | Wideo z tekstu/obrazu/audio + AI-awatar użytkownika | Google AI Plus, Pro, Ultra (18+) | Globalnie, od dziś |

## Architektura — czemu to jest inne niż ChatGPT Tasks

- Spark nie jest cronem ani makrem — to **dedykowana VM w Google Cloud**, która "żyje" obok ciebie, łapie nowe maile, sprawdza kalendarz i sama decyduje, kiedy podjąć działanie.
- Zbudowany z modeli Gemini + **agentic harness z Google Antigravity** (środowiska IDE-podobnego dla agentów, ogłoszonego razem ze Sparkiem).
- Na Androidzie progress agenta widać przez nowy system **Halo** (małe widgety stanu wokół ikonek), na desktopie przez Chrome.
- Konkurencja: **Claude Cowork** od Anthropic i **ChatGPT Agent** od OpenAI — różnicą Google'a jest natywna integracja z Workspace, której konkurenci muszą się dorabiać przez MCP.

## Cytat, który warto zapamiętać

> "It's your personal AI agent that helps you navigate your digital life, taking action on your behalf"
> — **Sundar Pichai**, CEO Google

> "Omni is our new model that can create anything from any input — starting with video."
> — **Koray Kavukcuoglu**, CTO Google DeepMind

## Problemy i ryzyka (już teraz)

- **Daily Brief = recydywa "Daily Hub"** z Pixela 10. Tamten flop pokazywał pogodę bez prognozy godzinowej, polecał filmy o Honey Boo Boo i nie integrował się z Tasks/Keep/Fitbit. Android Authority już ostrzega: "another Daily Hub situation waiting to happen".
- **AI-awatar = deepfake premium.** Google daje SynthID i wymóg 18+, ale recenzent Chromeunboxed mówiący własnym głosem rzeczy, których nigdy nie nagrał, nazwał to "absolute trip" — to dosłownie deepfake siebie samego za 20 USD/miesiąc.
- **Spark może wydawać pieniądze** — na razie z potwierdzeniem, ale model docelowy ma "finalizować zakupy". Pytanie odpowiedzialności (zwrot? halucynacja zamówienia?) Google jeszcze nie odpowiedział.
- **Daily Brief = USA only.** Spark = USA only. Polski użytkownik dostaje na razie tylko Omni i redesign Neural Expressive.

## Implikacje dla rynku

- **Cena Ultra spadła o 60%** (z 250 do 100 USD) — to jasny sygnał, że Google chce wygrać wojnę subskrypcji AI **objętością**, nie marżą.
- Google ma **Gmail + Kalendarz + Docs + Android + Chrome** — czego nie ma OpenAI ani Anthropic. To największy zwrot kosztów dystrybucji w historii batalii AI.
- Pojawienie się "Omni Pro" (zapowiedziane, bez daty) sugeruje, że Veo i Nano Banana zostają złożone w jedną rodzinę — Google przestaje rozdrabniać markę.
- 9to5Google: Spark to "dyskretne zakończenie ery Asystenta Google" — Pichai od dwóch lat zwija starego Asystenta, a Spark wreszcie pokazuje czym ma być zastąpiony.

---

## Potencjalne kąty narracyjne do shorta

- **"Google daje ci AI agenta, który czyta twoje maile gdy śpisz."** — emocjonalny hook, jasny obraz, prosta wartość.
- **"Ultra od Google'a staniało z 250 do 100 dolarów. Anthropic i OpenAI właśnie dostały po pysku."** — konkretna liczba, dramat, biznes.
- **"Aplikacja Gemini ma 900 milionów użytkowników. Czyli już dogania ChatGPT."** — scale shock, łatwy do wypowiedzenia w 2 sekundy.
- **"Google pozwala ci zrobić deepfake siebie samego za 20 dolarów miesięcznie."** — kontrowersja, konkret cenowy, paradoks ("legalny deepfake").
- **"2 minuty setupu i twój AI awatar mówi rzeczy, których nigdy nie powiedziałeś."** — konkretny czas + niepokojąca wizja.
- **"Sundar Pichai dał Gemini twojego maila. Agent sam odpisuje klientom."** — nazwisko + konkretna akcja, łatwe do zobrazowania.
- **"Polska? Spark i Daily Brief tylko w USA. Znowu czekamy."** — PL bonus, frustracja, relatable.

---

## Źródła

- [Introducing Gemini Omni — blog.google](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-omni/)
- [Google introduces Gemini Spark, a 24/7 agentic assistant with Gmail integration — TechCrunch](https://techcrunch.com/2026/05/19/google-introduces-gemini-spark-a-24-7-agentic-assistant-with-gmail-integration/)
- [Gemini app rolling out Neural Expressive redesign, 3.5 Flash, 24/7 Spark agent, & Daily Brief — 9to5Google](https://9to5google.com/2026/05/19/gemini-app-google-io-2026/)
- [Google turns Gemini into a proactive AI agent with Spark, Daily Brief, and Omni — Android Authority](https://www.androidauthority.com/google-gemini-neural-expressive-gemini-spark-daily-brief-omni-updates-3668384/)
- [Google's new Gemini Daily Brief is a disaster waiting to happen — Android Authority](https://www.androidauthority.com/google-gemini-daily-brief-already-ruined-3668798/)
- [Gemini Omni, the 'create anything' model, starts today with lifelike video — 9to5Google](https://9to5google.com/2026/05/19/gemini-omni-create-anything-model-video/)
- [Going hands-on with Google's new Gemini Omni AI avatar feature — Chromeunboxed](https://chromeunboxed.com/going-hands-on-with-googles-new-gemini-omni-ai-avatar-feature-is-an-absolute-trip/)
- [Google Gemini gets Daily Brief, Neural Expressive redesign at I/O 2026 — TheNextWeb](https://thenextweb.com/news/google-gemini-app-daily-brief-redesign-io-2026)
- [Google updates its Gemini app to take on ChatGPT and Claude — TechCrunch](https://techcrunch.com/2026/05/19/google-updates-its-gemini-app-to-take-on-chatgpt-and-claude/)
