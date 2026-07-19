# FRS – Lucky Wheels

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Wheels.md

**Version:** v1.1

**Status:** Draft

---

# Syfte

Lucky Wheels är DGTC:s centrala funktion för att skapa variation i träningen.

Genom slumpmässigt utvalda träningsuppgifter hjälper hjulen användaren att bryta invanda mönster och genomföra mer varierade träningspass.

Lucky Wheels ska samtidigt vara fullt anpassningsbara så att användaren kan skapa hjul som passar den egna träningen.

---

# Mål

Lucky Wheels ska:

* vara enkla att använda,
* skapa variation,
* ge rättvis slumpmässighet,
* vara snabba och responsiva,
* kunna anpassas efter användarens behov,
* fungera helt offline.

---

# User Stories

### US-W-001

Som användare vill jag kunna snurra ett hjul för att få en ny träningsuppgift.

### US-W-002

Som användare vill jag kunna snurra båda hjulen samtidigt för att snabbt skapa en komplett övning.

### US-W-003

Som användare vill kunna låsa ett hjul och endast snurra det andra.

### US-W-004

Som användare vill kunna skapa egna alternativ så att hjulen passar mitt sätt att träna.

### US-W-005

Som användare vill kunna återställa hjulen till standard om jag vill börja om.

### US-W-006

Som användare vill kunna redigera innehållet i Lucky Wheels så att träningsuppgifterna passar mina mål, min nivå och mitt sätt att träna.

---

# Funktionella krav

## Wheel Operation

### FRS-W-001

Appen ska innehålla två Lucky Wheels.

**Prioritet:** Must Have

### FRS-W-002

Varje hjul ska kunna snurras individuellt.

**Prioritet:** Must Have

### FRS-W-003

Båda hjulen ska kunna snurras samtidigt.

**Prioritet:** Must Have

### FRS-W-004

Varje hjul ska kunna låsas så att endast det andra snurrar.

**Prioritet:** Must Have

### FRS-W-005

Efter avslutad snurrning ska ett tydligt resultat visas.

**Prioritet:** Must Have

### FRS-W-006

Snurrningen ska använda en rättvis slumpgenerator utan synliga mönster.

**Prioritet:** Must Have

### FRS-W-007

Snurrningen ska innehålla animation.

**Prioritet:** Must Have

### FRS-W-008

Snurrningen ska kunna spela upp ljud.

Ljudeffekter ska kunna stängas av.

**Prioritet:** Should Have

### FRS-W-009

Resultatet ska ligga kvar tills användaren snurrar igen.

**Prioritet:** Must Have

---

# Wheel Management

### FRS-W-010

Användaren ska kunna öppna ett redigeringsläge för varje Lucky Wheel.

**Prioritet:** Must Have

### FRS-W-011

Användaren ska kunna lägga till nya alternativ.

**Prioritet:** Must Have

### FRS-W-012

Användaren ska kunna ändra befintliga alternativ.

**Prioritet:** Must Have

### FRS-W-013

Användaren ska kunna ta bort alternativ.

**Prioritet:** Must Have

### FRS-W-014

Användaren ska kunna ändra ordningen på alternativen.

**Prioritet:** Must Have

### FRS-W-015

Användaren ska kunna spara eller avbryta sina ändringar.

**Prioritet:** Must Have

### FRS-W-016

Användaren ska kunna återställa ett hjul till standardinnehåll.

**Prioritet:** Must Have

### FRS-W-017

Alla ändringar ska sparas lokalt.

**Prioritet:** Must Have

### FRS-W-018

Efter att ändringarna sparats ska användaren kunna använda det uppdaterade hjulet direkt.

**Prioritet:** Must Have

---

# Affärsregler

### BR-W-001

Varje hjul ska alltid innehålla minst två alternativ.

### BR-W-002

Tomma alternativ får inte sparas.

### BR-W-003

Två alternativ i samma hjul får inte ha identiskt namn.

### BR-W-004

Återställning ersätter hela hjulets innehåll med standardalternativen.

### BR-W-005

Ändringar påverkar endast det hjul som redigeras.

---

# Felhantering

Om användardata inte kan läsas ska standardhjulen användas.

Om en sparning misslyckas ska användaren informeras och kunna försöka igen.

Appen får inte krascha eller förlora tidigare sparade hjul.

---

# Acceptanskriterier

Lucky Wheels är godkända när användaren kan:

* snurra vänster hjul,
* snurra höger hjul,
* snurra båda hjulen,
* låsa ett hjul,
* öppna redigeringsläge,
* lägga till alternativ,
* ändra alternativ,
* ta bort alternativ,
* ändra ordning på alternativ,
* spara ändringar,
* avbryta ändringar,
* återställa standardhjul,
* använda de uppdaterade hjulen direkt,
* använda funktionen helt offline.

---

# Framtida utveckling

Funktioner som inte ingår i MVP men som arkitekturen ska stödja:

* fler än två hjul,
* viktade sannolikheter,
* importerbara hjulpaket,
* delning av hjul,
* favorithjul,
* sponsorhjul,
* säsongsbaserade hjul,
* AI-genererade träningsuppgifter,
* versionshantering av hjul.
