# Implementation Workflow

**Version:** v1.0

**Status:** Draft

---

# Syfte

Detta dokument beskriver hur ett beslutat krav går från dokumentation till färdig och godkänd implementation.

Syftet är att säkerställa spårbarhet, hög kvalitet och konsekvent utveckling för både människor och AI-agenter.

---

# Grundprincip

Kod implementerar dokumentationen.

Dokumentationen anpassas aldrig efter koden.

---

# Arbetsobjekt

Projektets minsta implementerbara arbetsenhet är en **Implementation Task**.

En Implementation Task är en avgränsad arbetsorder som implementerar ett specifikt funktionellt krav (FRS).

Varje Implementation Task ska kunna:

- implementeras självständigt,
- testas självständigt,
- granskas självständigt,
- verifieras självständigt,
- godkännas självständigt,
- spåras tillbaka till ett beslutat krav.

En Implementation Task får aldrig implementera flera orelaterade krav.

---

# Arbetsflöde

Alla implementationer följer samma arbetsgång.

Beslutat behov

↓

FRS

↓

Implementation Task

↓

Kod

↓

Test

↓

Verifiering

↓

Godkännande

↓

Git Commit

---

# Spårbarhet

Varje Implementation Task ska kunna följas genom hela utvecklingsprocessen.

Beslutat behov

↓

FRS

↓

Implementation Task

↓

Kod

↓

Testresultat

↓

Verifiering

↓

Godkännande

↓

Git Commit

Varje steg ska kunna spåras både framåt och bakåt.

---

# Regler

- En Implementation Task implementerar ett krav.
- En commit ska endast innehålla en sammanhängande förändring.
- Review ska verifiera både funktion och spårbarhet.
- Nya idéer som uppstår under implementation förs till Future Queue.
- Om ett krav behöver ändras stoppas implementationen och frågan hanteras genom RFC.
- Kod får aldrig implementeras utan ett beslutat krav.

---

# Definition of Done

En Implementation Task är klar när:

- FRS-kravet är implementerat.
- Samtliga acceptanskriterier är verifierade.
- Testresultatet är dokumenterat.
- Eventuella avvikelser är hanterade eller accepterade.
- Testledaren har godkänt testresultatet.
- Product Owner/Projektledare har godkänt Implementation Task.
- Kodgranskning är genomförd.
- Git Commit är genomförd.
- Spårbarheten mellan FRS, Implementation Task och Git Commit är dokumenterad.

---

# Identifiering

Varje Implementation Task ska ha ett unikt ID.

Exempel:

- IT-HOME-001
- IT-WHEELS-001
- IT-SESSION-001
- IT-RESULT-001

ID:t ska användas i:

- dokumentation,
- kodgranskning,
- testprotokoll,
- Git Commits,
- Decision Log när relevant.

---

# Sammanfattning

DGTC implementerar aldrig funktioner direkt.

DGTC implementerar alltid ett beslutat krav genom en avgränsad Implementation Task.

Det säkerställer:

- full spårbarhet,
- hög kvalitet,
- små och kontrollerade förändringar,
- enkel testning,
- enkel granskning,
- effektivt samarbete mellan människor och AI-agenter.