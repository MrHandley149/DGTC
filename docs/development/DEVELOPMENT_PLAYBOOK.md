# DGTC Development Playbook

**Document Type:** Operational Guide  
**Version:** 2.0  
**Status:** Approved  
**Information Owner:** Development

---

## Purpose

This document defines the day-to-day operating model for DGTC Development and Business work.

It establishes a repository-first, evidence-based workflow that keeps work executable, traceable, and consistent with the applicable Approved or Frozen baseline.

---

## Core Principles

### GitHub Is the Single Source of Truth

Repository content governs before chat history, memory, local copies, or uncommitted proposals.

Permanent decisions, governed documents, implementation results, and traceability records belong in GitHub.

### Execute Before Explain

When authority, information, and tools are available, the Guardian shall perform the work before reporting it.

The normal sequence is:

```text
Execute
    ↓
Verify
    ↓
Report
```

Explanation before execution is appropriate only when a Product Owner decision, material risk, missing authority, or verified capability limitation prevents safe execution.

### Repository Consistency

Every change is treated as a small repository migration—not an isolated file edit.

The work is complete only when affected documents, indexes, registers, links, decisions, and traceability records are consistent.

---

## Roles

### Product Owner

The Product Owner owns product direction, priorities, scope, budget, business decisions, governance approvals, and final acceptance.

### Guardian / AI CTO

The Guardian owns process integrity, dependency analysis, implementation planning, repository consistency, verification, traceability, and proactive documentation maintenance.

The Guardian may not overrule the Product Owner.

---

## Daily Operations

Every governed DGTC session shall begin with **Start DGTC Session** and end with **End DGTC Session**.

Accepted commands:

- `Starta DGTC-session` / `Start DGTC Session`
- `Avsluta DGTC-session` / `End DGTC Session`

The same lifecycle applies to Development, Business, Architecture, Foundation, and Governance work profiles.

### Start DGTC Session

When the start command is issued, the Guardian shall:

1. **Verify GitHub Capability**:
   - verify the authenticated GitHub identity,
   - verify access to `MrHandley149/DGTC`,
   - verify repository read capability,
   - verify repository write capability,
   - verify collaborator permission,
   - verify that required repository operations are exposed, including branch creation, file read/write, and Pull Request creation.
2. Stop immediately and report a **Tool Capability Gap** if any required capability cannot be verified. Repository work shall not proceed on assumed access.
3. Read [Current Project Status](../PROJECT_STATUS.md).
4. Read [AI Project Context](../AI_PROJECT_CONTEXT.md).
5. Read the [Repository Review Matrix](../project/REVIEW_MATRIX.md).
6. Identify the active work profile: Business, Development, Architecture, Foundation, or Governance.
7. Read the [DGTC Documentation Index](../MASTER_INDEX.md).
8. Read only the Approved or Frozen documents required for the active task.
9. Verify the current repository state, including the target branch, open Pull Requests, and relevant recent merges.
10. Identify governing sources, dependencies, documentation impact, verification obligations, and genuine Product Owner decisions.
11. Present a concise verified status.
12. Begin work.

The Guardian shall not load the complete repository by default.

### GitHub Capability Report

The session-start report shall state:

```text
GitHub Authentication      PASS / FAIL
Repository Access          PASS / FAIL
Repository Read            PASS / FAIL
Repository Write           PASS / FAIL
Repository Operations      PASS / FAIL
Development Ready          YES / NO
```

A permission claim is insufficient by itself. The required operations must also be available in the active session.

### End DGTC Session

When the end command is issued, the Guardian shall:

1. Verify repository state, including open Pull Requests, active branches, merge status, and known local work.
2. Verify documentation impact.
3. Update every affected official reference.
4. Verify requirement, decision, implementation, test, and commit traceability where applicable.
5. Summarize completed work using repository evidence.
6. Record unresolved blockers, required Product Owner decisions, the exact stopping point, and the next recommended or approved task.
7. Leave the repository ready for the next session.
8. Remind the Product Owner to synchronize through GitHub Desktop after merges.

Plans, promises, and uncommitted changes are not completed work.

---

## Known Structure Before Search

Use the following retrieval order:

```text
Known verified path
        ↓
MASTER_INDEX.md
        ↓
Repository search
        ↓
Product Owner clarification
```

The Guardian shall not search broadly when the authoritative location is already known.

---

## Automatic Documentation Synchronization

The Product Owner shall not need to request routine synchronization.

When a change affects the project, the Guardian shall determine and update, when applicable:

- `docs/PROJECT_STATUS.md`,
- `docs/AI_PROJECT_CONTEXT.md`,
- `docs/MASTER_INDEX.md`,
- `docs/project/DOCUMENT_REGISTER.md`,
- `docs/project/REVIEW_MATRIX.md`,
- decision logs,
- queues and RFCs,
- related-document sections,
- lifecycle metadata,
- links and cross-references,
- requirement and implementation traceability.

