# AI Operating System — Initial Project Profiles v1

**Document Type:** Project profile set  
**Version:** 1.0  
**Status:** Approved  
**Canonical Owner:** DGTC App Development  
**Approved:** 2026-08-03

## 1. Purpose

This document establishes the first controlled project profiles consuming AIOS. It separates reusable AIOS governance from project-specific authority.

## 2. DGTC App Development

**Project code:** DGTC-APP  
**Role:** Canonical AIOS master and DGTC product-development master  
**Canonical source of truth:** `MrHandley149/DGTC`  
**Human decision authority:** Project Owner  
**AIOS version:** Core v2.0, Roles v1.0, Project Templates v1.0

### Scope

Application development, product requirements, functional requirements, architecture, engineering, testing, implementation, repository governance, and maintenance of reusable AIOS.

### Governing authority

1. Applicable external obligations.
2. DGTC Frozen foundation and product baseline.
3. Approved DGTC governance, architecture, requirements, and decision records.
4. Verified repository state.
5. Accepted and integrated AIOS handoffs.

### Special rules

- DGTC App Development owns reusable AIOS changes.
- Philosophy governs code; code and tooling may not silently redefine philosophy.
- Spawned sessions produce deliveries, not project authority.
- Cross-project AIOS improvements require impact assessment before Core changes.

### Standard roles

Master / Integrator, Guardian / Quality Manager, Chief Architect, Research Agent, UX and Service Design Agent, Implementation Agent, Test and Verification Agent, Reviewer / Refactoring Agent, Documentation Agent, Persona and Role Builder, and Project Bootstrap Agent.

### Write boundary

Material changes require a branch and pull request unless an approved operating procedure explicitly permits another route.

## 3. DGTC Business Development

**Project code:** DGTC-BIZ  
**Role:** Governed DGTC business workstream  
**Canonical source of truth:** Business documents within `MrHandley149/DGTC`  
**Human decision authority:** Project Owner  
**AIOS version:** Core v2.0, Roles v1.0, Project Templates v1.0

### Scope

Brand, communication, community, sponsorship, pricing, commercial models, partnerships, go-to-market, and the DGTC Business Operating System.

### Governing authority

DGTC foundation and approved Business Operating System documents, subject to product and architecture authority held by DGTC App Development.

### Special rules

- Business work may identify and propose product implications.
- Business work may not change Frozen product scope, requirements, architecture, or engineering commitments without App Development acceptance.
- Product implications shall be transferred through an AIOS handoff.
- Accepted business decisions shall be integrated into the Business source of truth.

### Standard roles

Master / Integrator, Guardian / Quality Manager, Research Agent, Business Agent, Documentation Agent, and Persona and Role Builder. Other roles may be assigned when the work order requires them.

### Write boundary

Business documents may be changed within the approved business workflow. Product or architecture changes require App Development integration.

## 4. Mackeriet

**Project code:** MACK  
**Role:** Independent project consuming AIOS by reference  
**Canonical source of truth:** Mackeriet repository or controlled document set, to be confirmed in its local Project Profile  
**Human decision authority:** Mackeriet Project Owner  
**AIOS version:** Core v2.0, Roles v1.0, Project Templates v1.0

### Scope

Defined exclusively by Mackeriet's own purpose, requirements, decisions, operating documents, and implementation.

### Governing authority

1. Applicable external obligations.
2. Mackeriet's approved philosophy and governance.
3. Mackeriet's approved requirements, architecture, operating model, and decisions.
4. Verified Mackeriet repository state.
5. Accepted and integrated Mackeriet handoffs.

### Special rules

- Mackeriet inherits the AIOS operating method, not DGTC product content.
- DGTC terminology, requirements, architecture, and business assumptions do not transfer unless explicitly adopted.
- Mackeriet shall maintain its own Project Profile, Manifest, Status, Decision Log, Active Work, and Handoff Register.
- Reusable improvement proposals may be returned to DGTC App Development for possible AIOS integration.

### Standard roles

Selected from AIOS Roles v1 according to Mackeriet work orders. Mackeriet shall establish its own project Master and Guardian route.

### Write boundary

Defined in Mackeriet's local Project Profile and repository governance. Until verified, spawned work is read-only or draft-only.

## 5. Cross-project transfer rule

A result may move between projects only through an explicit handoff stating:

- the source project;
- the destination project;
- what is reusable;
- what is project-specific and excluded;
- affected authority documents;
- required destination decision;
- integration evidence.

No project inherits another project's decisions through chat context or informal copying.

## 6. Revision history

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-03 | Established controlled profiles for DGTC App Development, DGTC Business Development, and Mackeriet. |
