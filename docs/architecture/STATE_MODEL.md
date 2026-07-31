# State Model

## Purpose

This document defines the lifecycle of the primary domain objects within DGTC.

Each object may exist in a defined set of states.

Only valid state transitions are permitted.

The purpose of the State Model is to provide predictable system behavior, simplify implementation, and preserve data integrity.

---

# State Principles

Every stateful object follows these principles.

- An object may only exist in one state at a time.
- An object may only transition to a valid next state.
- Invalid transitions must be prevented by the application.
- Completed objects should not return to earlier states unless explicitly supported.

---

# Training Session

## Lifecycle

```text
Created
    │
    ▼
Active
    │
    ▼
Completed
```

### Created

The Training Session has been created but has not yet started.

### Active

The Training Session is currently in progress.

During this state the user may:

- Generate Exercises
- Record Attempts
- Record Results

### Completed

The Training Session has ended.

Completed sessions are read-only during the MVP.

A Session Summary may be generated.

### Valid Transitions

- Created → Active
- Active → Completed

### Invalid Transitions

- Completed → Active
- Completed → Created

---

# Training Program

## Lifecycle

```text
Draft
    │
    ▼
Saved
```

### Draft

The Training Program is being created or edited.

### Saved

The Training Program is complete and available for use.

### Valid Transitions

- Draft → Saved
- Saved → Draft

---

# Training Scenario

## Lifecycle

```text
Draft
    │
    ▼
Saved
```

Training Scenarios follow the same lifecycle as Training Programs.

---

# Lucky Wheel

Lucky Wheels have two independent state machines.

## Usage State

```text
Idle
    │
    ▼
Spinning
    │
    ▼
Idle
```

### Idle

The wheel is waiting for user interaction.

### Spinning

The animation and random selection process are active.

After the spin completes, the wheel returns to Idle.

---

## Editing State

```text
View
    │
    ▼
Editing
    │
    ├──────► Saved
    │
    └──────► Cancelled
```

### View

Normal viewing mode.

### Editing

Users may:

- Add Wheel Options
- Modify Wheel Options
- Delete Wheel Options
- Reorder Wheel Options

### Saved

Changes are persisted.

The wheel returns to View mode.

### Cancelled

Unsaved changes are discarded.

The wheel returns to View mode.

---

# Exercise

## Lifecycle

```text
Generated
    │
    ▼
In Progress
    │
    ▼
Completed
```

### Generated

The Exercise has been created but not yet performed.

### In Progress

The player is performing the Exercise.

### Completed

The Exercise has finished.

Results may now be recorded.
# Attempt

## Lifecycle

```text
Started
    │
    ▼
Finished
```

### Started

The player has begun an Attempt.

### Finished

The Attempt has ended.

A Result may now be recorded.

---

# Result

## Lifecycle

```text
Pending
    │
    ▼
Recorded
```

### Pending

The Result has not yet been recorded.

### Recorded

The Result has been saved.

Recorded Results are read-only during the MVP.

---

# Quick Challenge

## Lifecycle

```text
Generated
    │
    ▼
Accepted
    │
    ▼
Completed
```

### Generated

The Quick Challenge has been created.

### Accepted

The player has chosen to perform the challenge.

### Completed

The challenge has been finished.

---

# Scenario Visual

## Lifecycle

```text
Unavailable

or

Available
```

Scenario visuals are optional.

Training Scenarios must remain fully usable without images.

---

# App Settings

## Lifecycle

```text
Loaded
    │
    ▼
Modified
    │
    ▼
Saved
```

### Loaded

Application settings have been loaded into memory.

### Modified

One or more settings have changed but are not yet fully persisted.

### Saved

The updated settings have been successfully stored.

---

# Global Rules

## Rule 1

Only one Training Session may be active at any time.

---

## Rule 2

Lucky Wheels must not be edited while an active spin is in progress.

---

## Rule 3

Completed Training Sessions are read-only.

---

## Rule 4

Historical Training Sessions must never be affected by later edits to:

- Training Programs
- Training Scenarios
- Lucky Wheels
- Wheel Options

---

## Rule 5

All persistence operations should be atomic.

Either the complete operation succeeds or no changes are committed.

---

# Future Extensions

The state model should support additional lifecycle states without requiring changes to existing states.

Possible future states include:

- Archived
- Shared
- Downloaded
- Synced
- Published
- Deprecated

These states are intentionally excluded from the MVP.

---

# Summary

Every major DGTC domain object follows a clearly defined lifecycle.

The State Model ensures:

- Predictable application behavior
- Valid state transitions
- Consistent business rules
- Reliable persistence
- Safe future expansion

By separating object states from implementation details, the model provides a stable foundation for development, testing, and long-term maintenance.

---

## Related Documents

- `DOMAIN_MODEL.md`
- `DATA_MODEL.md`
- `SYSTEM_OVERVIEW.md`
- `ARCHITECTURE.md`
- `../product/PRD.md`
- `../product/MVP.md`

---

**Status:** Draft

**Owner:** Architecture

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.
