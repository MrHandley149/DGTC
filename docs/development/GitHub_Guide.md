# GitHub Guide

**Document Type:** Development  
**Version:** v2.0  
**Lifecycle:** Approved  
**Information Owner:** Development

---

# Purpose

This document defines how GitHub is used within the DGTC repository.

It establishes a consistent workflow for branches, commits and pull requests.

---

# General principles

The repository shall:

- maintain a clean history,
- use small atomic commits,
- keep the default branch releasable,
- avoid unrelated changes in the same commit.

---

# Standard workflow

```text
Synchronize repository
    ↓
Create or select branch
    ↓
Implement one logical change
    ↓
Review
    ↓
Commit
    ↓
Push
    ↓
Create Pull Request (when applicable)
    ↓
Merge
```

---

# Commit guidelines

Every commit should:

- contain one logical change,
- have a clear commit message,
- leave the repository in a working state.

Examples:

- Add MVP navigation
- Consolidate Decision Framework
- Update Domain Model

---

# Branches

Use short descriptive branch names.

Examples:

- docs/consolidation
- feature/training-session
- fix/navigation
- refactor/domain-model

---

# Pull requests

Pull requests should:

- have a clear purpose,
- be limited in scope,
- be reviewed before merge,
- resolve one logical problem.

---

# Repository structure

Documentation changes should preserve:

- document ownership,
- single source of truth,
- consistent naming,
- valid references.

---

# Related documents

- GIT_WORKFLOW.md
- Decision Framework
- Guardian Operating Procedure

---

# Revision history

| Version | Date | Description |
|---|---|---|
| v2.0 | 2026-07-29 | Repository consolidation |