# Decision Framework

**Document Type:** Governance  
**Version:** v2.0  
**Lifecycle:** Approved  
**Information Owner:** Product Owner

---

# Purpose

This document defines how decisions are made within the DGTC project.

Its purpose is to:

- ensure consistent decision making,
- protect the product vision,
- maintain architectural integrity,
- prevent unnecessary complexity,
- provide transparent decision criteria.

This document defines the decision process.

Decision history is recorded in `08_Decision_Log.md`.

---

# Decision hierarchy

When multiple alternatives exist they are evaluated in the following order.

## 1. User value

Does this help the user improve?

If no:

Reject.

---

## 2. Product vision

Is the decision aligned with the DGTC vision?

If no:

Reject.

---

## 3. Foundation

Is the decision consistent with:

- The DGTC Way
- Vision and Principles
- DGTC DNA

If no:

Reject or escalate.

---

## 4. Architecture

Does the solution preserve the architectural principles?

If no:

Redesign.

---

## 5. Implementation

Only after the previous steps have been satisfied may implementation details influence the decision.

Technology never drives product direction.

---

# Decision classes

## Class A

Editorial changes.

Examples:

- spelling
- formatting
- broken links
- documentation consistency

No Product Owner approval required.

---

## Class B

Structural improvements without behavioural change.

Examples:

- document restructuring
- navigation improvements
- repository cleanup
- naming consistency

Reviewer approval required.

---

## Class C

Product decisions.

Examples:

- new features
- changed workflows
- UX changes
- product behaviour
- business rules

Require Product Owner approval.

---

## Class D

Foundational decisions.

Examples:

- philosophy
- architecture principles
- governance
- product direction

Require explicit Product Owner approval and Decision Log entry.

---

# Evaluation questions

Every significant proposal should answer:

- Does it create user value?
- Does it simplify the product?
- Does it support deliberate practice?
- Does it preserve Offline First?
- Does it reduce unnecessary complexity?
- Is it understandable by a new contributor?
- Does it duplicate an existing capability?
- Is another document the correct owner?

---

# Conflict resolution

If two documents disagree:

1. Foundation
2. Decision Framework
3. PRD
4. FRS
5. Architecture
6. Domain Model
7. Data Model
8. State Model
9. Implementation documentation

The higher document owns the decision.

---

# Decision process

```text
Proposal
    ↓
Classify
    ↓
Evaluate
    ↓
Approve
    ↓
Decision Log
    ↓
Implementation
```

---

# Decision ownership

| Area | Owner |
|------|-------|
| Product | Product Owner |
| Architecture | Architecture |
| Documentation | Information Owner |
| Repository | Project |

---

# Revision history

| Version | Date | Description |
|---|---|---|
| v2.0 | 2026-07-29 | Repository consolidation |

