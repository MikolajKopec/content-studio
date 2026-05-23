# Ministerstwo Cyfryzacji udostępniło 11 nowych modeli PLLuM — polski AI, otwarte licencje, AI Act

**Data:** 2026-05-23
**Temat:** Polska wypuszcza **11 otwartych modeli PLLuM** (4B-70B parametrów) zgodnych z AI Act — pierwsza taka porcja krajowego AI dostępna za darmo na Hugging Face, z realnymi wdrożeniami w urzędach.

---

## Kluczowe fakty i liczby

- **11 nowych modeli** rodziny PLLuM udostępnionych **21 maja 2026** przez Ministerstwo Cyfryzacji i konsorcjum **HIVE AI** pod kierownictwem NASK.
- Cztery rozmiary: **4B, 8B, 12B i 70B parametrów**. Modele 4B/8B/12B w trzech wariantach (base, instruct, dialog), 70B w dwóch (instruct, dialog).
- Modele wytrenowane na **~7 mln polskich tekstów** wyselekcjonowanych pod kątem jakości i legalności (licencje, domena publiczna — Monitor Polski, Dziennik Ustaw, stenogramy sejmowe, Creative Commons).
- Fine-tuning na **~80 tys. ręcznie tworzonych instrukcji**, w tym **~17 500 nowych instrukcji organicznych** i **ponad 6 000 wielo-turowych dialogów**.
- Łączny budżet projektu HIVE AI: **~18,5 mln PLN** (kontrakt z 25 marca 2025). Szersza inwestycja w polski ekosystem AI (PLLuM + PLLuM-Vision + PLLuM-Code + 12 000 laboratoriów AI w szkołach + API publiczne): **1,86 mld PLN** w ramach programu "Cyfrowy Uczeń i AI dla Polski".
- Wszystkie modele na **w pełni otwartych licencjach** z pełną dokumentacją zgodną z **AI Act** — opisem danych, metod treningu i procedur oceny jakości.
- Trening na superkomputerze **Bem2** z **do 300x H100 GPU** (ACK Cyfronet) i klastrze **Helios** — od 8 do 25 dni w zależności od rozmiaru modelu.
- Modele radzą sobie z **ponad 20 typami tekstów administracyjnych** — od decyzji urzędowych po pisma kancelaryjne.
- Asystent Obywatelski w **mObywatelu** (oparty na PLLuM, działa od kwietnia 2026) obsługuje już **~180 000 zapytań dziennie** od ponad **10 mln użytkowników**.
- Pilotaż w **Urzędzie Miasta Poznań**: **~90% odpowiedzi asystenta** okazało się w pełni poprawnych.

## Rodzina modeli i rozmiary

- **4B** — najszybszy, działa na ograniczonym sprzęcie, idealny do fine-tuningu na własnych danych.
- **8B i 12B** — kompromis między szybkością a jakością; rekomendowane do produkcyjnych systemów RAG.
- **70B** — flagowiec (faktycznie **71 mld parametrów** w wersji Llama-PLLuM-70B), radzi sobie z najbardziej złożonymi zadaniami bez dodatkowej adaptacji.

Modele 70B bazują na **Llama-3.1-70B** (licencja Llama 3.1) z continued pretrainingiem na **~6,7 mld polskich tokenów**.

## Architektura i podstawa

- Linia 70B: pochodna **Llama 3.1 70B** od Meta.
- Mniejsze modele (4B/8B/12B) — własne i dostosowane architektury rozwijane przez konsorcjum.
- Trwają prace nad **"Polstral"** — wspólnym modelem z **Mistral AI**, adaptacją Mistral-Small-24B do języka polskiego.
- W planach **PLLuM-Vision** (model multimodalny) i **PLLuM-Code** (do programowania).

## Realne wdrożenia (stan na maj 2026)

- **mObywatel** — Asystent Obywatelski (PIT, ZUS, dokumenty, 800+, terminy urzędowe).
- **Urząd Miasta Gdynia** — PLLuM zintegrowany z miejską wyszukiwarką BIP; obywatele pytają w języku naturalnym.
- **Urząd Miasta Poznań** — pomoc dla urzędników w wyszukiwaniu informacji (aplikacja ShpaRAG).
- **Ministerstwo Cyfryzacji** i **KPRM** — wewnętrzny asystent (rozszerzenie od czerwca 2026).
- **Częstochowa** — testy pilotażowe.

## Porównanie z innymi polskimi AI (Bielik) i krytyka

- **Marzec 2026**: raport firmy **Oxido** dał PLLuM 8x7B **5,95 pkt**, Bielikowi 3.0 **6,38 pkt**, podczas gdy Gemini zdobył **8,13 pkt**, a GPT-5.2 **7,66 pkt** na zadaniach polskojęzycznych.
- **Krytyka metodologii** ze strony Sebastiana Kondrackiego (Bielik/SpeakLeash): zagraniczne modele miały dostęp do internetu, polskie tylko do danych treningowych — *"To jak porównywać F-16 do furgonetki"*.
- **Aleksandra Tomaszewska** (wicedyrektor w MC): test "pozbawiony podstaw naukowych, peer review i replikowalnej metodologii".
- Argument obrońców: PLLuM celuje w język urzędowy, lokalny kontekst prawny i wdrożenia on-premise — nie w konkurencję chatbotową z OpenAI.

