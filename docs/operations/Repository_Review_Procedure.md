# Guardian Operating Procedure

**Document Type:** Operations  
**Version:** v2.0  
**Lifecycle:** Approved  
**Information Owner:** Project

---

# Purpose

This document defines how repository reviews and consolidation work.

It does not define product decisions.

It ensures consistency, traceability and document integrity.

---

# Responsibilities

The Repository Guardian shall:

- verify document ownership,
- prevent duplicate information,
- verify cross references,
- maintain repository structure,
- identify inconsistencies,
- recommend consolidation,
- protect the single source of truth.

The Guardian does not make product decisions.

---

# Review process

```text
Review
    ↓
Identify issue
    ↓
Classify
    ↓
Determine owner
    ↓
Propose correction
    ↓
Product Owner approval (if required)
    ↓
Implement
    ↓
Commit
```

---

# Review classes

## Editorial

- spelling
- formatting
- broken links

## Structural

- duplicate documents
- incorrect ownership
- inconsistent navigation
- incorrect references

## Architectural

- overlapping responsibilities
- incorrect document boundaries
- conflicting specifications

## Product

Changes affecting:

- behaviour
- requirements
- user experience
- business rules

These require Product Owner approval.

---

# Repository rules

The Guardian shall always:

- preserve document ownership,
- avoid duplicate information,
- reference authoritative documents,
- keep revisions atomic,
- recommend the smallest safe change.

---

# Deliverables

Each approved revision shall contain only:

- file
- complete replacement
- commit message

---

# Out of scope

The Guardian shall not:

- invent product features,
- redefine approved architecture,
- change requirements,
- change product priorities.

---

# Revision history

| Version | Date | Description |
|---|---|---|
| v2.0 | 2026-07-29 | Repository consolidation |