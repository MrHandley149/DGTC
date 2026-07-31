# DGTC Business Operating System (BOS)

# Master Index

**Version:** 1.0

**Status:** Draft

**Document Type:** Navigation Document

---

# Purpose

The Master Index serves as the central navigation document for the DGTC Business Operating System (BOS).

It defines the documentation hierarchy, document status, governance structure, dependencies, and workflow.

This document contains **no business strategy**.

Its purpose is to make the Business Operating System understandable and easy to navigate.

---

# Business Operating System Overview

The Business Operating System is organized into four strategic layers.

Each layer builds upon the previous one.

```text
Foundation
      │
      ▼
Analysis & Governance
      │
      ▼
Identity
      │
      ▼
Execution Strategies
```

---

# Level 1 — Foundation

The Foundation serves as the single source of truth for the entire DGTC ecosystem.

Ownership belongs to the Product Operating System.

| Document | Status |
|----------|--------|
| `FOUNDATION.md` | External Reference |

---

# Level 2 — Analysis & Governance

These documents translate the Foundation into business strategy and governance.

| Document | Status | Purpose |
|----------|----------|---------|
| `FOUNDATION_ANALYSIS.md` | Approved | Business interpretation of the Foundation |
| `BUSINESS_GUARDRAILS.md` | Draft | Strategic governance principles |
| `CHANGE_QUEUE.md` | Active | Future business improvements and documentation proposals |

---

# Level 3 — Brand Identity

These documents define how DGTC should be perceived.

| Document | Status | Purpose |
|----------|----------|---------|
| `BRAND_PLATFORM.md` | Draft | Brand identity |
| `MESSAGING_FRAMEWORK.md` | Planned | Communication framework |
# Level 4 — Execution Strategies

These documents describe how the DGTC identity is translated into practical business execution.

| Document | Status | Purpose |
|----------|----------|---------|
| `WEBSITE_STRATEGY.md` | Planned | Website strategy |
| `COMMUNITY_STRATEGY.md` | Planned | Community development |
| `SPONSORSHIP_STRATEGY.md` | Planned | Partnership strategy |
| `PRICING_STRATEGY.md` | Planned | Pricing model |
| `GO_TO_MARKET.md` | Planned | Launch strategy |

---

# Governance

Governance documents manage the Business Operating System itself.

| Document | Status | Purpose |
|----------|----------|---------|
| `BUSINESS_DECISION_LOG.md` | Planned | Strategic decision history |
| `docs/business/BUSINESS_INDEX.md` | Draft | Documentation navigation |

---

# Documentation Hierarchy

```text
Foundation
      │
      ▼
Foundation Analysis
      │
      ├─────────────────────┐
      ▼                     ▼
Business Guardrails    Brand Platform
      │                     │
      └──────────┬───────────┘
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

The hierarchy ensures that every strategic decision ultimately traces back to the Foundation.

---

# Document Status Lifecycle

The Business Operating System uses four document states.

## Planned

The document has been identified but development has not yet begun.

---

## Draft

The document is actively being developed and remains subject to revision.

---

## Approved

The document has completed review and is considered the current authoritative version.

Improvements remain possible without changing its status.

---

## Frozen

The document is considered strategically stable.

Changes should only occur through deliberate governance decisions and be recorded in the Business Decision Log.
# Document Workflow

When a new Business document is created, it should follow the standard governance process.

1. Be derived from the Foundation.
2. Comply with the Business Guardrails.
3. Complete the review process.
4. Reach **Approved** status.
5. If appropriate, later transition to **Frozen** status.

This process ensures strategic consistency throughout the Business Operating System.

---

# Ownership

## Product Operating System

Responsible for the Foundation and all product philosophy.

---

## Business Operating System

Responsible for all documentation located within:

```text
/docs/business
```

This includes governance, branding, communication, and execution strategy.

---

# Version Management

The Master Index should be updated whenever:

- New documents are added.
- Existing documents change status.
- The documentation hierarchy changes.
- Governance responsibilities change.
- New strategic layers are introduced.

The Master Index should always reflect the current structure of the Business Operating System.

---

# Navigation Principles

The Master Index serves as the primary entry point for Business documentation.

Every Business document should be reachable from this index, either directly or through the documented hierarchy.

The objective is to ensure that contributors can understand:

- Where information belongs
- Which document owns a topic
- Which documents depend on one another
- How strategic decisions flow through the Business Operating System

Navigation should prioritize clarity over completeness.

---

## Related Documents

- `FOUNDATION_ANALYSIS.md`
- `BUSINESS_GUARDRAILS.md`
- `CHANGE_QUEUE.md`
- `BRAND_PLATFORM.md`
- `MESSAGING_FRAMEWORK.md`
- `BUSINESS_DECISION_LOG.md`

---

**Status:** Draft

**Owner:** Business

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.
