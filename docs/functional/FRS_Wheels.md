# FRS — Challenge Wheels

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

Challenge Wheels create immediate variation in DGTC practice.

The MVP presents two editable wheels that can be spun independently or together. Their combined result forms a clear training challenge while preserving a fast, playful, and low-friction experience.

The domain and architecture may retain the historical term **Lucky Wheel**. The user-facing MVP term is **Challenge Wheel**.

---

## User Stories

### US-W-001

As a player, I want to spin one wheel to change one part of a challenge.

### US-W-002

As a player, I want to spin both wheels together to generate a complete challenge quickly.

### US-W-003

As a player, I want to lock one wheel so that its result remains unchanged while the other wheel spins.

### US-W-004

As a player, I want to edit wheel options so that the challenges fit my practice.

### US-W-005

As a player, I want to restore the built-in wheel content when I want to start over.

---

## Functional Requirements

### Wheel Operation

#### FRS-W-001 — Two Wheels

The MVP shall present two Challenge Wheels on the primary challenge screen.

**Priority:** Must Have

#### FRS-W-002 — Individual Spin

Each wheel shall be independently spinable.

**Priority:** Must Have

#### FRS-W-003 — Combined Spin

Both wheels shall be spinable through one primary action.

**Priority:** Must Have

#### FRS-W-004 — Wheel Lock

Each wheel shall be lockable so that only the unlocked wheel changes during the next spin.

**Priority:** Must Have

#### FRS-W-005 — Persistent Result

The selected result shall remain visible until the affected wheel spins again or its content is reset.

**Priority:** Must Have

#### FRS-W-006 — Random Selection

Every eligible option shall participate in an unbiased random selection process.

**Priority:** Must Have

#### FRS-W-007 — Animation

Each spin shall include a clear wheel animation that communicates motion and completion.

**Priority:** Must Have

#### FRS-W-008 — Sound

Each spin shall include a wheel sound effect when sound is enabled.

**Priority:** Must Have

#### FRS-W-009 — Sound Control

Sound effects shall be globally disableable through Settings.

**Priority:** Must Have

#### FRS-W-010 — Completion Feedback

The application shall provide clear visual confirmation when a spin is complete. Haptic confirmation may be added when supported without increasing MVP risk.

**Priority:** Must Have

### Wheel Editing

#### FRS-W-011 — Open Editing

The player shall be able to open an editing view for each Challenge Wheel.

**Priority:** Must Have

#### FRS-W-012 — Add Option

The player shall be able to add an option.

**Priority:** Must Have

#### FRS-W-013 — Edit Option

The player shall be able to edit an existing option.

**Priority:** Must Have

#### FRS-W-014 — Delete Option

The player shall be able to delete an option when at least two valid options remain.

**Priority:** Must Have

#### FRS-W-015 — Reorder Options

The player shall be able to change display order. Display order shall not affect random selection probability.

**Priority:** Must Have

#### FRS-W-016 — Save or Cancel

The player shall be able to save changes or cancel without modifying the persisted wheel.

**Priority:** Must Have

#### FRS-W-017 — Restore Built-In Content

The player shall be able to restore built-in content after explicit confirmation.

**Priority:** Must Have

#### FRS-W-018 — Local Persistence

Saved edits shall be available immediately and persist locally across application restarts.

**Priority:** Must Have

---

## Business Rules

### BR-W-001

Each wheel shall contain at least two valid options.

### BR-W-002

Blank or whitespace-only options shall not be saved.

### BR-W-003

Options with identical normalized labels shall not exist within the same wheel.

### BR-W-004

Reset replaces the current editable content with the approved built-in content and does not change historical session snapshots.

### BR-W-005

Editing one wheel shall not modify the other wheel.

### BR-W-006

A wheel shall not enter editing mode while its spin is active.

### BR-W-007

Historical spins and completed sessions shall remain unchanged after wheel edits or resets.

---

## Failure Handling

If editable wheel data cannot be read, DGTC shall use valid built-in content where possible and preserve unaffected local data.

If saving fails, the previous valid wheel shall remain active. The player shall be informed and offered a retry without losing the unsaved editing state when practical.

---

## Acceptance Criteria

The capability is accepted when the player can:

- spin either wheel independently,
- spin both wheels together,
- lock either wheel,
- see persistent results,
- receive animation and enabled sound feedback,
- disable sound,
- add, edit, delete, and reorder options,
- save or cancel edits,
- restore built-in wheel content after confirmation,
- use updated wheels immediately,
- restart the application without losing saved edits,
- use all Must Have behavior offline,
- retain unchanged historical sessions after later edits.

---

## Deferred Capabilities

Outside the MVP:

- more than two simultaneous wheels,
- weighted probability,
- downloadable wheel packs,
- sharing,
- sponsor wheels,
- seasonal content delivered online,
- AI-generated challenges,
- wheel version management.

---

## Related Documents

- [MVP Specification](../product/MVP.md)
- [Domain Model](../architecture/DOMAIN_MODEL.md)
- [Data Model](../architecture/DATA_MODEL.md)
- [State Model](../architecture/STATE_MODEL.md)
- [FRS — Settings](FRS_Settings.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.1 | Initial | Initial editable wheel requirements. |
| 2.0 | 2026-07-31 | Adopted Challenge Wheel as the user-facing term, aligned sound with approved MVP scope, and froze the requirements. |