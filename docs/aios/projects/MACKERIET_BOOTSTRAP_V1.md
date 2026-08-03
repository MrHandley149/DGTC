# Mackeriet AIOS Bootstrap v1

**Document Type:** Project bootstrap baseline  
**Version:** 1.1  
**Status:** Approved  
**Project code:** MACK  
**AIOS baseline:** Core v2.0, Roles v1.0, Project Templates v1.0

## Purpose

This document establishes the controlled AIOS operating set for Mackeriet.

## Authority

Mackeriet consumes AIOS by reference from DGTC App Development. It does not inherit DGTC product philosophy, requirements, architecture, terminology, or business decisions.

## Canonical source of truth

**Repository:** `MrHandley149/MACKERIET`  
**Default branch:** `main`  
**Repository visibility:** Private  
**Verified access:** Admin through the connected GitHub application on 2026-08-03.

Mackeriet-specific controlled documents, decisions, roles, implementation, and handoffs belong in the Mackeriet repository. DGTC stores only the reusable AIOS baseline and cross-project adoption records.

## Required local source-of-truth set

The Mackeriet repository shall maintain or map equivalents for:

1. `PROJECT_PROFILE.md`
2. `PROJECT_MANIFEST.md`
3. `PROJECT_STATUS.md`
4. `MASTER_INDEX.md`
5. `DECISION_LOG.md`
6. `AI_CONTEXT.md`
7. `work/ACTIVE_WORK.md`
8. `work/FUTURE_QUEUE.md`
9. `work/HANDOFF_REGISTER.md`
10. `extensions/AIOS_EXTENSIONS.md`

## Project profile

**Purpose:** Govern development of Mackeriet using AIOS while preserving Mackeriet-specific authority.  
**Human decision authority:** Mackeriet Project Owner.  
**Project master:** Mackeriet main chat and repository governance until replaced by a later controlled decision.  
**Canonical source of truth:** `MrHandley149/MACKERIET`.  
**Write boundary:** Material changes use the repository's governed branch and pull-request process.  
**Primary roles:** Master / Integrator, Guardian / Quality Manager, Research Agent, Business Agent, Documentation Agent, Persona and Role Builder, Project Bootstrap Agent; technical roles added when required.

## Mandatory session start

Every Mackeriet session shall state:

- project: Mackeriet;
- role;
- master or spawned-worker status;
- verified repository and branch;
- read/write permissions;
- objective and exclusions;
- required handoff destination.

## Mandatory spawned-work handoff

Material work performed outside the Mackeriet master shall use the AIOS handoff template. The master must accept and integrate the result before it becomes authoritative.

## Current Tess role delivery

Mackeriet draft PR #6 contains `Tess – Domänägare för Mathantverk`. The delivery is `Ready for Project Owner approval`, not Approved. It shall remain unmerged until Tess validates mandate boundaries, marked hypotheses, and tonal description, and the Project Owner approves the governance change.

## Readiness assessment

| Gate | Result |
|---|---|
| AIOS baseline identified | Pass |
| Decision authority identified | Pass |
| Project separation from DGTC | Pass |
| Session and handoff rules defined | Pass |
| Canonical Mackeriet repository confirmed | Pass |
| Repository access verified | Pass |
| Governed work can continue | Pass |
| Tess role approved | Pending domain-owner validation |

## Revision history

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-03 | Established Mackeriet interim project profile and local bootstrap requirements. |
| 1.1 | 2026-08-03 | Verified the canonical Mackeriet repository and recorded the current Tess role approval boundary. |
