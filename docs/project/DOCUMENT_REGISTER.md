# Document Register

## Purpose

This document is the authoritative register for DGTC documentation metadata.

It records:

- which documents exist,
- where each document is located,
- the document type,
- the lifecycle status,
- the information owner,
- known consolidation notes.

This register does not define document content, project status, product requirements, or implementation priorities.

The [DGTC Documentation Index](../MASTER_INDEX.md) owns documentation navigation.

---

## Lifecycle model

| Status | Meaning |
|---|---|
| Draft | The document is being created and is not yet authoritative. |
| Review | The document is being evaluated before approval. |
| Approved | The document is authoritative and maintained through the normal governance process. |
| Frozen | The document is authoritative and intentionally protected from routine modification. Changes require an explicit governance decision. |
| Deprecated | The document has been replaced but remains temporarily available for reference. |
| Archived | The document is retained for historical purposes and is no longer active. |


No additional lifecycle states may be used.

A document without a verified lifecycle status is marked with `—` until its status has been established through repository review.

---

## Document types

### Operational documents

| Type | Purpose |
|---|---|
| Workflow | Defines an end-to-end sequence of work. |
| Procedure | Defines how a specific activity is performed. |
| Guide | Provides practical support for completing an activity. |

### Specifications

| Type | Purpose |
|---|---|
| PRD | Defines product intent, scope, users, and outcomes. |
| FRS | Defines functional product behavior. |
| Architecture | Defines system structure and technical boundaries. |
| Domain | Defines domain concepts and relationships. |
| Data | Defines persistent and exchanged information. |
| State | Defines system states and transitions. |
| API | Defines interfaces between system components. |

### Supporting documents

Documents that do not belong to the operational or specification types are classified by their explicit repository function, such as Foundation, Governance, Research, Planning, Register, Queue, RFC, or README.

---

## Ownership model

| Role | Responsibility |
|---|---|
| Product Owner | Approves product direction and Change Class C decisions. |
| Information Owner | Owns the accuracy and authority of a document's information. |
| Editor | Creates and maintains document content. |
| Reviewer | Verifies correctness, consistency, and conformity. |

The `Owner` column identifies the Information Owner, not the current editor.

---

# Repository documents

## Repository entry and project control

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../MASTER_INDEX.md` | Index | Approved | Project | Navigation only |
| `DOCUMENT_REGISTER.md` | Register | Review | Project | Under RCP-002 consolidation |
| `Future_Queue.md` | Queue | — | Project | Ownership and relationship to other queues must be verified |

---

## Foundation

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../foundation/README.md` | README | — | Foundation | Domain entry document |
| `../foundation/FOUNDATION.md` | Foundation | — | Foundation | Scope and authority must be verified |
| `../foundation/00_The_DGTC_Way.md` | Foundation | — | Foundation | — |
| `../foundation/01_DGTC_Problem_Statement.md` | Foundation | — | Product | — |
| `../foundation/02_Learning_Building_Blocks.md` | Foundation | — | Learning | — |
| `../foundation/03_Performance_Model.md` | Foundation | — | Performance | — |
| `../foundation/04_Vision_and_Principles.md` | Foundation | — | Product | — |
| `../foundation/05_Decision_Framework.md` | Governance | — | Project | Candidate authoritative Decision Framework |
| `../foundation/06_DGTC_DNA.md` | Foundation | — | Product | — |
| `../foundation/07_Glossary.md` | Glossary | — | Project | — |
| `../foundation/08_Decision_Log.md` | Governance | — | Project | — |
| `../foundation/AIE Philosophy.md` | Foundation | — | Product | Filename does not conform to naming standard |
| `../foundation/Decision_Framework.md` | Governance | — | Project | Duplicate candidate; resolve in RCP-003 |
| `../foundation/Product Experience Principles.md` | Foundation | — | Product | Filename does not conform to naming standard |

---

## Product

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../product/README.md` | README | — | Product | Domain entry document |
| `../product/PRD.md` | PRD | — | Product | — |
| `../product/MVP.md` | Product scope | — | Product | Relationship to PRD must be verified |
| `../product/USER_PERSONAS.md` | Product research | — | Product | — |
| `../product/feature_requests/Feature_Request_Log.md` | Register | — | Product | Filename does not conform to naming standard |

---

## Functional requirements

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../functional/FRS.md` | FRS | — | Product | Functional requirements entry document |
| `../functional/FRS_Home.md` | FRS | — | Product | — |
| `../functional/FRS_Wheels.md` | FRS | — | Product | — |
| `../functional/FRS_Training_Programs.md` | FRS | — | Product | — |
| `../functional/FRS_Training_Session.md` | FRS | — | Product | — |
| `../functional/FRS_Result_Entry.md` | FRS | — | Product | — |
| `../functional/FRS_Summary.md` | FRS | — | Product | — |
| `../functional/FRS_Settings.md` | FRS | — | Product | — |

