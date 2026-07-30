# Feature Request Log

## Purpose

This document captures product ideas, investigations, and philosophy proposals that are outside the current implementation scope. Inclusion in this log does not imply approval or commitment. Each item must undergo evaluation before becoming an RFC or entering the product roadmap.

---

# FR-001 — Disc Golf Deck of Cards

## Metadata

| Property | Value |
|----------|-------|
| Type | Feature |
| Status | Proposed |
| Priority | Backlog |
| Category | Social / Training / Game Mechanics |

## Description

Investigate the possibility of creating a card-based game mode for training and social play, inspired by physical disc golf card games such as Ript, Disc Golf Frenzy, and Bag of Powers.

The goal is not to copy existing products, but to explore how a digital card system can create variation, motivation, and social interaction within DGTC.

## Objectives

- Create variation in practice.
- Make practice more enjoyable.
- Support both solo play and group play.
- Align with DGTC's philosophy of joy, development, and positive reinforcement.

## Inspiration

- Ript
- Disc Golf Frenzy
- Bag of Powers
- Reddit: Disc Golf Card Game

## Next Step

Conduct a feasibility study before considering an RFC.

---

# FR-002 — Investigate Integration with UDisc and Tjing

## Metadata

| Property | Value |
|----------|-------|
| Type | Investigation |
| Status | Proposed |
| Priority | Backlog |
| Category | Integration |

## Description

Investigate whether integration with external disc golf services can improve the user experience by reducing duplicate work and reusing existing information.

## Investigation Areas

### UDisc

- Public API availability
- Integration possibilities
- Synchronization of rounds, statistics, and course information
- Licensing and terms of service

### Tjing

- API or alternative integration methods
- Tournament, registration, and results import
- Authentication mechanisms
- Technical and legal limitations

## Objectives

If integration is feasible, it should:

- Reduce manual work.
- Improve the user experience.
- Support DGTC's principle that users own their data.
- Avoid vendor lock-in.

## Next Step

Conduct technical and legal feasibility studies before considering an RFC.

---

# RFC Candidate — Social Philosophy

## Metadata

| Property | Value |
|----------|-------|
| Type | Philosophy |
| Status | Proposed |
| Priority | High |
| Category | Product Philosophy |

## Purpose

Disc golf is more than scores, ratings, and statistics.

It is a sport built on shared experiences, encouragement, laughter, friendly competition, and the people you meet along the way.

DGTC exists to help players improve, but never at the expense of the joy of playing together.

This philosophy should influence every product decision.

## Core Principle

> **Train Hard. Compete Low. Play Together.**

- **Train Hard** — Practice with intention.
- **Compete Low** — Trust your training.
- **Play Together** — Remember that people matter more than the scorecard.

## Design Principles

Every feature should strengthen at least one of:

- Learning
- Confidence
- Community

No feature should encourage:

- Isolation
- Toxicity
- Unhealthy comparison

## Success Criteria

A successful round is not always the one with the lowest score.

A successful round is one that makes you want to play another.

## Community First

Competition should create friendships.

Statistics should create insights.

Technology should create conversations.

DGTC should amplify the social experience rather than replace it.

## Guiding Questions

Before making a product decision, ask:

- Will this help the player improve?
- Will this make people want to play together again?

## Next Step

Develop this proposal into a formal RFC and determine how it should influence Vision & Principles, UX, and future feature development.

---

## Related Documents

- `../PRD.md`
- `../MVP.md`
- `../../foundation/04_Vision_and_Principles.md`
- `../../foundation/06_DGTC_DNA.md`

---

**Status:** Living Document

**Owner:** Product

**Last Updated:** 2026-07-30

### Revision History

- **2026-07-30** – Repository documentation consolidated.