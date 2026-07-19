# FRS – Settings

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Settings.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Settings samlar appens grundläggande konfiguration.

Inställningarna ska vara enkla att förstå och innehålla endast de alternativ som är relevanta för MVP.

---

# Mål

Användaren ska kunna:

* anpassa grundläggande appinställningar,
* återställa standardinställningar,
* göra ändringar som sparas lokalt.

Inställningarna ska inte störa eller komplicera användarupplevelsen.

---

# User Stories

### US-SE-001

Som användare vill jag kunna välja appens språk.

---

### US-SE-002

Som användare vill kunna slå av eller på ljud från Lucky Wheels.

---

### US-SE-003

Som användare vill kunna återställa Lucky Wheels till standard.

---

### US-SE-004

Som användare vill att mina inställningar sparas automatiskt.

---

# Funktionella krav

## FRS-SE-001

Användaren ska kunna välja appens språk.

**Prioritet:** Must Have

---

## FRS-SE-002

Appen ska komma ihåg valt språk mellan uppstarter.

**Prioritet:** Must Have

---

## FRS-SE-003

Användaren ska kunna aktivera eller inaktivera ljudeffekter.

**Prioritet:** Must Have

---

## FRS-SE-004

Appen ska komma ihåg ljudinställningen mellan uppstarter.

**Prioritet:** Must Have

---

## FRS-SE-005

Användaren ska kunna återställa Lucky Wheels till standardinnehåll.

**Prioritet:** Must Have

---

## FRS-SE-006

Användaren ska få en bekräftelse innan återställning genomförs.

**Prioritet:** Must Have

---

## FRS-SE-007

Alla inställningar ska sparas lokalt.

**Prioritet:** Must Have

---

## FRS-SE-008

Settings ska fungera helt offline.

**Prioritet:** Must Have

---

# Affärsregler

## BR-SE-001

Inställningar ska börja gälla direkt efter att de ändrats, om inte annat anges.

---

## BR-SE-002

Återställning av Lucky Wheels påverkar endast hjulens innehåll.

Övriga inställningar påverkas inte.

---

## BR-SE-003

Återställning ska inte kunna ångras i MVP.

---

# Felhantering

Om en inställning inte kan sparas ska användaren informeras.

Tidigare sparade inställningar ska behållas tills en ny sparning lyckas.

Appen ska fortsätta fungera även om en inställning inte kan sparas.

---

# Acceptanskriterier

Settings är godkänd när användaren kan:

* byta språk,
* slå av och på ljud,
* återställa Lucky Wheels,
* få en bekräftelse innan återställning,
* starta om appen och se att inställningarna finns kvar,
* använda hela funktionen utan internetuppkoppling.

---

# Framtida utveckling

Arkitekturen ska möjliggöra framtida stöd för:

* mörkt och ljust tema,
* enhetsinställningar,
* tillgänglighetsinställningar,
* säkerhetskopiering,
* molnsynkronisering,
* export och import av data,
* notifieringar,
* integritetsinställningar,
* utvecklarläge.

Dessa funktioner ingår inte i MVP och dokumenteras separat när de planeras.
