# Navigation

**Produkt:** DGTC Platform
**Dokument:** NAVIGATION.md
**Version:** v1.1
**Status:** Draft

---

# Syfte

Detta dokument beskriver DGTC:s övergripande navigation och centrala användarflöden.

Navigationen ska göra det möjligt att:

* snabbt starta en enkel träningsutmaning,
* välja strukturerad träning,
* redigera Lucky Wheels,
* skapa och hantera träningsprogram,
* genomföra ett träningspass,
* registrera resultat,
* avsluta passet och se en sammanfattning.

Dokumentet beskriver logiska vyer och användarflöden.

---

# Navigationsprinciper

## Första kastet först

Användaren ska kunna öppna appen och få en träningsuppgift med ett enda primärt knapptryck.

Ingen inloggning, konfigurering eller programväljare får blockera detta flöde.

> **Djupet får aldrig stå i vägen för det första kastet.**

---

## Progressive Engagement

DGTC ska introducera funktioner stegvis.

Varje nivå ska ge tillräckligt värde för att användaren naturligt vill utforska nästa.

Produkten ska aldrig försöka skapa beroende.

Produkten ska skapa nytta, glädje och utveckling.

---

## Två tydliga vägar

DGTC erbjuder två huvudsakliga sätt att träna.

### Quick Challenge

Den snabbaste vägen till träning.

Öppna appen.

Tryck.

Kasta.

---

### Strukturerad träning

För användare som vill arbeta mer målmedvetet med träningsprogram och scenarier.

---

## Progressiv fördjupning

Avancerade funktioner introduceras när användaren själv är redo.

Användaren ska inte behöva förstå:

* träningsprogram,
* scenarier,
* statistik,
* analys,
* AI,

för att uppleva värde från första användningen.

---

## Bevara aktiv träning

Ett aktivt träningspass ska aldrig gå förlorat på grund av navigation.

---

# DGTC:s användarresa

Produkten är utformad för att stegvis hjälpa användaren att utvecklas.

```text
Quick Challenge
        │
        ▼
Utforska Lucky Wheels
        │
        ▼
Skapa egna Lucky Wheels
        │
        ▼
Använd Training Programs
        │
        ▼
Träna med Training Scenarios
        │
        ▼
Reflektion, analys och framtida beslutsstöd
```

Varje steg ska kännas naturligt.

Användaren ska själv vilja ta nästa steg.

---

# Övergripande navigation

```text
Startskärm
│
├── Quick Challenge
│   ├── Genererad uppgift
│   ├── Aktivt träningspass
│   ├── Resultatregistrering
│   └── Sammanfattning
│
├── Strukturerad träning
│   ├── Träningsprogram
│   ├── Scenario
│   ├── ScenarioVisual
│   ├── Aktivt träningspass
│   ├── Resultatregistrering
│   └── Sammanfattning
│
├── Lucky Wheels
│   ├── Visa hjul
│   └── Redigera hjul
│
├── Egna träningsprogram
│   ├── Skapa
│   ├── Redigera
│   └── Ta bort
│
└── Inställningar
```

---

# Startskärmen

Startskärmen är produktens viktigaste vy.

Den ska ge ett omedelbart intryck av att DGTC är enkel, rolig och användbar.

Prioritering:

1. Quick Challenge
2. Strukturerad träning
3. Lucky Wheels
4. Inställningar

---

## Primär åtgärd

Quick Challenge ska vara den mest framträdande åtgärden.

Ett knapptryck ska:

1. använda aktuella Lucky Wheels,
2. generera en träningsutmaning,
3. visa uppgiften direkt.

Målet är att användaren ska kunna börja kasta inom några sekunder.

---

## Sekundär åtgärd

Strukturerad träning leder användaren vidare till:

* Training Programs
* Training Scenarios
* Virtuella utmaningar

---

## Aktivt träningspass

Om ett träningspass redan är aktivt ska startskärmen erbjuda:

**Fortsätt träningspass**

Det ska inte vara möjligt att oavsiktligt skapa flera aktiva träningspass.

---

# Flöde – Quick Challenge

```text
Startskärm
        │
        ▼
Quick Challenge
        │
        ▼
Lucky Wheels
        │
        ▼
Utmaning visas
        │
 ┌──────┴─────────┐
 │                │
 ▼                ▼
Ny utmaning   Starta träning
                    │
                    ▼
             Aktivt träningspass
                    │
                    ▼
            Resultatregistrering
                    │
        ┌───────────┴───────────┐
        ▼                       ▼
 Ny utmaning              Avsluta pass
                                    │
                                    ▼
                              Sammanfattning
```

---

# Flöde – Strukturerad träning

```text
Startskärm
        │
        ▼
Training Program
        │
        ▼
Training Scenario
        │
        ▼
ScenarioVisual (valfri)
        │
        ▼
Lucky Wheels
        │
        ▼
Aktivt träningspass
        │
        ▼
Resultatregistrering
        │
        ▼
Sammanfattning
```

---

# Lucky Wheels

Lucky Wheels ska kunna användas:

* i Quick Challenge,
* i Training Scenarios,
* från egen hanteringsvy.

---

## Redigering

Användaren ska kunna:

* lägga till alternativ,
* ändra alternativ,
* ta bort alternativ,
* ändra ordning,
* spara,
* avbryta.

Efter sparning ska hjulet kunna användas direkt.

---

# Aktivt träningspass

När ett träningspass är aktivt ska navigationen fokusera på träningen.

Användaren ska kunna:

* fortsätta träna,
* registrera resultat,
* generera nästa övning,
* avsluta passet.

---

# Resultatregistrering

Registreringen ska vara snabb och inte upplevas som administration.

Efter registrering ska användaren kunna:

* göra ett nytt försök,
* få nästa övning,
* avsluta träningspasset.

---

# Sammanfattning

Efter avslutat träningspass visas:

* träningspassets längd,
* antal övningar,
* antal försök,
* antal registrerade resultat,
* vilket träningsprogram eller scenario som användes.

Ingen analys eller coachning ingår i MVP.

---

# Inställningar

Inställningar ska innehålla:

* språk,
* ljud,
* återställ Lucky Wheels.

Inga övriga funktioner ska störa huvudupplevelsen.

---

# Navigationsregler

1. Quick Challenge är alltid produktens primära ingång.
2. Strukturerad träning är en naturlig fördjupning.
3. Endast ett träningspass får vara aktivt.
4. Aktiv träning ska alltid kunna återupptas.
5. Lucky Wheels ska kunna användas utan träningsprogram.
6. Navigation får aldrig orsaka förlust av användarens data.
7. Varje vy ska ha en tydlig väg tillbaka.
8. Produkten ska alltid prioritera enkelhet före komplexitet.

---

# Sammanfattning

DGTC ska ge användaren omedelbar nytta från första knapptrycket.

Quick Challenge är inkastaren.

Lucky Wheels skapar variation.

Training Programs och Training Scenarios ger struktur och djup.

Genom Progressive Engagement utvecklas användaren stegvis från spontan träning till ett komplett system för lärande, beslutsfattande och prestationsutveckling – utan att enkelheten någonsin går förlorad.
