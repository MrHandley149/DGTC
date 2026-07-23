# MASTER_INDEX

> **Projektets kontrollrum**
>
> Detta dokument är den primära ingången till projektet och ska öppnas vid början och slutet av varje arbetspass.
>
> Syftet är att ge en tydlig bild av projektets status, riktning och nästa steg.

---

# PROJECT DASHBOARD

| Fält | Värde |
|------|--------|
| **Projekt** | The Training Companion |
| **Produkt** | The Disc Golf Training Companion |
| **Version** | Documentation v1.1 |
| **Current Phase** | Consolidation Sprint 1 |
| **Current Sprint** | Consolidation Sprint 1 |
| **Current Task** | Architecture |
| **Next Task** | Documentation v1.1 Lock |
| **Blockers** | None |
| **Project Health** | 🟢 |
| **Last Updated** | 2026-07-22 |
---

# WORK STATUS

| Fält | Värde |
|------|--------|
| **Last Completed** | MVP |
| **Current** | Architecture |
| **Next** | Documentation v1.1 Lock |

---

# PROJECT CONTROL ROOM

## Aktuell status

**Vad gör vi just nu?**

## Aktuell status

Implementerar RFC-001 konsekvent i dokumentationen.

Fyra av fem huvud­dokument är uppdaterade.

Architecture återstår.

## Nästa steg

Genomför Impact Analysis av Architecture.

Efter godkänd implementation låses Documentation v1.1.

---

## Nästa steg

Vad är nästa konkreta uppgift när den aktuella är klar?

---

## Aktiva blockerare

Lista endast sådant som faktiskt stoppar projektet.

Om inga finns:

> **None**

---

## Senaste beslut

| Beslut                 | Referens         |
| ---------------------- | ---------------- |
| Progressive Engagement | RFC-001 / DL-004 |

---

# MILESTONES

| Milstolpe          | Status |
| ------------------ | ------ |
| Foundation         | ✅      |
| Documentation v1.0 | ✅      |
| Documentation v1.1 | ☐      |
| Sprint 0           | ☐      |
| Sprint 1           | ☐      |
| MVP                | ☐      |
| Beta               | ☐      |
| Version 1.0        | ☐      |

---

# PROJECT PRINCIPLES

## Produktprinciper

* Kod får aldrig styra filosofin. Filosofin ska styra koden.
* Djupet får aldrig stå i vägen för det första kastet.
* Progressive Engagement är en styrande produktprincip.
* Quick Challenge är produktens primära ingång.
* Användaren äger sin data.

---

## Samarbetsprinciper

* Produkten formas av domänkunskap och användarbehov. Arkitekturen omsätter dessa beslut till ett hållbart system.
* Product Owner ansvarar för rätt produkt.
* Projektets väktare ansvarar för att produkten byggs rätt.

---

## Väktarregler

### Väktarregel 001

En ny idé får aldrig avbryta implementationen.

Alla nya idéer följer processen:

**Idé → RFC → Change Queue → Prioritering → Implementation**

Undantag görs endast för kritiska fel eller blockerande beslut.

---

### Väktarregel 002

MASTER_INDEX är projektets kontrollrum.

Dokumentet ska visa projektets aktuella status, riktning och nästa steg.

Det ska **inte** duplicera information från andra dokument.

MASTER_INDEX ska sammanfatta och hänvisa vidare, inte återge innehållet i PRD, RFC, Decision Log eller arkitekturdokument.

---

### Väktarregel 003

Implementera alltid **minsta möjliga förändring** som uppfyller ett godkänt beslut.

När ett RFC implementeras ska endast de delar av ett dokument som direkt påverkas av beslutet ändras.

Undvik att samtidigt:

* skriva om formuleringar,
* förbättra språk,
* omstrukturera innehåll,
* lägga till nya idéer,
* göra andra förbättringar som inte är en direkt följd av RFC:t.

Om ytterligare förbättringar identifieras under arbetet ska de istället läggas i **Change Queue** eller hanteras genom ett nytt RFC.

**Syfte**

Varje förändring ska vara spårbar till ett specifikt beslut. Det gör projektet enklare att granska, underhålla och vidareutveckla.

---

## Kontrollrumsprincipen

Om projektets status inte går att förstå genom att läsa detta dokument på två minuter är dokumentet inte tillräckligt bra.

---

# DOCUMENT STATUS

## Foundation

