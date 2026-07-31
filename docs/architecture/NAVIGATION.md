# Navigation

## Purpose

This document defines the overall navigation structure and primary user flows of the DGTC Platform.

The navigation system is designed to allow users to:

- Start a Quick Challenge immediately.
- Access structured training.
- Manage Lucky Wheels.
- Create and maintain Training Programs.
- Complete Training Sessions.
- Record Results.
- Review a Session Summary.

This document describes logical navigation rather than implementation details.

---

# Navigation Principles

## First Throw First

A user should be able to open the application and receive a training challenge with a single primary action.

No login flow, configuration screen, onboarding process, or program selection should block this experience.

> **Depth must never stand in the way of the first throw.**

---

## Progressive Engagement

DGTC introduces functionality gradually.

Each level should provide sufficient value to naturally encourage users to explore the next.

The product should never attempt to create dependency.

Instead, it should create value through enjoyment, learning, and personal development.

---

## Two Primary Paths

DGTC provides two distinct training experiences.

### Quick Challenge

The fastest possible route into practice.

Open the app.

Tap once.

Throw.

### Structured Training

Designed for players who want to train with greater intention through reusable Training Programs and Training Scenarios.

---

## Progressive Discovery

Advanced functionality should only become important when users are ready.

New users should not need to understand:

- Training Programs
- Training Scenarios
- Statistics
- Analytics
- AI

to experience immediate value.

---

## Preserve Active Training

Navigation must never accidentally interrupt or discard an active Training Session.

Users should always be able to resume where they left off.

---

# User Journey

DGTC is designed to guide players through increasing levels of engagement.

```text
Quick Challenge
        │
        ▼
Explore Lucky Wheels
        │
        ▼
Create Custom Lucky Wheels
        │
        ▼
Use Training Programs
        │
        ▼
Train with Training Scenarios
        │
        ▼
Reflection, Analysis, and Future Decision Support
```

Every step should feel like a natural progression.

Users should choose to advance rather than being forced through predefined workflows.

---

# Overall Navigation Structure

```text
Home

├── Quick Challenge
│     ├── Generated Challenge
│     ├── Active Training Session
│     ├── Result Recording
│     └── Session Summary
│
├── Structured Training
│     ├── Training Programs
│     ├── Training Scenarios
│     ├── Scenario Visual
│     ├── Active Training Session
│     ├── Result Recording
│     └── Session Summary
│
├── Lucky Wheels
│     ├── Browse Wheels
│     └── Edit Wheels
│
├── Training Programs
│     ├── Create
│     ├── Edit
│     └── Delete
│
└── Settings
```

---

# Home Screen

The Home Screen is the most important view within the application.

It should immediately communicate that DGTC is:

- Simple
- Fun
- Useful

Navigation priority:

1. Quick Challenge
2. Structured Training
3. Lucky Wheels
4. Settings

---

# Primary Action

Quick Challenge is the primary call to action.

A single tap should:

1. Use the currently selected Lucky Wheels.
2. Generate a new training challenge.
3. Display the challenge immediately.

The user should be able to begin throwing within seconds.

---

# Secondary Action

Structured Training guides users toward:

- Training Programs
- Training Scenarios
- Future Virtual Challenges

---

# Active Training Session

If a Training Session is already active, the Home Screen should prominently display:

**Resume Training Session**

Only one active Training Session may exist at any time.
# Quick Challenge Flow

```text
Home
    │
    ▼
Quick Challenge
    │
    ▼
Lucky Wheels
    │
    ▼
Challenge Generated
    │
 ┌──┴────────────┐
 │               │
 ▼               ▼
New Challenge    Start Training
                     │
                     ▼
            Active Training Session
                     │
                     ▼
               Record Results
                     │
         ┌───────────┴───────────┐
         ▼                       ▼
 New Challenge            Finish Session
                                  │
                                  ▼
                           Session Summary
```

The Quick Challenge flow prioritizes speed.

The player should move from launching the application to throwing discs with minimal interaction.

---

# Structured Training Flow

```text
Home
    │
    ▼
Training Program
    │
    ▼
Training Scenario
    │
    ▼
Scenario Visual (Optional)
    │
    ▼
Lucky Wheels
    │
    ▼
Active Training Session
    │
    ▼
Result Recording
    │
    ▼
Session Summary
```

Structured Training emphasizes planning and repeatability while preserving the same lightweight experience during active practice.

---

# Lucky Wheels

Lucky Wheels can be accessed from multiple areas of the application.

They may be used:

- During Quick Challenges
- Inside Training Scenarios
- From the dedicated Wheel Management screen

## Editing

Users may:

- Add Wheel Options
- Modify Wheel Options
- Delete Wheel Options
- Reorder Wheel Options
- Save Changes
- Cancel Changes

Saved wheels become immediately available throughout the application.

---

# Active Training Session

During an active session, navigation should prioritize practice over configuration.

Users should be able to:

- Continue the session
- Record Results
- Generate the next Exercise
- Finish the session

Navigation should minimize distractions and reduce opportunities for accidental interruption.

---

# Result Recording

Result recording should feel quick and unobtrusive.

After recording a Result, the user may:

- Attempt the Exercise again
- Generate the next Exercise
- Finish the Training Session

The recording process should never feel like administrative work.

---

# Session Summary

After completing a Training Session, the Summary should include:

- Session duration
- Number of Exercises
- Number of Attempts
- Number of recorded Results
- Training Program or Training Scenario used

Performance analysis, coaching, and AI recommendations are intentionally excluded from the MVP.

---

# Settings

The MVP Settings screen should contain only essential options.

Initially this includes:

- Language
- Sound
- Reset Lucky Wheels

Additional settings should not distract from the core training experience.

---

# Navigation Rules

1. Quick Challenge is always the primary entry point.
2. Structured Training provides the natural progression.
3. Only one Training Session may be active.
4. Active Training Sessions must always be recoverable.
5. Lucky Wheels must be usable independently of Training Programs.
6. Navigation must never cause user data loss.
7. Every screen should provide a clear path back.
8. Simplicity always takes precedence over complexity.

---

# Summary

DGTC is designed to deliver immediate value from the very first interaction.

Quick Challenge serves as the primary entry point.

Lucky Wheels provide variety and replayability.

Training Programs and Training Scenarios introduce structure for users seeking long-term improvement.

Through Progressive Engagement, users naturally evolve from spontaneous practice toward a comprehensive learning and performance system—without sacrificing simplicity.

---

## Related Documents

- `ARCHITECTURE.md`
- `SYSTEM_OVERVIEW.md`
- `DOMAIN_MODEL.md`
- `STATE_MODEL.md`
- `../product/PRD.md`
- `../product/MVP.md`

---

**Status:** Draft

**Owner:** Architecture

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.
