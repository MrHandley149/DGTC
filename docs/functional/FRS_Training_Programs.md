# FRS – Training Programs

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Training_Programs.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Training Programs ger användaren möjlighet att välja, skapa och spara strukturerade träningsupplägg.

Ett träningsprogram beskriver **vad användaren vill träna**.

Programmet innehåller ett eller flera **Training Scenarios** som beskriver realistiska spelsituationer.

Lucky Wheels används sedan för att skapa variation inom det valda scenariot.

---

# Mål

Användaren ska kunna:

* välja ett träningsprogram,
* skapa egna träningsprogram,
* redigera sina träningsprogram,
* spara dem lokalt,
* återanvända dem,
* träna på realistiska spelsituationer,
* utveckla både teknik och beslutsfattande.

---

# Definitioner

## Training Program

En samling scenarier med ett gemensamt träningsmål.

Exempel:

* Precision 50 meter
* Hyzer med putter
* Midrange Control
* Forehand Basics

---

## Training Scenario

Ett scenario beskriver en realistisk situation på banan.

Scenariot beskriver förutsättningarna.

Användaren väljer själv:

* disc,
* kasttyp,
* kastlinje,
* strategi.

DGTC talar inte om hur situationen ska lösas.

DGTC dokumenterar resultatet.

---

# Exempel på scenarier

## Skogskanten

Du ligger i kanten av en skogsdunge.

Korgen ligger cirka 50 meter bort, snett åt höger.

Hur väljer du att lösa situationen?

---

## OB bakom korgen

Du ligger cirka 30 meter från korgen på fairway.

Till vänster och bakom korgen finns OB.

Hur spelar du hålet med lägst risk?

---

## Låg gren

Du har fri sikt mot korgen men en låg gren begränsar kastlinjen.

Vilken disc och vilket kast väljer du?

---

## Motvind

Du har 70 meter kvar.

Kraftig motvind.

Hur förändrar du ditt val?

---

# User Stories

### US-TP-001

Som aktiv discgolfare vill jag kunna välja ett träningsprogram så att jag snabbt kan komma igång.

---

### US-TP-002

Som aktiv discgolfare vill jag kunna skapa egna träningsprogram.

---

### US-TP-003

Som användare vill kunna redigera ett sparat träningsprogram.

---

### US-TP-004

Som användare vill kunna ta bort ett träningsprogram.

---

### US-TP-005

Som användare vill kunna återanvända ett träningsprogram.

---

### US-TP-006

Som användare vill kunna välja mellan färdiga träningsprogram.

---

### US-TP-007

Som användare vill träna på realistiska spelsituationer för att utveckla mitt beslutsfattande.

---

### US-TP-008

Som användare vill själv välja disc, kasttyp och strategi i ett scenario.

---

### US-TP-009

Som användare vill dokumentera resultatet av mitt beslut.

---

### US-TP-010

Som användare vill skapa egna scenarier från situationer jag möter på mina hemmabanor.

---

### US-TP-011

Som användare vill kunna dela mina scenarier med andra spelare.

---

### US-TP-012

Som användare vill kunna ladda ner färdiga scenarier från DGTC.

---

### US-TP-013

Som användare vill kunna träna på Veckans eller Månadens scenario.

---

# Funktionella krav

## Programhantering

### FRS-TP-001

Appen ska innehålla minst ett förinstallerat träningsprogram.

**Prioritet:** Must Have

---

### FRS-TP-002

Användaren ska kunna skapa nya träningsprogram.

**Prioritet:** Must Have

---

### FRS-TP-003

Varje träningsprogram ska ha:

* namn,
* valfri beskrivning,
* ett eller flera scenarier.

**Prioritet:** Must Have

---

### FRS-TP-004

Användaren ska kunna redigera ett träningsprogram.

**Prioritet:** Must Have

---

### FRS-TP-005

Användaren ska kunna ta bort ett träningsprogram.

**Prioritet:** Must Have

---

### FRS-TP-006

Alla träningsprogram ska sparas lokalt.

**Prioritet:** Must Have

---

## Scenariohantering

### FRS-TP-007

Varje träningsprogram ska kunna innehålla ett eller flera scenarier.

**Prioritet:** Must Have

---

### FRS-TP-008

Användaren ska kunna skapa egna scenarier.

**Prioritet:** Must Have

---

### FRS-TP-009

Användaren ska kunna redigera egna scenarier.

**Prioritet:** Must Have

---

### FRS-TP-010

Användaren ska kunna ta bort egna scenarier.

**Prioritet:** Must Have

---

### FRS-TP-011

När ett scenario väljs ska tillhörande Lucky Wheels laddas automatiskt.

**Prioritet:** Must Have

---

### FRS-TP-012

Användaren ska kunna starta ett träningspass direkt från scenariot.

**Prioritet:** Must Have

---

# Affärsregler

### BR-TP-001

Varje träningsprogram ska innehålla minst ett scenario.

---

### BR-TP-002

Varje scenario ska tillhöra exakt ett träningsprogram.

---

### BR-TP-003

Lucky Wheels ska kunna återanvändas mellan flera scenarier.

---

### BR-TP-004

Ändringar i ett träningsprogram får inte påverka tidigare genomförda träningspass.

---

### BR-TP-005

Genomförda träningspass ska alltid spara vilket program och vilket scenario som användes.

---

# Felhantering

Om ett träningsprogram inte kan läsas ska användaren kunna välja ett annat.

Om lokal lagring misslyckas ska användaren informeras och tidigare sparade träningsprogram bevaras.

Appen ska aldrig förlora genomförda träningspass på grund av ändringar i ett träningsprogram.

---

# Acceptanskriterier

Training Programs är godkänd när användaren kan:

* välja ett träningsprogram,
* skapa ett träningsprogram,
* redigera ett träningsprogram,
* ta bort ett träningsprogram,
* skapa egna scenarier,
* redigera egna scenarier,
* välja ett scenario,
* starta ett träningspass från scenariot,
* använda funktionen helt offline.

---

# Framtida utveckling

Arkitekturen ska stödja:

* bibliotek med träningsprogram,
* bibliotek med scenarier,
* Veckans scenario,
* Månadens scenario,
* community-delning,
* import och export,
* coachskapade program,
* klubbprogram,
* sponsorprogram,
* AI-genererade scenarier,
* AI-genererade träningsprogram,
* betyg och kommentarer,
* versionshantering,
* favoriter,
* sökning och filtrering.

---

# Designprincip

Training Programs ska vara den naturliga startpunkten för ett träningspass.

Lucky Wheels är motorn som skapar variation.

Training Scenarios beskriver situationen.

Spelaren fattar besluten.

DGTC dokumenterar, stödjer och hjälper användaren att utvecklas.
