# AIOS Pilot — Tess Role Creation Handoff

**Handoff ID:** H-001  
**Version:** 1.0
**Lifecycle:** Approved
**Project:** DGTC App Development  
**Source work type:** Spawned large-run role design  
**Primary role:** Persona and Role Builder  
**Pilot Status:** Accepted as AIOS reference workflow
**Date:** 2026-08-03

## Executive summary

The creation of the Tess role is adopted as the first reference use case for AIOS spawned work. A separate chat or work session may perform a large role-design run, but the resulting role becomes authoritative only after structured handoff, boundary review, master acceptance, and integration into the controlled role library.

This pilot validates the operating pattern. It does not claim that a specific Tess role artifact has been technically integrated unless its final file, version, and repository reference are recorded separately.

## Work-order model

```text
AIOS WORK ORDER

Project: DGTC App Development
Issued by: DGTC App Development Master
Primary role: Persona and Role Builder
Supporting role: Guardian / Quality Manager

Objective:
Create or revise the controlled Tess role specification.

Authoritative inputs:
- AIOS Core v2
- AIOS Roles v1
- applicable DGTC philosophy and project context
- approved user requirements for Tess

Explicit exclusions:
- no hidden product decisions
- no unrestricted repository authority
- no replacement of human decision authority
- no reliance on chat history as final evidence

Write authority:
Draft artifacts or branch changes as explicitly granted.

Required deliverables:
- complete role specification
- purpose and responsibilities
- non-responsibilities and boundaries
- inputs and outputs
- tone and behavioural guidance
- representative scenarios
- anti-patterns
- evaluation checklist
- sources, assumptions, and uncertainties
- proposed storage path and version
- AIOS handoff

Handoff destination:
DGTC App Development Master
```

## Required spawned-session delivery

The spawned Tess session shall return:

1. A versioned Tess role artifact.
2. At least three representative operating scenarios.
3. Boundary tests showing what Tess must refuse, escalate, or hand back.
4. A distinction between behavioural guidance and decision authority.
5. A list of assumptions and unresolved questions.
6. Verification performed against the work order.
7. Repository references when files or branches were created.
8. A recommended master action.

## Master integration review

The DGTC App Development Master shall apply all seven AIOS gates:

| Gate | Pilot acceptance basis |
|---|---|
| Authority | Correct DGTC and AIOS sources were used. |
| Scope | Tess role matches the issued work order and exclusions. |
| Evidence | Sources, assumptions, and project inputs are traceable. |
| Consistency | No conflict with DGTC philosophy, governance, or role authority. |
| Verification | Scenarios and boundary tests were completed. |
| Integration | Accepted role is stored, indexed, and versioned or explicitly queued. |
| Handoff | A new session can use the role without reading the original chat. |

## Integration decision states

- **Accepted and Integrated:** role file, index, version, and decision evidence are updated.
- **Accepted and Queued:** content is accepted, but named integration work remains visible in controlled status or queue.
- **Returned for revision:** gaps are stated against a specific gate.
- **Rejected:** rationale and retained evidence are recorded.

## Pilot result

The workflow is accepted as the standard pattern for future large spawned runs:

```text
Master work order
    ↓
Spawned specialist session
    ↓
Structured AIOS handoff
    ↓
Guardian boundary and quality review
    ↓
Master decision
    ↓
Source-of-truth integration
    ↓
Handoff marked Integrated
```

## Nonconformity prevented by this workflow

The following pattern is prohibited:

```text
A long chat created a good result
    ↓
Everyone remembers approximately what it said
    ↓
The project proceeds without a controlled artifact
```

The chat may disappear, become inaccessible, or contain conflicting iterations. The controlled role artifact and integration record must survive independently.

## Next use

When the actual Tess role artifact is ready, create a new handoff linked to this pilot and record:

- role file path;
- role version;
- source work order;
- integration decision;
- decision-log impact;
- commit and pull request;
- final handoff status.

## Revision history

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-03 | Established Tess role creation as the first AIOS reference pilot. |
