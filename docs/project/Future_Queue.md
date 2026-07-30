# Future Queue

## Purpose

This document captures ideas, principles, and initiatives that are intentionally deferred. Entries in this queue are not approved work and do not imply implementation commitment.

Items may later become RFCs, roadmap initiatives, or implementation tasks after evaluation.

---

# FQ-001 — Viral Onboarding

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Category | Growth |

## Description

Enable existing users to naturally introduce new users through everyday product workflows.

The objective is sustainable organic growth without disrupting the user experience.

## Ideas

- Simple invitations
- Show the app to a friend
- Share training sessions
- QR codes
- "Try this training session"

---

# FQ-002 — Quality First Development

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Category | Development Philosophy |

## Description

Invest time early to reduce work later.

Work hard to work smart.

Making the right decisions in the right order reduces unnecessary rewrites, refactoring, and rework.

## Motivation

Quality is created through good early decisions rather than fixing mistakes late in the project.

---

# FQ-003 — MVP Onboarding Philosophy

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Category | Product Experience |

## Description

Define what "getting started" actually means.

Success is measured not only by speed, but by how quickly users experience:

- Value
- Enjoyment
- Simplicity
- Motivation

This work may influence onboarding, the first training session, and Quick Challenge.

---

# FQ-004 — Low Coordination Cost

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Category | Development Process |

## Description

Organize the project so new developers and AI agents can quickly understand its purpose, current state, and workflows without extensive verbal handover.

## Motivation

Investing in clear structure early reduces coordination, onboarding effort, and future rework.

---

# FQ-005 — Development Philosophy

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Category | Development Philosophy |

## Description

Document the development philosophy used to build DGTC.

The philosophy should explain how the project makes decisions, evolves processes, and maintains long-term quality for both humans and AI agents.

## Principles to Explore

- Great products are built through good decisions.
- Good decisions are built through good processes.
- Make the right decisions in the right order.
- Philosophy guides the product.
- Product guides the architecture.
- Architecture guides the code.
- Code must never guide the philosophy.
- Invest time early to reduce work later.
- Work hard to work smart.
- Documentation is the project's API.
- Reduce coordination cost.
- Ask "What is not affected?" before implementation.
- Implement the smallest possible change.
- Does this create joy?

## Reflection

When discussing a feature or decision, ask:

> Does this create joy?

If not, ask why.

If the answer remains no, reconsider whether the feature belongs in the product.

Joy is not a bonus.

It is part of the user experience and long-term motivation.

## Motivation

The development philosophy has emerged organically during repository consolidation.

It should be documented after being validated through Sprint 0 and Sprint 1.

---

# FQ-006 — Verification vs Approval

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Category | Quality Assurance |

## Description

Define a clear distinction between verification and approval within the DGTC development process.

Technical quality and product acceptance should remain separate activities.

## Principles to Explore

- Verification demonstrates that requirements are satisfied.
- Approval accepts the delivered result.
- A test is not complete until its results are documented.
- A test is not approved until verification against acceptance criteria is complete.
- An implementation task is not complete until Product Owner approval.
- Every implementation task should support complete traceability from requirement to approved delivery.

## Motivation

Separating implementation, verification, approval, and documentation creates a robust quality system for both humans and AI agents.

---

# FQ-007 — Beer Log

## Metadata

| Property | Value |
|----------|-------|
| Status | Future |
| Priority | Low |
| Category | Project Culture |

## Description

Investigate whether Beer Commit and Beer-o-meter should be complemented by a Beer Log documenting major milestones, lessons learned, and project retrospectives.

## Motivation

Beer Commit has evolved from a humorous tradition into a useful way of documenting important project history and insights.

---

## Related Documents

- `DOCUMENT_REGISTER.md`
- `../development/DEVELOPMENT_WORKFLOW.md`
- `../foundation/05_Decision_Framework.md`
- `../foundation/06_DGTC_DNA.md`

---

**Status:** Living Document

**Owner:** Project

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.