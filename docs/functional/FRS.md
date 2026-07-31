# Functional Requirements Specification (FRS)

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

This document defines the functional requirements structure for the DGTC MVP.

Detailed requirements are maintained in capability-specific FRS documents. Together, they provide traceability from approved product scope to implementation, testing, verification, and acceptance.

---

## MVP Functional Scope

The Frozen MVP implementation baseline consists of:

| Document | Capability |
|---|---|
| [FRS_Home.md](FRS_Home.md) | Home, Quick Challenge, and active-session entry |
| [FRS_Wheels.md](FRS_Wheels.md) | Two Challenge Wheels, spinning, locking, animation, sound, and editing |
| [FRS_Training_Session.md](FRS_Training_Session.md) | Training-session lifecycle and recovery |
| [FRS_Result_Entry.md](FRS_Result_Entry.md) | Fast local result registration |
| [FRS_Summary.md](FRS_Summary.md) | Session summary and friction feedback |
| [FRS_Settings.md](FRS_Settings.md) | Language, sound, and wheel reset |

[FRS_Training_Programs.md](FRS_Training_Programs.md) is a Draft post-MVP specification. It is not part of the Frozen MVP implementation baseline and shall not be implemented during the MVP without an explicit product decision.

---

## Requirement Structure

Each capability specification may contain:

- purpose,
- user stories,
- functional requirements,
- business rules,
- failure handling,
- acceptance criteria,
- explicitly deferred capabilities.

Requirements use stable identifiers so that they can be referenced by Implementation Tasks, tests, reviews, and commits.

---

## Requirement Priorities

### Must Have

Required for the MVP to satisfy its approved scope and Definition of Done.

### Should Have

Valuable but not required for the initial MVP acceptance decision.

### Could Have

Deferred capability documented for future consideration. Could Have requirements shall not enter implementation without approval.

---

## Governing Principles

Every MVP capability shall:

- support the user's development,
- minimize friction before the first throw,
- follow Positive First,
- function offline,
- preserve user data,
- remain consistent with the approved MVP, architecture, data model, and state model,
- collect only data with a defined product purpose.

---

## Traceability

Every implemented Must Have requirement shall be traceable through:

```text
MVP or PRD
    ↓
FRS Requirement
    ↓
Implementation Task
    ↓
Code
    ↓
Test Result
    ↓
Verification
    ↓
Product Owner Acceptance
    ↓
Git Commit
```

---

## Change Control

This document and the listed MVP capability specifications are Frozen.

They may not receive routine, editorial, or convenience changes. Unlocking requires an explicit governance decision. Product-scope changes require an approved RFC or equivalent recorded product decision before implementation begins.

---

## Related Documents

- [PRD](../product/PRD.md)
- [MVP Specification](../product/MVP.md)
- [Implementation Workflow](../development/IMPLEMENTATION_WORKFLOW.md)
- [Repository Review Matrix](../project/REVIEW_MATRIX.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial functional requirements structure. |
| 2.0 | 2026-07-31 | Aligned the FRS set with approved MVP scope and froze the implementation baseline. |