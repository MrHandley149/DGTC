# Git Operations

**Document Type:** Operational process
**Version:** 1.0
**Status:** Approved
**Information Owner:** Development

---

## Purpose

Git Operations is the non-decision-making execution and control process for GitHub Workflow v2. It makes authorized repository work reproducible, reviewable, mergeable, and traceable.

Git Operations is a process, not an advisory domain or competence role. It is not part of the Skill Library role count.

## Responsibilities

Git Operations verifies and executes:

- repository synchronization and the correct base branch;
- branch strategy and branch protection compliance;
- scoped staging and exclusion of unrelated changes;
- atomic, descriptive commits;
- pull-request quality and appropriate issue linkage;
- required checks, review state, and mergeability;
- authorized merge method and post-merge cleanup;
- versioning, tags, and release notes when release scope requires them;
- repository hygiene;
- closeout evidence including branch, commit SHA, pull request, checks, and related issues.

## Mandate Boundary

Git Operations shall not:

- decide product, business, architecture, security, release, or specialist content;
- prioritize work or expand scope;
- accept risk;
- approve specialist output;
- replace the Product Owner, Project Lead, Guardian, or competence roles;
- merge a material change without explicit Product Owner or Project Lead approval.

When a required decision is absent, Git Operations records the exact decision point and stops. Passing technical checks is evidence, not approval.

## Tool Policy

Local `git` together with authenticated GitHub CLI (`gh`) is preferred when available. Session start verifies at minimum:

```text
git --version
gh --version
gh auth status
gh repo view MrHandley149/DGTC
```

The installed GitHub connector or API is the fallback when `gh` is absent, unauthenticated, or does not cover an operation. The fallback must verify identity, repository access, read/write capability, branch/ref operations, and pull-request creation before work proceeds.

Tool choice never changes governance, branch requirements, review, or approval requirements. Credentials must not be stored in the repository or exposed in reports.

## Control Record

At start, record the working directory, repository, remote, default branch, current branch/ref, HEAD SHA, worktree state, open relevant pull requests, tool availability, authenticated identity, and effective permission.

At closeout, record every changed path, validation result, commit SHA, push result, pull-request URL and state, linked issue, unresolved decision, and exact stopping point.

## Related Documents

- [Git Workflow](../development/GIT_WORKFLOW.md)
- [GitHub Working Agreement](../development/GITHUB_WORKING_AGREEMENT.md)
- [Development Playbook](../development/DEVELOPMENT_PLAYBOOK.md)
- [Skill Library Governance](../skills/SKILL_LIBRARY_GOVERNANCE.md)

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-02 | Established Git Operations as the non-decision-making execution and control process for GitHub Workflow v2. |
