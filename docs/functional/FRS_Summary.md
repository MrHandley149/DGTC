# FRS – Summary

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Summary.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Summary presenterar en översikt över ett avslutat träningspass.

Funktionen ska ge användaren en snabb och tydlig återblick utan att analysera eller värdera prestationen.

---

# Mål

Efter avslutat träningspass ska användaren enkelt kunna se:

* att träningspasset har sparats,
* vad som genomfördes,
* grundläggande information om träningspasset.

Summary ska ge användaren en känsla av avslut innan nästa träningspass påbörjas.

---

# User Stories

### US-S-001

Som användare vill jag se en sammanfattning när träningspasset avslutas.

---

### US-S-002

Som användare vill snabbt förstå vad jag genomfört.

---

### US-S-003

Som användare vill kunna lämna sammanfattningen och återgå till startskärmen.

---

# Funktionella krav

## FRS-S-001

Summary ska visas automatiskt när ett träningspass avslutas.

**Prioritet:** Must Have

---

## FRS-S-002

Summary ska visa träningspassets starttid.

**Prioritet:** Must Have

---

## FRS-S-003

Summary ska visa träningspassets sluttid.

**Prioritet:** Must Have

---

## FRS-S-004

Summary ska visa träningspassets totala längd.

**Prioritet:** Must Have

---

## FRS-S-005

Summary ska visa antal genomförda övningar.

**Prioritet:** Must Have

---

## FRS-S-006

Summary ska visa antal registrerade resultat.

**Prioritet:** Must Have

---

## FRS-S-007

Användaren ska kunna återgå till startskärmen från Summary.

**Prioritet:** Must Have

---

# Affärsregler

## BR-S-001

Summary får endast visas för avslutade träningspass.

---

## BR-S-002

Informationen i Summary ska hämtas från det sparade träningspasset.

---

## BR-S-003

Summary ska vara skrivskyddad.

Användaren kan inte ändra träningspassets innehåll från denna vy.

---

# Felhantering

Om delar av träningspassets information saknas ska Summary fortfarande visas.

Tillgänglig information ska presenteras utan att appen kraschar.

---

# Acceptanskriterier

Summary är godkänd när användaren kan:

* se sammanfattningen direkt efter avslutat träningspass,
* se grundläggande information om träningspasset,
* återgå till startskärmen,
* använda funktionen helt offline.

---

# Framtida utveckling

Arkitekturen ska möjliggöra framtida stöd för:

* prestationsanalys,
* personliga rekord,
* utveckling över tid,
* jämförelser mellan träningspass,
* AI-genererade insikter,
* export av träningspass,
* delning av träningspass,
* coachkommentarer.

Dessa funktioner ingår inte i MVP och dokumenteras separat när de planeras.
