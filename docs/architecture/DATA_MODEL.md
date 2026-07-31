# Data Model

## Purpose

This document defines the logical data model for DGTC.

The data model describes how domain information is represented, stored, related, and preserved throughout the lifetime of the application.

It supports:

- Offline-first operation
- Local storage
- Editable Lucky Wheels
- Quick Challenges
- Training Programs
- Training Scenarios
- Training Sessions
- Attempts and Results
- Historical integrity
- Future import, export, and synchronization

This document defines the logical data model only.

It does not define:

- Database technology
- Flutter packages
- SQL schemas
- File formats
- Cloud synchronization implementation

---

# Data Principles

## Local Data First

The local device is the primary source of truth.

Core functionality must never depend on:

- User accounts
- Internet connectivity
- External servers
- Cloud synchronization

---

## Stable Identifiers

Every major object must have a unique and stable identifier.

Identifiers must never depend on:

- Display names
- List positions
- Database sequence numbers
- User language

Stable identifiers enable future support for:

- Import and export
- Synchronization
- Sharing
- Versioning
- Traceability

---

## Historical Integrity

Completed Training Sessions must always represent what actually occurred.

Editing or deleting:

- Training Programs
- Training Scenarios
- Lucky Wheels
- Wheel Options

must never alter historical Training Sessions.

---

## Snapshot Principle

Historical Training Sessions preserve snapshots of the information required to understand the completed session.

Historical records must never rely solely on the current editable version of content.

Example:

If a Wheel Option named **Midrange** is later renamed or deleted, historical sessions must still show that **Midrange** was originally used.

---

## User Content

User-created content should be stored separately from built-in content whenever practical.

The model should distinguish between:

- Built-in content
- User-created content
- Downloaded content
- Coach content
- Club content
- Sponsor content
- Community content

Only built-in and user-created content are required for the MVP.

---

## Deletion

Deleting editable content must never delete historical Training Sessions.

Deletion only affects future availability.

---

# Shared Fields

Most persistent objects should support a common set of metadata.

## id

Unique identifier.

## createdAt

Timestamp when the object was created.

## updatedAt

Timestamp when the object was last modified.

## sourceType

Describes where the object originated.

Possible values include:

- system
- user
- downloaded
- coach
- club
- sponsor
- community

Only `system` and `user` are required in the MVP.

## schemaVersion

Identifies the version of the object's data structure.

Supports future migrations.

## isDeleted

Optional logical deletion flag.

Objects marked as deleted may still exist to preserve historical references or support synchronization.

This field is optional during the MVP but should remain part of the overall model.

---

# UserProfile

Represents the local user or installation.

No online account is required.

### Data

- id
- Optional displayName
- createdAt
- updatedAt

### Relationships

A UserProfile owns:

- AppSettings
- Lucky Wheels
- Training Programs
- Training Scenarios
- Training Sessions

### MVP Principle

The application must function without any personal information.

---

# AppSettings

Stores locally persisted application settings.

### Data

- id
- languageCode
- soundEnabled
- createdAt
- updatedAt
- schemaVersion

### Rules

- Only one active settings object is required.
- Changes should be saved immediately.
- Failed saves must preserve the previous valid configuration.

---

# LuckyWheel

Represents an editable Lucky Wheel.

### Data

- id
- name
- Optional description
- sourceType
- isSystemDefault
- createdAt
- updatedAt
- schemaVersion

### Relationships

A Lucky Wheel:

- Contains two or more Wheel Options
- May be referenced by multiple Training Scenarios
- May be used by multiple Quick Challenges
- May appear in multiple Training Sessions

### Rules

- Wheel names do not need to be globally unique.
- Built-in wheels should be restorable.
- Editing a wheel must never modify historical Training Sessions.

---

# WheelOption

Represents one selectable option within a Lucky Wheel.

### Data

- id
- wheelId
- label
- sortOrder
- Optional category
- createdAt
- updatedAt

### Rules

- Labels cannot be empty.
- Every wheel must contain at least two options.
- Duplicate labels are not allowed within the same wheel.
- sortOrder controls presentation only and must never influence randomness.

---

# WheelSpin

Represents one completed spin of a Lucky Wheel.

