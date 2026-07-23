# Git Workflow

**Version:** v1.0

**Status:** Draft

---

# Syfte

Detta dokument beskriver hur kod och dokumentation hanteras i Git inom DGTC.

Syftet är att säkerställa små, spårbara och granskningsbara förändringar som enkelt kan förstås av både människor och AI-agenter.

---

# Grundprincip

En commit ska representera en tydlig och sammanhängande förändring.

Commits ska vara små nog att förstå, granska, testa och vid behov återställa.

---

# Branch-strategi

Projektet använder följande huvudbranch:

- `main`

`main` ska alltid innehålla en stabil och godkänd version av projektet.

Utveckling sker i separata arbetsbrancher.

Exempel:

- `feature/it-wheels-001`
- `fix/it-session-003`
- `docs/update-implementation-workflow`
- `chore/setup-flutter-project`

---

# Branch-namn

Branch-namn ska:

- vara skrivna med små bokstäver,
- använda bindestreck mellan ord,
- beskriva förändringens syfte,
- hänvisa till Implementation Task när en sådan finns.

Format:

`typ/identifierare-kort-beskrivning`

Exempel:

- `feature/it-home-001-start-screen`
- `feature/it-wheels-002-spin-wheel`
- `fix/it-result-004-save-result`
- `docs/repository-structure`
- `chore/flutter-setup`

---

# Commit-standard

Commit-meddelanden ska vara korta, tydliga och beskriva vad förändringen gör.

Format:

`typ: kort beskrivning`

Tillåtna typer:

- `feat` – ny funktionalitet
- `fix` – rättning av fel
- `docs` – dokumentation
- `test` – testkod eller testunderlag
- `refactor` – kodförändring utan ändrat beteende
- `chore` – verktyg, konfiguration eller underhåll
- `build` – byggsystem eller beroenden
- `ci` – automatiserade arbetsflöden

Exempel:

- `feat: implement IT-WHEELS-001`
- `fix: preserve wheel state after restart`
- `docs: add Git workflow`
- `test: verify IT-HOME-001 acceptance criteria`
- `chore: create Flutter project structure`

---

# Commit description

När en förändring behöver mer förklaring ska committen innehålla en längre beskrivning.

Beskrivningen ska ange:

- vad som ändrades,
- varför det ändrades,
- vilket krav eller beslut förändringen hänvisar till,
- hur förändringen verifierades.

Exempel:

```text
feat: implement IT-WHEELS-001

- Added independent wheel spinning
- Implemented according to FRS-WHEELS-001
- Added automated tests for defined acceptance criteria
- Verified that unrelated wheel behavior remains unchanged
