# RFC-001 — Progressive Engagement

## Metadata

| Property | Value |
|----------|-------|
| RFC | RFC-001 |
| Status | Approved |
| Decision Owner | Product Owner |
| Approved | 2026-07-20 |

---

## Purpose

Establish **Progressive Engagement** as a fundamental product principle for DGTC.

The principle governs how users are introduced to the product and how they naturally progress from spontaneous practice toward deliberate performance development.

---

## Background

Many training applications experience significant user drop-off after the first session due to:

- High initial complexity
- Too many choices
- Mandatory account creation or configuration
- Information overload before value is experienced
- Training feeling like administration rather than enjoyment

Many applications are effective at recording training.

Few make training itself more enjoyable.

DGTC should therefore deliver value immediately while introducing additional capabilities only when users are ready for them.

---

## Problem Statement

Presenting the full system immediately increases the risk that:

- the application feels complicated,
- users never begin training,
- users leave before discovering the product's strengths.

The product must therefore provide immediate value while supporting long-term growth.

---

## Decision

DGTC shall be designed according to the principle of **Progressive Engagement**.

Each level of the product must provide meaningful standalone value.

Users should naturally want to take the next step.

No feature should be introduced before it provides clear additional value.

---

## Product Principle

> **Every step in DGTC should provide enough value that users naturally want to take the next step—never through pressure, always through usefulness, enjoyment, and development.**

---

## Value Hierarchy

Product value should be introduced progressively.

### 1. Enjoyment

Users should want to open the application because practice becomes more enjoyable.

### 2. Variety

The product should encourage users to break routine and discover new challenges.

### 3. Development

Continued use should improve understanding, decision-making, and deliberate practice.

### 4. Performance

Improved performance is the result of enjoyment, variety, and development—not the product's initial promise.

---

## Product Journey

### Level 1

Quick Challenge

Open the app.

Press.

Throw.

### Level 2

Explore Lucky Wheels.

### Level 3

Create and customize Lucky Wheels.

### Level 4

Use Training Programs.

### Level 5

Practice with realistic Training Scenarios.

### Level 6

Document, reflect, and improve through future analysis and decision support.

---

## Consequences

This decision establishes:

- Quick Challenge as the primary entry point.
- Training Programs and Training Scenarios as the natural progression.
- Navigation and architecture should support this journey.
- Future features should be evaluated according to whether they:
  - increase enjoyment,
  - create variety,
  - support development,
  - improve performance.

---

## Affected Documents

- `../foundation/04_Vision_and_Principles.md`
- `../foundation/05_Decision_Framework.md`
- `../product/PRD.md`
- `../product/MVP.md`
- `../architecture/NAVIGATION.md`
- `../architecture/ARCHITECTURE.md`
- `../architecture/SYSTEM_OVERVIEW.md`
- `../foundation/08_Decision_Log.md`
- `../MASTER_INDEX.md`

---

## Not Affected

This RFC does not change:

- `../architecture/DOMAIN_MODEL.md`
- `../architecture/STATE_MODEL.md`
- `../architecture/DATA_MODEL.md`

These documents already support the defined product journey.

---

## Motivation

DGTC should not maximize screen time.

DGTC should maximize the enjoyment of practice and the value of every training session.

The desired user reaction is:

> **"I'm going out to throw anyway. I'll bring DGTC."**

When that feeling exists, DGTC has become the user's natural training companion.

---

## Decision Summary

RFC-001 is approved.

Progressive Engagement becomes a governing principle for DGTC product, UX, and architecture decisions.

---

**Status:** Approved

**Owner:** Product Owner

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.