| Dokument | Version | Status |
|----------|---------|--------|
| Vision & Principles | v1.1 | ✅ Aktuell |
| Decision Framework | v1.1 | ✅ Aktuell
| DGTC Way | v1.0 | ✅ Aktuell |
| Problem Statement | v1.0 | ✅ Aktuell |
| Decision Log | v1.1 | ✅ Aktuell |
| Glossary | v1.0 | ✅ Aktuell |
---

## Product

## Product

| Dokument | Version | Status |
|----------|---------|--------|
| PRD | v1.1 | ✅ Aktuell |
| MVP | v1.1 | ✅ Aktuell |
| User Personas | – | Ej påbörjad |
---

## Architecture

| Dokument | Version | Status |
|----------|---------|--------|
| System Overview | v1.0 | ✅ Aktuell |
| Architecture | v1.0 | ⏳ Ska uppdateras |
| Domain Model | v1.0 | ✅ Aktuell |
| State Model | v1.0 | ✅ Aktuell |
| Data Model | v1.0 | ✅ Aktuell |
| Navigation | v1.1 | ✅ Aktuell |
---

## Functional Requirements

| Dokument          | Status |
| ----------------- | ------ |
| FRS               |        |
| Home              |        |
| Wheels            |        |
| Training Programs |        |
| Training Session  |        |
| Result Entry      |        |
| Summary           |        |
| Settings          |        |

---

## Brand

| Dokument       | Status |
| -------------- | ------ |
| Brand Platform | Queued |

---

# ACTIVE RFCs

| RFC | Status | Implementering |
|-----|--------|----------------|
| RFC-001 – Progressive Engagement | Approved | In Progress |
---

# CHANGE QUEUE

Prioriterade förändringar som ännu inte blivit RFC.

| ID | Förslag | Status |
| -- | ------- | ------ |

---

# BRAND QUEUE

| Kandidat             | Status |
| -------------------- | ------ |
| Brand Platform       | Queued |
| Candidate North Star | Queued |
| DGTC Value Hierarchy | Queued |
| Produktlöfte         | Queued |

---

# SPRINT BOARD

## Current Sprint

Consolidation Sprint 1

### Sprint Goal

Implementera RFC-001 konsekvent i hela dokumentationen utan att introducera nya produktbeslut.

### Sprint Backlog

### Sprint Backlog

- ✅ Vision & Principles
- ✅ Decision Framework
- ✅ PRD
- ✅ MVP
- ▶ Architecture
- ⏳ MASTER_INDEX och sprintstängning
### Completed

- RFC-001 – Progressive Engagement
- DL-004 – Progressive Engagement
- Vision & Principles v1.1
- Decision Framework v1.1
- PRD v1.1
- MVP v1.1

---

# IMPLEMENTATION STATUS

## RFC-001 – Progressive Engagement

| Dokument | Status |
|----------|--------|
| Vision & Principles | ✅ Klar |
| Decision Framework | ✅ Klar |
| PRD | ✅ Klar |
| MVP | ✅ Klar |
| Architecture | ▶ Nästa |
| MASTER_INDEX | ⏳ Väntar på slutlig stängning |
---

# SESSION CHECKLIST

## Vid start

* Läs Project Dashboard.
* Läs Project Control Room.
* Kontrollera blockerare.
* Bekräfta Current Task.
* Bekräfta Next Task.

## Vid avslut

* Uppdatera Current Task.
* Uppdatera Next Task.
* Uppdatera Last Updated.
* Uppdatera Implementation Status vid behov.

---

# PROJECT HEALTH

Ställ följande frågor regelbundet:

* Arbetar vi fortfarande mot produktvisionen?
* Följer vi projektprinciperna?
* Har alla större beslut ett RFC?
* Har alla godkända RFC implementerats?
* Finns det teknisk skuld som behöver prioriteras?
* Är dokumentationen fortfarande konsekvent?
* Är det dags att konsolidera innan vi fortsätter?

---

# PROJECT METRICS

## 🍺 Beer-o-meter

| Metric | Value |
|---------|------:|
| Total beers | 2 |
| Unique beers | 2 |
| Breweries | 2 |
| Beer styles | 2 |

### Latest beer

| Date | Beer | Brewery | Style | Sprint | Task |
|------|------|----------|-------|--------|------|
| 2026-07-22 | Falcon Bayerskt | Falcon | Bayer/Lager | Consolidation Sprint 1 | Decision Framework |

---

# easter egg alltid längst ned

# PROJECT STATS

- Documentation version
- RFCs completed
- Decision Logs
- Commits (senare)
- Beer-o-meter 🍺