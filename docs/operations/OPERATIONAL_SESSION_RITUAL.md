# Operational Session Ritual

**Document Type:** Operations  
**Version:** v2.1
**Lifecycle:** Approved  
**Information Owner:** Project

---

# Purpose

This document defines the standard workflow for repository work sessions.

It ensures that every session follows the same process regardless of scope.

---

# Start MACKERIET

1. Read [MASTER_INDEX.md](../MASTER_INDEX.md).
2. Verify repository readability.
3. Load the [Project Manifest](../PROJECT_MANIFEST.md).
4. Load active working rules.
5. Check open work queues.
6. Report project status.
7. Start work.

The Project Manifest owns the detailed sequence and failure behavior. If `docs/MASTER_INDEX.md` cannot be read, repository work stops; chat or memory may not substitute for repository authority.

---

# Session workflow

```text
Open repository
    ↓
Review current objective
    ↓
Select one revision
    ↓
Implement change
    ↓
Review consistency
    ↓
Commit
    ↓
Update revision status
    ↓
Repeat
```

---

# Session rules

During a work session:

- synchronize affected documentation as part of the same logical change,
- complete the applicable competence-role cross-review,
- require the Reality Auditor evidence check before reporting completion,
- work on one revision at a time,
- complete revisions before starting new ones,
- preserve document ownership,
- avoid duplicate information,
- keep commits atomic,
- maintain repository consistency.

---

# Revision checklist

Before committing, verify:

- document ownership is correct,
- duplicated information has been removed,
- references are valid,
- terminology is consistent,
- lifecycle metadata is correct,
- revision history is updated when required.

---

# Commit principles

Every commit should:

- represent one logical change,
- have a descriptive commit message,
- be reversible,
- leave the repository in a consistent state.

---

# Session completion

A session is complete when:

- planned revisions are committed,
- repository consistency has been verified,
- remaining work has been identified.

---

# Revision history

| Version | Date | Description |
|---|---|---|
| v2.0 | 2026-07-29 | Repository consolidation |
| v2.1 | 2026-08-02 | Added the governed Start MACKERIET sequence, synchronization, cross-review, and Reality Auditor check. |
