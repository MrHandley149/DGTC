# DGTC Business Operating System (BOS)

# Business Index

**Document Type:** Navigation  
**Version:** 2.0  
**Status:** Approved  
**Information Owner:** Business

---

## Purpose

This document is the authoritative navigation point for the DGTC Business Operating System.

It identifies the existing Business documents, their roles, and their dependency on the DGTC Foundation.

Lifecycle metadata is owned by the [Document Register](../project/DOCUMENT_REGISTER.md). Proposed Business documents and improvements belong in [CHANGE_QUEUE.md](CHANGE_QUEUE.md).

---

## Operating Model

```text
Foundation
    ↓
Foundation Analysis
    ↓
Business Guardrails
    ↓
Brand Platform
    ↓
Messaging Framework
    ↓
Future Execution Strategies
```

The Business Operating System interprets and communicates the Foundation. It does not redefine product philosophy or introduce product behavior.

---

## Existing Documents

### Analysis and Governance

| Document | Role |
|---|---|
| [FOUNDATION_ANALYSIS.md](FOUNDATION_ANALYSIS.md) | Distills the Foundation into business, brand, and communication implications. |
| [BUSINESS_GUARDRAILS.md](BUSINESS_GUARDRAILS.md) | Defines Hard and Soft Guardrails for business decisions. |
| [CHANGE_QUEUE.md](CHANGE_QUEUE.md) | Records proposed Business documents and improvements that are not yet approved decisions. |

### Brand and Communication

| Document | Role |
|---|---|
| [BRAND_PLATFORM.md](BRAND_PLATFORM.md) | Defines brand purpose, positioning, personality, promise, and differentiation. |
| [MESSAGING_FRAMEWORK.md](MESSAGING_FRAMEWORK.md) | Defines the core message, message pillars, audiences, proof structure, and communication hierarchy. |

### Operating-System Overview

| Document | Role |
|---|---|
| [readme.md](readme.md) | Defines the purpose, principles, responsibilities, and intended evolution of the Business Operating System. |

---

## Future Business Documents

Future execution strategies may include website, community, partnership, pricing, and go-to-market documentation.

They do not exist as authoritative documents until they are:

1. proposed in the Business Change Queue,
2. explicitly approved,
3. created in the repository,
4. registered in the Document Register.

A future document name mentioned in Business planning is not evidence that a file exists or that its content has been approved.

---

## Governance Rules

Every Business document shall:

- derive from the Foundation,
- follow Business Guardrails,
- avoid introducing product requirements,
- distinguish proposals from decisions,
- use the repository lifecycle model,
- be registered when created, renamed, moved, deprecated, or removed.

The allowed lifecycle states are:

- Draft
- Approved
- Frozen
- Deprecated

---

## Ownership

The Product Operating System owns the Foundation and product behavior.

The Business Operating System owns brand, positioning, communication, commercial strategy, and partnership strategy.

When a Business proposal would change product behavior or scope, the proposal must enter product governance rather than being decided inside the Business Operating System.

---

## Related Documents

- [Foundation](../foundation/FOUNDATION.md)
- [Document Register](../project/DOCUMENT_REGISTER.md)
- [Repository Review Matrix](../project/REVIEW_MATRIX.md)
- [Business Change Queue](CHANGE_QUEUE.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-07-30 | Initial consolidated Business index. |
| 2.0 | 2026-07-31 | Aligned navigation with the verified repository, the four-state lifecycle, and queue-based future-document governance. |