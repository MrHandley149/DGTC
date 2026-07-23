# Coding Standard

**Version:** v1.0

**Status:** Draft

---

# Syfte

Detta dokument beskriver den kodfilosofi som används inom DGTC.

Målet är att skapa kod som är enkel att förstå, enkel att underhålla och enkel att överlämna till både människor och AI-agenter.

---

# Grundprincip

Kod ska vara enkel att förstå.

Inte imponerande att skriva.

---

# Kodfilosofi

DGTC ska byggas med enkel, tydlig och långsiktigt underhållbar kod.

Vi bygger inte bloatware.

Vi bygger en funktion i taget och undviker automagi, onödiga abstraktioner och spekulativa lösningar.

Kod ska vara:

- läsbar före smart,
- enkel före generell,
- explicit före automatisk,
- testbar,
- dokumenterad där avsikten annars inte är självklar,
- organiserad enligt tydliga ansvarsgränser,
- möjlig att snabbt överlämna till en ny programmerare eller AI-agent.

Varje beroende, abstraktion och tekniskt mönster ska kunna motiveras utifrån ett konkret behov.

Vi skapar inte flexibilitet för problem som ännu inte finns.

Vi optimerar först när ett verkligt behov är identifierat och mätt.

En funktion implementeras, testas, verifieras och godkänns innan nästa funktion påbörjas.

Kodkvalitet innebär inte att koden är avancerad.

Kodkvalitet innebär att koden är begriplig, korrekt, testbar och enkel att förändra.

---

