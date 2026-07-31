# GitHub Working Agreement (GWA)

**Document ID:** GWA-001  
**Version:** 1.0.0  
**Status:** Draft  
**Owner:** Project Owner  
**Applies to:** All work performed between the Project Owner, ChatGPT and the DGTC GitHub repository.

---

# 1. Purpose

This document defines the standard operating procedure for all collaboration between the Project Owner, ChatGPT and the DGTC GitHub repository.

The objective is to ensure that all repository changes are:

- Traceable
- Reproducible
- Verifiable
- Consistent
- Governed

This agreement defines how work shall be performed. It does not define product requirements, architecture or implementation.

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

## GWA-001 — GitHub is the Single Source of Truth

The GitHub repository is the authoritative source for all project documentation, source code and governance.

No local copy or conversation shall override the repository.

---

## GWA-002 — Repository First

Before any modification is proposed, the latest repository version shall be considered the current state.

---

## GWA-003 — Never Assume

Repository content shall never be assumed.

When repository contents are required, they shall be read before modifications are proposed.

---

## GWA-004 — Documentation Governs Implementation

Documentation defines implementation.

Implementation shall not redefine approved documentation.

---

## GWA-005 — Governance Before Convenience

Repository governance takes precedence over implementation convenience.

Short-term implementation gains shall never compromise repository integrity.

---

# 4. Standard Workflow

Every repository change shall follow the same workflow.

```
Request
    ↓
Identify Target
    ↓
Read Current Version
    ↓
Analyse
    ↓
Determine Impact
    ↓
Present Proposal
    ↓
Project Owner Approval
    ↓
Modify
    ↓
Validate
    ↓
Commit
    ↓
Verify
```

No step may be skipped unless explicitly approved by the Project Owner.

---

# 5. Read Policy

Before reading a repository document the following shall be identified:

- Repository
- Branch
- Target document

When reading:

- Always use the latest repository version.
- Verify the correct target document.
- Preserve document metadata.
- Preserve document intent.

ChatGPT shall never rely solely on remembered document contents when a newer repository version exists.

---

# 6. Change Policy

Every modification shall have a clearly defined purpose.

Changes shall:

- Modify only requested content.
- Preserve existing structure where possible.
- Preserve metadata.
- Preserve document hierarchy.
- Preserve traceability.

Unrelated modifications shall not be introduced.

---

# 7. Validation Policy

Every completed modification shall be validated.

Validation includes, where applicable:

- Document status
- Metadata
- Internal links
- Cross references
- Navigation
- Repository hierarchy
- Traceability

Validation shall occur before the change is considered complete.

---

# 8. Commit Policy

Repository history is a project asset.

Commits should follow these principles:

- One logical change per commit.
- Clear and descriptive commit message.
- No mixed-purpose commits.
- Preserve repository history.

---

# 9. AI Behaviour

## ChatGPT shall

- Read repository content before proposing modifications.
- Distinguish facts from assumptions.
- Preserve metadata.
- Preserve document intent.
- Explain significant changes.
- Highlight governance implications.
- Respect approved project decisions.

---

## ChatGPT shall not

- Invent repository contents.
- Assume document contents.
- Modify unrelated sections.
- Introduce governance changes without explicit approval.
- Continue working from outdated document versions.

---

# 10. Decision Levels

Repository decisions are classified according to impact.

## Level 1 — Editorial

Examples:

- Grammar
- Formatting
- Typographical corrections

May be performed directly.

---

## Level 2 — Structural

Examples:

- New sections
- Document restructuring
- Navigation updates

Require Project Owner approval.

---

## Level 3 — Governance

Examples:

- Foundation principles
- Repository hierarchy
- MASTER_INDEX
- DOCUMENT_REGISTER
- Governance model
- Document lifecycle

Require explicit governance approval.

---

# 11. Repository Operations

Repository operations include:

- Read
- Create
- Modify
- Rename
- Move
- Delete

Structural operations require Project Owner approval.

---

# 12. Continuous Improvement

Process improvements are encouraged.

However:

> Complete the current objective before improving the process.

Continuous improvement shall never prevent completion of the current task.

---

# 13. Authority

This agreement governs operational collaboration between the Project Owner and ChatGPT.

Where conflicts exist:

Foundation documents take precedence over this agreement.

Project governance decisions take precedence over operational convenience.

---

# 14. Revision History

| Version | Status | Description |
|----------|--------|-------------|
| 1.0.0 | Draft | Initial version |
