# FRS — Result Entry

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

Result Entry records the outcome of an attempt during an Active Training Session.

The MVP prioritizes fast, reliable registration over detailed statistics. The interaction shall require as few steps as possible and shall not interrupt practice flow.

---

## User Stories

### US-RE-001

As a player, I want to record a result immediately after an attempt.

### US-RE-002

As a player, I want result entry to require minimal attention so that I can remain focused on practice.

### US-RE-003

As a player, I want to continue to another attempt or challenge immediately after saving a result.

---

## Functional Requirements

### FRS-RE-001 — Active Session Only

Result Entry shall be available only during an Active Training Session.

**Priority:** Must Have

### FRS-RE-002 — Attempt Association

Every Result shall be associated with exactly one Attempt or the MVP's equivalent atomic exercise execution record.

**Priority:** Must Have

### FRS-RE-003 — Session Association

Every Result shall be traceable to exactly one Training Session.

**Priority:** Must Have

### FRS-RE-004 — Simple Outcome

The MVP shall provide a simple result input suitable for rapid registration. The exact initial options shall be defined by the first Implementation Task and verified against the Data Model without expanding MVP scope.

**Priority:** Must Have

### FRS-RE-005 — Automatic Timestamp

The application shall record the result timestamp automatically.

**Priority:** Must Have

### FRS-RE-006 — Immediate Persistence

A Result shall be persisted immediately after confirmation.

**Priority:** Must Have

### FRS-RE-007 — Continue Flow

After a successful save, the player shall be able to:

- repeat the current exercise,
- generate the next challenge,
- or finish the Training Session.

**Priority:** Must Have

### FRS-RE-008 — Offline Operation

All MVP Result Entry behavior shall function without an internet connection.

**Priority:** Must Have

---

## Business Rules

### BR-RE-001

A Result shall not be stored without a valid active-session association.

### BR-RE-002

Result Entry shall not require optional player-decision metadata when that metadata would slow the MVP flow.

### BR-RE-003

A persisted Result shall not be lost if the application closes unexpectedly.

### BR-RE-004

Results in a Completed Training Session are read-only.

### BR-RE-005

Product-friction feedback collected after a session is not a training Result and shall be stored separately.

---

## Failure Handling

If saving fails:

- the current session shall remain Active,
- the last valid persisted state shall be preserved,
- the player shall be informed,
- the application shall retry automatically or provide a retry action,
- the application shall not claim that the Result was saved before persistence succeeds.

---

## Acceptance Criteria

The capability is accepted when:

- a simple result can be recorded during an Active Training Session,
- the result is linked to the correct session and attempt or equivalent record,
- the result is persisted immediately,
- the player can continue without unnecessary navigation,
- a save failure does not end the session or lose the last valid data,
- persisted results survive application restart,
- completed-session results are read-only,
- all Must Have behavior works offline.

---

## Deferred Capabilities

Outside the MVP:

- detailed result taxonomies,
- advanced numeric measurements,
- media attachments,
- voice or sensor input,
- smartwatch input,
- automated analysis,
- AIE coaching.

---

## Related Documents

- [MVP Specification](../product/MVP.md)
- [Data Model](../architecture/DATA_MODEL.md)
- [FRS — Training Session](FRS_Training_Session.md)
- [FRS — Session Summary](FRS_Summary.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial Result Entry specification. |
| 2.0 | 2026-07-31 | Clarified the minimal MVP input, persistence, failure handling, and separation from friction feedback; froze the requirements. |