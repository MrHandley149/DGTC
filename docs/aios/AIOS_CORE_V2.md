# AI Operating System — Core v2

**Document Type:** Governing operating system  
**Version:** 2.0  
**Status:** Draft for approval  
**Canonical Owner:** DGTC App Development  

## 1. Purpose

AIOS defines how AI-assisted work is started, governed, transferred, reviewed, accepted, and preserved across DGTC App Development, DGTC Business Development, Mackeriet, and future projects.

AIOS generalizes DGTC's existing governed-session model. It does not replace project-specific philosophy, requirements, architecture, business rules, or decision authority.

## 2. Governing principles

1. **Repositories and controlled project documents are organizational memory.**
2. **Chats are temporary workspaces, not authoritative sources.**
3. **Spawned chats and agents produce proposals, evidence, artifacts, and handoffs.**
4. **The project master accepts, rejects, or returns deliveries for revision.**
5. **No material result is complete until it is integrated into the applicable source of truth.**
6. **Project philosophy governs implementation. Code, tools, and convenience may not silently redefine intent.**
7. **Uncertainty, missing access, and unverified assumptions must be stated explicitly.**
8. **The smallest sufficient context shall be loaded for each task.**

## 3. Canonical ownership model

DGTC App Development is the canonical owner of AIOS.

This means:

- AIOS core rules, role definitions, workflow patterns, and project templates are maintained in the DGTC repository;
- DGTC Business Development and Mackeriet may adopt AIOS without inheriting DGTC-specific product decisions;
- project-specific profiles may extend AIOS but may not silently override Core rules;
- a conflict between AIOS Core and a local project rule must be recorded and resolved explicitly.

## 4. Source-of-truth hierarchy

When sources conflict, use the following order:

1. applicable law, safety requirements, and explicit external obligations;
2. approved or Frozen project governance and philosophy;
3. approved project requirements, architecture, operating documents, and decision logs;
4. current verified repository state;
5. accepted handoffs and reviewed work products;
6. task prompts and working notes;
7. chat history and informal recollection.

A lower source may not override a higher source without an explicit decision.

## 5. Project profile requirement

Every AIOS project shall maintain a project profile containing:

- project name and purpose;
- canonical repository or document location;
- project master;
- project owner and decision authority;
- applicable philosophy and governing documents;
- current state and active objective;
- permitted work modes and write boundaries;
- required quality gates;
- project-specific terminology;
- known constraints and dependencies.

Initial profiles:

### DGTC App Development

- Role: canonical AIOS master and product-development master.
- Authority: DGTC foundation, product, functional, architecture, engineering, governance, and implementation documents.
- Special rule: philosophy governs code.

### DGTC Business Development

- Role: governed DGTC business workstream.
- Authority: DGTC foundation plus approved Business Operating System documents.
- Special rule: business work may propose product implications but may not change product scope or architecture without App Development acceptance.

### Mackeriet

- Role: independent project consuming AIOS.
- Authority: Mackeriet's own project profile, requirements, decisions, and repository.
- Special rule: DGTC product content does not transfer unless explicitly adopted.

## 6. Session-start protocol

Every governed session shall:

1. identify project and project profile;
2. identify active role;
3. identify master or spawned-worker status;
4. verify repository, branch, permissions, and available tools;
5. read current state and active objective;
6. read only the authoritative documents required for the task;
7. state scope, constraints, expected output, and write authority;
8. stop and report if required access or authority is missing.

### Permission and environment check

Record:

- repository resolved: yes/no;
- authenticated GitHub identity or connector: verified/unverified;
- read permission: yes/no;
- write permission: yes/no;
- target branch: identified/not identified;
- local checkout required: yes/no;
- CLI required: yes/no;
- blocking approval required: yes/no.

A worker shall not claim that a CLI, repository, branch, or permission works unless it has been verified in the current execution environment.

## 7. Spawned-work protocol

A spawned chat or work session shall receive a work order containing:

- project;
- role;
- objective;
- authoritative inputs;
- exclusions;
- permitted changes;
- required output;
- quality gates;
- handoff destination.

Spawned work is isolated by default. It may explore broadly but shall not redefine project authority.

## 8. Standard handoff

Every material spawned delivery shall use this structure:

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

The handoff shall distinguish verified facts, analysis, recommendations, and unresolved assumptions.

## 9. Master integration protocol

The master shall:

1. verify the handoff against authoritative sources;
2. confirm scope and quality gates;
3. assess downstream effects;
4. accept, reject, or return the delivery;
5. record required decisions;
6. update project documents and implementation together where applicable;
7. preserve repository references;
8. update current state and next action.

Acceptance of a handoff does not by itself update the source of truth. Integration must be completed or explicitly queued.

## 10. Quality gates

All material work shall pass applicable gates:

- **Authority gate:** correct project sources and decision authority used.
- **Scope gate:** delivery matches the work order and exclusions.
- **Evidence gate:** factual claims and dependencies are traceable.
- **Consistency gate:** no unresolved conflict with governing documents.
- **Verification gate:** tests, review, calculations, or checks are documented.
- **Integration gate:** affected source-of-truth documents are identified and updated or queued.
- **Handoff gate:** another session can continue without relying on hidden chat context.

## 11. Session-end protocol

Before closure, record:

- delivered work;
- repository and branch state;
- changed or proposed files;
- decisions made or required;
- unresolved risks and blockers;
- handoffs created or accepted;
- exact stopping point;
- next approved action.

## 12. Change control

AIOS Core changes require:

1. a documented reason;
2. impact assessment for all consuming projects;
3. version increment;
4. review by DGTC App Development master;
5. migration instructions when behavior changes;
6. approval through normal repository governance.

Project extensions shall be recorded in the relevant project profile rather than editing Core unless the rule is broadly reusable.

## 13. Success criteria

AIOS succeeds when:

- a new chat can orient itself from controlled documents;
- permissions and environment limits are discovered before work begins;
- large parallel runs can be returned without copying full chat histories;
- decisions remain visible and traceable;
- new projects can reuse the system without inheriting irrelevant DGTC content;
- work can continue after a chat ends without reconstructing context from memory.
