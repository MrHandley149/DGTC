# FRS – Home Screen

**Produkt:** Disc Golf Training Companion (DGTC)

**Dokument:** FRS_Home.md

**Version:** v1.0

**Status:** Draft

---

# Syfte

Startskärmen är appens huvudsakliga arbetsyta.

Den ska ge användaren snabb tillgång till de funktioner som används under ett träningspass och minimera antalet steg innan träningen kan börja.

---

# Mål

När användaren öppnar appen ska det vara möjligt att starta ett träningspass inom några sekunder.

Startskärmen ska kännas enkel, tydlig och fokuserad.

---

# User Stories

### US-001

Som användare vill jag snabbt kunna starta ett träningspass så att jag kan börja träna utan onödiga steg.

---

### US-002

Som användare vill jag direkt se Lucky Wheels eftersom de är appens centrala funktion.

---

### US-003

Som användare vill jag enkelt kunna komma åt inställningar och andra funktioner utan att de stör huvudflödet.

---

# Funktionella krav

## FRS-H-001

Startskärmen ska visas när appen öppnas.

**Prioritet:** Must Have

---

## FRS-H-002

Lucky Wheels ska vara det mest framträdande elementet på skärmen.

**Prioritet:** Must Have

---

## FRS-H-003

Användaren ska kunna starta ett träningspass från startskärmen.

**Prioritet:** Must Have

---

## FRS-H-004

Navigering till övriga delar av appen ska vara tydlig och konsekvent.

**Prioritet:** Must Have

---

## FRS-H-005

Gränssnittet ska fungera i både stående och liggande orientering.

**Prioritet:** Should Have

---

## FRS-H-006

Startskärmen ska fungera utan internetuppkoppling.

**Prioritet:** Must Have

---

# Affärsregler

## BR-001

Startskärmen ska alltid kunna visas även om användaren saknar sparad data.

---

## BR-002

Ingen inloggning krävs för att använda startskärmen.

---

## BR-003

Startskärmen får inte blockeras av reklam, popup-fönster eller introduktionsguider.

---

# Användargränssnitt

Startskärmen ska prioritera:

1. Lucky Wheels.
2. Start av träningspass.
3. Enkel navigering.
4. Minimal visuell belastning.

Designen ska stödja snabb användning även utomhus i varierande ljusförhållanden.

---

# Felhantering

Om lokal data inte kan läsas ska appen:

* starta med standardinställningar,
* informera användaren,
* fortsätta fungera.

Appen får aldrig krascha på grund av saknad användardata.

---

# Acceptanskriterier

Funktionen är godkänd när:

* startskärmen öppnas korrekt,
* Lucky Wheels visas direkt,
* användaren kan starta ett träningspass,
* navigation fungerar,
* appen fungerar utan internet,
* inga kritiska fel uppstår.

---

# Framtida utveckling

Möjliga tillägg efter MVP:

* personliga genvägar,
* senaste träningspass,
* dagliga utmaningar,
* favoritövningar,
* molnsynkronisering,
* widgets,
* coachrekommendationer,
* AIE-insikter.