## Implikacje dla użytkownika

- **Każdy może pobrać** model z Hugging Face (konto **CYFRAGOVPL**) bez zezwoleń, bez raportowania.
- Polskie firmy mogą **budować własne aplikacje AI on-premise** — dane nie wychodzą do USA.
- Modele zgodne z **AI Act** od dnia premiery — gotowe do użycia w sektorze publicznym i regulowanym (finanse, zdrowie).
- 4B i 8B uruchomisz na **konsumenckim GPU** (np. RTX 4090); 70B wymaga klastra.

---

## Potencjalne kąty narracyjne do shorta

1. **"Polska wypuściła 11 modeli AI ZA DARMO."** — first 2 sec: ekran Hugging Face z logo PLLuM, licznik 4B → 70B. Hook na suwerenność technologiczną.
2. **"Wydaliśmy 1,86 mld zł na polskie AI. Co dostaliśmy?"** — porównanie z budżetami OpenAI/Meta, ale podkreślenie wdrożeń (mObywatel, Gdynia, Poznań) — **180 000 zapytań dziennie**.
3. **"GPT-5.2 dostał 7,66 pkt. PLLuM 5,95. Czy to porażka?"** — kontra: F-16 vs furgonetka, internet vs offline. Pokazać, że ranking był nierzetelny.
4. **"PLLuM ma rozumieć urzędniczy bełkot lepiej niż ChatGPT."** — pokazać przykład pisma urzędowego ("uprzejmie zawiadamiam, iż wszczęto postępowanie...") tłumaczonego na ludzki.
5. **"70B parametrów. Trenowane na Bemie2. 300 H100. Polski superkomputer."** — kąt techniczny, "polska potęga obliczeniowa".
6. **"Twój urząd już używa PLLuM. Nawet o tym nie wiesz."** — Asystent Obywatelski w mObywatelu, **10 mln użytkowników**, **90% trafnych odpowiedzi** w Poznaniu.
7. **"Mistral + Polska = Polstral."** — zapowiedź kolaboracji NASK z Mistral AI, wątek "polski Mistral nadchodzi".

---

## Źródła

- [Gov.pl / Ministerstwo Cyfryzacji — Więcej, szybciej, po polsku. Rodzina modeli PLLuM się powiększa (21.05.2026)](https://www.gov.pl/web/cyfryzacja/wiecej-szybciej-po-polsku-rodzina-modeli-pllum-sie-powieksza)
- [ITwiz — Udostępniono 11 nowych modeli PLLuM (21.05.2026)](https://itwiz.pl/udostepniono-11-nowych-modeli-pllum-otwartych-polskich-llm-dla-administracji-i-biznesu/)
- [PurePC — Ministerstwo Cyfryzacji i HIVE AI udostępniają 11 modeli PLLuM (21.05.2026)](https://www.purepc.pl/pllum-11-modeli-hive-ai-ministerstwo-cyfryzacji-polski-jezyk-otwarte-licencje-zgodnosc-act)
- [CyberDefence24 — Rodzina modeli PLLuM się powiększa (21.05.2026)](https://cyberdefence24.pl/technologie/rodzina-modeli-pllum-sie-powieksza-udostepniono-11-nowych-polskich-model)
- [Hugging Face — CYFRAGOVPL (Ministerstwo Cyfryzacji)](https://huggingface.co/CYFRAGOVPL)
- [Hugging Face — Llama-PLLuM-70B-chat-2512 (model card)](https://huggingface.co/CYFRAGOVPL/Llama-PLLuM-70B-chat-2512)
- [NASK — Od modeli do wdrożeń. PLLuM na ścieżce realnych zastosowań](https://www.nask.pl/aktualnosci/od-modeli-do-wdrozen-pllum-na-sciezce-realnych-zastosowan)
- [WNP — Koniec urzędniczego bełkotu? 11 nowych polskich modeli AI](https://www.wnp.pl/tech/koniec-urzedniczego-belkotu-pojawilo-sie-11-nowych-polskich-modeli-ai,1064500.html)
- [XYZ — Burza wokół Bielika i PLLuM. "To jak porównywać F-16 do furgonetki" (wywiad z S. Kondrackim)](https://xyz.pl/burza-wokol-bielika-i-pllum-to-jak-porownywac-f-16-do-furgonetki-czy-polskie-ai-naprawde-przegrywa-wywiad/)
- [Wirtualne Media — Na rynek trafiło 11 nowych modeli PLLuM (21.05.2026)](https://www.wirtualnemedia.pl/na-rynek-trafilo-11-nowych-modeli-pllum-polskiego-ai,7288287725222048a)
- [MamStartup — Rodzina PLLuM się powiększa: 11 nowych modeli](https://mamstartup.pl/nawet-bez-800-rodzina-pllum-sie-powieksza-przybylo-nam-11-nowych-modeli/)
