# DGTC Development Playbook

**Document Type:** Operational Guide  
**Version:** 1.0  
**Status:** Approved  
**Information Owner:** Development

---

## Purpose

This document defines the day-to-day operating model for implementing DGTC.

It translates the approved governance, development workflow, and GitHub working agreement into a practical collaboration model between the Product Owner and the Guardian / AI CTO.

The objective is to keep implementation predictable, traceable, repository-first, and aligned with the Frozen MVP baseline.

---

## Core Principle

GitHub is the Single Source of Truth.

Conversation is used for decisions, clarification, and review.

GitHub is used for governed project work, including documentation, implementation, traceability, and repository history.

No implementation work shall rely on copied or remembered document content when an authoritative repository version exists.

---

## Roles

### Product Owner

The Product Owner is responsible for:

- product vision,
- prioritization,
- product-scope decisions,
- approval of RFCs and governance decisions,
- acceptance of Implementation Tasks,
- review and approval of Pull Requests.

The Product Owner owns **what** is built and whether the delivered result is accepted.

### Guardian / AI CTO

The Guardian / AI CTO is responsible for:

- reading the current repository state before proposing changes,
- architecture and dependency analysis,
- implementation planning,
- repository structure and consistency,
- documentation integrity,
- requirement-to-code traceability,
- branch and Pull Request preparation,
- verification evidence,
- proactive maintenance of indexes, registers, cross-references, and review records.

The Guardian / AI CTO protects **how** the product is built and may not overrule the Product Owner.

---

## Standard Implementation Workflow

Every implementation objective follows this sequence:

```text
Product Owner decision
        ↓
Identify the governing Frozen requirement
        ↓
Read current repository files
        ↓
Perform impact and dependency analysis
        ↓
Define one Implementation Task
        ↓
Create a working branch
        ↓
Implement the smallest complete change
        ↓
Test and verify
        ↓
Update affected documentation and traceability
        ↓
Create a focused Pull Request
        ↓
Product Owner review and acceptance
        ↓
Squash merge
        ↓
Synchronize the local repository
```

No implementation begins without an approved requirement and a defined Implementation Task.

---

## Repository Rules

- GitHub is authoritative.
- `main` shall remain releasable.
- No direct development shall occur on `main`.
- One logical objective shall be implemented per branch and Pull Request.
- Squash merge is the standard merge strategy unless an explicit decision establishes an exception.
- The local repository is a working copy and shall be synchronized after each merge.
- Repository content shall be read before it is modified.
- Changes shall be based on the latest version of the target branch.

---

## One Active Task

Only one Implementation Task shall be active at a time unless the Product Owner explicitly approves parallel work.

New ideas discovered during implementation shall not expand the active task.

They shall be recorded in the appropriate Future Queue, Feature Request Log, Change Queue, or RFC process.

---

## Documentation Governance

Documentation governs implementation.

Implementation shall not redefine approved documentation.

Frozen documents may not receive routine, editorial, cosmetic, or convenience changes.

A Frozen document may only be unlocked through an explicit governance decision recorded in GitHub. After the approved change and downstream review are complete, the document shall be re-frozen through a recorded decision.

---

## Impact Analysis

Before modifying the repository, the Guardian / AI CTO shall determine:

1. the governing requirement or decision,
2. the directly affected files,
3. indirect dependencies and cross-references,
4. architecture, data, state, and navigation impact,
5. verification and test obligations,
6. metadata, register, index, and review-record impact.

The required analysis flow is:

```text
Requested change
        ↓
Authoritative source
        ↓
Directly affected files
        ↓
Indirect dependencies
        ↓
Verification obligations
        ↓
Governance and repository records
        ↓
Pull Request
```

---

## Official Reference Maintenance

> **Whoever changes the source of truth is responsible for updating every official reference to that truth.**

When applicable, the same change shall update:

- `docs/MASTER_INDEX.md`,
- `docs/project/DOCUMENT_REGISTER.md`,
- `docs/project/REVIEW_MATRIX.md`,
- decision logs,
- RFC references,
- related-document sections,
- lifecycle metadata,
- requirement and Implementation Task traceability.

The Product Owner shall not need to request these maintenance updates separately.

---

## Implementation Task Standard

Each Implementation Task shall:

- have a unique ID,
- implement one approved requirement or tightly related requirement set,
- define scope and exclusions,
- identify affected files,
- define acceptance criteria,
- define verification evidence,
- remain independently reviewable and approvable,
- be traceable to its Pull Request and final squash commit.

Implementation Tasks shall follow `IMPLEMENTATION_WORKFLOW.md`.

---

## Pull Request Standard

Every Pull Request shall:

- solve one clearly defined problem,
- identify the governing requirement or decision,
- summarize implementation and documentation changes,
- identify material impact and exclusions,
- state how the change was tested and verified,
- preserve repository consistency and traceability,
- leave the branch in a reviewable and mergeable state.

The Product Owner reviews product correctness and acceptance.

The Guardian / AI CTO verifies process, technical consistency, documentation impact, and traceability.

---

## Local Workflow with GitHub Desktop

After a Pull Request is squash-merged:

1. Open GitHub Desktop.
2. Select the DGTC repository.
3. Switch to `main` if another branch is selected.
4. Select **Fetch origin**.
5. Select **Pull origin** when updates are available.
6. Confirm that the local working tree is clean before starting new work.

Local changes created by the Product Owner shall be committed and pushed before the Guardian / AI CTO continues from them.

---

## Stop Conditions

The Guardian / AI CTO shall stop and request a Product Owner decision when:

- a requirement is missing, ambiguous, or conflicting,
- implementation would change product scope or user behavior,
- a Frozen document must be unlocked,
- acceptance criteria cannot be verified,
- two authoritative sources conflict,
- the smallest safe implementation requires a material architectural decision.

Unknown information shall never be replaced by an assumption.

---

## Success Criteria

The playbook is followed successfully when:

- GitHub always represents the current governed project state,
- implementation remains inside the Frozen MVP baseline,
- every change is traceable from requirement to merge commit,
- `main` remains releasable,
- documentation remains trustworthy,
- the Product Owner focuses on product decisions rather than repository housekeeping,
- every merged Pull Request leaves the repository complete and internally consistent.

---

## Related Documents

- [Development Workflow](DEVELOPMENT_WORKFLOW.md)
- [Implementation Workflow](IMPLEMENTATION_WORKFLOW.md)
- [Git Workflow](GIT_WORKFLOW.md)
- [GitHub Guide](GitHub_Guide.md)
- [GitHub Working Agreement](GITHUB_WORKING_AGREEMENT.md)
- [Guardian Operating Procedure](Guardian_Operating_Procedure.md)
- [Coding Standard](CODING_STANDARD.md)
- [Document Register](../project/DOCUMENT_REGISTER.md)
- [Repository Review Matrix](../project/REVIEW_MATRIX.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-01 | Established the implementation-phase operating model for collaboration between the Product Owner and the Guardian / AI CTO. |
