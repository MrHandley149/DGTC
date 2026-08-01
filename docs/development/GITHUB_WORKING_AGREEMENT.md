# GitHub Working Agreement (GWA)

**Document ID:** GWA-001  
**Version:** 1.1.0  
**Status:** Approved  
**Owner:** Project Owner  
**Applies to:** All work performed between the Project Owner, ChatGPT, and the DGTC GitHub repository.

---

# 1. Purpose

This document defines the standard operating procedure for collaboration between the Project Owner, ChatGPT, and the DGTC GitHub repository.

The objective is to ensure that repository changes are:

- Traceable
- Reproducible
- Verifiable
- Consistent
- Governed

This agreement defines how work is performed. It does not define product requirements, architecture, or implementation behavior.

---

# 2. Scope

This agreement applies to:

- Documentation
- Source code
- Repository structure
- Configuration
- Project governance
- Repository maintenance

---

# 3. Principles

## GWA-001 — GitHub Is the Single Source of Truth

The GitHub repository is authoritative for project documentation, source code, configuration, and governance.

No local copy or conversation overrides the repository.

## GWA-002 — Repository First

Before a modification is proposed or performed, the latest repository version shall be treated as the current state.

## GWA-003 — Never Assume

Repository contents shall be read and verified when they are required for a decision or change.

File names, paths, content, status, and implementation state shall not be inferred from memory.

## GWA-004 — Documentation Governs Implementation

Approved and Frozen documentation defines implementation.

Implementation shall not silently redefine documentation.

## GWA-005 — Governance Before Convenience

Repository governance takes precedence over implementation convenience.

Short-term speed shall not compromise traceability, document authority, or repository integrity.

---

# 4. Standard Workflow

```text
Request
    ↓
Identify Target
    ↓
Read Current Repository Version
    ↓
Analyze Scope and Impact
    ↓
Obtain Required Approval
    ↓
Modify
    ↓
Validate
    ↓
Commit
    ↓
Verify Repository State
```

A step may only be omitted through explicit approval when the omission does not weaken governance or verification.

---

# 5. Read Policy

Before repository content is used, identify:

- repository,
- branch or ref,
- exact target path.

When reading:

- use the latest relevant repository version,
- verify the target path,
- preserve document intent and authority,
- prefer repository content over remembered conversation content.

---

# 6. Change Policy

Every modification shall have one clearly defined purpose.

Changes shall:

- modify only the approved scope,
- preserve document intent,
- preserve traceability,
- avoid unrelated cleanup,
- respect lifecycle governance,
- use the smallest safe change.

Frozen documents may only be unlocked through an explicit governance decision.

---

# 7. Validation Policy

Validation includes, where applicable:

- lifecycle status,
- metadata,
- internal links,
- cross-references,
- navigation,
- terminology,
- repository hierarchy,
- requirement traceability,
- implementation readiness.

A change is not complete until the resulting repository state has been verified.

---

# 8. Commit Policy

Repository history is a project asset.

Commits shall:

- contain one logical change,
- use a clear imperative subject,
- explain significant scope or governance effects in the body,
- avoid mixed-purpose changes,
- preserve traceability to the relevant requirement, decision, or review finding.

---

# 9. AI Behavior

## ChatGPT Shall

- read repository content before modifying it,
- distinguish verified facts from recommendations and unknowns,
- preserve document intent and authority,
- identify material conflicts,
- respect approved product decisions,
- stop for Product Owner input when a true product decision is required.

## ChatGPT Shall Not

- invent repository contents,
- assume file or implementation state,
- introduce unapproved product scope,
- modify unrelated content,
- continue from an identified incorrect assumption.

---

# 10. Decision Levels

## Level 1 — Editorial

Examples:

- grammar,
- formatting,
- typographical corrections,
- repair of an unambiguous broken link.

May be performed directly when the target is not Frozen.

## Level 2 — Structural

Examples:

- new sections,
- document restructuring,
- navigation changes,
- file creation, rename, move, or deletion.

Requires Project Owner approval.

## Level 3 — Governance or Product

Examples:

- Foundation principles,
- product behavior or scope,
- repository hierarchy,
- lifecycle model,
- Document Register,
- Review Matrix,
- unlocking a Frozen document.

Requires explicit approval from the authorized decision owner.

---

# 11. Continuous Improvement

Process improvements are encouraged after the active objective has been completed or when they are required to complete it safely.

Continuous improvement shall not become a substitute for delivery.

---

# 12. Authority

Foundation and recorded product decisions take precedence over this agreement.

The Project Owner remains the final authority for product and governance decisions.

---

# 13. Revision History

| Version | Date | Status | Description |
|---|---|---|---|
| 1.0.0 | 2026-07-31 | Draft | Initial version. |
| 1.1.0 | 2026-07-31 | Approved | Approved for repository operations and aligned with Frozen-document governance. |