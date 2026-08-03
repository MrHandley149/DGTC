# AI Operating System — Project Templates v1

**Document Type:** Reusable template pack  
**Version:** 1.0  
**Status:** Draft for approval  
**Canonical Owner:** DGTC App Development  

## 1. Purpose

This document contains the minimum controlled templates required to start, operate, spawn work for, and hand work back into an AIOS project.

A new project copies the template structure, not DGTC-specific product content.

## 2. Standard project structure

```text
PROJECT_ROOT/
├── README.md
├── docs/
│   ├── PROJECT_PROFILE.md
│   ├── PROJECT_MANIFEST.md
│   ├── PROJECT_STATUS.md
│   ├── MASTER_INDEX.md
│   ├── DECISION_LOG.md
│   ├── AI_CONTEXT.md
│   ├── work/
│   │   ├── ACTIVE_WORK.md
│   │   ├── FUTURE_QUEUE.md
│   │   └── HANDOFF_REGISTER.md
│   └── extensions/
│       └── AIOS_EXTENSIONS.md
└── .github/
    └── pull_request_template.md
```

Projects may add domain folders, but the navigation and authority documents shall remain easy to locate.

## 3. New-project bootstrap checklist

The Project Bootstrap Agent shall complete the following in order:

1. Name the project and state its purpose.
2. Identify the human owner and decision authority.
3. Establish the canonical repository or controlled document location.
4. Appoint the initial project master.
5. State which AIOS version is inherited.
6. Identify project-specific philosophy, principles, and constraints.
7. Create the project profile and manifest.
8. Create current status and the first active objective.
9. Create the decision log and handoff register.
10. Define write permissions, branch model, and approval requirements.
11. Run the Guardian readiness check.
12. Record unresolved setup decisions before implementation begins.

## 4. Template — Project profile

```markdown
# Project Profile

**Project name:**
**Project code:**
**Purpose:**
**AIOS version:**
**Canonical source of truth:**
**Project master:**
**Human decision authority:**
**Status:** Draft | Approved | Frozen | Deprecated

## Scope

## Explicit exclusions

## Governing philosophy and principles

## Source-of-truth hierarchy

## Project terminology

## Work profiles

## Standard roles used

## Write and approval boundaries

## Required quality gates

## External obligations and constraints

## Project-specific AIOS extensions

## Revision history
```

## 5. Template — Project manifest

```markdown
# Project Manifest

| Operating concern | Authoritative source | Owner | Lifecycle status |
|---|---|---|---|
| Purpose and philosophy | | | |
| Product or service scope | | | |
| Requirements | | | |
| Architecture or operating model | | | |
| Current status | | | |
| Decisions | | | |
| Work queue | | | |
| Quality and verification | | | |
| Repository workflow | | | |
| AI roles and workflows | AIOS Core and Roles | DGTC App Development | Approved version |
```

## 6. Template — Current project status

```markdown
# Current Project Status

**Verified date:**
**Project phase:**
**Active objective:**
**Project master:**
**Active work profile:**
**Current branch or work location:**

## Verified completed work

## Work in progress

## Blockers

## Open decisions

## Open handoffs

## Risks

## Exact stopping point

## Next approved action
```

## 7. Template — AI context

```markdown
# AI Project Context

## Read first

1. Project Profile
2. Current Project Status
3. Project Manifest
4. Master Index
5. Documents named in the active work order

## Mandatory operating rules

- Chat history is not authoritative.
- Verify current repository and permissions before claiming access.
- Use one named primary role per work order.
- Do not change higher-authority documents without explicit approval.
- Produce an AIOS handoff for material spawned work.
- End with an exact stopping point and next action.

## Project-specific cautions

## Known environment limitations

## Common commands or connector routes
```

## 8. Template — Spawned work order

```text
AIOS WORK ORDER

Project:
Issued by:
Primary role:
Supporting roles:
Date:

Objective:

Why this work is needed:

Authoritative inputs:

Required context:

Explicit exclusions:

Permitted tools:

Write authority:
Read only | Draft artifacts | Branch changes | Pull request | Direct update

Required deliverables:

Quality gates:

Acceptance basis:

Handoff destination:

Stop conditions:
```

## 9. Template — AIOS handoff

