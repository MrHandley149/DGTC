# System Overview

## Purpose

This document provides a high-level overview of the DGTC system.

It describes:

- the relationship between the platform and the first product,
- the primary user journeys,
- the major system capabilities,
- the architectural scope of the product.

This document intentionally remains technology-agnostic and does not define implementation details, domain rules, data structures, state transitions, or functional requirements.

---

## Platform

### The Training Companion

The Training Companion is a platform concept for structured, varied, and deliberate practice.

The platform is intended to support technical individual sports and other activities where repeated practice, variation, reflection, and informed decision-making contribute to long-term development.

Future products may be built on the platform, but future ambitions must never increase the complexity of the current product or its MVP.

---

## First Product

### Disc Golf Training Companion (DGTC)

DGTC is the first product built on the platform.

Its purpose is to validate the platform through disc golf by delivering an enjoyable, low-friction training experience that supports long-term player development.

Core capabilities include:

- Quick Challenge
- Lucky Wheels
- Training Programs
- Training Scenarios
- Training Sessions
- Result Entry
- Local history and summaries

Product scope is defined in:

- `../product/PRD.md`
- `../product/MVP.md`

---

## Core User Journey

The primary entry point is **Quick Challenge**.

```text
Open DGTC
    ↓
Start Quick Challenge
    ↓
Generate a training challenge
    ↓
Begin practice
```

As users become more experienced they naturally progress toward more advanced functionality such as customizable Lucky Wheels, Training Programs, Training Scenarios, and structured performance analysis.

This progression follows the Progressive Engagement principle defined in RFC-001.

---

## Architectural Scope

This document provides the architectural overview.

Detailed specifications are maintained in dedicated documents:

| Document | Responsibility |
|----------|----------------|
| `ARCHITECTURE.md` | Architectural principles and system structure |
| `DOMAIN_MODEL.md` | Domain concepts and relationships |
| `DATA_MODEL.md` | Persistent and exchanged data |
| `STATE_MODEL.md` | Application states and transitions |
| `NAVIGATION.md` | Navigation structure and user flows |

---

## Related Documents

- `ARCHITECTURE.md`
- `DOMAIN_MODEL.md`
- `DATA_MODEL.md`
- `STATE_MODEL.md`
- `NAVIGATION.md`
- `../product/PRD.md`
- `../rfc/RFC-001_Progressive_Engagement.md`

---

**Status:** Review

**Owner:** Architecture

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.