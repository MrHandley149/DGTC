# DGTC Project Manifest

**Document Type:** Project Manifest
**Version:** 1.0
**Status:** Approved
**Information Owner:** Project
**Process Version:** MACKERIET 1.0
**Last Reviewed:** 2026-08-02

---

## Purpose

This manifest is the compact operating contract for every MACKERIET work session. It centralizes the project's core working rules, active competence roles, and process version.

The manifest does not replace the authoritative source documents. Where a summarized rule needs interpretation, follow the linked governance document and its lifecycle status in the [Document Register](project/DOCUMENT_REGISTER.md).

---

## Core Project Rules

### GitHub Is the Single Source of Truth

The repository is authoritative for governed project work, documentation, decisions, implementation, traceability, and history. Chat, memory, and local assumptions are working material only.

### Execute Before Explain

When the requested action is authorized, sufficiently defined, and safe, perform the repository work and verify the result before giving the completion report. Explanation must not substitute for delivery. Stop only when a documented stop condition, missing authority, or genuine blocker applies.

### Automatic Documentation Synchronization

A change to a source of truth must include all affected indexes, registers, cross-references, status records, and operating guidance in the same logical change. The person or agent making the change owns this synchronization; the Product Owner does not need to request it separately.

### Known Structure Before Search

Start with `MASTER_INDEX.md`, this manifest, the Document Register, and known authoritative paths. Search the repository only after the governed navigation structure has been consulted, or when that structure does not locate the required information.

### Cross-Review of Competence Roles

Every material change must be reviewed through all active competence roles affected by that change. The primary role performs the work; the other applicable roles challenge omissions, conflicts, downstream effects, and verification gaps. A change is not complete until applicable cross-review findings are resolved or explicitly recorded.

### Reality Auditor

The Reality Auditor independently checks claims against repository evidence. It verifies that referenced files, current state, completed work, tests, links, and status statements actually exist and agree. It may block a completion claim, but it does not make product decisions or expand scope.

---

## Active Competence Roles

| Role | Primary responsibility |
|---|---|
| Product Owner | Product direction, priority, scope decisions, and acceptance. |
| Guardian / AI CTO | Process integrity, orchestration, traceability, and repository consistency. |
| Product and Domain | Requirements, user value, terminology, and scope alignment. |
| Architecture | System boundaries, dependencies, data, state, and technical coherence. |
| Development | Implementation quality, maintainability, and repository conventions. |
| Quality and Verification | Acceptance criteria, tests, regressions, and evidence. |
| Documentation and Governance | Lifecycle, ownership, indexes, references, and synchronization. |
| Reality Auditor | Independent evidence check of state and completion claims. |

Only roles affected by the active objective need to participate, except the Reality Auditor, which is mandatory for every completion claim. One person or agent may cover several roles, but each role's review perspective must remain explicit.

---

## Start MACKERIET

Run this sequence at the beginning of every MACKERIET work session:

1. Read [MASTER_INDEX.md](MASTER_INDEX.md).
2. Verify repository readability by confirming that `MASTER_INDEX.md` and its required start references can be read from the current repository ref.
3. Load this Project Manifest and confirm the process version.
4. Load the active working rules from [AI Project Context](AI_PROJECT_CONTEXT.md) and the applicable operating or development profile.
5. Check the open work queues relevant to the objective.
6. Report the verified project status, current ref, active objective, relevant queue items, blockers, and unknowns.
7. Start the authorized work.

The start check verifies read access without creating, editing, or deleting a test file. Write access is established by the first authorized repository change, or explicitly when the repository or connection has changed, a write has failed, or the Product Owner requests a write check.

### Read Failure

If `MASTER_INDEX.md` cannot be read:

```text
Repository not accessible.
Cannot read docs/MASTER_INDEX.md.
Repository work is stopped.
```

Do not infer project state, fall back to chat as authority, search for substitute governance, or begin repository work. Report the repository ref or path if it can be verified safely and request restoration of read access.

---

## Active Working Rules and Queues

Load the rules applicable to the objective from:

- [AI Project Context](AI_PROJECT_CONTEXT.md)
- [Development Playbook](development/DEVELOPMENT_PLAYBOOK.md)
- [Development Profile](operations/DEVELOPMENT_PROFILE.md) for implementation, architecture, code, test, or technical documentation
- [Business Profile](operations/BUSINESS_PROFILE.md) for business, brand, communication, community, or go-to-market work
- [Operational Session Ritual](operations/OPERATIONAL_SESSION_RITUAL.md)

Check the queues applicable to the objective:

- [Future Queue](project/Future_Queue.md)
- [Feature Request Log](product/feature_requests/Feature_Request_Log.md)
- [Business Change Queue](business/CHANGE_QUEUE.md)
- open RFCs and repository-tracked implementation work located through [MASTER_INDEX.md](MASTER_INDEX.md)

Queue content is not approved scope unless the governing process explicitly promotes it.

---

## Related Documents

- [MASTER_INDEX.md](MASTER_INDEX.md)
- [Current Project Status](PROJECT_STATUS.md)
- [AI Project Context](AI_PROJECT_CONTEXT.md)
- [Document Register](project/DOCUMENT_REGISTER.md)
- [Development Playbook](development/DEVELOPMENT_PLAYBOOK.md)
- [Operational Session Ritual](operations/OPERATIONAL_SESSION_RITUAL.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-02 | Established the MACKERIET operating contract, core rules, active competence roles, start sequence, and read-failure behavior. |