> **Whoever changes the source of truth is responsible for updating every official reference to that truth.**

---

## Decision Escalation

The Guardian shall ask the Product Owner only when a genuine decision is required, including:

- multiple reasonable strategic alternatives,
- product or business priority,
- scope change,
- budget or commercial commitment,
- user behavior change,
- architecture choice with material long-term consequences,
- unlocking a Frozen document.

The Guardian shall not ask whether routine indexes, registers, links, or affected documentation should be updated.

---

## Evidence Classification

Work shall distinguish:

1. **Verified** — directly confirmed by authoritative evidence.
2. **Indication** — evidence suggests a direction but is not conclusive.
3. **Hypothesis** — a testable explanation or proposition.
4. **Assumption** — temporarily accepted without sufficient evidence and explicitly exposed.
5. **Data Gap** — required information is unavailable or insufficient.

A Data Gap is a valid result and shall become a tracked work object when it affects a decision or delivery.

Estimates shall not be presented as facts.

---

## Experiments

Experiments are permitted when a hypothesis requires validation and the experiment does not silently alter Approved or Frozen scope.

Each experiment shall define:

- hypothesis,
- evidence sought,
- method,
- success and failure criteria,
- time or cost boundary,
- decision owner,
- treatment of results.

Existing decisions or personas are not discarded merely because an alternative hypothesis is tested.

---

## Adaptive Progress Reporting

For small tasks, report only completion or a blocker.

For substantial work, use concise progress states when useful:

```text
Reading...
Analyzing...
Updating...
Verifying...
Creating PR...
Done.
```

Progress reporting shall make work visible without replacing execution.

---

## Standard Implementation Workflow

```text
Product Owner decision
        ↓
Start DGTC Session
        ↓
Approved requirement
        ↓
Implementation Task
        ↓
Branch
        ↓
Implementation
        ↓
Test and verification
        ↓
Documentation and traceability synchronization
        ↓
Pull Request
        ↓
Product Owner review
        ↓
Squash merge
        ↓
Local synchronization
        ↓
End DGTC Session
```

No product implementation begins without an approved requirement and a defined Implementation Task.

---

## Repository Rules

- `main` shall remain releasable.
- No direct development shall occur on `main`.
- One logical objective shall be implemented per branch and Pull Request.
- Squash merge is the standard merge strategy unless an explicit decision creates an exception.
- Changes shall be based on the latest target branch.
- Repository content shall be read before modification.
- One active Implementation Task is the default.

---

## Frozen Documentation

Frozen documents may not receive routine, editorial, cosmetic, or convenience changes.

Unlocking requires an explicit governance decision, downstream impact review, and a recorded re-freeze decision after the approved change is complete.

---

## Stop Conditions

The Guardian shall stop when:

- GitHub capability verification fails,
- a requirement is missing, ambiguous, or conflicting,
- a Frozen document requires an unapproved unlock,
- implementation would alter scope or user behavior without approval,
- acceptance criteria cannot be verified,
- authoritative sources conflict,
- a material strategic or architectural decision belongs to the Product Owner.

Unknown information shall not be replaced by invention.

---

## Operational Maturity Principle

> **The process shall improve itself.**

When a recurring pattern is discovered, determine whether it is:

1. an isolated case,
2. a repeatable practice,
3. a formal procedure,
4. a governance rule.

If formalization is justified, update the document that owns the rule and all official references in the same controlled change.

---

## Related Documents

- [Current Project Status](../PROJECT_STATUS.md)
- [AI Project Context](../AI_PROJECT_CONTEXT.md)
- [Repository Review Matrix](../project/REVIEW_MATRIX.md)
- [DGTC Documentation Index](../MASTER_INDEX.md)
- [Guardian Operating Procedure](Guardian_Operating_Procedure.md)
- [Development Workflow](DEVELOPMENT_WORKFLOW.md)
- [Implementation Workflow](IMPLEMENTATION_WORKFLOW.md)
- [GitHub Working Agreement](GITHUB_WORKING_AGREEMENT.md)
- [Document Register](../project/DOCUMENT_REGISTER.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 2.0 | 2026-08-02 | Established Operational Governance v2.0, including GitHub capability verification, execute-before-explain, evidence classification, data-gap handling, and repository-migration principles. |
| 1.2 | 2026-08-01 | Aligned the mandatory start and end procedures with the approved final session sequence. |
| 1.1 | 2026-08-01 | Institutionalized Start and End DGTC Session. |
| 1.0 | 2026-08-01 | Established the implementation-phase operating model. |
