# FRS — Training Session

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

A Training Session is the persistent structure that connects generated challenges, completed exercises, attempts, results, and the final Session Summary.

The MVP shall support starting, recovering, completing, and preserving one active session without requiring an account or internet connection.

---

## Lifecycle

```text
Created
    ↓
Active
    ↓
Completed
```

A completed Training Session is read-only in the MVP and cannot return to Active.

---

## User Stories

### US-TS-001

As a player, I want to start a Training Session from a generated challenge.

### US-TS-002

As a player, I want to complete multiple exercises in one session.

### US-TS-003

As a player, I want my active session to survive an unexpected application shutdown.

### US-TS-004

As a player, I want to finish the session and receive a saved summary.

---

## Functional Requirements

### FRS-TS-001 — Create Session

The player shall be able to create a Training Session from an approved MVP entry flow.

**Priority:** Must Have

### FRS-TS-002 — Stable Identifier

Every Training Session shall receive a stable unique identifier before becoming Active.

**Priority:** Must Have

### FRS-TS-003 — Start Timestamp

The application shall persist the session start time automatically.

**Priority:** Must Have

### FRS-TS-004 — Multiple Exercises

An Active Training Session shall support multiple exercises and repeated challenge generation.

**Priority:** Must Have

### FRS-TS-005 — Result Registration

Results shall be registerable throughout an Active Training Session.

**Priority:** Must Have

### FRS-TS-006 — Continuous Persistence

The active session shall be persisted after every state-changing event defined by the Data Model, including exercise creation, wheel spin, attempt completion, and result entry.

**Priority:** Must Have

### FRS-TS-007 — Resume Session

If the application closes while a session is Active, the player shall be able to resume the persisted session when the application opens again.

**Priority:** Must Have

### FRS-TS-008 — Single Active Session

The application shall prevent more than one Active Training Session.

**Priority:** Must Have

### FRS-TS-009 — Complete Session

The player shall be able to complete an Active Training Session at any time.

**Priority:** Must Have

### FRS-TS-010 — Completion Timestamp

The application shall persist the completion time automatically.

**Priority:** Must Have

### FRS-TS-011 — Read-Only Completion

A Completed Training Session shall not be editable or resumable in the MVP.

**Priority:** Must Have

### FRS-TS-012 — Summary Transition

After successful persistence of the completed session, the application shall open the Session Summary.

**Priority:** Must Have

---

## Business Rules

### BR-TS-001

Every exercise, attempt, result, and relevant wheel spin recorded during a session shall be associated with that session.

### BR-TS-002

A completed session shall preserve snapshots required to understand what was used at the time of training.

### BR-TS-003

Later edits to Challenge Wheels or other editable source content shall not modify completed sessions.

### BR-TS-004

Session timestamps shall represent the device's recorded instant consistently. Display may use the device's local time zone.

### BR-TS-005

The application shall not report a session as completed until the completion state has been persisted successfully.

---

## Failure Handling

If persistence fails during an Active Training Session, the application shall preserve the most recent valid state, inform the player, and retry or provide a retry path.

An unexpected shutdown shall not silently create a new session or discard the recoverable active session.

---

## Acceptance Criteria

The capability is accepted when the player can:

- start one Training Session,
- complete multiple exercises,
- register results,
- close and reopen the application without losing the active session,
- resume the same session,
- complete and persist the session,
- receive the Session Summary,
- verify that the completed session is read-only,
- use all Must Have behavior offline.

---

## Deferred Capabilities

Outside the MVP:

- paused state distinct from Active,
- scheduled sessions,
- shared or coach-controlled sessions,
- group sessions,
- cloud backup and live synchronization.

---

## Related Documents

- [State Model](../architecture/STATE_MODEL.md)
- [Data Model](../architecture/DATA_MODEL.md)
- [FRS — Result Entry](FRS_Result_Entry.md)
- [FRS — Session Summary](FRS_Summary.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial Training Session specification. |
| 2.0 | 2026-07-31 | Aligned persistence, recovery, and completion with the approved architecture and froze the requirements. |