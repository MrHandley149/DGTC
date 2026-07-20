# State Model

**Produkt:** DGTC Platform

**Dokument:** STATE_MODEL.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Detta dokument beskriver livscykeln för DGTC:s centrala domänobjekt.

Varje objekt kan befinna sig i ett antal definierade tillstånd.

Endast giltiga övergångar mellan tillstånd är tillåtna.

Syftet är att skapa ett robust och förutsägbart system.

---

# Grundprinciper

* Ett objekt får endast befinna sig i ett tillstånd åt gången.
* Ett objekt får endast övergå till ett giltigt nästa tillstånd.
* Ogiltiga övergångar ska förhindras av systemet.
* Ett avslutat objekt ska inte kunna återgå till ett tidigare tillstånd om det inte uttryckligen stöds.

---

# Training Session

## Tillstånd

```text
Created
   │
   ▼
Active
   │
   ▼
Completed
```

---

## Created

Träningspasset har skapats men inte startats.

---

## Active

Träningspasset pågår.

Användaren kan:

* generera övningar,
* registrera försök,
* registrera resultat.

---

## Completed

Träningspasset är avslutat.

Det får inte längre ändras i MVP.

En sammanfattning skapas.

---

## Tillåtna övergångar

Created → Active

Active → Completed

---

## Ej tillåtna övergångar

Completed → Active

Completed → Created

---

# Training Program

## Tillstånd

```text
Draft
   │
   ▼
Saved
```

---

## Draft

Programmet håller på att skapas eller redigeras.

---

## Saved

Programmet är sparat och kan användas.

---

## Tillåtna övergångar

Draft → Saved

Saved → Draft

---

# Training Scenario

## Tillstånd

```text
Draft
   │
   ▼
Saved
```

---

Scenarier följer samma modell som träningsprogram.

---

# Lucky Wheel

Lucky Wheel har två oberoende tillstånd:

## Användning

```text
Idle
   │
   ▼
Spinning
   │
   ▼
Idle
```

---

### Idle

Hjulet väntar på användarens nästa handling.

---

### Spinning

Animation och slumpgenerator är aktiva.

När snurrningen avslutas återgår hjulet till Idle.

---

## Redigering

```text
View
   │
   ▼
Editing
   │
   ├────────► Saved
   │
   └────────► Cancelled
```

---

### View

Normalt användarläge.

---

### Editing

Alternativ kan:

* läggas till,
* ändras,
* tas bort,
* sorteras.

---

### Saved

Ändringarna sparas.

Hjulet återgår till View.

---

### Cancelled

Alla osparade ändringar ignoreras.

Hjulet återgår till View.

---

# Exercise

## Tillstånd

```text
Generated
   │
   ▼
In Progress
   │
   ▼
Completed
```

---

Generated

Övningen har skapats men ännu inte genomförts.

---

In Progress

Discgolfaren genomför övningen.

---

Completed

Övningen är klar.

Resultat kan registreras.

---

# Attempt

## Tillstånd

```text
Started
   │
   ▼
Finished
```

---

Started

Discgolfaren påbörjar ett försök.

---

Finished

Försöket är avslutat.

Resultatet kan dokumenteras.

---

# Result

## Tillstånd

```text
Pending
   │
   ▼
Recorded
```

---

Pending

Resultatet väntar på registrering.

---

Recorded

Resultatet är sparat.

Det får inte ändras i MVP.

---

# Quick Challenge

## Tillstånd

```text
Generated
   │
   ▼
Accepted
   │
   ▼
Completed
```

---

Generated

Utmaningen har skapats.

---

Accepted

Discgolfaren har valt att genomföra den.

---

Completed

Utmaningen är genomförd.

---

# Scenario Visual

## Tillstånd

```text
Unavailable

eller

Available
```

Visualisering är valfri.

Scenariot ska fungera även utan en bild.

---

# App Settings

## Tillstånd

```text
Loaded
   │
   ▼
Modified
   │
   ▼
Saved
```

---

# Gemensamma regler

## Regel 1

Endast ett aktivt träningspass får finnas åt gången.

---

## Regel 2

Lucky Wheels får inte redigeras samtidigt som de används i en aktiv snurrning.

---

## Regel 3

Avslutade träningspass är skrivskyddade.

---

## Regel 4

Historiska träningspass påverkas aldrig av senare ändringar i träningsprogram eller scenarier.

---

## Regel 5

Alla sparoperationer ska vara atomära.

Antingen sparas hela objektet eller inget alls.

---

# Framtida utbyggnad

Arkitekturen ska kunna stödja ytterligare tillstånd, exempelvis:

* Archived
* Shared
* Downloaded
* Synced
* Published
* Deprecated

Dessa tillstånd ingår inte i MVP men ska kunna läggas till utan att befintliga tillstånd behöver ändras.

---

# Sammanfattning

Varje centralt objekt i DGTC har en tydlig livscykel.

Tillståndsmodellen säkerställer att objekt endast kan användas på ett giltigt sätt och ger en stabil grund för implementation, testning och framtida utbyggnad.