```text
AIOS HANDOFF

Project:
Source session:
Role:
Date:
Work order:

Executive summary:

Inputs and sources used:

Work performed:

Results and artifacts:

Proposed decisions:

Affected authoritative documents:

Risks and uncertainties:

Verification performed:

Repository references:
- branch:
- commit:
- pull request:
- file paths:

Recommended master action:

Delivery status:
Draft | Ready for review | Blocked | Rejected | Accepted
```

## 10. Template — Handoff register

```markdown
# Handoff Register

| ID | Date | Source | Role | Subject | Status | Master action | Repository reference |
|---|---|---|---|---|---|---|---|
| H-001 | | | | | Draft / Review / Accepted / Rejected / Integrated | | |
```

A handoff is not complete merely because it is accepted. Mark it **Integrated** only when the applicable source of truth has been updated or the accepted action has been recorded in a controlled queue.

## 11. Template — Decision record

```markdown
# Decision Record: DR-XXX — Title

**Date:**
**Status:** Proposed | Accepted | Superseded | Rejected
**Decision owner:**
**Related handoff or work order:**

## Context

## Decision

## Rationale

## Alternatives considered

## Consequences

## Affected authoritative documents

## Implementation and verification actions

## Review trigger
```

## 12. Template — Active work

```markdown
# Active Work

## Active objective

## Acceptance criteria

## Authoritative inputs

## Assigned role or workstream

## Current state

## Dependencies

## Risks

## Repository references

## Exact next action
```

## 13. Template — AIOS extensions

```markdown
# Project-Specific AIOS Extensions

**Project:**
**Base AIOS version:**

## Extension EX-001 — Title

**Reason:**
**Applies to:**
**Rule:**
**Does not override:**
**Approval:**
**Review trigger:**
```

An extension shall not silently override AIOS Core. Conflicts require an explicit decision and, where reusable, a proposed Core change.

## 14. Template — Role specification

```markdown
# Role: Name

**Version:**
**Status:** Draft | Approved | Deprecated
**Owner:**

## Purpose

## Responsibilities

## Non-responsibilities

## Required inputs

## Permitted tools and write scope

## Mandatory outputs

## Quality gates

## Escalation and stop conditions

## Handoff destination

## Representative test scenarios

1.
2.
3.

## Anti-patterns

## Revision history
```

## 15. Template — Master integration review

```text
AIOS INTEGRATION REVIEW

Handoff ID:
Reviewer:
Project:

Authority gate: Pass | Fail
Scope gate: Pass | Fail
Evidence gate: Pass | Fail
Consistency gate: Pass | Fail
Verification gate: Pass | Fail
Integration gate: Pass | Fail
Handoff gate: Pass | Fail

Decision:
Accept | Return for revision | Reject | Accept with recorded conditions

Required source-of-truth updates:

Decision-log impact:

Residual risks:

Integration owner:

Completion evidence:
```

## 16. Template — Pull request summary

```markdown
## Purpose

## AIOS step or work order

## Authoritative basis

## Changes

## Quality gates and verification

## Documentation impact

## Decisions required

## Risks and follow-up

## Handoff or integration reference
```

## 17. Readiness criteria for a new project

A project is ready for governed work when:

- project ownership and decision authority are named;
- the source of truth is accessible;
- the project profile and manifest exist;
- current status and first objective are recorded;
- permissions and write boundaries are known;
- at least one master and one Guardian route are defined;
- the handoff and decision registers exist;
- unresolved setup issues are visible;
- a new session can orient itself without relying on prior chat history.

## 18. Adoption by Mackeriet

Mackeriet should:

1. adopt the approved AIOS Core and Roles versions by reference;
2. create a Mackeriet-specific Project Profile and Manifest;
3. define its own philosophy, scope, terminology, and authority documents;
4. create its own Current Status, Decision Log, Active Work, and Handoff Register;
5. record any local extensions;
6. avoid copying DGTC-specific product requirements or terminology unless explicitly adopted.

## 19. Spawning a large run, such as creation of the Tess role

The master issues a work order to the Persona and Role Builder. The spawned session performs the large run and returns:

- the complete role artifact;
- scenarios and boundary tests;
- sources and assumptions;
- proposed storage path and version;
- an AIOS handoff marked Ready for review.

The master then reviews the role, records any decision, integrates the accepted artifact, updates the role or project index, and marks the handoff Integrated. The spawned chat itself never becomes the permanent record.
