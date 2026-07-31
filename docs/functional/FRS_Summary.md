# FRS — Session Summary and Friction Feedback

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

The Session Summary confirms that a Training Session has ended and presents a concise, read-only account of what was completed.

The summary also collects the MVP's primary product-friction signal:

> **Did DGTC get in the way of your training today?**

The purpose of this question is to identify and remove friction. It is not a satisfaction score and does not evaluate player performance.

---

## User Stories

### US-S-001

As a player, I want confirmation that my completed session was saved.

### US-S-002

As a player, I want a concise summary of the session without performance judgment.

### US-S-003

As the Product Owner, I want to know whether DGTC interfered with practice so that recurring friction can be identified and removed.

### US-S-004

As a player, I want to return to Home after completing the summary and optional feedback.

---

## Functional Requirements

### FRS-S-001 — Automatic Display

The Session Summary shall be displayed after a Training Session is successfully completed and persisted.

**Priority:** Must Have

### FRS-S-002 — Save Confirmation

The summary shall clearly confirm that the Training Session has been saved.

**Priority:** Must Have

### FRS-S-003 — Duration

The summary shall show the session duration derived from persisted start and completion timestamps.

**Priority:** Must Have

### FRS-S-004 — Completed Exercises

The summary shall show the number of completed exercises.

**Priority:** Must Have

### FRS-S-005 — Attempts

The summary shall show the number of recorded attempts when attempts are represented separately in the implementation.

**Priority:** Must Have

### FRS-S-006 — Results

The summary shall show the number of recorded results.

**Priority:** Must Have

### FRS-S-007 — Session Source

When available, the summary shall identify the Quick Challenge or other approved source used to start the session.

**Priority:** Must Have

### FRS-S-008 — Friction Question

After the summary, the player shall be asked:

> **Did DGTC get in the way of your training today?**

Available answers:

- Yes
- No

**Priority:** Must Have

### FRS-S-009 — Friction Reasons

When the player answers **Yes**, DGTC shall allow one or more predefined reasons to be selected.

**Priority:** Must Have

### FRS-S-010 — Optional Comment

When the player answers **Yes**, DGTC shall provide an optional free-text comment field.

**Priority:** Must Have

### FRS-S-011 — Non-Blocking Feedback

The player shall be able to finish the flow without writing a comment. Failure to store feedback shall not invalidate or remove the completed Training Session.

**Priority:** Must Have

### FRS-S-012 — Return Home

The player shall be able to return to Home after completing or dismissing the feedback flow.

**Priority:** Must Have

---

## Business Rules

### BR-S-001

A Session Summary shall only represent a completed Training Session.

### BR-S-002

Summary values shall be derived from persisted session data and shall not be independently editable.

### BR-S-003

The summary shall not provide performance analysis, coaching, ratings, or comparative judgment during the MVP.

### BR-S-004

Friction feedback is product-experience data and shall remain separate from training-performance results.

### BR-S-005

The answer **No** requires no additional input.

### BR-S-006

The answer **Yes** permits quick-select reasons and an optional comment; it shall not require a written explanation.

---

## Failure Handling

If some nonessential summary values are unavailable, the summary shall display all valid available information without crashing.

If friction feedback cannot be saved:

- the completed Training Session shall remain saved,
- the player shall be informed without being trapped in the flow,
- the application may offer a retry.

---

## Acceptance Criteria

The capability is accepted when:

- the summary appears after a successfully saved session,
- the player can see duration, completed exercises, attempts when applicable, and results,
- the summary remains read-only and nonjudgmental,
- the friction question appears exactly as approved,
- **No** completes the feedback step without additional input,
- **Yes** exposes predefined reasons and optional free text,
- feedback failure cannot delete or invalidate the session,
- the player can return to Home,
- all Must Have behavior works offline.

---

## Deferred Capabilities

Outside the MVP:

- performance analysis,
- personal records,
- trend comparisons,
- AIE insights,
- sharing and export,
- coach comments,
- satisfaction ratings or engagement scoring.

---

## Related Documents

- [MVP Specification](../product/MVP.md)
- [FRS — Training Session](FRS_Training_Session.md)
- [FRS — Result Entry](FRS_Result_Entry.md)
- [Data Model](../architecture/DATA_MODEL.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial session summary specification. |
| 2.0 | 2026-07-31 | Added the approved MVP friction-feedback flow and froze the requirements. |