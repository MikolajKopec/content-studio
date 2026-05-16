# B-Roll Plan — TRIBE v2: Social Engineering 2.0

## [0-3s] Hook — talking head
Brak B-rolli. Czysty talking head, close-up.

## [3-10s] Brain scans + fakty

| Element | Typ | Źródło | Notatki |
|---------|-----|--------|---------|
| Heatmapy mózgu (kolorowe aktywacje) | **Remotion** | Wygenerować animowane heatmapy na modelu 3D mózgu. Inspiracja: Figure 1C, 2C z paperu. Gradient czerwony-żółty na szarym mózgu. | Animacja: heatmapa "rozlewa się" po powierzchni mózgu, sync z "przewiduje reakcję" |
| Text pop-upy: `TRIBE v2`, `1000h skanów`, `720 osób` | **Remotion** | Animowane typografia — kolejne pojawianie się z bounce/slam effect | Timing: nowy pop-up co ~2s |
| Wizualizacja fMRI (przekroje mózgu, kolorowe skany) | **Stock (darmowy)** | Pexels/Pixabay — szukaj "brain scan", "fMRI", "neuroscience visualization" | Alternatywnie: screenshoty z samego paperu (Figure 2A-C) — fair use w kontekście komentarza |

## [10-18s] Meta + social media

| Element | Typ | Źródło | Notatki |
|---------|-----|--------|---------|
| Logo Meta (animowane) | **Remotion** | Prosty reveal logo Meta na ciemnym tle, może z glitch effect | Nie używać oficjalnych assets — zrobić stylizowaną wersję lub screenrecord strony meta.com |
| Screenshoty Instagram/Facebook UI | **Screenrecord** | Nagrać własny telefon — scrollowanie feedu IG/FB. Rozmyć prywatne dane. | Darmowe, autentyczne, bez problemów z prawami |
| Przejście "piksele → neurony" | **Remotion** | Animacja: grid pikseli (kolorowe kwadraty) → morphing w siatkę neuronów/połączeń | Efekt wow, dobrze ilustruje koncept |

## [18-26s] Punchline — Social Engineering 2.0

| Element | Typ | Źródło | Notatki |
|---------|-----|--------|---------|
| Text slam "SOCIAL ENGINEERING 2.0" | **Remotion** | Duży tekst, centralny, ciężki font (bold sans-serif), slam/shake effect. Ciemne tło z czerwonym akcentem. | Kluczowy moment — tekst musi uderzyć |
| Glitch/distortion overlay | **Remotion** | Lekki glitch effect na talking head w momencie "zanim Ty to poczujesz" | Wzmacnia dystopijny ton |
| Zoom punch | **Nagranie** | Zrobić w edycji — keyframe zoom na twarzy | Nie wymaga dodatkowych materiałów |

## [26-30s] CTA

| Element | Typ | Źródło | Notatki |
|---------|-----|--------|---------|
| `@meeko.tech` overlay | **Remotion** | Subtelny text overlay z handle | Standard |

---

## Podsumowanie kosztów

| Kategoria | Ilość elementów | Koszt |
|-----------|----------------|-------|
| **Remotion** (generowane) | 7 elementów | Darmowe — kod |
| **Stock (darmowy)** | 1-2 klipy fMRI | Pexels/Pixabay — darmowe |
| **Screenrecord** | 1 nagranie (scroll IG/FB) | Darmowe — własny telefon |
| **Nagranie** | Talking head + zoom punch w edycji | Darmowe — kamera/telefon |
| **Materiały z paperu** | Screenshoty figur (opcjonalne) | Fair use — komentarz/edukacja |

**Łączny koszt B-rolli: 0 PLN**

---

## Remotion — lista komponentów do zbudowania

1. `BrainHeatmap` — animowana heatmapa na sylwetce mózgu (gradient warm colors)
2. `TextSlam` — tekst z bounce/slam animation (reusable)
3. `FactPopup` — sekwencyjne pojawianie się faktów z timing control
4. `MetaLogoReveal` — stylizowane logo z glitch
5. `PixelToNeuron` — morphing animation piksele → sieć neuronowa
6. `GlitchOverlay` — chromatic aberration / scan lines overlay
7. `HandleOverlay` — @meeko.tech z fade in/out
