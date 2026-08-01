# DGTC Documentation Index

**Document Type:** Index  
**Version:** 2.2
**Status:** Approved  
**Information Owner:** Project

---

## Purpose

This index is the primary navigation point for DGTC documentation.

It identifies the authoritative document set for product decisions, MVP requirements, architecture, governance, and implementation.

Lifecycle status and review findings are maintained in:

- [Document Register](project/DOCUMENT_REGISTER.md)
- [Repository Review Matrix](project/REVIEW_MATRIX.md)

The repository [README](../README.md) is the primary entry point to the project.

---

## Start Every Work Session Here

1. Read [Current Project Status](PROJECT_STATUS.md) for the verified current phase, active objective, blockers, and next decision.
2. Read [AI Project Context](AI_PROJECT_CONTEXT.md) for authority, operating rules, and prohibited assumptions.
3. Use this index to locate the relevant authoritative documents.
4. Confirm lifecycle status and Frozen-baseline membership in the [Document Register](project/DOCUMENT_REGISTER.md).
5. Review the [Decision Log](foundation/08_Decision_Log.md) and the applicable approved or Frozen source documents before proposing or performing work.

Chat history is working material, not project authority. If chat and repository content conflict, the repository governs.

---

## Foundation

Foundation documentation defines why DGTC exists and the principles that govern the product.

- [The DGTC Way](foundation/00_The_DGTC_Way.md)
- [Problem Statement](foundation/01_DGTC_Problem_Statement.md)
- [Learning Building Blocks](foundation/02_Learning_Building_Blocks.md)
- [Performance Model](foundation/03_Performance_Model.md)
- [Vision and Principles](foundation/04_Vision_and_Principles.md)
- [Decision Framework](foundation/05_Decision_Framework.md)
- [DGTC DNA](foundation/06_DGTC_DNA.md)
- [Glossary](foundation/07_Glossary.md)
- [Decision Log](foundation/08_Decision_Log.md)
- [AIE Philosophy](foundation/AIE%20Philosophy.md)
- [Product Experience Principles](foundation/Product%20Experience%20Principles.md)
- [Foundation compilation](foundation/FOUNDATION.md)

---

## Product

Product documentation defines what DGTC delivers, for whom, and within which scope.

- [Product Requirements Document](product/PRD.md)
- [MVP Specification](product/MVP.md)
- [User Personas](product/USER_PERSONAS.md)
- [Product documentation overview](product/README.md)
- [Feature Request Log](product/feature_requests/Feature_Request_Log.md)

---

## Functional Requirements

Functional requirements define the behavior required for MVP implementation and verification.

- [Functional Requirements Specification](functional/FRS.md)
- [Home and Quick Challenge](functional/FRS_Home.md)
- [Challenge Wheels](functional/FRS_Wheels.md)
- [Training Session](functional/FRS_Training_Session.md)
- [Result Entry](functional/FRS_Result_Entry.md)
- [Session Summary and Friction Feedback](functional/FRS_Summary.md)
- [Settings](functional/FRS_Settings.md)

[Training Programs](functional/FRS_Training_Programs.md) is a deferred post-MVP specification and is not part of the frozen MVP implementation baseline.

---

## Architecture

Architecture documentation defines system structure, domain concepts, persistence, state, and navigation.

- [Architecture overview](architecture/README.md)
- [System Overview](architecture/SYSTEM_OVERVIEW.md)
- [Architecture](architecture/ARCHITECTURE.md)
- [Domain Model](architecture/DOMAIN_MODEL.md)
- [Data Model](architecture/DATA_MODEL.md)
- [State Model](architecture/STATE_MODEL.md)
- [Navigation](architecture/NAVIGATION.md)

---

## Development and Engineering

Development documentation defines how approved requirements are implemented, verified, reviewed, and committed.

- [Development Playbook](development/DEVELOPMENT_PLAYBOOK.md)
- [Development Workflow](development/DEVELOPMENT_WORKFLOW.md)
- [Implementation Workflow](development/IMPLEMENTATION_WORKFLOW.md)
- [Git Workflow](development/GIT_WORKFLOW.md)
- [GitHub Guide](development/GitHub_Guide.md)
- [GitHub Working Agreement](development/GITHUB_WORKING_AGREEMENT.md)
- [Guardian Operating Procedure](development/Guardian_Operating_Procedure.md)
- [Coding Standard](development/CODING_STANDARD.md)
- [Repository Structure](development/REPOSITORY_STRUCTURE.md)
- [Sprint 0](development/SPRINT_0.md)
- [Engineering overview](engineering/README.md)
- [Getting Started](engineering/Getting_Started.md)

---

## Project Governance

- [Current Project Status](PROJECT_STATUS.md)
- [AI Project Context](AI_PROJECT_CONTEXT.md)
- [Document Register](project/DOCUMENT_REGISTER.md)
- [Repository Review Matrix](project/REVIEW_MATRIX.md)
- [Future Queue](project/Future_Queue.md)
- [Progressive Engagement RFC](rfc/RFC-001_Progressive_Engagement.md)

---

## Operations

- [Business Profile](operations/BUSINESS_PROFILE.md)
- [Development Profile](operations/DEVELOPMENT_PROFILE.md)
- [Operational Session Ritual](operations/OPERATIONAL_SESSION_RITUAL.md)
- [Repository Review Procedure](operations/Repository_Review_Procedure.md)

---

## Business

The Business Operating System is navigated through the [Business Index](business/BUSINESS_INDEX.md).

---

## Research

Research supports future product and design decisions but is not authoritative implementation scope.

- [Research overview](research/README.md)

---

## Documentation Dependency

```text
Foundation
    ↓
Product Requirements
    ↓
MVP Scope
    ↓
Functional Requirements
    ↓
Architecture
    ↓
Implementation Tasks
    ↓
Code
    ↓
Verification and Approval
```

---

## Lifecycle Model

The repository uses four lifecycle states:

- **Draft** — under development and not authoritative.
- **Approved** — authoritative and maintained through normal governance.
- **Frozen** — authoritative and locked against routine modification; unlocking requires an explicit governance decision.
- **Deprecated** — replaced and retained only for controlled reference or redirection.

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 2.0 | 2026-07-31 | Rebuilt for repository-wide implementation readiness and linked to the permanent Review Matrix. |
| 2.1 | 2026-08-01 | Added the Development Playbook as the primary implementation-phase operating guide. |
| 2.2 | 2026-08-01 | Added the permanent session-start sequence and links to current project status and AI operating context. |
