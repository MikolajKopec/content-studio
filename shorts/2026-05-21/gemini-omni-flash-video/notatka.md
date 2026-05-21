# Gemini Omni Flash — Google odpala generację video z dowolnego inputu, 10 sekund klipu

**Data:** 2026-05-21
**Temat:** Google wypuszcza Gemini Omni Flash — multimodalny model video (text + image + audio + video w jednym promptcie), generujący **10-sekundowe klipy z zsynchronizowanym audio**, dostępny **za darmo w YouTube Shorts i YouTube Create** oraz w planach Google AI Plus/Pro/Ultra; najbardziej ryzykowna funkcja (edycja mowy/audio) celowo wstrzymana.

---

## Kluczowe fakty i liczby
- Premiera: **19 maja 2026** podczas Google I/O 2026, rollout globalny dla planów Google AI Plus/Pro/Ultra w aplikacji Gemini i Google Flow.
- Limit klipu: **10 sekund** ze zsynchronizowanym audio — Google deklaruje, że to wybór deploymentowy, nie limit modelu (Nicole Brichtova z Google DeepMind: cap istnieje, żeby zarządzać compute demand at scale).
- Nieoficjalne raporty: **720p** rozdzielczości i **60–90 sekund** czasu generacji jednego klipu (Google nie potwierdza specyfikacji).
- Darmowy dostęp: **YouTube Shorts + YouTube Create App** od tygodnia premiery (19 maja 2026).
- Płatny dostęp startuje od **Google AI Plus za $7,99/miesiąc**; Pro i Ultra dostają wyższe limity i priorytet.
- Wszystkie outputy mają **SynthID watermark** — niewyłączalny, weryfikowalny w aplikacji Gemini, Chrome i Google Search. Standard SynthID oznakował już ponad **100 mld assetów AI** (adopcja: OpenAI, Nvidia, ElevenLabs, Kakao).
- **Avatar onboarding**: musisz nagrać siebie wymawiającego serię cyfr — zabezpieczenie przeciw deepfake'om typu Sora Cameos.
- API dla developerów i enterprise: "in the coming weeks".
- Wyższy model **Omni Pro** zapowiedziany, bez daty.

---

## Specyfikacja techniczna (rozdzielczość, fps, audio, 10s limit)
- **Długość klipu**: 10 sekund z synced audio — wystarczy na YT Short, IG Reel, TikTok hook.
- **Rozdzielczość/fps**: Google **nie ujawnił oficjalnie**. WaveSpeed Blog i Tech Times sugerują **720p** i czas generacji 60–90 s na klip.
- **Audio sync**: model utrzymuje synchronizację audio-video w obrębie 10 s, akceptuje audio reference jako constraint generacji.
- **Multimodal input**: w jednym promptcie można podać **tekst + obraz + audio + video** — Veo 3.1 nie ma tej zdolności, działa głównie z text/image.
- **Edycja konwersacyjna**: zmieniasz klip w czacie ("przenieś postać w lewo", "dodaj deszcz") bez re-promptu od zera.
- **Physics reasoning**: model "rozumuje" o fizyce świata (Gemini world knowledge), nie tylko animuje klatki — to główny edge nad Veo 3.

## Co potrafi (digital avatar, multimodal input)
- **Digital Avatar**: nagrywasz głos + likeness, model robi z tego cyfrową kopię, która mówi Twoim głosem. Onboarding wymaga wypowiedzenia serii cyfr (anti-spoof).
- **Image-to-video**: wrzucasz zdjęcie + opis ruchu — masz klip 10 s.
- **Audio-to-video**: voice sample → animowany avatar z lipsyncem.
- **Video-to-video**: edytujesz istniejący klip naturalnym językiem.
- **Style transfer + character consistency**: między edycjami zachowuje wygląd postaci i fizykę.
- **Storytelling z world knowledge**: rozumie kontekst sceny (grawitacja, materiały, perspektywa).

## Dostępność (Gemini app / Flow / YT Shorts / Create)
- **Aplikacja Gemini** (Web + Android + iOS): subskrypcje AI Plus, Pro, Ultra, globalnie tam gdzie Gemini app jest dostępny.
- **Google Flow** (kreatywne narzędzie filmmakerów): subskrypcje płatne.
- **YouTube Shorts**: za darmo, integracja w composerze Shorts.
- **YouTube Create App**: za darmo, mobile-first.
- **API**: dla developerów i enterprise "w nadchodzących tygodniach".
- **Wymóg wieku**: 18+.

## Porównanie z Sora 2 / Veo / Runway / Pika (table)

| Model            | Max długość klipu | Multimodal input        | Avatar/likeness | Watermark      | Free tier                  |
|------------------|-------------------|--------------------------|-----------------|----------------|----------------------------|
| **Gemini Omni Flash** | **10 s**     | tekst + obraz + audio + video | Tak (Avatar)   | SynthID (force)| **YouTube Shorts + Create**|
| Veo 3.1          | ~8 s              | tekst lub obraz          | Nie             | SynthID        | Nie (Premium only)         |
| Sora 2           | do 60 s           | tekst + obraz            | Cameos (dropped)| C2PA           | Limit darmowy w app        |
| Runway Gen-4     | 16 s              | tekst + obraz + video    | Act-One         | brak forced    | Limited credits            |
| Pika 2.5         | 10 s              | tekst + obraz            | PikaScenes      | brak forced    | Limited credits            |
| Luma Ray 2       | 10 s              | tekst + obraz            | Brak            | brak forced    | Limited credits            |

