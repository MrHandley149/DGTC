# DGTC Business Operating System (BOS)

# Master Index

**Status:** v0.1 Draft

**Dokumenttyp:** Navigation Document

---

# Syfte

Master Index är den centrala navigationspunkten för DGTC Business Operating System.

Dokumentet beskriver dokumenthierarki, status, beroenden och arbetsflöde.

Master Index innehåller ingen affärsstrategi.

---

# Business Operating System

Business Operating System består av fyra nivåer.

## Nivå 1 – Foundation

Gemensam sanningskälla.

Ansvaras av Product Operating System.

| Dokument | Status |
|----------|--------|
| Foundation | External Reference |

---

## Nivå 2 – Analys och styrning

Dokument som översätter Foundation till affärsarbete.

| Dokument | Status | Roll |
|----------|--------|------|
| FOUNDATION_ANALYSIS.md | Approved | Destillat av Foundation |
| BUSINESS_GUARDRAILS.md | Draft | Styrande principer |

---

## Nivå 3 – Identitet

Dokument som definierar hur DGTC ska uppfattas.

| Dokument | Status | Roll |
|----------|--------|------|
| BRAND_PLATFORM.md | Draft | Varumärkesidentitet |
| MESSAGING_FRAMEWORK.md | Planned | Kommunikation |

---

## Nivå 4 – Strategier

Dokument som beskriver hur identiteten omsätts i praktiken.

| Dokument | Status | Roll |
|----------|--------|------|
| WEBSITE_STRATEGY.md | Planned | Webbplats |
| COMMUNITY_STRATEGY.md | Planned | Community |
| SPONSORSHIP_STRATEGY.md | Planned | Partners |
| PRICING_STRATEGY.md | Planned | Prismodell |
| GO_TO_MARKET.md | Planned | Lansering |

---

## Governance

Dokument som styr Business Operating System.

| Dokument | Status | Roll |
|----------|--------|------|
| BUSINESS_DECISION_LOG.md | Planned | Beslutshistorik |
| MASTER_INDEX.md | Draft | Navigering |

---

# Dokumenthierarki

```
Foundation
        │
        ▼
Foundation Analysis
        │
        ├──────────────┐
        ▼              ▼
Business Guardrails   Brand Platform
        │              │
        └──────┬───────┘
               ▼
      Messaging Framework
               ▼
      Website Strategy
               ▼
      Community Strategy
               ▼
      Sponsorship Strategy
               ▼
      Pricing Strategy
               ▼
      Go-To-Market
```

---

# Dokumentstatus

Business Operating System använder fyra statusnivåer.

## Planned

Dokumentet är planerat men inte påbörjat.

---

## Draft

Dokumentet utvecklas aktivt.

---

## Approved

Dokumentet är granskat och godkänt.

Kan fortfarande förbättras.

---

## Frozen

Dokumentet betraktas som stabilt.

Ändringar ska endast göras genom medvetna beslut och dokumenteras i BUSINESS_DECISION_LOG.

---

# Arbetsordning

När ett nytt dokument skapas ska det:

1. Härledas från Foundation.
2. Följa Business Guardrails.
3. Passera granskning.
4. Markeras som Approved.
5. Vid behov senare markeras som Frozen.

---

# Ägarskap

## Product Operating System

Ansvarar för Foundation.

---

## Business Operating System

Ansvarar för samtliga dokument under `/docs/business`.

---

# Versionshantering

Master Index ska uppdateras när:

- nya dokument tillkommer,
- dokument byter status,
- dokumenthierarkin förändras.