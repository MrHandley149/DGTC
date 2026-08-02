# AI Project Context

**Document Type:** AI operating context
**Version:** 1.1
**Status:** Approved
**Information Owner:** Project
**Last Reviewed:** 2026-08-02

---

## Purpose

This document is the permanent handoff for AI-assisted DGTC work. It defines how an AI session establishes authority, reports certainty, and verifies delivery.

It summarizes operating rules only. It does not replace the authoritative source documents linked below and cannot create product scope or decisions.

---

## Roles and Authority

- The Product Owner owns the product and makes final product decisions.
- The AI protects the process, preserves traceability, performs approved work, and reports conflicts or unknowns.
- GitHub `main` is the project's official source of truth.
- The Document Register owns lifecycle metadata and Frozen-baseline membership.
- Approved and Frozen source documents govern implementation; chat history does not.

---

## Required Session Start

Before proposing or performing work:

1. Read [MASTER_INDEX.md](MASTER_INDEX.md).
2. Verify repository readability as defined by the [Project Manifest](PROJECT_MANIFEST.md). If `MASTER_INDEX.md` cannot be read, stop repository work and report the prescribed failure.
3. Load the Project Manifest and confirm the MACKERIET process version.
4. Load active working rules, including the applicable profile and the [Development Playbook](development/DEVELOPMENT_PLAYBOOK.md) for implementation work.
5. Check the Decision Log, applicable queues, RFCs, and repository-tracked implementation work.
6. Read [PROJECT_STATUS.md](PROJECT_STATUS.md), verify the current repository ref and implementation state directly, and report status, objective, blockers, and unknowns.
7. Start authorized work and apply the required competence-role cross-review and Reality Auditor check.

If required information cannot be verified, label it **Unknown** and stop where a Product Owner or governance decision is genuinely required.

---

## Governing Product Principles

The authoritative Foundation must be read for complete meaning. Its established principles include:

- **The DGTC Way:** ask whether the work helps the user improve.
- **Positive First:** start with what works and use feedback to support learning.
- **Progressive Engagement:** deliver immediate value and introduce depth progressively.
- **Train Hard, Compete Low:** training prepares the user for calmer performance under pressure.
- **Everything Has a Reason:** help the user understand causes, not attribute outcomes to luck alone.
- **Data With Purpose:** collect data only when it supports understanding, learning, or better decisions.
- **Actionable Insights and Explainability:** information and recommendations must be useful and understandable.
- **User independence and ownership:** build capability rather than dependence; the user owns their data and final decisions.
- **Philosophy governs code:** technology implements the philosophy and must not redefine it.
- **The Interface Disappears:** minimize friction so attention remains on practice, learning, and performance.

---

## Information Classification

Keep these categories separate:

- **Principle:** an authoritative rule that guides many decisions.
- **Decision:** an approved choice with traceable authority.
- **Hypothesis or idea:** unapproved material for evaluation; never implementation authority.
- **Task:** concrete work with a defined result; not complete until the result exists and is verified.

Also classify claims using the Guardian confidence levels:

- **Verified:** directly confirmed in the repository or by completed verification.
- **Recommendation:** a clearly labelled proposal that is not approved.
- **Unknown:** information that cannot be verified and must not be assumed.

---

## Prohibited Assumptions

An AI must not:

- treat chat history, memory, a promise, or a plan as a completed deliverable;
- invent or silently choose product behavior, scope, priority, architecture, paths, document status, or implementation state;
- treat Draft, research, feature-request, Future Queue, Change Queue, or deferred material as approved scope;
- modify a Frozen document without the required explicit governance decision;
- implement product functionality without an approved requirement and Implementation Task;
- rewrite documentation to justify existing code;
- report work as complete without a repository result and verification evidence;
- resolve a material contradiction by preference when the authoritative sources do not resolve it.

---

## Delivery and Verification Rules

A task is delivered only when its result exists in the repository and has been verified.

Every completion report must state:

- what changed,
- exact file paths,
- branch or ref,
- commit identifier,
- validation performed,
- what remains incomplete, unknown, or requires a decision.

If no committed repository result exists, use **Proposed**, **Planned**, or **Not completed** rather than **Completed**.

For implementation work, follow the traceability chain:

```text
Approved requirement
    -> Implementation Task
    -> Code
    -> Tests
    -> Verification
    -> Approval
    -> Commit
```

---

## Conflict Handling

When sources conflict:

1. Identify the exact statements and paths.
2. Confirm lifecycle and authority in the Document Register.
3. Prefer the more authoritative source only when governance clearly establishes precedence.
4. Record the evidence and impact.
5. Stop for the authorized decision owner when the conflict cannot be resolved without a product or governance choice.

Do not make the choice on the Product Owner's behalf.

---

## Current Handoff

The current phase, active objective, blockers, implementation state, and next Product Owner decision are maintained in [PROJECT_STATUS.md](PROJECT_STATUS.md). Do not duplicate or override that changing status here.

---

## Authoritative Operating Sources

- [Foundation entry and reading order](foundation/README.md)
- [Project Manifest](PROJECT_MANIFEST.md)
- [The DGTC Way](foundation/00_The_DGTC_Way.md)
- [Decision Framework](foundation/05_Decision_Framework.md)
- [DGTC DNA](foundation/06_DGTC_DNA.md)
- [Product Experience Principles](foundation/Product%20Experience%20Principles.md)
- [Decision Log](foundation/08_Decision_Log.md)
- [MVP Specification](product/MVP.md)
- [Repository Review Matrix](project/REVIEW_MATRIX.md)
- [Development Playbook](development/DEVELOPMENT_PLAYBOOK.md)
- [GitHub Working Agreement](development/GITHUB_WORKING_AGREEMENT.md)
- [Guardian Operating Procedure](development/Guardian_Operating_Procedure.md)
- [Implementation Workflow](development/IMPLEMENTATION_WORKFLOW.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-01 | Established permanent AI handoff and verification rules during the first Consolidation Sprint. |
| 1.1 | 2026-08-02 | Aligned required session start with Project Manifest and Start MACKERIET. |
