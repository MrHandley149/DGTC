# GitHub Workflow v2

**Document Type:** Development workflow
**Version:** 4.0
**Status:** Approved
**Information Owner:** Development

---

## Purpose

This document is the authoritative end-to-end GitHub workflow for DGTC. It moves an authorized change from verified repository state to review, approval, merge, and evidence-backed closeout.

## End-to-End Workflow

1. **Start the session and verify current state.** Follow Start DGTC Session. Record the working directory, repository, remote, default and current branch, HEAD SHA, worktree changes, relevant open pull requests, `git`/`gh` availability, authenticated identity, and effective repository access.
2. **Synchronize.** Fetch remote state, confirm the correct base branch, and fast-forward or rebase safely before editing. Never overwrite or silently absorb unrelated local work.
3. **Classify the change.** Decide whether the direct-to-`main` exception applies. When uncertain, use a branch and pull request.
4. **Select or create a branch.** Use one descriptive branch for one objective, based on the latest target branch. Recommended forms are `docs/<name>`, `feature/<name>`, `fix/<name>`, `refactor/<name>`, and `release/<version>`; automation may use `agent/<name>`.
5. **Link an issue when appropriate.** Link work that is planned, defect-driven, cross-session, release-relevant, risk-bearing, or needs acceptance tracking. A trivial self-contained correction does not require a new issue.
6. **Implement the authorized scope.** Read authoritative sources first; preserve Frozen-document controls; update implementation, documentation, indexes, registers, and traceability together.
7. **Verify.** Run relevant tests and checks. For documentation, verify links, lifecycle/version metadata, terminology, ownership, mandates, role counts, and conflicting governance statements.
8. **Stage narrowly.** Review the full diff and status; stage explicit intended paths. Never stage unrelated changes silently.
9. **Commit atomically.** One logical change per commit, imperative subject, with body and decision/issue references when material.
10. **Push.** Push the named branch with upstream tracking and verify the remote ref and commit SHA.
11. **Open a pull request.** Material changes require a pull request. The description states what, why, impact, validation, issue/decision links, and unresolved risks. Open as draft while incomplete or awaiting owner review.
12. **Review.** Resolve required checks and review findings. Affected competence roles cross-review specialist content when applicable; Git Operations checks repository mechanics without approving content.
13. **Obtain approval.** The Product Owner or Project Lead explicitly approves material governance or project changes. Technical checks, a clean diff, or Git Operations verification do not constitute approval.
14. **Merge.** Merge only after required checks, review, and approval. Squash merge is the default unless an approved exception applies. Git Operations may execute the merge only within the approved mandate.
15. **Close out.** Verify the resulting default-branch state; record merge/commit SHA, PR, checks and related issues; close linked issues when acceptance criteria are met; remove obsolete branches when safe; update version/tag/release notes when applicable; then follow End DGTC Session.

## Direct Commit to `main`

Direct commit is permitted only when **all** of these are true:

- small and confined to one local concern;
- low risk and easily reversible;
- non-governing and non-material;
- does not change roles, processes, security, releases, versions, architecture, scope, or behavior;
- does not unlock or modify a Frozen document;
- does not require multidisciplinary review or owner acceptance;
- the repository state is clean, current, and protected checks permit it.

Examples are an unambiguous typo or repair of an obviously broken link in a non-Frozen document. Direct work still requires verification, narrow staging, an atomic commit, push verification, and closeout evidence.

## Mandatory Branch and Pull Request

A branch and pull request are mandatory for any material, cross-cutting, governing, role, process, security, release, version, architecture, product-scope, behavioral, structural, or Frozen-baseline change. They are also mandatory when multiple files or stakeholders require coordinated review, risk is non-trivial, or the classification is uncertain.

## Tool Execution

Use local `git` with authenticated `gh` when available and verified. Use the installed GitHub connector or API as fallback when CLI is missing, unauthenticated, or insufficient. Tool choice never weakens this workflow. Detailed control and closeout duties belong to [Git Operations](../operations/GIT_OPERATIONS.md).

## Merge and Release Controls

- `main` remains releasable and is never used for ordinary development.
- Required branch protections and checks must pass; bypass requires explicit authorized exception.
- Material changes may not be merged without Product Owner or Project Lead approval.
- Tags and version identifiers must point to verified commits and follow the repository's release convention.
- Release notes identify user/project impact, material changes, known limitations, verification, and relevant PRs/issues.

## Related Documents

- [Git Operations](../operations/GIT_OPERATIONS.md)
- [GitHub Working Agreement](GITHUB_WORKING_AGREEMENT.md)
- [Development Playbook](DEVELOPMENT_PLAYBOOK.md)
- [Guardian Operating Procedure](Guardian_Operating_Procedure.md)
- [Project Manifest](../PROJECT_MANIFEST.md)

## Revision History

| Version | Date | Description |
|---|---|---|
| 4.0 | 2026-08-02 | Established GitHub Workflow v2, direct-main classification, full PR/approval/merge/closeout flow, and Git Operations integration. |
| 3.0 | 2026-07-30 | Repository documentation consolidated. |
| 2.0 | 2026-07-29 | Repository consolidation. |
