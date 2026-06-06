# ChatGPT zaczął „śnić" — nowa pamięć Dreaming V3 rusza dla Plus i Pro w USA

**Data:** 2026-06-06
**Temat:** OpenAI uruchomiło Dreaming V3 — pamięć ChatGPT, która sama syntetyzuje wspomnienia w tle, aktualizuje stare fakty z biegiem czasu i niedługo trafi też do darmowych użytkowników.

---

## Kluczowe fakty i liczby

- **4 czerwca 2026** OpenAI ogłosiło rollout Dreaming V3 wpisem „Dreaming: Better memory for a more helpful ChatGPT" — pierwsza duża zmiana architektury pamięci ChatGPT od jej premiery w **kwietniu 2024**.
- Faktualny recall w wewnętrznym benchmarku OpenAI: **41,5% (2024) → 67,9% (2025) → 82,8% (2026)** — czyli skok o **+41 pkt proc.** w dwa lata.
- Stosowanie preferencji użytkownika („preference adherence"): **31,4% → 71,3%**. Trafność czasowa („time-sensitive"): **52,2% → 75,1%**.
- **Około 5× mniej compute** potrzeba teraz, by serwować dreaming użytkownikom Free — to dlatego OpenAI dopiero teraz może wpuścić tę funkcję do darmowego tieru.
- Plus i Pro w zamian dostają **2× większą pojemność pamięci** niż dotychczas.
- Start: **USA, Plus i Pro**. Free, Go i kolejne kraje „w nadchodzących tygodniach". Apki iOS/Android wymagają update'u.
- ChatGPT ma **~900 mln tygodniowych użytkowników** (luty 2026) — to jedna z największych zmian UX w masowym produkcie AI w 2026.
- Pamięć **niedostępna w UE, UK, Szwajcarii, Norwegii, Islandii i Liechtensteinie** — regulator wciąż blokuje funkcję w EOG.

## Jak to działa — i czym różni się od starej pamięci

- **Stara pamięć (od kwietnia 2024)**: dwuwarstwowa — jawne „Saved memories" (musiałeś powiedzieć „zapamiętaj to") plus pomocniczy Dreaming V0 w tle.
- **Dreaming V3**: jeden asynchroniczny proces w tle syntetyzuje pamięć z wielu rozmów jednocześnie. „Saved memories" przestaje być fundamentem — staje się opcjonalną nakładką.
- System optymalizuje trzy wymiary: **freshness** (świeżość), **continuity** (ciągłość kontekstu między rozmowami), **relevance** (filtrowanie szumu).
- Sztandarowy przykład OpenAI: powiesz w marcu „lecę do Singapuru w lipcu" — w sierpniu Twoja pamięć automatycznie przepisuje się na „byłeś w Singapurze w lipcu 2026". **Bez Twojej interwencji.**
- Według analiz technicznych pod spodem siedzi kombinacja modułów pamięci rekurencyjnej i baz wektorowych zoptymalizowanych pod szybki recall.

## Tier-by-tier: kto ma co domyślnie

| Plan | Dreaming V3 | Domyślnie | Uwagi |
|---|---|---|---|
| Free | tak (wkrótce) | ON, opt-out | pierwszy raz dostaje dreaming |
| Plus | tak | ON, opt-out | **2× więcej pamięci** |
| Pro | tak | ON, opt-out | **2× więcej pamięci** |
| Team | tak | ON | wyłączony z trainingu |
| Enterprise | tak | **OFF** | sterowane przez admina |
| Edu | tak | **OFF** | sterowane przez admina |

## Kontrole prywatności i opt-out

- **Memory Summary Page** — nowa strona, gdzie widzisz „spójny profil prozą" posortowany w kategorie (praca, hobby, podróże). Możesz edytować, kasować, instruować.
- **Settings → Memory → Saved memories** — można wrócić do starego, jawnego systemu list.
- **Temporary Chat** — rozmowa nie zapisuje i nie czyta pamięci.
- Wyłączenie pamięci usuwa zsyntezowane informacje **w ciągu 30 dni**, nie natychmiast.
- Logi skasowanych „saved memories" OpenAI może trzymać **do 30 dni** na potrzeby debugu i safety.
- **Audit trail ma dziury**: Memory Summary „niekoniecznie pokazuje wszystko, co ChatGPT pamięta". Skasowanie rozmowy nie kasuje pochodnych wspomnień — trzeba usunąć obie rzeczy ręcznie.

## Kontrowersje i czerwone flagi

