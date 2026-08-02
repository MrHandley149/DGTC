# Document Register

**Document Type:** Register  
**Version:** 2.4
**Status:** Approved  
**Information Owner:** Project

---

## Purpose

This document is the authoritative metadata register for DGTC documentation.

It records:

- which governed documents exist,
- their repository paths,
- document type,
- lifecycle status,
- information owner,
- whether they belong to the Frozen MVP implementation baseline.

The [DGTC Documentation Index](../MASTER_INDEX.md) owns navigation.

The [Repository Review Matrix](REVIEW_MATRIX.md) owns review findings and implementation-readiness conclusions.

The [Development Playbook](../development/DEVELOPMENT_PLAYBOOK.md) owns the mandatory Start and End DGTC Session procedures for Development and Business work.

---

## Lifecycle Model

| Status | Meaning |
|---|---|
| Draft | Under development and not authoritative. |
| Approved | Authoritative and maintained through normal governance. |
| Frozen | Authoritative and protected from routine modification. Unlocking requires an explicit governance decision. |
| Deprecated | Replaced and retained only for controlled reference or redirection. |

No additional lifecycle states may be used.

---

## Ownership Model

| Role | Responsibility |
|---|---|
| Product Owner | Approves product direction and product-scope changes. |
| Information Owner | Owns the accuracy and authority of a document's information. |
| Editor | Creates or maintains content under the approved process. |
| Reviewer | Verifies correctness, consistency, conformity, and traceability. |

The `Owner` column identifies the Information Owner.

---

# Repository Documents

## Repository Entry and Project Control

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../../README.md` | README | Approved | Project | No |
| `../MASTER_INDEX.md` | Index | Approved | Project | Yes |
| `../PROJECT_STATUS.md` | Status | Approved | Project | No |
| `../AI_PROJECT_CONTEXT.md` | AI operating context | Approved | Project | No |
| `../PROJECT_MANIFEST.md` | Project manifest | Approved | Project | No |
| `DOCUMENT_REGISTER.md` | Register | Approved | Project | Yes |
| `REVIEW_MATRIX.md` | Governance / Review | Frozen | Project | Yes |
| `Future_Queue.md` | Queue | Approved | Project | No |

## Foundation

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../foundation/README.md` | README | Frozen | Foundation | Yes |
| `../foundation/FOUNDATION.md` | Foundation compilation | Frozen | Foundation | Yes |
| `../foundation/00_The_DGTC_Way.md` | Foundation | Frozen | Foundation | Yes |
| `../foundation/01_DGTC_Problem_Statement.md` | Foundation | Frozen | Product | Yes |
| `../foundation/02_Learning_Building_Blocks.md` | Foundation | Frozen | Learning | Yes |
| `../foundation/03_Performance_Model.md` | Foundation | Frozen | Performance | Yes |
| `../foundation/04_Vision_and_Principles.md` | Foundation | Frozen | Product | Yes |
| `../foundation/05_Decision_Framework.md` | Governance | Frozen | Project | Yes |
| `../foundation/Decision_Framework.md` | Redirect | Deprecated | Project | No |
| `../foundation/06_DGTC_DNA.md` | Foundation | Frozen | Product | Yes |
| `../foundation/07_Glossary.md` | Glossary | Frozen | Project | Yes |
| `../foundation/08_Decision_Log.md` | Governance | Frozen | Project | Yes |
| `../foundation/AIE Philosophy.md` | Foundation | Frozen | Product | Yes |
| `../foundation/Product Experience Principles.md` | Foundation | Frozen | Product | Yes |

## Product

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../product/README.md` | README | Approved | Product | No |
| `../product/PRD.md` | PRD | Frozen | Product | Yes |
| `../product/MVP.md` | Product scope | Frozen | Product | Yes |
| `../product/USER_PERSONAS.md` | Product research | Frozen | Product | Yes |
| `../product/feature_requests/Feature_Request_Log.md` | Register | Approved | Product | No |

## Functional Requirements

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../functional/FRS.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Home.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Wheels.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Training_Session.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Result_Entry.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Summary.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Settings.md` | FRS | Frozen | Product | Yes |
| `../functional/FRS_Training_Programs.md` | FRS | Draft | Product | No |