---

## Architecture

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../architecture/README.md` | README | — | Architecture | Domain entry document |
| `../architecture/SYSTEM_OVERVIEW.md` | Architecture | — | Architecture | Ownership reviewed in RCP-001 |
| `../architecture/ARCHITECTURE.md` | Architecture | — | Architecture | Boundary with System Overview must be verified |
| `../architecture/DOMAIN_MODEL.md` | Domain | — | Architecture | Boundary with Data and State must be verified |
| `../architecture/DATA_MODEL.md` | Data | — | Architecture | Boundary with Domain and State must be verified |
| `../architecture/STATE_MODEL.md` | State | — | Architecture | Boundary with Domain and Data must be verified |
| `../architecture/NAVIGATION.md` | Architecture | — | Product | Information ownership must be verified |

---

## Development

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../development/DEVELOPMENT_WORKFLOW.md` | Workflow | — | Development | — |
| `../development/IMPLEMENTATION_WORKFLOW.md` | Workflow | — | Development | Relationship to Development Workflow must be verified |
| `../development/GIT_WORKFLOW.md` | Workflow | — | Development | — |
| `../development/Guardian_Operating_Procedure.md` | Procedure | — | Project | Overlaps Operational Session Ritual |
| `../development/CODING_STANDARD.md` | Standard | — | Development | — |
| `../development/REPOSITORY_STRUCTURE.md` | Architecture | — | Development | Repository structure owner |
| `../development/SPRINT_0.md` | Planning | — | Project | Historical or active status must be verified |

---

## Engineering

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../engineering/README.md` | README | — | Engineering | Domain entry document |
| `../engineering/Getting_Started.md` | Guide | — | Engineering | Filename does not conform to naming standard |
| `../development/GitHub_Guide.md` | Guide | — | Development | Overlaps Git Workflow |

---


## Operations

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../operations/BUSINESS_PROFILE.md` | Profile | — | Business | — |
| `../operations/DEVELOPMENT_PROFILE.md` | Profile | — | Development | — |
| `../operations/Repository_Review_Procedure.md` | Procedure | — | Project | Duplicate filename and overlapping scope with `../development/Repository_Review_Procedure.md`; authority must be resolved |
| `../operations/OPERATIONAL_SESSION_RITUAL.md` | Procedure | — | Project | Overlaps Guardian Operating Procedure |

---

## Business

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../business/readme.md` | README | — | Business | Filename casing does not conform |
| `../business/BUSINESS_INDEX.md` | Index | — | Business | Name overlaps repository MASTER_INDEX |
| `../business/BRAND_PLATFORM.md` | Business | — | Business | Existing file was previously listed as planned |
| `../business/BUSINESS_GUARDRAILS.md` | Governance | — | Business | — |
| `../business/CHANGE_QUEUE.md` | Queue | — | Business | Boundary with Future Queue must be verified |
| `../business/FOUNDATION_ANALYSIS.md` | Analysis | — | Business | — |
| `../business/MESSAGING_FRAMEWORK.md` | Business | — | Business | — |

---

## Research

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../research/README.md` | README | — | Research | Research entry document |
| `../research/ai/README.md` | Research | — | Research | Placeholder status must be verified |
| `../research/hci/README.md` | Research | — | Research | Placeholder status must be verified |
| `../research/learning/README.md` | Research | — | Research | Placeholder status must be verified |
| `../research/motor_learning/README.md` | Research | — | Research | Placeholder status must be verified |
| `../research/psycology/README.md` | Research | — | Research | Directory spelling must be reviewed |
| `../research/sports_science/README.md` | Research | — | Research | Placeholder status must be verified |

---

## RFC

| Path | Type | Lifecycle | Owner | Consolidation note |
|---|---|---:|---|---|
| `../rfc/RFC-001_Progressive_Engagement.md` | RFC | — | Product | Closed/approved status must be verified in the document |

---

# Register maintenance

The register must be updated when:

- a document is created,
- a document is renamed or moved,
- ownership changes,
- lifecycle status changes,
- a document is replaced,
- a consolidation finding is resolved.

Navigation links belong in `MASTER_INDEX.md`.

Project work, sprint status, blockers, and current tasks do not belong in this register.

Change proposals belong in their authoritative queue or RFC, not in this file.

---

# Revision history

| Version | Date | Description |
|---|---|---|
| v1.0 | 2026-07-26 | Initial register |
| v1.1 | 2026-07-29 | Rebuilt as repository-wide metadata register under RCP-002 |
