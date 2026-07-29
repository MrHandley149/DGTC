# System Overview

**Platform:** The Training Companion  
**First product:** Disc Golf Training Companion (DGTC)  
**Document type:** Architecture  
**Version:** v1.1  
**Lifecycle:** Review  
**Information owner:** Architecture  

---

## Purpose

This document provides a high-level map of the DGTC system.

It explains:

- the relationship between the platform and the first product,
- the principal user paths,
- the major system capabilities,
- the main information flow,
- the boundaries between this overview and the authoritative detailed specifications.

This document does not define detailed requirements, domain rules, data structures, state transitions, implementation decisions, project governance, or business strategy.

---

## Platform and product

### The Training Companion

The Training Companion is a platform concept for structured, varied, and deliberate practice.

The platform is intended to support technical individual sports and training activities where repeated practice, variation, reflection, and decision-making contribute to development.

The platform concept may support additional sports in the future.

That future ambition must not increase the complexity of the first product or its MVP.

### Disc Golf Training Companion

Disc Golf Training Companion is the first product built on the platform concept.

DGTC is used to develop and validate the core training experience through disc golf.

The first product focuses on:

- immediate access to a training activity,
- varied training through configurable wheels,
- structured training programs,
- realistic training scenarios,
- training sessions,
- simple result registration,
- local history and summaries.

Product intent and scope are defined in the [Product Requirements Document](../product/PRD.md) and [MVP specification](../product/MVP.md).

---

## Core experience

DGTC supports two principal user paths.

### Quick Challenge

Quick Challenge is the lowest-friction entry into training.

The intended flow is:

```text
Open DGTC
    ↓
Start Quick Challenge
    ↓
Generate variation through Lucky Wheels
    ↓
Receive a clear training task
    ↓
Begin training