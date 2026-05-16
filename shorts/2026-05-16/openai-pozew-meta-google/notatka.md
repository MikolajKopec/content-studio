# OpenAI pozwane: ChatGPT podobno przekazywał zapytania użytkowników do Meta i Google

**Data:** 2026-05-16
**Temat:** OpenAI w ciągu kilku dni dostało **dwa** równoległe pozwy zbiorowe w Kalifornii, w których powodowie twierdzą, że ChatGPT.com miał wbudowany Facebook Pixel i Google Analytics, przez co treści rozmów (a przynajmniej ich tematy) plus identyfikatory użytkowników miały lecieć w czasie rzeczywistym do Mety i Google bez zgody.

---

## Kluczowe fakty i liczby

- **Dwa pozwy zbiorowe w ciągu tygodnia.** Pierwszy: **Couture v. OpenAI Global, LLC**, sygnatura **3:26-cv-03000-H-GC**, U.S. District Court for the Southern District of California, złożony **14 maja 2026**. Drugi: **Lim v. OpenAI Global, LLC**, sygnatura **3:26-cv-04063**, Northern District of California — powoda reprezentują prawnicy z kancelarii **Bursor & Fisher P.A.** (Philip L. Fraietta, Max S. Roberts, Joshua R. Wilner).
- **Zarzut techniczny:** OpenAI miało wstrzyknąć w kod ChatGPT.com **Facebook Pixel** (Meta) oraz **Google Analytics**, a te skrypty miały automatycznie wysyłać do Mety i Google m.in. tytuły kart przeglądarki generowane z zapytań użytkownika (np. "Super Bowl 2005 Winner"), identyfikatory ciasteczek **c_user**, **fr**, **fbp** (Meta) oraz **_Secure-3PSID** i zhashowane identyfikatory zalogowania (Google).
- **Co realnie miało wyciekać:** tematy zapytań, ID konta Facebook (przez cookie c_user można skleić aktywność z konkretną osobą na Facebooku), zhashowane adresy e-mail, identyfikatory urządzenia/przeglądarki.
- **Skala potencjalnej klasy:** ChatGPT ma w lutym 2026 oficjalnie **900 milionów** użytkowników tygodniowo (OpenAI), a szacunki branżowe mówią o około **1 miliardzie** użytkowników miesięcznie. **50 mln** subskrybentów płacących, **9 mln** użytkowników biznesowych.
- **Roszczenia finansowe:** powodowie żądają **5 000 USD za naruszenie** na podstawie California Penal Code § 637.2 (CIPA) albo trzykrotności faktycznej szkody. Pomnożone przez miliony użytkowników klasy kalifornijskiej daje to teoretyczną ekspozycję **w miliardach dolarów**.
- **Podstawy prawne:** federalny Electronic Communications Privacy Act (ECPA), California Invasion of Privacy Act (CIPA) oraz prawo do prywatności z konstytucji stanu Kalifornia. Pozwy mówią wprost o "intentionally installed wiretaps" — celowo zainstalowanych podsłuchach.
- **OpenAI:** na **16 maja 2026** brak oficjalnej, merytorycznej odpowiedzi. Firma odsyła do polityki prywatności, która ogólnikowo informuje o dzieleniu się danymi z "vendorami" w celach analitycznych — to będzie ich główna linia obrony.

## Jak działa Facebook Pixel na stronie

Facebook Pixel to fragment kodu JavaScript, który ładuje się na stronie i przy każdej interakcji (otwarcie strony, klik, zmiana tabu) wysyła do serwerów Mety request HTTP zawierający URL strony, **tytuł karty przeglądarki** i komplet ciasteczek użytkownika z domeny facebook.com. Jeśli użytkownik jest zalogowany do FB w tej samej przeglądarce, cookie **c_user** zawiera jego Facebook ID — czyli Meta nie tylko widzi temat zapytania, ale wie też, **kto je zadał**. Tytuł karty w ChatGPT jest dynamiczny i często odzwierciedla treść rozmowy (model sam generuje tytuł na podstawie pierwszego promptu).

## Precedens: Meta Pixel w szpitalach (2022-2025)

Identyczny mechanizm spowodował kilkanaście ugód w sektorze medycznym w USA. Najgłośniejsze:

- **Advocate Aurora Health — 12,25 mln USD** ugody za Pixel na portalu pacjenta.
- **MarinHealth — 3 mln USD** ugody za Pixel obecny na stronie od 2019 do 2025.
- **Jefferson Healthcare, Skagit Regional, NorthBay Healthcare, Reid Health** — kolejne ugody w 2024-2025.
- **In re Meta Pixel Healthcare Litigation** — w kwietniu 2025 sąd nakazał **Markowi Zuckerbergowi** zeznawać osobiście jako świadek.

