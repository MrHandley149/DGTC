# Domain Model

## Purpose

This document defines the core domain model for DGTC.

The domain model establishes a common language for product development, architecture, implementation, testing, and future analytics.

It describes the concepts that exist within DGTC and the responsibilities and relationships of those concepts.

This document does not define:

- Database schemas
- Technical frameworks
- User interface design
- Flutter classes
- Storage implementations

---

## Domain Principles

### Domain Before Technology

Technology should be built around the domain.

The domain model must remain independent of user interface design, storage technology, and implementation details.

### Immediate Value First

DGTC should provide immediate value.

A new user should be able to:

1. Open the app
2. Start a Quick Challenge
3. Receive a training task
4. Begin practicing

Advanced training programs and scenarios should deepen the experience without creating barriers to entry.

> Depth must never prevent the first throw.

### Scenarios Describe Situations

A Training Scenario describes the conditions of a training situation.

The player—not the application—chooses the solution.

DGTC supports decision-making and records outcomes rather than prescribing a single correct answer.

---

# Domain Areas

The DGTC domain consists of the following primary areas:

1. User
2. Quick Challenges
3. Lucky Wheels
4. Training Programs
5. Training Scenarios
6. Training Sessions
7. Attempts and Results
8. Scenario Components
9. Player Decisions
10. Settings

---

# Core Domain Objects

## User

Represents the person using DGTC.

The MVP does not require an online account.

The User therefore represents the local device owner.

### Responsibilities

- Own local user data
- Store personal settings
- Create Lucky Wheels
- Create Training Programs
- Create Training Scenarios
- Complete Training Sessions
- Register Attempts and Results

### Principle

Users own their data.

---

## QuickChallenge

Represents a training activity that can begin immediately without prior configuration.

Quick Challenge is the primary entry point into DGTC.

### Responsibilities

- Deliver immediate training value
- Generate variation using Lucky Wheels
- Produce a clear, actionable training task
- Require minimal interaction before training begins

### Examples

- Throw a putter hyzer.
- Throw a forehand with a midrange.
- Practice approach shots from 40–50 meters.

### Relationships

- Uses one or more Lucky Wheels
- Produces an Exercise
- Can initiate a Training Session

---

## TrainingProgram

Represents a structured collection of Training Scenarios with a common training objective.

### Examples

- 50 Meter Accuracy
- Putter and Midrange Hyzer
- Forehand Through Tight Gaps
- Safe Approach Strategy
- Uneven Lie Putting

### Responsibilities

- Define a training objective
- Organize one or more Training Scenarios
- Support creation, editing, and reuse
- Serve as the entry point for structured training

### Required Information

A Training Program should contain at minimum:

- Unique identifier
- Name
- Optional description
- One or more Training Scenarios
- Information describing its origin

### Content Origin

Training Programs may be:

- Built-in
- User-created
- Downloaded
- Provided by coaches, clubs, or sponsors

### Relationships

- Contains one or more Training Scenarios
- Can be used by multiple Training Sessions
- Historical Training Sessions must not change if the program is edited

---

## TrainingScenario

Represents a real or simulated disc golf situation.

The scenario describes the situation but does not prescribe the correct solution.

### Examples

**Forest Edge**

The player stands beside a wooded area with the basket approximately 50 meters away.

**OB Behind Basket**

The player approaches from the fairway with OB beyond the target.

**Uneven Lie**

The player must throw from uneven footing.

### Responsibilities

- Describe the training situation
- Define goals and conditions
- Combine Scenario Components
- Use Lucky Wheels where appropriate
- Optionally include a visual representation
- Support repeated use across Training Sessions

### Basic Information

A Training Scenario may include:

- Identifier
- Name
- Description
- Training objective
- Distance
- Target
- Environment
- Obstacles
- Terrain
- Stance constraints
- Weather
- Surface conditions
- Risks
- Associated Lucky Wheels
- Optional visualization

### Relationships

- Belongs to a Training Program
- References Scenario Components
- May use one or more Lucky Wheels
- Produces one or more Exercises
- Can be used by multiple Training Sessions
## ScenarioVisual

Represents an optional visual representation of a Training Scenario.

Visuals help players understand and imagine the situation but are never required for core functionality.

### Possible Formats

- Illustration
- Photograph
- Generated image
- Course map
- Animation (future)
- Augmented Reality (future)

### Responsibilities

- Visualize the training situation
- Improve understanding of the scenario
- Support learning without becoming mandatory

### Principle

A Training Scenario must remain fully usable without a visual representation.

---

## LuckyWheel

Represents a mechanism that randomly selects one option from a collection.

Lucky Wheels create variation but do not define the training task themselves.

### Responsibilities

- Contain two or more options
- Produce a fair random selection
- Allow locking and spinning
- Support editing
- Support reuse across multiple Training Programs and Scenarios
- Allow restoration of default content

### Example Wheels

- Disc Type
- Throw Type
- Throw Line
- Distance
- Obstacle
- Environment
- Stance
- Weather

### Relationships

- Contains multiple WheelOptions
- Produces a WheelResult
- Can be used by QuickChallenge
- Can be referenced by TrainingScenario

