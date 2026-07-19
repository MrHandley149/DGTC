# FRS – Training Session

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Training_Session.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Training Session hanterar hela livscykeln för ett träningspass.

Ett träningspass är den struktur som binder samman Lucky Wheels, resultatregistrering och sammanfattning.

---

# Mål

Användaren ska snabbt kunna:

* starta ett träningspass,
* genomföra övningar,
* registrera resultat,
* avsluta passet,
* se en sammanfattning.

---

# Livscykel

Varje träningspass genomgår följande steg:

1. Skapas
2. Startas
3. Pågår
4. Avslutas
5. Sparas

Ett avslutat träningspass kan inte återupptas i MVP.

---

# User Stories

### US-TS-001

Som användare vill jag kunna starta ett nytt träningspass direkt från startskärmen.

---

### US-TS-002

Som användare vill jag kunna genomföra flera övningar inom samma träningspass.

---

### US-TS-003

Som användare vill kunna avsluta träningspasset när jag är klar.

---

### US-TS-004

Som användare vill att träningspasset sparas automatiskt när det avslutas.

---

# Funktionella krav

## FRS-TS-001

Användaren ska kunna skapa ett nytt träningspass.

**Prioritet:** Must Have

---

## FRS-TS-002

Ett träningspass ska få ett unikt ID.

**Prioritet:** Must Have

---

## FRS-TS-003

Starttid ska registreras automatiskt.

**Prioritet:** Must Have

---

## FRS-TS-004

Användaren ska kunna genomföra ett obegränsat antal övningar inom samma träningspass.

**Prioritet:** Must Have

---

## FRS-TS-005

Resultat ska kunna registreras löpande under träningspasset.

**Prioritet:** Must Have

---

## FRS-TS-006

Användaren ska kunna avsluta träningspasset när som helst.

**Prioritet:** Must Have

---

## FRS-TS-007

Sluttid ska registreras automatiskt.

**Prioritet:** Must Have

---

## FRS-TS-008

Träningspasset ska sparas automatiskt när det avslutas.

**Prioritet:** Must Have

---

## FRS-TS-009

Efter avslutat träningspass ska användaren visas sammanfattningen.

**Prioritet:** Must Have

---

## FRS-TS-010

Ett avslutat träningspass får inte kunna ändras i MVP.

**Prioritet:** Must Have

---

# Affärsregler

## BR-TS-001

Endast ett träningspass får vara aktivt åt gången.

---

## BR-TS-002

Om appen stängs under ett aktivt träningspass ska användaren kunna fortsätta passet när appen öppnas igen.

---

## BR-TS-003

Alla registrerade övningar ska tillhöra exakt ett träningspass.

---

## BR-TS-004

Alla tider sparas enligt enhetens lokala datum och tid.

---

# Felhantering

Om appen avslutas oväntat ska ett aktivt träningspass återställas automatiskt vid nästa start.

Om sparning misslyckas ska användaren informeras och appen försöka spara igen innan träningspasset avslutas.

---

# Acceptanskriterier

Training Session är godkänd när användaren kan:

* skapa ett träningspass,
* genomföra flera övningar,
* registrera resultat,
* avsluta passet,
* återuppta ett aktivt pass efter en oväntad avstängning,
* få en sammanfattning när passet avslutas.

---

# Framtida utveckling

Funktioner som inte ingår i MVP men som arkitekturen ska stödja:

* paus och återuppta träningspass,
* mallar för träningspass,
* schemalagda träningspass,
* delade träningspass,
* coachstyrda träningspass,
* gruppträning,
* livesynkronisering,
* molnbackup.