WheelSpin corresponds to the domain concept **WheelResult**, while additionally preserving contextual information about the spin itself.

### Data

- id
- wheelId
- selectedOptionId
- Wheel name snapshot
- Option label snapshot
- spunAt
- Optional trainingSessionId
- Optional exerciseId

### Rules

- Spin results are immutable.
- Editing a Lucky Wheel must never change historical Wheel Spins.
- Wheel Spins may exist without an active Training Session to support Quick Challenge previews.

---

# QuickChallenge

Represents an immediately generated training challenge.

### Data

- id
- title
- instruction
- status
- createdAt
- Optional acceptedAt
- Optional completedAt
- Associated WheelSpin identifiers
- Optional exerciseId
- schemaVersion

### Status

- Generated
- Accepted
- Completed

### Rules

- Quick Challenge must require no prior configuration.
- The generated challenge must remain understandable even if the originating Lucky Wheels are later modified.
- Relevant wheel selections and generated text should therefore be stored as snapshots.

---

# TrainingProgram

Represents a structured collection of Training Scenarios.

### Data

- id
- name
- Optional description
- sourceType
- status
- createdAt
- updatedAt
- schemaVersion

### Relationships

A Training Program:

- Contains one or more Training Scenarios
- May be used by multiple Training Sessions

### Status

The MVP primarily uses:

- Draft
- Saved

### Rules

- Programs require a name.
- Programs require at least one Training Scenario.
- Removing a program must never affect historical Training Sessions.
# TrainingScenario

Represents a real or virtual disc golf situation used during structured training.

### Data

- id
- trainingProgramId
- name
- description
- Optional trainingGoal
- Optional distance
- sourceType
- status
- createdAt
- updatedAt
- schemaVersion

### Relationships

A Training Scenario may contain:

- Multiple Scenario Components
- Multiple linked Lucky Wheels
- One or more Scenario Visuals
- Multiple Exercises
- Multiple historical Training Sessions

### Rules

- A scenario must function without an image.
- A scenario does not require every possible component type.
- The scenario describes the situation—not the correct solution.

---

# ScenarioComponent

Represents one reusable part of a Training Scenario.

Instead of creating many specialized object types, Scenario Components share one common structure.

### Data

- id
- scenarioId
- componentType
- label
- Optional description
- Optional structuredValue
- sortOrder

### Component Types

Typical values include:

- environment
- obstacle
- terrain
- stanceConstraint
- weatherCondition
- surfaceCondition
- target
- distance
- risk

### Examples

```text
componentType: obstacle
label: Mando Right
```

```text
componentType: weatherCondition
label: Heavy Rain
```

```text
componentType: terrain
label: One Foot Significantly Higher
```

### Design Principle

Objects such as:

- Walls
- Trees
- Forest Edge
- Light Rain
- Uneven Ground

do not require dedicated data structures during the MVP.

Instead they are represented using:

- Component Type
- Label
- Description
- Optional structured values

The model may later introduce specialized object types if they provide clear value.

---

# ScenarioWheelLink

Defines the relationship between a Training Scenario and a Lucky Wheel.

Using a separate link object allows:

- Multiple wheels per scenario
- Multiple scenarios per wheel
- Ordered wheels
- Different wheel purposes

### Data

- id
- scenarioId
- wheelId
- sortOrder
- Optional role
- Optional isRequired

### Example Roles

- discType
- throwType
- throwLine
- stance
- condition
- obstacle

---

# ScenarioVisual

Represents a visual reference for a Training Scenario.

### Data

- id
- scenarioId
- visualType
- Local file reference or future external reference
- Optional description
- Optional prompt or metadata
- createdAt
- sourceType

### Visual Types

Examples include:

- Illustration
- Photo
- Generated Image
- Map
- Animation
- Augmented Reality

Only static local images are required during the MVP.

### Rules

- Scenarios must work without images.
- Missing images must never prevent the scenario from being understood.
- Image data should not be embedded directly inside Training Session records.

---

# Exercise

Represents one concrete training task.

### Data

- id
- title
- instruction
- Optional trainingGoal
- sourceType
- Optional quickChallengeId
- Optional trainingScenarioId
- createdAt
- schemaVersion

