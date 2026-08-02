# Operational Session Ritual

**Document Type:** Operations  
**Version:** v2.1
**Lifecycle:** Approved  
**Information Owner:** Project

---

## Purpose

This document summarizes the standard repository work session. The detailed start/end procedures are authoritative in the Development Playbook and repository changes follow GitHub Workflow v2.

## Session Workflow

```text
Start DGTC Session
    -> verify working directory, remote, branches, changes, tools, identity, and access
    -> review current objective and governing sources
    -> synchronize the repository
    -> select or create the correct branch
    -> implement and verify one logical change
    -> stage narrowly and commit atomically
    -> push and open a Pull Request when material
    -> review and obtain required owner approval
    -> merge only when authorized
    -> record verified closeout
    -> End DGTC Session
```

## Session Rules

- Work on one governed objective at a time.
- Preserve document ownership, links, terminology, lifecycle metadata, and repository consistency.
- Use the direct-to-`main` exception only when every GitHub Workflow v2 criterion is met.
- Use Git Operations for execution and control without delegating project decisions to it.
- Keep commits atomic and reversible.

## Completion Evidence

A session records intended paths, validation, branch, commit SHAs, push result, Pull Request and issue links, unresolved decisions, and the exact stopping point. Uncommitted or unverified work is not complete.

## Related Documents

- [Development Playbook](../development/DEVELOPMENT_PLAYBOOK.md)
- [GitHub Workflow v2](../development/GIT_WORKFLOW.md)
- [Git Operations](GIT_OPERATIONS.md)

## Revision History

| Version | Date | Description |
|---|---|---|
| v2.1 | 2026-08-02 | Aligned session execution and closeout with GitHub Workflow v2 and Git Operations. |
| v2.0 | 2026-07-29 | Repository consolidation. |
