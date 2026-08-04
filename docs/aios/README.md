# AI Operating System (AIOS)

**Document Type:** Subsystem index
**Version:** 1.0
**Status:** Approved
**Canonical Owner:** DGTC App Development  
**Adoption scope:** DGTC App Development, DGTC Business Development, Mackeriet, and future projects  

## Purpose

AIOS is the reusable governance and operating layer for AI-assisted work. It extends DGTC's existing governed-session model so that large tasks can be performed in spawned chats or work sessions and returned to a project master without making chat history a permanent dependency.

## Implementation sequence

### Step 1 — Core v2

[AIOS Core v2](AIOS_CORE_V2.md)

Defines:

- canonical ownership;
- source-of-truth hierarchy;
- project profiles;
- session start and end controls;
- permission and environment verification;
- spawned-work and handoff protocols;
- master integration;
- quality gates;
- change control.

### Step 2 — Roles v1

[AIOS Roles v1](AIOS_ROLES_V1.md)

Defines standard operating roles including:

- Master / Integrator;
- Guardian / Quality Manager;
- Chief Architect;
- Research Agent;
- UX and Service Design Agent;
- Implementation Agent;
- Test and Verification Agent;
- Reviewer / Refactoring Agent;
- Documentation Agent;
- Business Agent;
- Persona and Role Builder;
- Project Bootstrap Agent.

### Step 3 — Project Templates v1

[AIOS Project Templates v1](AIOS_PROJECT_TEMPLATES_V1.md)

Provides reusable templates for:

- project structure and bootstrap;
- Project Profile and Manifest;
- Current Status and AI Context;
- spawned work orders;
- handoffs and handoff register;
- decisions and active work;
- project-specific AIOS extensions;
- role specifications;
- master integration reviews;
- pull request summaries.

## Governing operating rule

> Chats are workspaces. Controlled project documents and repositories are organizational memory.

A spawned chat may create substantial analysis, code, documentation, or a role such as Tess. Its output becomes authoritative only after the project master reviews it and integrates the accepted result into the applicable source of truth.

## Adoption path

1. Review and approve the three AIOS documents.
2. Add AIOS to the DGTC Documentation Index and Document Register.
3. Create or update the DGTC App Development project profile as canonical master.
4. Create the DGTC Business Development profile as a governed workstream.
5. Bootstrap Mackeriet using the project templates and its own project-specific authority.
6. Test the system with one real spawned-work handoff, preferably a bounded role or research task.
7. Record lessons and approve AIOS v2.0 / Roles v1.0 / Templates v1.0.

## Non-transfer rule

Projects inherit the AIOS operating system by reference. They do not inherit DGTC product philosophy, requirements, architecture, business assumptions, or terminology unless those are explicitly adopted in the project's own controlled documents.