### Snapshot Data

When an Exercise becomes part of a Training Session it should preserve:

- Title
- Instructions
- Training Goal
- Scenario information
- Relevant Wheel Spins

### Rules

- Historical Exercises must remain understandable independently.
- Exercises must not depend on their original Training Program continuing to exist.

---

# TrainingSession

Represents one complete training session.

### Data

- id
- status
- createdAt
- startedAt
- Optional completedAt
- Optional name
- Optional trainingProgramId
- Optional trainingScenarioId
- Optional quickChallengeId
- Training Program snapshot
- Training Scenario snapshot
- Scenario description snapshot
- schemaVersion

### Relationships

A Training Session contains:

- One or more Session Exercises
- Zero or more Attempts
- Zero or more Results

### Status

- Created
- Active
- Completed

### Rules

- Only one Training Session may be active.
- Active sessions must be recoverable after unexpected shutdown.
- Completed sessions are read-only.
- Sessions may originate from either Quick Challenge or Structured Training.

---

# SessionExercise

Represents the exact version of an Exercise used during a Training Session.

This object preserves historical integrity.

### Data

- id
- trainingSessionId
- Optional sourceExerciseId
- titleSnapshot
- instructionSnapshot
- Optional trainingGoalSnapshot
- Optional scenarioSnapshot
- Optional WheelSpin references
- sortOrder
- createdAt
- Optional completedAt

### Rules

- Changes to the original Exercise or Scenario must never modify Session Exercises.
- A Training Session may contain multiple Session Exercises.
- Session Exercises become read-only after session completion.
# Attempt

Represents one execution of a Session Exercise.

### Data

- id
- trainingSessionId
- sessionExerciseId
- status
- startedAt
- Optional finishedAt
- Optional disc
- Optional throwType
- Optional throwLine
- Optional strategy
- Optional riskLevel
- Optional comment
- schemaVersion

### Rules

- An Attempt belongs to exactly one Training Session.
- An Attempt belongs to exactly one Session Exercise.
- Player decision fields are optional during the MVP to preserve fast registration.
- A completed Attempt may have one Result.

---

# Result

Represents the outcome of an Attempt.

### Data

- id
- attemptId
- resultType
- Optional numericValue
- Optional textValue
- Optional unit
- recordedAt
- schemaVersion

### Result Types

Examples include:

- success
- partialSuccess
- miss
- withinTarget
- outsideTarget
- ob
- hazard
- distanceFromTarget
- custom

### Design Principle

The MVP Result model should remain simple but extensible.

The combination of:

- Result type
- Optional numeric value
- Optional unit
- Optional text

provides flexibility without requiring every future result format to be defined in advance.

### Rules

- A Result belongs to exactly one Attempt.
- Results must be persisted immediately.
- Results become read-only after Training Session completion.

---

# SessionSummary

Represents information calculated from a completed Training Session.

SessionSummary does not need to be stored as a separate object during the MVP.

### Calculated Data

- Start time
- Completion time
- Total duration
- Number of completed Session Exercises
- Number of Attempts
- Number of recorded Results

### Design Principle

Data that can be reliably calculated from canonical records should not be duplicated.

A stored SessionSummary may be introduced later for:

- Performance
- Export
- Synchronization
- Advanced analytics

---

# Relationships

## Overall Data Relationships

```text
UserProfile
 ├── AppSettings
 ├── LuckyWheel
 │    └── WheelOption
 ├── TrainingProgram
 │    └── TrainingScenario
 │         ├── ScenarioComponent
 │         ├── ScenarioVisual
 │         └── ScenarioWheelLink ── LuckyWheel
 └── TrainingSession
      ├── SessionExercise
      │    └── Attempt
      │         └── Result
      └── WheelSpin
```

---

## Quick Challenge Flow

```text
LuckyWheel
    │
    ▼
WheelSpin
    │
    ▼
QuickChallenge
    │
    ▼
Exercise
    │
    ▼
TrainingSession
    │
    ▼
SessionExercise
    │
    ▼
Attempt
    │
    ▼
Result
```

---

## Structured Training Flow

