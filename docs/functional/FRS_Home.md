# FRS — Home and Quick Challenge

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

The Home screen is the primary entry point into DGTC.

It shall minimize the time and number of decisions between opening the application and beginning practice. Quick Challenge is the primary action. Configuration, onboarding, accounts, and advanced training structures shall not block the first throw.

---

## User Outcome

A new player shall be able to open DGTC, generate a clear challenge, and begin practice within seconds.

The intended first-use flow is:

```text
Open DGTC
    ↓
Start Quick Challenge
    ↓
Spin Challenge Wheels
    ↓
Receive Challenge
    ↓
Throw
```

---

## User Stories

### US-H-001

As a player, I want to start a Quick Challenge immediately so that I can begin practice without setup.

### US-H-002

As a player, I want the two Challenge Wheels to be immediately understandable and accessible.

### US-H-003

As a returning player with an active Training Session, I want to resume it without losing progress.

### US-H-004

As a player, I want secondary navigation to remain available without competing with the primary action.

---

## Functional Requirements

### FRS-H-001 — Default Entry

The Home screen shall be displayed when the application opens and no active Training Session requires resumption.

**Priority:** Must Have

### FRS-H-002 — Primary Action

Quick Challenge shall be the single most prominent action on the Home screen.

**Priority:** Must Have

### FRS-H-003 — Immediate Challenge Generation

Starting Quick Challenge shall make the two Challenge Wheels available without requiring login, program selection, or configuration.

**Priority:** Must Have

### FRS-H-004 — Challenge Visibility

After the wheels stop, the selected challenge shall be displayed as one clear and actionable training instruction.

**Priority:** Must Have

### FRS-H-005 — Start Training

The player shall be able to start a Training Session from the generated challenge.

**Priority:** Must Have

### FRS-H-006 — Generate Another Challenge

Before or during a Training Session, the player shall be able to generate another challenge without returning through an onboarding or configuration flow.

**Priority:** Must Have

### FRS-H-007 — Resume Active Session

When a Training Session is active, the Home screen shall prominently offer **Resume Training Session** and shall not create a second active session accidentally.

**Priority:** Must Have

### FRS-H-008 — Secondary Navigation

Navigation to wheel editing and Settings shall be available but visually subordinate to Quick Challenge and session resumption.

**Priority:** Must Have

### FRS-H-009 — Offline Operation

All Home and Quick Challenge behavior required by the MVP shall function without an internet connection.

**Priority:** Must Have

### FRS-H-010 — Orientation

The MVP shall support the primary mobile orientation selected during implementation. Additional orientation support may be implemented only when it does not delay or complicate the MVP.

**Priority:** Should Have

---

## Business Rules

### BR-H-001

The Home screen shall remain usable when no user-created data exists.

### BR-H-002

No account or personal profile is required.

### BR-H-003

Advertising, modal promotions, or mandatory tutorials shall not interrupt the primary start flow.

### BR-H-004

Only one Training Session may be active at a time.

### BR-H-005

Navigation shall never discard an active session or unsaved result.

---

## Failure Handling

If editable wheel data cannot be loaded, DGTC shall:

1. preserve any unaffected local data,
2. use valid built-in wheel content where possible,
3. inform the player without blocking the primary flow,
4. avoid application failure.

---

## Acceptance Criteria

The capability is accepted when:

- Quick Challenge is the obvious primary action,
- a first challenge can be generated within the 15-second UX target,
- the two Challenge Wheels are available immediately,
- the generated challenge is clear,
- a Training Session can start from the challenge,
- an active session can be resumed,
- a second active session cannot be created accidentally,
- all Must Have behavior works offline,
- no critical failure blocks the first throw.

---

## Deferred Capabilities

The following are outside the MVP:

- personalized shortcuts,
- daily challenges delivered from a server,
- recent-session recommendations,
- cloud synchronization,
- widgets,
- AIE coaching,
- advanced structured-training discovery.

---

## Related Documents

- [MVP Specification](../product/MVP.md)
- [Product Experience Principles](../foundation/Product%20Experience%20Principles.md)
- [Navigation](../architecture/NAVIGATION.md)
- [FRS — Challenge Wheels](FRS_Wheels.md)
- [FRS — Training Session](FRS_Training_Session.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial Home specification. |
| 2.0 | 2026-07-31 | Aligned Home with Quick Challenge, Progressive Engagement, active-session recovery, and the frozen MVP scope. |