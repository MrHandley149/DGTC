# MVP Specification

**Document Type:** Product  
**Version:** v2.0  
**Lifecycle:** Approved  
**Information Owner:** Product

---

# Purpose

This document defines the scope of the first public release of DGTC.

The MVP exists to validate the product's core value rather than maximize functionality.

The primary question is:

> Can DGTC make practice easier to start, more varied, more enjoyable and more intentional without getting in the way of training?

---

# Objectives

The MVP shall enable users to:

- start a practice session within seconds,
- receive varied challenges through the Challenge Wheels,
- record simple results,
- complete a practice session,
- review a concise session summary.

---

# Target Users

The MVP targets individual disc golf players ranging from beginners to recreational experienced players.

Club, coach and sponsor functionality are outside the MVP scope.

---

# Functional Scope

## Practice Sessions

Users shall be able to:

- create a session,
- optionally name the session,
- start and finish the session.

---

## Challenge Wheels

Two Challenge Wheels are available on the start screen.

Users shall be able to:

- spin each wheel independently,
- spin both wheels together,
- lock one wheel,
- view animation and receive audio feedback.

---

## Wheel Management

Users shall be able to:

- create custom entries,
- edit entries,
- delete entries,
- restore default wheels.

Changes are stored locally.

---

## Result Registration

Users shall be able to register a simple result after each exercise.

The workflow shall prioritize speed over detailed statistics.

---

## Session Summary

When a session ends, the application shall present a summary including examples such as:

- completed exercises,
- session duration,
- recorded results.

The application shall then ask:

> **Did DGTC get in the way of your training today?**

Possible responses:

- Yes
- No

If the answer is **Yes**, the user may:

- select one or more predefined reasons,
- optionally provide additional comments.

The purpose is to identify friction in the product experience.

---

## Local Storage

The MVP shall:

- store all data locally,
- require no user account,
- function without an internet connection.

---

## Settings

Users shall be able to:

- select language,
- enable or disable sound,
- restore default Challenge Wheels.

---

# Non-Functional Requirements

The MVP shall:

- be easy to learn,
- function offline,
- start quickly,
- feel responsive,
- support Android and iOS,
- maintain a consistent user experience.

---

# Out of Scope

The following capabilities are intentionally excluded:

- user accounts,
- cloud synchronization,
- social features,
- friends,
- leaderboards,
- bag tags,
- sponsored content,
- coaching features,
- AIE recommendations,
- smartwatch support,
- GPS and distance measurement,
- club functionality,
- advanced statistics,
- performance trends,
- data export.

---

# Development Principle

Every feature shall answer the question:

> Does this validate the core value of the product?

If not, it does not belong in the MVP.

Needs take priority over Wants.

---

# Validation

The MVP succeeds when users can complete a full practice session without DGTC becoming an obstacle.

Success is measured by product experience rather than feature count.

The guiding principle is:

> **The Interface Disappears.**

---

# Definition of Done

The MVP is complete when:

- all defined functionality operates reliably,
- the application works offline,
- no critical defects remain,
- users can complete an entire practice session without DGTC interfering with training.

---

# Related Documents

- Product Experience Principles
- The DGTC Way
- DGTC Problem Statement
- PRD

---

# Revision History

| Version | Date | Description |
|---|---|---|
| v2.0 | 2026-07-29 | Repository consolidation |