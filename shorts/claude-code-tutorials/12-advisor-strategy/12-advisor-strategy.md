# 12 — Zgadywanie modelu to nigdy nie powinna być twoja robota

**Platform:** platform-agnostic (TikTok / Reels / Shorts)
**Length:** 40s (hard max)
**Type:** insight / contrarian
**Framework:** Contrarian Hook + 2 Arguments (40s)
**Źródło:** https://claude.com/blog/the-advisor-strategy

---

## Angle

Advisor strategy to API feature, ale sedno jest uniwersalne: **model sam decyduje, kiedy potrzebuje więcej mocy**, zamiast zrzucać ten wybór na użytkownika. Dla subskrybenta Claude Code / claude.ai to intuicyjne i wartościowe — każdy, kto przełączał `/model` albo wahał się "Opus czy Sonnet?", od razu rozumie.

Nie tłumaczę API. Stawiam tezę: **zgadywanie modelu to był błąd, który właśnie się kończy.**

---

## Hook Options

1. **"Do tej pory przy Claudeie musiałeś sam zgadywać, kiedy włączyć mocniejszy model."** ← wybrany
2. "Jeśli kiedyś zastanawiałeś się, czy dać to Opusowi czy Sonnetowi — to pytanie przestaje mieć sens."
3. "Anthropic właśnie pokazał, że ręczne wybieranie modelu to był błąd."

---

## Script (z notatkami produkcyjnymi)

```
[0-3s] "Do tej pory przy Claudeie musiałeś sam zgadywać, kiedy włączyć mocniejszy model."
  Shot: Close-up, direct to camera
  Text: Opus czy Sonnet?
  Pacing: Medium

[3-10s] "Jak włączasz Opusa do wszystkiego, marnujesz limity. Jak zostajesz przy tańszym Sonnecie, zacina się na trudniejszych rzeczach."
  Shot: Split — po lewej Claude Code z `/model opus` i malejącym paskiem limitu; po prawej Sonnet, który "kręci się" nad trudnym zadaniem
  Text: Za dużo / za mało
  Pacing: Medium

[10-18s] "Anthropic właśnie pokazał coś, co to kończy. Tańszy model pracuje normalnie. A kiedy utknie, sam prosi mądrzejszego o radę."
  Shot: Animacja — Sonnet pracuje, zacina się na jednym kroku, w tle pojawia się Opus z podpowiedzią, Sonnet wraca do roboty
  Text: Tańszy pyta mądrzejszego — sam
  Pacing: Medium

[18-26s] "To nie jest nowa funkcja do klikania. To inne podejście. Model sam decyduje, kiedy potrzebuje więcej mocy."
  Shot: Czarne tło, tylko tekst "Model decyduje sam". Kontrast wizualny, spokojniejszy kadr.
  Text: Model decyduje sam
  Pacing: Slow (kluczowa teza)

[26-34s] "Dla ciebie to znaczy tyle, że za chwilę przestaniesz się zastanawiać, który model wybrać. Po prostu będzie działać."
  Shot: Powrót do terminala Claude Code — znika menu wyboru modelu, zostaje czysty prompt
  Text: Żadnego wybierania
  Pacing: Medium

[34-40s] "Zgadywanie, kiedy włączyć mocniejszy model, to nigdy nie powinna być twoja robota."
  Shot: Cut do kadru z hooka — loop
  Text: Koniec zgadywania
  Pacing: Slow (last dab)
```

---

## Production Notes

- **Key visual moments:**
  - Split "za dużo / za mało" (sek. 3-10)
  - Czarny kadr z tezą "Model decyduje sam" (sek. 18-26)
  - Zniknięcie menu wyboru modelu (sek. 26-34)
- **Audio/music:** spokojny, refleksyjny — to teza, nie hype news. Wyraźna cisza przy "Model decyduje sam".
- **Loop:** "musiałeś sam zgadywać" (hook) → "zgadywanie to nigdy nie powinna być twoja robota" (last dab).
- **CTA:** implied — teza zaprasza do zgody/sporu w komentarzach.

---

## Content Lego Being Tested

**Teza zamiast newsa** — czy widz zostaje na 40s przy filmie, który nie pokazuje żadnej "nowej funkcji do kliknięcia", tylko stawia jedną tezę. Jeśli retention w sek. 18-26 (czarny kadr z tezą) nie spada poniżej 65%, format "contrarian insight" działa dla tej niszy.

---

## Kallaway Checklist

- [x] BUT/THEREFORE: "marnujesz limity / zacina się" (BUT) → "Anthropic właśnie to kończy" (THEREFORE)
- [x] Rytm: krótkie deklaratywne zdania, spokojne tempo
- [x] Tone: teza wypowiedziana na spokojnie, bez hype'u
- [x] Last Dab: loop z hookiem
- [x] Lens: kontrariańska teza, której nie postawi większość newsowych kont AI
- [x] Zero retorycznych "X? Y."
- [x] Zero kalk z angielskiego

---

## STEPPS Score: 4/6

- [x] **Social Currency** — teza "zgadywanie modelu to błąd" jest shareable jako hot take
- [x] **Practical Value** — tłumaczy co się zmienia bez zmuszania do nauki nowej funkcji
- [x] **Trigger** — każde przełączenie `/model` triggeruje przypomnienie
- [x] **Story** — mikro-narracja "robiłeś to źle, teraz już nie musisz"
- [ ] Emotion — świadomie niska
- [ ] Public — format nie wymusza resharingu