---

## WheelOption

Represents one possible outcome of a Lucky Wheel.

### Examples

- Putter
- Midrange
- Forehand
- Hyzer
- One Knee
- Mando Right
- Light Rain

### Responsibilities

- Store a unique value
- Belong to one Lucky Wheel
- Support creation, editing, deletion, and ordering
- Participate in Exercises and Training Scenarios

### Business Rules

- A Wheel Option cannot be empty.
- Duplicate options are not allowed within the same wheel.
- Every Lucky Wheel must contain at least two options.

---

## WheelResult

Represents the option selected when a Lucky Wheel is spun.

### Responsibilities

- Reference the selected WheelOption
- Record when the selection occurred
- Preserve the selection after spinning
- Support Exercise generation

### Relationships

- Created by LuckyWheel
- References one WheelOption
- May be used by an Exercise

---

## Exercise

Represents the concrete training task that the player performs.

Exercises may be generated by:

- Quick Challenge
- Training Scenario
- Training Program

### Examples

- Throw a putter hyzer from approximately 50 meters.
- Solve the forest edge scenario using any disc.
- Putt from one knee on uneven ground.

### Responsibilities

- Describe the training task
- Reference relevant Scenario and Wheel Results
- Define a training objective
- Support one or more Attempts
- Connect Attempts with Results

### Relationships

- May be created by QuickChallenge
- May be created from TrainingScenario
- Belongs to a TrainingSession
- Contains one or more Attempts

---

## TrainingSession

Represents one complete training session.

### Responsibilities

- Record start and end time
- Collect completed Exercises
- Store Attempts and Results
- Preserve Program and Scenario information
- Recover after unexpected interruption
- Produce a Session Summary

### States

A Training Session may be:

- Created
- Active
- Completed

Detailed state transitions are defined in `STATE_MODEL.md`.

### Relationships

A Training Session may begin from:

- QuickChallenge
- TrainingProgram
- TrainingScenario

A Training Session contains:

- One or more Exercises
- Zero or more Attempts
- Zero or more Results

---

## Attempt

Represents one execution of an Exercise.

### Responsibilities

- Belong to exactly one Exercise
- Belong to exactly one Training Session
- Record execution time
- Capture player decisions
- Reference one Result

### Recorded Decisions

An Attempt may include:

- Disc
- Throw Type
- Throw Line
- Strategy
- Risk Level
- Optional notes

Not all fields are required in the MVP.

---

## Result

Represents the outcome of an Attempt.

### Responsibilities

- Describe what happened
- Belong to one Attempt
- Support rapid entry
- Contribute to Session Summaries
- Support future analytics

### Possible Outcomes

- Success
- Partial Success
- Failure
- Inside target area
- Outside target area
- Out of Bounds
- Hazard
- Near basket
- Successful throws
- Distance from target

The exact Result model will remain intentionally simple during the MVP.

### Principle

An Attempt records what the player did.

A Result records what happened.

---

## SessionSummary

Represents the read-only summary of a completed Training Session.

### Responsibilities

- Display start and end time
- Display duration
- Display completed Exercises
- Display recorded Attempts and Results
- Confirm that the session has been saved

### Principle

Session Summary describes the session.

It does not evaluate player performance during the MVP.

---

## AppSettings

Represents locally stored application settings.

### Responsibilities

- Store selected language
- Store sound preferences
- Support future application settings
- Operate completely offline

### Relationships

- Belongs to the local installation
- Independent of individual Training Sessions
# Scenario Components

Scenario Components describe the conditions of a Training Scenario.

They allow many unique situations to be created by combining reusable building blocks rather than defining every possible scenario individually.

---

## Environment

Represents the overall surroundings in which training takes place.

### Examples

- Fairway
- Forest
- Forest Edge
- Grove
- Open Field
- Tall Grass
- Waterside

---

## Obstacle

Represents physical obstacles or rule-based restrictions.

### Examples

- High Wall
- Low Branch
- Tight Gap
- Dense Forest
- Mando Right
- Mando Left
- Out of Bounds
- Hazard
- Creek
- Bush

---

## Terrain

Represents the shape and condition of the ground.

### Examples

- Flat Ground
- Uphill
- Downhill
- Side Slope
- Uneven Ground
- Elevated Footing

---

## StanceConstraint

Represents limitations on how the player may position their body.

### Examples

- One Knee
- Standing Still
- Limited Run-Up
- Uneven Footing
- Poor Footing

---

## WeatherCondition

Represents weather conditions affecting the training situation.

### Examples

- Calm
- Headwind
- Tailwind
- Crosswind
- Light Rain
- Heavy Rain
- Snow
- Temperature

---

## SurfaceCondition

Represents the condition of the playing surface.

### Examples

- Dry
- Wet
- Muddy
- Slippery
- Ice
- Snow
- Gravel
- Roots
- Tall Grass

---

## Target

Represents the intended destination of the throw.

### Examples

- Basket
- Landing Zone
- Target Area
- Circle 1
- Circle 2
- Comfortable Putting Distance

---

## Distance

Represents the distance to the intended target.

Distances may be expressed as:

