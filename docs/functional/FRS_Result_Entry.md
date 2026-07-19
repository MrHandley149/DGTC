# FRS – Result Entry

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Result_Entry.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Result Entry ansvarar för registrering av resultat under ett aktivt träningspass.

Funktionen ska göra det möjligt att dokumentera utfallet av en genomförd övning på ett snabbt, enkelt och konsekvent sätt.

---

# Mål

Resultatregistreringen ska:

* vara snabb,
* kräva så få steg som möjligt,
* inte störa träningsflödet,
* koppla varje registrering till rätt träningspass och övning.

---

# User Stories

### US-RE-001

Som användare vill jag registrera resultat direkt efter en genomförd övning.

---

### US-RE-002

Som användare vill att registreringen ska gå snabbt så att fokus ligger kvar på träningen.

---

### US-RE-003

Som användare vill kunna fortsätta till nästa övning direkt efter registreringen.

---

# Funktionella krav

## FRS-RE-001

Resultat ska kunna registreras under ett aktivt träningspass.

**Prioritet:** Must Have

---

## FRS-RE-002

Varje registrering ska kopplas till den aktuella övningen.

**Prioritet:** Must Have

---

## FRS-RE-003

Varje registrering ska kopplas till det aktuella träningspasset.

**Prioritet:** Must Have

---

## FRS-RE-004

Tidpunkten för registreringen ska sparas automatiskt.

**Prioritet:** Must Have

---

## FRS-RE-005

Efter registrering ska användaren kunna fortsätta direkt till nästa övning.

**Prioritet:** Must Have

---

## FRS-RE-006

Registrering ska kunna genomföras helt offline.

**Prioritet:** Must Have

---

## FRS-RE-007

Resultatet ska sparas lokalt omedelbart efter registrering.

**Prioritet:** Must Have

---

# Affärsregler

## BR-RE-001

Resultat får endast registreras under ett aktivt träningspass.

---

## BR-RE-002

Varje registrering ska tillhöra exakt en övning.

---

## BR-RE-003

Varje registrering ska tillhöra exakt ett träningspass.

---

## BR-RE-004

Registrerade resultat får inte gå förlorade om appen stängs oväntat.

---

# Felhantering

Om resultatet inte kan sparas ska användaren informeras.

Appen ska försöka spara igen innan användaren fortsätter.

Resultatregistreringen får inte orsaka att ett aktivt träningspass avslutas.

---

# Acceptanskriterier

Result Entry är godkänd när användaren kan:

* registrera resultat under ett aktivt träningspass,
* fortsätta träningen direkt efter registreringen,
* använda funktionen utan internetuppkoppling,
* återuppta ett träningspass utan att tidigare registreringar har gått förlorade.

---

# Framtida utveckling

Arkitekturen ska möjliggöra framtida stöd för:

* flera olika resultattyper,
* numeriska värden,
* kategorier,
* anteckningar,
* bilder och video,
* röstinmatning,
* smartwatch-inmatning,
* automatisk registrering via sensorer,
* AI-stöd för analys.

Detaljerna för dessa funktioner ingår inte i MVP och dokumenteras när respektive funktion planeras.
