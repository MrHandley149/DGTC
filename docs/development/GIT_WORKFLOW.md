# Git Workflow

**Document Type:** Development

**Version:** 3.0

**Status:** Approved

**Information Owner:** Development

---

# Purpose

This document defines the Git workflow used throughout the DGTC project.

Its purpose is to provide a consistent process for moving changes from an identified need to the default branch while maintaining repository quality, traceability, and collaboration.

The workflow emphasizes small, well-defined changes rather than large batches of unrelated work.

---

# Git Workflow

Every change should follow the same development lifecycle.

```text
Identify Change
      │
      ▼
Synchronize Repository
      │
      ▼
Create Branch (if required)
      │
      ▼
Implement One Logical Change
      │
      ▼
Review Locally
      │
      ▼
Commit
      │
      ▼
Push
      │
      ▼
Pull Request
      │
      ▼
Review
      │
      ▼
Merge
```

Each stage contributes to maintaining a stable and understandable repository history.

---

# Working Principles

The Git workflow follows a small-change philosophy.

- One logical change per commit.
- One primary topic per branch.
- Keep the repository in a buildable state.
- Avoid combining refactoring with new functionality.
- Complete one revision before starting another.
- Prefer multiple small commits over one large, unrelated change.

A clean commit history is easier to review, understand, and maintain.

---

# Commit Messages

Commit messages should use the imperative mood.

Good examples:

- Add session summary
- Update navigation
- Consolidate documentation
- Refactor domain model
- Improve validation logic

Avoid vague descriptions such as:

- Fix stuff
- Update files
- Changes
- Miscellaneous updates

A commit message should describe **what the commit does**, not what has already happened.

---

# Branch Strategy

Branches should represent a single logical objective.

Recommended naming conventions:

```text
feature/<name>
fix/<name>
docs/<name>
refactor/<name>
release/<version>
```

Branch names should be concise, descriptive, and consistent across the repository.

---
# Pull Requests

Every Pull Request should:

- Solve one clearly defined problem.
- Contain a concise and informative description.
- Reference related decisions or documentation when applicable.
- Be reviewed before merging.
- Avoid unrelated changes.

A Pull Request should make the review process straightforward.

Reviewers should immediately understand:

- Why the change exists.
- What was changed.
- What impact it has.
- How it was verified.

---

# Merge Strategy

Maintain a clean and understandable repository history.

Merged work should:

- Preserve document ownership.
- Maintain valid references.
- Avoid duplicate information.
- Preserve traceability.
- Keep the repository consistent.

Prefer merge strategies that produce a readable project history.

The repository should remain easy to navigate months or years after changes are introduced.

---

# Related Documents

- `GitHub_Guide.md`
- `Decision_Framework.md`
- `Repository_Review_Procedure.md`
- `DEVELOPMENT_WORKFLOW.md`

---

**Status:** Approved

**Owner:** Development

**Last Updated:** 2026-07-30

### Revision History

| Version | Date | Description |
|----------|------------|--------------------------------|
| 3.0 | 2026-07-30 | Repository documentation consolidated. |
| 2.0 | 2026-07-29 | Repository consolidation. |
