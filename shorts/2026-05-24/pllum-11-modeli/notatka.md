# PLLuM się rozrasta — 11 nowych polskich modeli AI za darmo na Hugging Face

**Data:** 2026-05-24
**Temat:** Konsorcjum HIVE AI pod kierownictwem NASK i Ministerstwa Cyfryzacji wypuściło 23 maja 2026 jedenaście nowych modeli PLLuM (4B–70B), wszystkie na otwartych licencjach, zgodne z AI Act, do pobrania za darmo z Hugging Face — to największe jak dotąd uderzenie polskiego sektora publicznego w komercyjne LLM-y.

---

## Kluczowe fakty i liczby

- Premiera **23 maja 2026** — Ministerstwo Cyfryzacji i konsorcjum **HIVE AI** udostępniają **11 modeli PLLuM** w czterech rozmiarach: **4B, 8B, 12B i 70B** parametrów.
- Mniejsze i średnie modele (4B/8B/12B) dostępne są w **trzech wariantach** — bazowy, instrukcyjny, dialogowy. Model **70B** wychodzi w **dwóch** — instrukcyjnym i dialogowym.
- Wszystkie modele udostępniono na **otwartych licencjach** z pełną dokumentacją zgodną z **AI Act** (model cards, opis danych, metodyka oceny).
- Linia **Llama-PLLuM-70B** bazuje na **Meta Llama 3.1 70B** i jest publikowana na licencji **Llama 3.1** (użycie komercyjne dozwolone).
- Modele obsługują **ponad 20 typów tekstów administracyjnych** — pisma urzędowe, decyzje, regulaminy, dokumenty z Monitora Polskiego i Dziennika Ustaw.
- Dane treningowe: **~7 mln polskich tekstów** + **~80 tys. ręcznie tworzonych instrukcji** (łącznie z 2024) + **~17,5 tys. nowych instrukcji organicznych** + **6 tys.+ dialogów wieloturowych**.
- Dla największego modelu Llama-PLLuM-70B dataset to **~150 mld tokenów** (CC-BY-NC-4.0) i **~28 mld tokenów** w wersji w pełni otwartej do użytku komercyjnego.
- Trening na superkomputerze **Bem2** (ACK Cyfronet AGH), do **300× H100**, czas treningu **~8–25 dni** w zależności od rozmiaru modelu.
- Całość finansowana z rządowego programu wartego **1,86 mld PLN** na polskie AI; sam projekt HIVE AI to budżet **~18,98 mln PLN**.
- Wszystkie modele dostępne na koncie **CYFRAGOVPL** na Hugging Face — z poprzednich edycji odnotowano już **~60 tys. pobrań** i **600 tys. promptów** użytkowników.
- Konsorcjum HIVE AI (2025): **NASK** (lider) + **ACK Cyfronet AGH**, **IPI PAN**, **OPI PIB**, **Instytut Slawistyki PAN**, **Uniwersytet Łódzki**, **Politechnika Wrocławska**, **COI**.
- Wdrożenie produkcyjne planowane od **czerwca 2026** w KPRM i Ministerstwie Cyfryzacji; modele wcześniejszej generacji już działają w aplikacji **mObywatel**.

---

## Specyfikacja techniczna

- **Architektura:** transformery, causal LM, precyzja **BF16**.
- **Base modele:** najmniejsze warianty PLLuM trenowane od podstaw na polskim korpusie; 70B fine-tunowany na bazie Llama 3.1 (stąd prefix `Llama-PLLuM`).
- **Specjalność RAG:** modele celowo dostrajane do pracy z Retrieval-Augmented Generation i polskim językiem urzędowym.
- **Dane:** umowy licencyjne, domena publiczna, Monitor Polski, Dziennik Ustaw, stenogramy parlamentarne, zasoby Creative Commons; pierwszy w Polsce **korpus preferencji** z anotacją człowieka (do RLHF).
- **Bezpieczeństwo:** warianty „dialog" zostały dodatkowo zabezpieczone na bazie realnych interakcji użytkowników z poprzednich PLLuM-ów.

## Warianty modeli — kogo to interesuje

- **Bazowy** — dla researcherów i firm chcących dotrenować model na własnych danych.
- **Instrukcyjny** — gotowy do zadań typu „streść pismo", „napisz decyzję administracyjną", „uprość język prawniczy".
- **Dialogowy** — chatbot z safety layerem, do produkcyjnych asystentów (urząd, mObywatel, firmowe okienka obsługi).

## Model biznesowy i licencja

- **Bezpłatne** dla wszystkich — administracja, biznes, osoby prywatne.
- Otwarte licencje pozwalają na komercyjne wdrożenia bez „obchodzenia ograniczeń licencyjnych" typowych dla GPT/Gemini.
- Część modeli (te oparte na Llama 3.1) podlega standardowej licencji Meta; warianty trenowane od podstaw idą na liberalniejszych warunkach.

## Porównanie z konkurencją

