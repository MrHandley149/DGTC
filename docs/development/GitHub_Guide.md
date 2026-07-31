# GitHub Guide

**Document Type:** Development

**Version:** 3.0

**Status:** Approved

**Information Owner:** Development

---

# Purpose

This document defines how GitHub is used within the DGTC repository.

Its purpose is to establish a consistent workflow for branches, commits, pull requests, and repository maintenance while preserving a clean, traceable development history.

GitHub serves as the authoritative collaboration platform for all repository changes.

---

# General Principles

The repository should always:

- Maintain a clean and understandable history.
- Use small, atomic commits.
- Keep the default branch in a releasable state.
- Avoid combining unrelated changes in the same commit.
- Preserve repository consistency after every merge.

These principles improve collaboration, simplify reviews, and reduce long-term maintenance costs.

---

# Standard Workflow

Every contribution should follow the same workflow.

```text
Synchronize Repository
        │
        ▼
Create or Select Branch
        │
        ▼
Implement One Logical Change
        │
        ▼
Review
        │
        ▼
Commit
        │
        ▼
Push
        │
        ▼
Create Pull Request (when applicable)
        │
        ▼
Merge
```

Each step should be completed before moving to the next.

---

# Commit Guidelines

Every commit should:

- Contain one logical change.
- Include a clear and descriptive commit message.
- Leave the repository in a working state.
- Be independently understandable when viewed in history.

Examples of good commit messages:

- Add MVP navigation
- Consolidate Decision Framework
- Update Domain Model
- Improve validation logic

Commit messages should describe **what the commit does**, using the imperative mood.

---

# Branches

Use short, descriptive branch names that clearly communicate the purpose of the work.

Recommended examples:

```text
docs/consolidation
feature/training-session
fix/navigation
refactor/domain-model
```

Branch names should remain focused on a single objective and avoid unnecessary complexity.

---
# Pull Requests

Pull Requests should:

- Have a clearly defined purpose.
- Be limited to a single logical objective.
- Be reviewed before merging.
- Resolve one well-defined problem.
- Include sufficient context for reviewers to understand the change.

Large or unrelated changes should be divided into multiple Pull Requests whenever practical.

A focused Pull Request is easier to review, test, and maintain.

---

# Repository Structure

Documentation and source code should preserve:

- Clear document ownership.
- A Single Source of Truth.
- Consistent naming conventions.
- Valid internal references.
- A logical repository structure.

Changes should improve repository quality without introducing duplication or ambiguity.

---

# Related Documents

- `GIT_WORKFLOW.md`
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
