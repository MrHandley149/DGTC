# FRS — Settings

**Product:** Disc Golf Training Companion (DGTC)  
**Version:** 2.0  
**Status:** Frozen  
**Information Owner:** Product

---

## Purpose

Settings contains only the configuration required by the MVP.

The capability shall remain simple, local, and independent of an account or network connection.

---

## User Stories

### US-SE-001

As a player, I want to select the application language.

### US-SE-002

As a player, I want to enable or disable Challenge Wheel sound.

### US-SE-003

As a player, I want to restore the built-in Challenge Wheel content after confirmation.

### US-SE-004

As a player, I want my settings to persist across application restarts.

---

## Functional Requirements

### FRS-SE-001 — Language Selection

The player shall be able to select from the languages included in the MVP build.

**Priority:** Must Have

### FRS-SE-002 — Language Persistence

The selected language shall be stored locally and applied after restart.

**Priority:** Must Have

### FRS-SE-003 — Sound Control

The player shall be able to enable or disable Challenge Wheel sound effects.

**Priority:** Must Have

### FRS-SE-004 — Sound Persistence

The sound preference shall be stored locally and applied after restart.

**Priority:** Must Have

### FRS-SE-005 — Restore Wheels

The player shall be able to restore both Challenge Wheels to the approved built-in content.

**Priority:** Must Have

### FRS-SE-006 — Restore Confirmation

DGTC shall require explicit confirmation before replacing editable wheel content.

**Priority:** Must Have

### FRS-SE-007 — Immediate Application

Settings changes shall take effect immediately after successful persistence unless the platform requires restart for a specific language update.

**Priority:** Must Have

### FRS-SE-008 — Offline Operation

All MVP Settings behavior shall function without an internet connection.

**Priority:** Must Have

---

## Business Rules

### BR-SE-001

The MVP requires one active local settings record.

### BR-SE-002

Restoring Challenge Wheels shall not change language, sound preferences, completed sessions, or historical wheel-spin snapshots.

### BR-SE-003

Wheel restoration cannot be undone through the MVP interface.

### BR-SE-004

The previous valid setting shall remain active until a replacement value has been persisted successfully.

---

## Failure Handling

If a settings change cannot be saved:

- the previous valid setting shall remain active,
- the player shall be informed,
- the application shall continue to function,
- a wheel reset shall not be reported as complete unless the replacement content was persisted atomically.

---

## Acceptance Criteria

The capability is accepted when the player can:

- select an included language,
- restart the application and retain that language,
- enable and disable wheel sound,
- restart the application and retain that preference,
- restore built-in wheel content after confirmation,
- verify that other settings and historical sessions remain unchanged,
- use all Must Have behavior offline.

---

## Deferred Capabilities

Outside the MVP:

- theme selection,
- unit preferences,
- advanced accessibility configuration,
- cloud backup and synchronization,
- import and export,
- notifications,
- advanced privacy controls,
- developer mode.

---

## Related Documents

- [MVP Specification](../product/MVP.md)
- [FRS — Challenge Wheels](FRS_Wheels.md)
- [Data Model](../architecture/DATA_MODEL.md)

---

## Revision History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial Settings specification. |
| 2.0 | 2026-07-31 | Aligned terminology, persistence, and reset behavior with the MVP and froze the requirements. |