- **Cytowane badanie arXiv (luty 2026)**: **96%** wpisów pamięci jest tworzonych jednostronnie przez system, bez prośby użytkownika. **28%** zawiera dane osobowe w rozumieniu RODO, **52%** wnioski psychologiczne.
- Tenable Research wskazał **podatność na prompt injection** — można potencjalnie wstrzykiwać fałszywe „wspomnienia".
- Europejski regulator nałożył już na OpenAI **15 mln EUR kary GDPR** (grudzień 2024) — Dreaming V3 wzmaga obawy o „surveillance-by-default".
- **82%** ankietowanych użytkowników w USA uważa rozmowy z chatbotami za „wrażliwe lub bardzo wrażliwe".
- Część długoletnich userów narzeka, że szczegółowe listy zapamiętanych faktów zostały „skondensowane do schludnego akapitu", gubiąc niuanse.

## Implikacje

- **UX:** ChatGPT przestaje być „bezpaństwowym" chatbotem — staje się asystentem, który zna Twoją linię życia. To pierwsza masowa premiera tej klasy mechanizmu.
- **Konkurencja:** Anthropic i Google muszą odpowiedzieć — Claude ma „Projects" i „Memory" w testach, Gemini ma personalizację przez konto Google. Dreaming V3 ustawia poprzeczkę na **82,8% recall** jako benchmark do bicia.
- **Ekonomia compute:** **5× tańszy** background synthesis to sygnał, że OpenAI rozwiązało problem skalowania pamięci na setki milionów userów — co było główną blokadą wcześniej.
- **Rynek polski:** Funkcja chwilowo niedostępna w UE — ale gdy ruszy, zmienia codzienne use case'y (asystent osobisty, planowanie, długie projekty).

---

## Potencjalne kąty narracyjne do shorta

- **„ChatGPT teraz śni — dosłownie. OpenAI tak nazwało nową pamięć."** (hook semantyczny, dziwność słowa „śni" w kontekście AI)
- **„Z 41% do 83% w dwa lata — ChatGPT przestał zapominać."** (twardy kontrast liczbowy, łatwy do wyświetlenia)
- **„96% rzeczy, które ChatGPT o Tobie wie, nigdy mu nie powiedziałeś."** (counterintuitive + prywatność, najmocniejszy dramat)
- **„OpenAI obcięło compute pięciokrotnie — i dlatego ChatGPT zaczyna pamiętać darmowych userów."** (paradoks: oszczędność jako bramka do masowej premiery)
- **„Powiesz ChatGPT, że jedziesz do Singapuru. Po wakacjach sam przepisze to na »byłeś«."** (konkretny scenariusz, łatwo zwizualizować)
- **„Pamięć ChatGPT właśnie ruszyła — ale nie dla Ciebie. Polska na liście wykluczonych."** (lokalny hook PL, regulacyjny twist)
- **„Apple, Google i Anthropic mają nowy benchmark do bicia: 82,8%."** (kontekst wojny AI, big-tech drama)

---

## Źródła

- [Dreaming: Better memory for a more helpful ChatGPT — OpenAI (oficjalny blog)](https://openai.com/index/chatgpt-memory-dreaming/)
- [OpenAI expands ChatGPT memory after 5x compute cut — implicator.ai](https://www.implicator.ai/openai-will-expand-chatgpt-memory-to-free-users-after-5x-compute-cut/)
- [ChatGPT Memory Dreaming Update: OpenAI Rewrites Personalization Engine, Limits Audit Trail — TechTimes](https://www.techtimes.com/articles/317840/20260605/chatgpt-memory-dreaming-update-openai-rewrites-personalization-engine-limits-audit-trail.htm)
- [OpenAI ChatGPT Dreaming V3 memory upgrade: how it works — Cryptonomist](https://en.cryptonomist.ch/2026/06/05/openai-chatgpt-dreaming-v3-memory/)
- [ChatGPT 'Dreaming V3' Memory: Self-Updating AI Recall — Digital Applied](https://www.digitalapplied.com/blog/chatgpt-memory-dreaming-v3-openai-2026-guide)
- [OpenAI overhauls ChatGPT memory with 'dreaming' — Resultsense](https://www.resultsense.com/news/2026-06-05-openai-chatgpt-dreaming-memory/)
- [ChatGPT's New 'Dreaming' Memory, Explained — FindSkill.ai](https://findskill.ai/blog/chatgpt-dreaming-memory-explained/)
- [ChatGPT memory functionality intelligently updated — GIGAZINE](https://gigazine.net/gsc_news/en/20260605-chatgpt-memory-dreaming-v3/)
- [OpenAI says ChatGPT's memory feature is getting smarter and coming to free users — 9to5Mac](https://9to5mac.com/2026/06/04/openai-says-chatgpts-memory-feature-is-getting-smarter-and-coming-to-free-users/)
