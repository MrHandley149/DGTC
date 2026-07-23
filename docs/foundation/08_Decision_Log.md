# DGTC Decision Log

**Status:** v1.0

**Dokumenttyp:** Kärndokument (DGTC Product Operating System)

---

# Syfte

Decision Log dokumenterar viktiga beslut som påverkar DGTC Platform.

Målet är att:

* skapa transparens,
* undvika att samma diskussion förs flera gånger,
* dokumentera varför beslut fattades,
* göra det enkelt att ompröva beslut när ny kunskap tillkommer.

Decision Log är ett levande dokument och ska uppdateras kontinuerligt.

---

# Beslutsmall

Varje beslut dokumenteras enligt följande struktur.

---

## ID

Exempel:

DL-001

---

## Datum

När beslutet fattades.

---

## Beslut

En kort beskrivning av beslutet.

---

## Bakgrund

Vilket problem eller vilken frågeställning låg bakom beslutet?

---

## Alternativ

Vilka realistiska alternativ övervägdes?

---

## Motivering

Varför valdes den aktuella lösningen?

Vilka principer vägde tyngst?

---

## Påverkade dokument

Vilka dokument eller delar av projektet påverkas?

---

## Status

* Aktiv
* Ersatt
* Arkiverad

---

## Omprövning

När eller under vilka förutsättningar bör beslutet omvärderas?

---

# Beslutshistorik

## DL-001

**Datum**

2026-07

**Beslut**

Projektet utvecklas enligt DGTC Product Operating System (DGTC POS).

**Bakgrund**

Projektet behövde en gemensam grund för filosofi, beslut och produktutveckling.

**Alternativ**

* Ingen gemensam struktur.
* Traditionell teknisk dokumentation.
* DGTC Product Operating System.

**Motivering**

DGTC POS ger en gemensam riktning där vision, principer och beslut styr utvecklingen före teknikval.

**Påverkade dokument**

Samtliga dokument i `docs/foundation`.

**Status**

Aktiv.

**Omprövning**

Vid större förändringar av produktens övergripande inriktning.

---

## DL-002

**Datum**

2026-07

**Beslut**

Användaren äger alltid sin data och ska kunna exportera den i öppna format.

**Bakgrund**

Projektet ville tydligt ta ställning mot inlåsning och skapa långsiktigt förtroende.

**Alternativ**

* Begränsad export.
* Export endast vid avslutat konto.
* Full export när som helst.

**Motivering**

Öppenhet och förtroende är centrala delar av DGTC:s identitet.

**Påverkade dokument**

Vision and Principles.

DGTC DNA.

Decision Framework.

**Status**

Aktiv.

---

## DL-003

**Datum**

2026-07

**Beslut**

Kod får aldrig styra filosofin. Filosofin ska styra koden.

**Bakgrund**

Det fanns en risk att tekniska begränsningar skulle påverka produktens långsiktiga riktning.

**Alternativ**

* Teknik först.
* Produkt först.
* Filosofi först.

**Motivering**

Produktens värde ska alltid utgå från användarens utveckling och inte från vilken teknik som råkar vara enklast att implementera.

**Påverkade dokument**

Samtliga kärndokument.

**Status**

Aktiv.

---

# Principer för Decision Log

Decision Log beskriver beslut – inte diskussioner.

Varje beslut ska:

* vara kortfattat,
* kunna förstås fristående,
* ha en tydlig motivering,
* kunna omprövas.

Att ändra ett beslut är inte ett misslyckande.

Det är ett tecken på att ny kunskap har lett till bättre förståelse.

---

# Versionshantering

När ett beslut ersätts ska det ursprungliga beslutet finnas kvar i loggen.

Status ändras till **Ersatt**, och det nya beslutet ska hänvisa till det tidigare beslutets ID.

På så sätt bevaras projektets historik utan att förlora spårbarhet.
## DL-004

**Datum**

2026-07-20

---

### Beslut

Progressive Engagement blir en grundläggande produktprincip för The Training Companion.

Produkten ska introducera funktioner stegvis och skapa ett tydligt värde på varje nivå.

---

### Bakgrund

Många träningsappar förlorar användare redan efter första användningen.

Vanliga orsaker är:

* hög starttröskel,
* komplicerade arbetsflöden,
* fokus på registrering istället för träning,
* för lite glädje i den första upplevelsen.

DGTC ska istället ge användaren ett positivt första möte och därefter successivt introducera mer avancerade funktioner.

---

### Alternativ

**Alternativ A**

Visa hela systemet direkt.

Förkastades.

Skapar högre tröskel.

---

**Alternativ B**

Bygga enbart en mycket enkel träningsapp.

Förkastades.

Ger inget långsiktigt utvecklingsdjup.

---

**Alternativ C**

Progressive Engagement.

Accepterades.

Ger låg starttröskel samtidigt som produkten kan växa tillsammans med användaren.

---

### Motivering

Produkten ska ge användaren:

1. glädje,
2. variation,
3. utveckling,
4. förbättrad prestation.

Quick Challenge blir därför produktens primära ingång.

Training Programs och Training Scenarios introduceras när användaren själv vill ta nästa steg.

---

### Påverkade dokument

* Vision & Principles
* Decision Framework
* PRD
* MVP
* Navigation
* Architecture
* System Overview

---

### Status

Aktiv

---

### Omprövning

Beslutet ska endast omprövas om användartester visar att den stegvisa produktresan inte fungerar eller om produktens övergripande vision förändras.

DL-005

Titel:
Implementation of RFC-001 in Decision Framework

Beslut:
Decision Framework har uppdaterats för att implementera Progressive Engagement som grundprincip.

Genomförda ändringar:
- Progressive Engagement tillagd som grundprincip.
- Beslutsfilter 1 ändrat till "Hjälper detta användaren framåt?"
- Förklarande text tillagd för att definiera "framåt".
- Pathos kompletterat med "glädje".
- Definitionen av ett bra beslut uppdaterad till "hjälper användaren framåt".

Relaterad RFC:
RFC-001

Status:
Implemented

---

## DL-007 – MVP updated for RFC-001

**Datum:** 2026-07-22

**Beslut**

MVP har uppdaterats för att implementera RFC-001 (Progressive Engagement).

**Genomförda ändringar**

- Kärnvärdet kompletterat med "enklare att komma igång med".
- Icke-funktionella krav kompletterade med "vara lätt att komma igång med".

**Relaterad RFC**

RFC-001

**Status**

Implemented

---

## DL-007 – Architecture updated for RFC-001

**Datum:** 2026-07-23

**Beslut**

Architecture har uppdaterats för att implementera RFC-001 (Progressive Engagement).

**Genomförda ändringar**

- Arkitekturmålen kompletterades med "Lätt att komma igång med."

**Relaterad RFC**

RFC-001

**Status**

Implemented

---

## DL-008 – Documentation v1.1 Baseline Locked

**Datum:** 2026-07-23

### Beslut

Documentation v1.1 har granskats och godkänts.

Versionen utgör projektets första officiella baseline.

Från och med detta beslut ska ändringar i dokumentationen ske genom RFC eller godkänd Future Queue-process.

### Omfattning

Baselinen omfattar:

- Vision & Principles
- Decision Framework
- PRD
- MVP
- Architecture
- MASTER_INDEX

### Status

Locked

---