```text
TrainingProgram
    │
    ▼
TrainingScenario
    │
    ├── ScenarioComponent
    ├── ScenarioVisual
    └── LuckyWheel
            │
            ▼
        WheelSpin
            │
            ▼
         Exercise
            │
            ▼
     TrainingSession
            │
            ▼
     SessionExercise
            │
            ▼
         Attempt
            │
            ▼
          Result
```

---

# Persistence Strategy

## Immediate Persistence

The following objects should be saved immediately after modification:

- AppSettings
- Lucky Wheels
- Wheel Options
- Training Programs
- Training Scenarios
- Scenario Components
- Results

---

## Active Training Sessions

Active Training Sessions must be persisted continuously.

At minimum, persistence should occur when:

- A Training Session is created
- A Training Session is started
- A Session Exercise is added
- A Wheel Spin is completed
- An Attempt is started
- An Attempt is completed
- A Result is recorded
- A Training Session is completed

---

## Atomic Operations

Operations that modify multiple related objects must either:

- Complete entirely
- Leave the previous valid state unchanged

Example:

Saving a Training Program and its Training Scenarios must not leave only part of the structure persisted if the operation fails.
# Deletion and Restoration

## Lucky Wheels

Restoring a built-in Lucky Wheel replaces the current editable version with the original default content.

Historical Wheel Spins and Training Sessions must remain unchanged.

---

## Training Programs and Training Scenarios

Deleting a Training Program or Training Scenario removes it from future selection.

Historical Training Sessions continue to reference their stored snapshots.

---

## Training Sessions

Deleting historical Training Sessions is outside the scope of the MVP.

The architecture should later support:

- User-controlled deletion
- Complete data export

---

# Data Validation

Before data is persisted, the following should be validated:

- Required fields exist
- Text fields are not blank
- Lucky Wheels contain at least two Wheel Options
- Training Programs contain at least one Training Scenario
- Referenced objects exist or valid snapshots are available
- State transitions comply with the State Model
- Completed Training Sessions cannot be modified

---

# Error Handling

## Loading Failures

If local data cannot be loaded, the application should:

1. Attempt to load the most recent valid version or backup.
2. Preserve unaffected data.
3. Use built-in content whenever possible.
4. Inform the user without crashing.

---

## Save Failures

If persistence fails, the application should:

- Preserve the last valid state.
- Inform the user.
- Retry automatically or allow a retry.
- Never report an operation as completed before it has actually been saved.

---

# Data Migration

Every persistent root object should include a schema version.

When the data model changes, the application must be able to:

- Detect older versions.
- Migrate data safely.
- Preserve user information.
- Abort safely if migration fails.

Migration procedures should be verified before application releases.

---

# Export and Synchronization

Cloud synchronization is outside the MVP.

The data model should nevertheless prepare for future synchronization through:

- Stable identifiers
- Timestamps
- Source information
- Schema versions
- Explicit ownership
- Historical snapshots

Future exports should support:

- App Settings
- Lucky Wheels
- Training Programs
- Training Scenarios
- Training Sessions
- Attempts
- Results

---

# Privacy

DGTC should only store information that provides clear product value.

The MVP should never require:

- Full name
- Email address
- Exact location
- Contact lists
- Personal profile information

Location or GPS data should only be introduced when required by a clearly defined feature and explicitly approved by the user.

---

# Out of Scope

This document intentionally does not define:

- Database technology
- SQL schemas
- Encryption implementation
- Cloud databases
- Synchronization conflict resolution
- File system layout
- Image compression
- Backup formats
- Export formats

These decisions belong to implementation-specific architecture documents.

---

# Summary

The DGTC data model is built on four core principles.

1. **Offline First**  
   Local data is always available.

2. **Historical Integrity**  
   Completed training never changes afterward.

3. **Stable Relationships**  
   Every major object has a stable unique identifier.

4. **Extensibility**  
   The model supports future export, synchronization, and collaboration.

Editable content defines how the user intends to train.

Snapshots preserve what actually happened during completed Training Sessions.

Maintaining this distinction is fundamental to preserving long-term training history while allowing the application to evolve.

---

## Related Documents

- `DOMAIN_MODEL.md`
- `STATE_MODEL.md`
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
