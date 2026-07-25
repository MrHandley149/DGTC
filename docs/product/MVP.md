# MVP Specification

**Produkt:** Disc Golf Training Companion (DGTC)

**Version:** MVP v1.2

**Status:** Approved

---

# Syfte

Detta dokument definierar innehållet i den första publika versionen av DGTC.

MVP:n finns för att validera produktens kärnvärde, inte för att maximera antalet funktioner.

Målet med MVP är att besvara frågan:

> Kan DGTC göra träningen enklare att komma igång med, mer varierad, roligare och mer medveten – utan att komma i vägen för själva träningen?

---

# Mål

Efter att ha använt MVP ska användaren kunna:

* starta ett träningspass på några sekunder,
* få varierade kastuppgifter genom snurrhjulen,
* registrera resultat,
* avsluta träningspasset,
* reflektera över sitt träningspass genom en enkel sammanfattning.

---

# Målgrupp

MVP riktar sig till enskilda discgolfspelare, från nybörjare till erfarna motionärer.

Ingen klubb-, coach- eller sponsorfunktion ingår.

---

# Funktioner i MVP

## Träningspass

Användaren ska kunna:

* skapa ett nytt träningspass,
* namnge passet (valfritt),
* starta och avsluta passet.

---

## Challenge Wheels

Två Challenge Wheels visas på startsidan.

Hjulen används för att skapa varierade träningsutmaningar.

Användaren ska kunna:

* snurra varje hjul individuellt,
* snurra båda samtidigt,
* se tydlig animation och ljud,
* låsa ett hjul och endast snurra det andra.
---

## Redigera hjul

Användaren ska kunna:

* skapa egna alternativ,
* ändra befintliga alternativ,
* ta bort alternativ,
* återställa till standard.

Alla ändringar sparas lokalt.

---

## Resultatregistrering

Efter varje övning ska användaren kunna registrera ett enkelt resultat.

MVP fokuserar på snabb registrering framför detaljerad statistik.

Registreringen ska kunna genomföras med så få steg som möjligt.

---

## Sammanfattning

När ett träningspass avslutas visas en sammanfattning med exempelvis:

* antal genomförda övningar,
* träningstid,
* registrerade resultat.

Efter sammanfattningen får användaren besvara en enkel fråga om appupplevelsen.

Fråga:

> **Did DGTC get in the way of your training today?**

Svar:

* Yes
* No

Vid **Yes** får användaren:

* välja en eller flera orsaker (snabbval),
* lämna en frivillig kommentar i fritext.

Syftet är att identifiera friktion i produktupplevelsen, inte att mäta nöjdhet.

---

## Lokal lagring

All data lagras lokalt på enheten.

Ingen inloggning krävs.

Ingen internetanslutning krävs.

---

## Inställningar

Användaren ska kunna:

* välja språk,
* slå av eller på ljud,
* återställa standardhjulen.

---

# Icke-funktionella krav

MVP ska:

* vara lätt att komma igång med,
* fungera offline,
* starta snabbt,
* kännas responsiv,
* fungera på Android och iOS,
* ha ett enkelt och konsekvent gränssnitt.

---

# Ingår inte i MVP

Följande funktioner är planerade men ingår inte i den första versionen:

* användarkonton,
* molnsynkronisering,
* sociala funktioner,
* vänner,
* topplistor,
* bag tags,
* sponsorinnehåll,
* coachfunktioner,
* AI-baserade rekommendationer,
* Actionable Insights Engine,
* smartwatch-stöd,
* GPS- och distansmätning,
* klubbfunktioner,
* avancerad statistik,
* prestationstrender,
* exportfunktioner.

---

# Utvecklingsprincip

Under utvecklingen ska vi kontinuerligt fråga:

> Bidrar denna funktion till att validera produktens kärnvärde?

Om svaret är nej hör funktionen inte hemma i MVP.

Om funktionen löser ett verkligt hinder för användaren är den ett **Need**.

Om funktionen endast förbättrar upplevelsen är den ett **Want**.

Under MVP prioriteras alltid Needs framför Wants.

---

# Valideringskriterier

Syftet med MVP är att validera produktupplevelsen.

Framgång mäts inte i antalet funktioner.

Framgång mäts i om spelaren kan genomföra ett träningspass utan att DGTC blir ett hinder.

## Produktupplevelse

MVP är lyckad när spelare upplever att:

* appen är enkel att förstå,
* det går snabbt att komma igång,
* träningen blir mer varierad,
* arbetsflödet känns naturligt,
* DGTC stödjer träningen istället för att störa den.

## Friktionsmätning

Efter varje träningspass ställs frågan:

> **Did DGTC get in the way of your training today?**

Om svaret är **Yes** får användaren identifiera orsaken och, om de vill, beskriva vad som hände.

Målet är inte att samla nöjdhetsbetyg.

Målet är att identifiera och eliminera friktion.

## Valideringsmål

MVP anses validerad när:

* spelare konsekvent kan genomföra hela träningspass,
* återkommande friktionspunkter har identifierats,
* de största friktionerna har åtgärdats,
* produktupplevelsen överensstämmer med principen:

> **The Interface Disappears.**

---

# Definition av "klar"

MVP är färdig när:

* samtliga funktioner i detta dokument fungerar stabilt,
* appen kan användas utan internetuppkoppling,
* inga kritiska fel återstår,
* produkten kan användas under ett helt träningspass utan att DGTC kommer i vägen för träningen.