## Architecture

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../architecture/README.md` | README | Frozen | Architecture | Yes |
| `../architecture/SYSTEM_OVERVIEW.md` | Architecture | Frozen | Architecture | Yes |
| `../architecture/ARCHITECTURE.md` | Architecture | Frozen | Architecture | Yes |
| `../architecture/DOMAIN_MODEL.md` | Domain | Frozen | Architecture | Yes |
| `../architecture/DATA_MODEL.md` | Data | Frozen | Architecture | Yes |
| `../architecture/STATE_MODEL.md` | State | Frozen | Architecture | Yes |
| `../architecture/NAVIGATION.md` | Navigation | Frozen | Product | Yes |

## Development

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../development/CODING_STANDARD.md` | Standard | Frozen | Development | Yes |
| `../development/DEVELOPMENT_PLAYBOOK.md` | Operational Guide | Approved | Development | Yes |
| `../development/DEVELOPMENT_WORKFLOW.md` | Workflow | Frozen | Development | Yes |
| `../development/IMPLEMENTATION_WORKFLOW.md` | Workflow | Frozen | Development | Yes |
| `../development/GIT_WORKFLOW.md` | Workflow | Frozen | Development | Yes |
| `../development/GitHub_Guide.md` | Guide | Frozen | Development | Yes |
| `../development/GITHUB_WORKING_AGREEMENT.md` | Governance | Approved | Project Owner | Yes |
| `../development/Guardian_Operating_Procedure.md` | Procedure | Frozen | Project | Yes |
| `../development/REPOSITORY_STRUCTURE.md` | Architecture | Frozen | Development | Yes |
| `../development/SPRINT_0.md` | Planning / Evidence | Frozen | Project | Yes |

## Skill Library

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../skills/SKILL_LIBRARY_INDEX.md` | Index | Approved | Project | No |
| `../skills/SKILL_ORCHESTRATION.md` | Operational model | Approved | Project | No |
| `../skills/SKILL_LIBRARY_GOVERNANCE.md` | Governance | Approved | Project | No |

## Engineering

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../engineering/README.md` | README | Approved | Engineering | No |
| `../engineering/Getting_Started.md` | Guide | Approved | Engineering | No |

## Operations

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../operations/BUSINESS_PROFILE.md` | Profile | Approved | Business | No |
| `../operations/DEVELOPMENT_PROFILE.md` | Profile | Approved | Development | No |
| `../operations/OPERATIONAL_SESSION_RITUAL.md` | Procedure | Approved | Project | No |
| `../operations/Repository_Review_Procedure.md` | Procedure | Approved | Project | No |
| `../operations/GIT_OPERATIONS.md` | Operational process | Approved | Development | No |

## Business

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../business/readme.md` | README | Approved | Business | No |
| `../business/BUSINESS_INDEX.md` | Index | Approved | Business | No |
| `../business/BRAND_PLATFORM.md` | Business | Approved | Business | No |
| `../business/BUSINESS_GUARDRAILS.md` | Governance | Approved | Business | No |
| `../business/CHANGE_QUEUE.md` | Queue | Approved | Business | No |
| `../business/FOUNDATION_ANALYSIS.md` | Analysis | Approved | Business | No |
| `../business/MESSAGING_FRAMEWORK.md` | Business | Approved | Business | No |

## Research

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../research/README.md` | Research index | Draft | Research | No |
| `../research/ai/README.md` | Research | Draft | Research | No |
| `../research/hci/README.md` | Research | Draft | Research | No |
| `../research/learning/README.md` | Research | Draft | Research | No |
| `../research/motor_learning/README.md` | Research | Draft | Research | No |
| `../research/psycology/README.md` | Research | Draft | Research | No |
| `../research/sports_science/README.md` | Research | Draft | Research | No |

## RFC

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../rfc/RFC-001_Progressive_Engagement.md` | RFC | Frozen | Product | Yes |

## Supporting Repository Areas

| Path | Type | Lifecycle | Owner | MVP Baseline |
|---|---|---|---|:---:|
| `../../assets/README.md` | README | Draft | Development | No |
| `../../backend/README.md` | README | Draft | Development | No |
| `../../flutter_app/README.md` | README | Approved | Development | No |

---

# Frozen Baseline Governance

A Frozen document:

- is authoritative,
- may not receive routine, editorial, cosmetic, or convenience changes,
- may only be unlocked through an explicit governance decision,
- must be reviewed for downstream impact before modification,
- must be re-frozen through a recorded decision after approved changes are complete.

---

# Register Maintenance

Update this register when:

- a governed document is created, renamed, moved, or removed,
- lifecycle status changes,
- information ownership changes,
- baseline membership changes,
- a document is replaced or deprecated.

Navigation links belong in `../MASTER_INDEX.md`.

Review findings and readiness decisions belong in `REVIEW_MATRIX.md`.

Operational session procedures belong in `../development/DEVELOPMENT_PLAYBOOK.md`.

---

# Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-07-26 | Initial register. |
| 1.1 | 2026-07-29 | Rebuilt as a repository-wide metadata register. |
| 1.2 | 2026-07-31 | Registered the GitHub Working Agreement. |
| 2.0 | 2026-07-31 | Reconciled inventory, adopted the four-state lifecycle, and registered the Frozen MVP implementation baseline. |
| 2.1 | 2026-08-01 | Registered the Approved Development Playbook as part of the implementation operating baseline. |
| 2.2 | 2026-08-01 | Registered the current project status and AI operating context created during the first Consolidation Sprint. |
| 2.3 | 2026-08-01 | Recorded the Development Playbook as the authoritative owner of the mandatory Start and End DGTC Session procedures. |
| 2.4 | 2026-08-02 | Registered the Project Manifest, Git Operations, and Skill Library governance documents. |