Sądy konsekwentnie uznawały, że transmisja danych do Mety bez zgody to "wiretap" w rozumieniu ECPA. Ten dorobek to fundament pozwów przeciw OpenAI.

## Co już się stało z podobną sprawą AI

Niemal identyczny pozew został złożony w kwietniu 2026 przeciw **Perplexity AI** — z tymi samymi zarzutami co do Pixela i Google DoubleClick. Został **dobrowolnie wycofany** przez powoda, prawdopodobnie po cichej ugodzie lub usunięciu trackerów. To pokazuje, że kancelarie traktują to jak typową falę pozwów "pixel sweep" — szukają, składają, czekają na ugodę.

---

## Potencjalne kąty narracyjne do shorta

1. **"Twoje rozmowy z ChatGPT mogły trafiać do Facebooka — i wiedzą tam, że to ty"** — open na cookie c_user i jak ChatGPT zna twoje Facebook ID.
2. **"OpenAI wkleiło Facebook Pixel na ChatGPT. Tak, ten sam, przez który szpitale w USA zapłaciły 12 mln dolarów odszkodowań"** — most ze świata medycznego do AI.
3. **"900 milionów ludzi tygodniowo. Pomnóż przez 5 000 dolarów za naruszenie"** — kalkulacja teoretycznej kary, billion-dollar shock.
4. **"Tytuł karty w ChatGPT to twój prompt. A tytuł karty Meta zbiera automatycznie"** — pokaż technicznie, jak prymitywnie to wyciekało.
5. **"Pytałeś ChatGPT o objawy raka, długi, prawnika? Pozew mówi, że Meta to widziała"** — emocjonalny hak na wrażliwe tematy z pozwu (zdrowie, finanse, prawo).
6. **"Perplexity miała ten sam pozew miesiąc temu. Wyparowali. Teraz OpenAI"** — narracja o fali pozwów na AI.
7. **"OpenAI uważa, że polityka prywatności załatwia sprawę. CIPA mówi: 5 000 dolarów od głowy"** — konflikt linii obrony OpenAI z prawem stanowym.

---

## Źródła

- TopClassActions, *OpenAI class action claims ChatGPT queries shared with Meta, Google* (14.05.2026) — https://topclassactions.com/lawsuit-settlements/lawsuit-news/openai-class-action-claims-chatgpt-queries-shared-with-meta-google/
- TechStartups, *ChatGPT allegedly shared users' query topics, user IDs, and email addresses with Google and Meta* (14.05.2026) — https://techstartups.com/2026/05/14/chatgpt-allegedly-shared-users-query-topics-user-ids-and-email-addresses-with-google-and-meta-new-class-action-lawsuit-claims/
- The Deep Dive, *Class Action Accuses OpenAI of Routing ChatGPT Queries to Meta and Google Without User Consent* — https://thedeepdive.ca/class-action-accuses-openai-of-routing-chatgpt-queries-to-meta-and-google-without-user-consent/
- CyberSecurityNews, *OpenAI Hit with Class-Action Privacy Lawsuit for Sharing ChatGPT Data with Google and Meta* — https://cybersecuritynews.com/openai-chatgpt-privacy-lawsuit/
- Cybernews, *ChatGPT maker OpenAI sued for sharing chatbot queries with Meta, Google* (15.05.2026) — https://cybernews.com/ai-news/openai-chatgpt-class-action-lawsuit-facebook-meta/
- Futurism, *OpenAI Accused of Handing Over Your Intimate Personal Information to Meta and Google* — https://futurism.com/artificial-intelligence/openai-personal-information-meta-google
- Law360, *Lim v. OpenAI Global, LLC* (3:26-cv-04063, N.D. Cal.) — https://www.law360.com/cases/69fa11c9cfd95c852eb37899
- Bloomberg Law, *OpenAI Sued Over Sharing of Chatbot Queries With Meta, Google* — https://news.bloomberglaw.com/privacy-and-data-security/openai-sued-over-sharing-of-chatbot-queries-with-meta-google
- Cohen Milstein, *In re Meta Pixel Healthcare Litigation* (precedens) — https://www.cohenmilstein.com/case-study/in-re-meta-pixel-healthcare-litigation/
- HIPAA Journal, *MarinHealth Pays $3 Million to Settle Class Action Meta Pixel Lawsuit* — https://www.hipaajournal.com/marinhealth-meta-pixel-class-action-settlement/
- Milberg, *Aurora Health Agrees To $12.25M Settlement in Tracking Pixel Suit* — https://milberg.com/news/aurora-health-data-breach-proposed-settlement/
