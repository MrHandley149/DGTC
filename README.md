# Disc Golf Training Companion (DGTC)

DGTC is a disc golf training platform focused on structured practice, player development, and meaningful feedback.

This repository is the authoritative source for DGTC product documentation, architecture, governance, development workflows, business development, and implementation.

## Start and end every DGTC work session

Start a governed work session with:

```text
Starta DGTC-session
```

End a governed work session with:

```text
Avsluta DGTC-session
```

The mandatory procedures are defined in the [Development Playbook](docs/development/DEVELOPMENT_PLAYBOOK.md). They apply to both application development and business development.

The start procedure reads the verified project status, AI operating context, and documentation index; identifies the Development or Business work profile; and loads only the documents relevant to the active task.

The end procedure verifies repository state, documentation impact, completed work, unresolved decisions, and the next stopping point so future sessions do not depend on chat history.

## Start here

- [Current Project Status](docs/PROJECT_STATUS.md)
- [AI Project Context](docs/AI_PROJECT_CONTEXT.md)
- [DGTC Documentation Index](docs/MASTER_INDEX.md)
- [Development Playbook](docs/development/DEVELOPMENT_PLAYBOOK.md)
- [Repository Review Matrix](docs/project/REVIEW_MATRIX.md)

## Repository purpose

The repository contains:

- product vision and principles,
- product requirements and MVP scope,
- functional requirements,
- architecture and technical models,
- governance and recorded decisions,
- development and implementation workflows,
- business operating documents,
- application source code and supporting assets.

## Current status

The documentation baseline has been reviewed for MVP implementation readiness.

The Frozen implementation baseline is identified in the Repository Review Matrix and Document Register. Frozen documents may only be changed through an explicit governance decision.

The current project phase, active objective, blockers, and next approved action are maintained in `docs/PROJECT_STATUS.md`.

## Working with the repository

Before changing product behavior, architecture, business documentation, or implementation:

1. Start the session with **Starta DGTC-session**.
2. Locate the authoritative document through the Documentation Index.
3. Verify its lifecycle status in the Document Register.
4. Review relevant decisions and requirements.
5. Follow the applicable Business or Development workflow.
6. Update documentation and implementation together when an approved change requires both.
7. End the session with **Avsluta DGTC-session**.

GitHub is the Single Source of Truth for the project.