- **Bielik (SpeakLeash, ~11B)** — wciąż najpopularniejszy polski model społecznościowy, ale PLLuM jest większy (70B), państwowy i celowo dostrojony do administracji. Bielik dostał wsparcie m.in. od Rafała Brzoski (InPost); PLLuM jest finansowany przez Skarb Państwa.
- **Niezależny test z marca 2026 (12 modeli, 20 zadań):** Gemini **8,13 pkt**, GPT-5.2 **7,66**, Bielik **6,38**, PLLuM **5,95** — polskie modele wypadły słabo nawet na zadaniach z języka i kultury polskiej (np. „Pan Tadeusz"). Premiera 70B ma to nadrobić skalą.
- W przeciwieństwie do ChatGPT i Gemini PLLuM jest **lokalnie hostowalny** — kluczowe dla sektora publicznego ze względu na suwerenność danych i wymogi RODO/AI Act.

## Implikacje dla rynku

- Firmy i urzędy dostają pełnoprawny **alternatywny stos LLM** bez kosztu per-token i bez wysyłania danych do USA.
- Wzmacnia narrację o **suwerenności technologicznej** UE — model w pełni audytowalny, zgodny z AI Act od dnia premiery.
- Dla devów: gotowe warianty pod RAG i konkretne use case'y administracyjne — mniej pracy z fine-tuningiem.
- Dla społeczności open-source: największy w historii „zrzut" polskich LLM-ów w jeden dzień, plus pierwszy publiczny polski korpus preferencji.

---

## Potencjalne kąty narracyjne do shorta

- **„11 polskich modeli AI w jeden dzień — i wszystkie za darmo na Hugging Face"** (skala + free)
- **„70 miliardów parametrów po polsku, za zero złotych — w tym samym dniu OpenAI każe płacić 200 dolarów miesięcznie"** (kontrast PL vs. USA)
- **„Państwo wpakowało 1,86 miliarda złotych w polskie AI — właśnie sprawdzamy, co dostaliśmy"** (kasa publiczna + accountability)
- **„Pobierasz polskie AI z Hugging Face i odpalasz na własnym laptopie — koniec wycieków danych do ChatGPT"** (suwerenność + praktyka)
- **„Polski model językowy zna 20 rodzajów pism urzędowych — w teorii napisze za ciebie odwołanie do ZUS-u"** (use case dla zwykłego widza)
- **„Bielik vs PLLuM: który polski model AI wygrywa po nowej premierze 70B?"** (lokalny rywal, clickowy framing)
- **„Niezależny test mówił, że polskie AI przegrało z Gemini 8,13 do 5,95 — czy nowy 70B to zmieni?"** (konkretne liczby + dramat)

---

## Źródła

- [Ministerstwo Cyfryzacji — Więcej, szybciej, po polsku. Rodzina modeli PLLuM się powiększa](https://www.gov.pl/web/cyfryzacja)
- [NASK — PLLuM, czyli polska sztuczna inteligencja rośnie w sile](https://www.nask.pl/aktualnosci/pllum-czyli-polska-sztuczna-inteligencja-rosnie-w-sile)
- [Hugging Face — CYFRAGOVPL/Llama-PLLuM-70B-chat](https://huggingface.co/CYFRAGOVPL/Llama-PLLuM-70B-chat)
- [Hugging Face — CYFRAGOVPL/Llama-PLLuM-70B-instruct](https://huggingface.co/CYFRAGOVPL/Llama-PLLuM-70B-instruct)
- [PurePC — Ministerstwo Cyfryzacji i HIVE AI udostępniają 11 modeli PLLuM](https://www.purepc.pl/pllum-11-modeli-hive-ai-ministerstwo-cyfryzacji-polski-jezyk-otwarte-licencje-zgodnosc-act)
- [Cyberdefence24 — Rodzina modeli PLLuM się powiększa. 11 nowych polskich modeli AI](https://cyberdefence24.pl/technologie/rodzina-modeli-pllum-sie-powieksza-udostepniono-11-nowych-polskich-model)
- [ITwiz — Udostępniono 11 nowych modeli PLLuM dla administracji i biznesu](https://itwiz.pl/udostepniono-11-nowych-modeli-pllum-otwartych-polskich-llm-dla-administracji-i-biznesu/)
- [Wirtualnemedia — Na rynek trafiło 11 nowych modeli PLLuM](https://www.wirtualnemedia.pl/na-rynek-trafilo-11-nowych-modeli-pllum-polskiego-ai,7288287725222048a)
- [Instalki — Płacisz za dostęp do AI, a Polacy dają to za darmo](https://www.instalki.pl/news/software/placisz-za-dostep-do-ai-a-polacy-daja-to-za-darmo/)
- [MamStartup — Rodzina PLLuM się powiększa: 11 nowych modeli](https://mamstartup.pl/nawet-bez-800-rodzina-pllum-sie-powieksza-przybylo-nam-11-nowych-modeli/)
- [NASK — O projekcie HIVE AI](https://www.nask.pl/instytut/dla-instytucji/hive-ai/o-projekcie)
- [Bankier — Polska AI przegrała z gigantami: Bielik i PLLuM w testach (marzec 2026)](https://www.bankier.pl/wiadomosc/Polska-AI-przegrala-z-gigantami-Bielik-i-PLLuM-wypadly-slabo-w-testach-9099328.html)
- [Spider's Web — Polskie boty to tumany. Test z języka i kultury polskiej](https://spidersweb.pl/2026/03/pllum-bielik-jezyk-polski-test.html)
- [arXiv — PLLuM: A Family of Polish Large Language Models](https://arxiv.org/abs/2511.03823)