> Uwaga: WaveSpeed i Next Web zaznaczają, że **ByteDance Seedance 2.0 i Alibaba Wan 2.7 nadal biją Omni Flash na raw generation benchmarks** — ale Google wygrywa na **multimodal reasoning + chat-based editing + darmowy dystrybucji w YT**.

## SynthID + co Google wstrzymał (audio editing)
- **SynthID**: każdy klip ma niewidzialny watermark, verify-able w Gemini app, Chrome i Search. Wymuszony, brak API toggle do wyłączenia. Standard wszedł do OpenAI, Nvidia, ElevenLabs, Kakao.
- **Co wstrzymano**: **edycja mowy i audio** wewnątrz wygenerowanego klipu (np. zmiana tekstu wypowiedzi avatara, audio swap). Google: "still working to test this and better understand how we can bring this capability to users responsibly."
- **Powód**: ryzyko deepfake'ów w roku wyborczym (election-year deepfake exposure według WaveSpeed). Person-to-animal transformation z preserved voice też była w demach, ale wycofana z premiery.
- **Avatar safeguard**: numbers-aloud onboarding ma uniemożliwić utworzenie avatara z czyjegoś nagrania bez zgody.

## Polska / EU availability
- **Brak oficjalnego komunikatu** Google o specyficznych ograniczeniach EU/Polska dla Omni Flash.
- Rollout "globalny tam, gdzie aplikacja Gemini jest dostępna" — Polska ma Gemini app i subskrypcje AI Plus/Pro/Ultra, więc **teoretycznie powinno działać**.
- YouTube Shorts free tier: powinien być dostępny w PL (YT Shorts dostępne globalnie), ale weryfikacja w terenie zalecana w pierwszych dniach.
- **Ryzyko**: EU AI Act compliance — Google może opóźnić w EU funkcje generujące osoby (avatar) ze względu na obowiązki disclosure. Brak potwierdzenia.

---

## Potencjalne kąty narracyjne do shorta

1. **"Twoja kopia w 10 sekund"** — pokazuję jak Omni Flash robi avatar z mojego głosu w live demo (lub komentuję mechanikę "numbers aloud" jako anti-deepfake).
2. **"Darmowe AI video w YouTube Shorts od dziś"** — hook "spróbuj sam"; Google daje free tier w YT Shorts i Create, OpenAI i Runway nie.
3. **"Co Google ukrył w Omni Flash"** — narracja o wstrzymanej edycji mowy i deepfake risk; pokazuje że Google sam się boi własnego modelu.
4. **"Sora 2 vs Omni Flash"** — 60s Sory vs 10s Google, ale Google daje multimodal input i free YT integration. Kto wygrywa dla creatora?
5. **"10 sekund? Tyle wystarczy"** — analiza dlaczego 10 s to optymalna długość dla YT Shorts/Reels/TikTok i Google dobrze trafił.
6. **"SynthID — niewidzialny watermark, którego nie wyłączysz"** — wątek "AI provenance" + adopcja przez OpenAI, ElevenLabs.
7. **"Veo 3.1 jest martwy"** — Omni Flash zastąpi Veo w aplikacji Gemini; co to oznacza dla użytkowników Veo.

---

## Źródła
- [Introducing Gemini Omni — blog.google (primary)](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-omni/)
- [Google's Gemini Omni turns images, audio, and text into video — TechCrunch (19 maja 2026)](https://techcrunch.com/2026/05/19/googles-gemini-omni-turns-images-audio-and-text-into-video-and-thats-just-the-start/)
- [Google Launches Gemini Omni Video Model, but Holds Back Its Riskiest Feature — Tech Times (19 maja 2026)](https://www.techtimes.com/articles/316859/20260519/google-launches-gemini-omni-video-model-holds-back-its-riskiest-feature.htm)
- [Gemini Omni Flash Shipped: 10-Second Multi-Modal Video — WaveSpeed Blog (19 maja 2026)](https://wavespeed.ai/blog/posts/gemini-omni-flash-shipped-what-actually-launched/)
- [Google launches Gemini Omni Flash, conversational video-generation — The Next Web](https://thenextweb.com/news/google-gemini-omni-flash-video-model-io-2026)
- [Google's Gemini Omni Flash turns any input into video — gagadget](https://gagadget.com/en/711206-googles-gemini-omni-turns-anything-into-video-and-its-free-on-youtube-shorts/)
- ['Ask YouTube' brings AI-powered conversational search, adds Gemini Omni to Shorts — TechCrunch](https://techcrunch.com/2026/05/19/ask-youtube-brings-ai-powered-conversational-search-to-video-adds-gemini-omni-to-shorts/)
- [Gemini Omni, the 'create anything' model, starts today with lifelike video — 9to5Google](https://9to5google.com/2026/05/19/gemini-omni-create-anything-model-video/)
