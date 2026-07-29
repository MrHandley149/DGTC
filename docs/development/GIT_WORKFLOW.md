# Git Workflow

**Document Type:** Development  
**Version:** v2.0  
**Lifecycle:** Approved  
**Information Owner:** Development

---

# Purpose

This document defines the Git workflow used by the DGTC project.

It describes how changes move from idea to the default branch.

---

# Workflow

```text
Identify change
    ↓
Synchronize repository
    ↓
Create branch (if needed)
    ↓
Implement one logical change
    ↓
Review locally
    ↓
Commit
    ↓
Push
    ↓
Pull Request
    ↓
Review
    ↓
Merge
```

---

# Working principles

- One logical change per commit.
- One topic per branch.
- Keep the repository buildable.
- Avoid mixing refactoring and new functionality.
- Complete one revision before starting another.

---

# Commit messages

Use the imperative mood.

Examples:

- Add session summary
- Update navigation
- Consolidate documentation
- Refactor domain model

Avoid:

- Fix stuff
- Update files
- Changes

---

# Branch strategy

Suggested naming:

```text
feature/<name>
fix/<name>
docs/<name>
refactor/<name>
release/<version>
```

---

# Pull requests

Every Pull Request should:

- solve one problem,
- have a clear description,
- reference related decisions when applicable,
- be reviewed before merge.

---

# Merge strategy

Prefer a clean repository history.

Merged work shall:

- preserve document ownership,
- maintain valid references,
- avoid duplicate information.

---

# Related documents

- GitHub Guide
- Decision Framework
- Guardian Operating Procedure

---

# Revision history

| Version | Date | Description |
|---|---|---|
| v2.0 | 2026-07-29 | Repository consolidation |