- Exact value
- Approximate value
- Range
- Category

### Examples

- 30 meters
- Approximately 50 meters
- 40–60 meters
- Short Approach

---

## Risk

Represents hazards or negative consequences associated with the situation.

### Examples

- OB Behind Basket
- Water Left
- Steep Drop Behind Target
- Hazard Near Landing Zone
- Narrow Safe Line

---

# Player Decisions

Player decisions are intentionally separated from Scenario conditions.

The Scenario defines the situation.

The player chooses how to solve it.

---

## Disc

Represents the disc selected during an Attempt.

### Basic Types

- Putter
- Midrange
- Fairway Driver
- Distance Driver

Future versions may include:

- Manufacturer
- Model
- Plastic
- Weight
- Stability
- Personal Bag

---

## ThrowType

Represents the throwing technique.

### Examples

- Backhand
- Forehand
- Putt
- Jump Putt
- Step Putt
- Roller
- Tomahawk
- Thumber

---

## ThrowLine

Represents the intended flight path.

### Examples

- Hyzer
- Flat
- Anhyzer
- Spike Hyzer
- Low Line
- High Line
- Turnover
- Flex Line

---

## Strategy

Represents the player's overall tactical approach.

### Examples

- Safe Landing Zone
- Attack the Basket
- Avoid OB
- Lay Up
- Minimize Risk

---

## RiskLevel

Represents the player's chosen level of risk.

### Examples

- Low
- Medium
- High

Risk Level may support future reflection and decision analysis.

---

# Relationships Between Core Objects

## Quick Challenge Flow

```text
User
    │
    ▼
QuickChallenge
    │
    ├── uses LuckyWheel
    │       │
    │       ├── contains WheelOption
    │       └── produces WheelResult
    │
    ▼
Exercise
    │
    ▼
TrainingSession
    │
    ▼
Attempt
    │
    ▼
Result
    │
    ▼
SessionSummary
```

---

## Structured Training Flow

```text
User
    │
    ▼
TrainingProgram
    │
    ▼
TrainingScenario
    │
    ├── contains ScenarioComponents
    ├── optional ScenarioVisual
    └── may use LuckyWheel
            │
            ▼
        Exercise
            │
            ▼
    TrainingSession
            │
            ▼
        Attempt
            │
            ▼
         Result
            │
            ▼
    SessionSummary
```

---

# Historical Integrity

Historical Training Sessions must never change when users later edit:

- Lucky Wheels
- Wheel Options
- Training Programs
- Training Scenarios
- Exercise templates

Training Sessions must preserve the exact information used during the original session.

The implementation may use snapshots, copies, or version references.

Implementation details are defined in `DATA_MODEL.md`.

---

# Ownership

## Built-in Content

Built-in Programs, Scenarios, and Lucky Wheels belong to the application.

They should be immediately available.

Modified built-in content should be restorable to its default state.

---

## User Content

Users own:

- Lucky Wheels
- Wheel Options
- Training Programs
- Training Scenarios
- Training Sessions
- Attempts
- Results

---

## External Content

Future versions may distinguish content supplied by:

- DGTC
- Users
- Coaches
- Clubs
- Sponsors
- Community

This capability is outside the MVP but should not require changes to the core domain model.
# MVP Domain Rules

The MVP follows these domain rules:

1. The application must be usable without an account.
2. Core functionality must operate completely offline.
3. Only one Training Session may be active at a time.
4. Every Lucky Wheel must contain at least two Wheel Options.
5. Every Training Program must contain at least one Training Scenario.
6. Results may only be recorded during an active Training Session.
7. Every Attempt belongs to exactly one Exercise and one Training Session.
8. Every Result belongs to exactly one Attempt.
9. Completed Training Sessions are read-only.
10. Historical Training Sessions must never change after completion.
11. Quick Challenge must be available without prior configuration.
12. ScenarioVisual is optional.
13. Users may create and edit local content entirely offline.

---

# Out of Scope

The following areas are intentionally excluded from the current domain model:

- User accounts
- Cloud synchronization
- Community sharing
- AI-generated imagery
- AI-generated Training Programs
- Coach portals
- Clubs
- Sponsors
- Advanced analytics
- Detailed Result models
- Complete Disc metadata
- GPS and distance measurement

These capabilities should be added later without requiring changes to the core domain model.

---

# Summary

DGTC provides two primary ways to begin training.

## Quick Challenge

The player opens the application, generates a challenge, and immediately begins practicing.

## Structured Training

The player selects a Training Program and a Training Scenario for more focused, deliberate practice.

Lucky Wheels create variation.

Training Scenarios describe the situation.

Exercises define the task.

The player makes the decisions.

Attempts record what the player did.

Results record what happened.

The domain model supports immediate value for new users while providing a scalable foundation for future learning, coaching, analytics, and long-term player development.

---

## Related Documents

- `SYSTEM_OVERVIEW.md`
- `ARCHITECTURE.md`
- `DATA_MODEL.md`
- `STATE_MODEL.md`
- `../product/PRD.md`
- `../product/MVP.md`

---

**Status:** Draft

**Owner:** Architecture

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.
