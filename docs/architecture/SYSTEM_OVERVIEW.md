# System Overview

**Plattform:** The Training Companion
**Första produkt:** The Disc Golf Training Companion
**Dokument:** SYSTEM_OVERVIEW.md
**Version:** v1.0
**Status:** Draft

---

# Syfte

Detta dokument ger en samlad överblick över The Training Companion och dess första produkt, The Disc Golf Training Companion.

System Overview ska göra det möjligt att snabbt förstå:

* vilket problem produkten löser,
* hur användaren möter produkten,
* vilka delar systemet består av,
* hur delarna samverkar,
* vad som ingår i kärnan,
* hur systemet kan växa över tid.

Dokumentet är en karta över systemet.

Detaljer finns i övriga produkt-, krav- och arkitekturdokument.

---

# Plattform och produkt

## The Training Companion

The Training Companion är en generell plattform för momentbaserad träning, lärande, beslutsfattande och prestationsutveckling.

Plattformen är främst avsedd för tekniska individuella idrotter och idrottsmoment där upprepad, varierad och medveten träning skapar utveckling.

Plattformen ska kunna anpassas till flera idrotter utan att kärnarkitekturen behöver byggas om.

---

## The Disc Golf Training Companion

The Disc Golf Training Companion är plattformens första produkt.

Produkten använder discgolf för att utveckla och validera plattformens kärnfunktioner:

* snabb och lekfull träning,
* slumpmässiga utmaningar,
* redigerbara Lucky Wheels,
* träningsprogram,
* realistiska träningsscenarier,
* dokumentation av försök och resultat,
* framtida beslutsstöd.

---

# Produktlöfte

Produkten ska ge omedelbart värde från första användningen och erbjuda större djup när användaren är redo.

Den grundläggande upplevelsen är:

> Öppna appen, tryck på en knapp och börja träna.

Den långsiktiga upplevelsen är:

> En naturlig träningspartner som hjälper användaren att träna mer varierat, medvetet och utvecklande.

---

# Grundprincip

The Training Companion ska kombinera två egenskaper:

## Omedelbar enkelhet

Användaren ska snabbt få en rolig och genomförbar träningsuppgift.

## Progressivt djup

Användaren ska stegvis kunna upptäcka:

* redigerbara hjul,
* egna träningsupplägg,
* färdiga träningsprogram,
* realistiska scenarier,
* dokumenterade resultat,
* reflektion,
* framtida analys och beslutsstöd.

> Djupet får aldrig stå i vägen för det första kastet.

---

# Systemets två huvudvägar

## Quick Challenge

Quick Challenge är produktens primära ingång.

```text
Öppna appen
      │
      ▼
Tryck på Quick Challenge
      │
      ▼
Lucky Wheels genererar variation
      │
      ▼
En tydlig träningsuppgift visas
      │
      ▼
Användaren börjar träna
```

Quick Challenge ska kunna användas:

* utan konto,
* utan internet,
* utan konfigurering,
* utan resultatregistrering,
* utan att användaren först väljer ett träningsprogram.

Detta är produktens inkastare.

---

## Strukturerad träning

Strukturerad träning är den fördjupade vägen.

```text
Välj Training Program
          │
          ▼
Välj Training Scenario
          │
          ▼
Studera situation och träningsmål
          │
          ▼
Använd Lucky Wheels för variation
          │
          ▼
Genomför Exercise
          │
          ▼
Registrera Attempt och Result
          │
          ▼
Visa Session Summary
```

Den strukturerade träningen hjälper användaren att utveckla:

* teknik,
* precision,
* kastvariation,
* situationsförståelse,
* beslutsfattande,
* riskbedömning,
* medveten träning.

---

# Systemkarta

```text
                     THE TRAINING COMPANION
                               │
              ┌────────────────┴────────────────┐
              │                                 │
              ▼                                 ▼
       QUICK CHALLENGE                  STRUCTURED TRAINING
              │                                 │
              │                        Training Program
              │                                 │
              │                        Training Scenario
              │                                 │
              └──────────────┬──────────────────┘
                             │
                             ▼
                        LUCKY WHEELS
                             │
                      Wheel Options
                             │
                      Wheel Results
                             │
                             ▼
                          EXERCISE
                             │
                             ▼
                     TRAINING SESSION
                             │
                             ▼
                          ATTEMPT
                             │
                             ▼
                           RESULT
                             │
                             ▼
                     SESSION SUMMARY
                             │
                             ▼
                       LOCAL STORAGE
```

---

# Kärnsystem

## Quick Challenge

Ger användaren en direkt och lättillgänglig träningsuppgift.

Quick Challenge prioriterar:

* snabbhet,
* enkelhet,
* variation,
* glädje,
* låg starttröskel.

---

## Lucky Wheels

Lucky Wheels är systemets variationsmotor.

Hjulen:

* väljer mellan definierade alternativ,
* kan användas separat eller tillsammans,
* kan redigeras av användaren,
* kan kopplas till Quick Challenges,
* kan kopplas till Training Scenarios,
* kan återanvändas i flera sammanhang.

Lucky Wheels är inte själva träningsuppgiften.

De bidrar med komponenter som formar träningsuppgiften.

---

## Training Programs

Training Programs är strukturerade träningsupplägg med ett gemensamt mål.

Exempel:

* precision med putter och midrange,
* forehand från tekniska lägen,
* riskhantering vid inspel,
* puttning från begränsade positioner.

Ett Training Program innehåller ett eller flera Training Scenarios.

---

## Training Scenarios

Training Scenarios beskriver verkliga eller virtuella spelsituationer.

Scenariot kan definiera:

* miljö,
* hinder,
* terräng,
* stans,
* väder,
* underlag,
* avstånd,
* mål,
* risk.

Discgolfaren väljer själv:

* disc,
* kasttyp,
* kastlinje,
* strategi,
* risknivå.

Scenariot beskriver situationen.

Discgolfaren löser den.

---

## Scenario Visuals

Training Scenarios ska kunna kompletteras med visuellt stöd.

Visualiseringen kan senare vara:

* illustration,
* fotografi,
* genererad bild,
* kartvy,
* animation,
* förstärkt verklighet.

Det ska exempelvis vara möjligt att stå på en öppen, plan yta och visuellt föreställa sig:

* ett skogsbryn,
* en korg snett åt höger,
* en låg gren,
* OB bakom korgen,
* en säker landningszon.

Scenario Visual är valfritt.

Textbeskrivningen ska alltid kunna bära scenariot på egen hand.

---

## Exercise

Exercise är den konkreta uppgift som användaren ska genomföra.

En Exercise kan skapas från:

* en Quick Challenge,
* ett Training Scenario,
* ett Training Program,
* en kombination av flera Wheel Results.

Exempel:

> Kasta en hyzer med putter från cirka 50 meter och försök landa inom bekvämt puttavstånd.

eller:

> Du befinner dig i kanten av en skogsdunge. Korgen ligger 50 meter bort, snett åt höger. Välj disc, kast och strategi.

---

## Training Session

Training Session samlar ett eller flera träningsmoment i ett sammanhållet pass.

Ett träningspass kan innehålla:

* Quick Challenges,
* Exercises,
* Training Scenarios,
* Attempts,
* Results.

Endast ett träningspass får vara aktivt åt gången.

Ett aktivt träningspass ska kunna återställas efter att appen har stängts.

---

## Attempt

Attempt beskriver ett enskilt genomförande av en Exercise.

Ett Attempt kan dokumentera:

* vald disc,
* vald kasttyp,
* vald kastlinje,
* vald strategi,
* vald risknivå,
* kommentar.

Registreringen ska hållas tillräckligt enkel för att inte störa träningen.

---

## Result

Result beskriver utfallet av ett Attempt.

Resultatet kan exempelvis beskriva:

* lyckat,
* delvis lyckat,
* misslyckat,
* inom målområdet,
* utanför målområdet,
* OB,
* hazard,
* avstånd från målet.

MVP ska använda en enkel resultatmodell som kan byggas ut senare.

---

## Session Summary

Session Summary avslutar träningspasset och visar vad användaren har genomfört.

Sammanfattningen kan visa:

* träningspassets längd,
* antal övningar,
* antal försök,
* antal registrerade resultat,
* använt program,
* använt scenario.

MVP ska beskriva träningen.

Den ska inte analysera eller värdera prestationen.

---

# Progressive Engagement

The Training Companion ska stegvis introducera användaren till större produktvärde.

```text
Upptäck
Quick Challenge känns enkelt och roligt.
        │
        ▼
Utforska
Användaren provar fler utmaningar och Lucky Wheels.
        │
        ▼
Anpassa
Användaren redigerar eller skapar egna hjul.
        │
        ▼
Träna med mål
Användaren väljer Training Programs.
        │
        ▼
Lös situationer
Användaren tränar med Training Scenarios.
        │
        ▼
Reflektera
Användaren dokumenterar försök och resultat.
        │
        ▼
Utvecklas
Framtida analys och beslutsstöd hjälper användaren vidare.
```

Varje nivå ska ge ett tydligt eget värde.

Ingen nivå ska vara ett obligatoriskt hinder till nästa träningspass.

---

# Systemlager

Systemet delas logiskt in i fyra lager.

## Presentation

Visar information och tar emot användarens handlingar.

## Application

Samordnar användarflöden och use cases.

## Domain

Innehåller kärnobjekt, regler och träningslogik.

## Infrastructure

Hanterar lokal lagring, filer och framtida externa tjänster.

Beroenden ska riktas mot domänens kärna.

---

# Offline First

Kärnupplevelsen ska alltid fungera lokalt.

Följande ska fungera utan internet:

* Quick Challenge,
* Lucky Wheels,
* redigering av hjul,
* lokala Training Programs,
* lokala Training Scenarios,
* Training Sessions,
* Attempts,
* Results,
* Settings.

Internet ska senare användas för exempelvis:

* nedladdning av innehåll,
* delning,
* molnsynkronisering,
* community,
* AI-genererade bilder,
* coach- och klubbtjänster.

---

# Lokal data och historik

Lokal data är den primära datakällan i MVP.

Systemet ska skilja mellan:

## Redigerbart innehåll

Beskriver hur användaren vill träna framöver.

Exempel:

* Lucky Wheels,
* Wheel Options,
* Training Programs,
* Training Scenarios.

## Historiska snapshots

Beskriver vad som faktiskt användes under ett genomfört träningspass.

Historiska pass får inte förändras när redigerbart innehåll senare uppdateras eller tas bort.

---

# Framtida ekosystem

Kärnarkitekturen ska senare kunna utökas med följande områden:

```text
                         CORE PLATFORM
                               │
       ┌───────────────┬───────┼────────┬───────────────┐
       ▼               ▼       ▼        ▼               ▼
   Analytics          AIE    Coach    Clubs         Community
       │               │       │        │               │
       └───────────────┴───────┼────────┴───────────────┘
                               ▼
                         Cloud Services
                               │
             ┌─────────────────┼──────────────────┐
             ▼                 ▼                  ▼
        Synchronization     Content Library   External Devices
                                                and Sensors
```

Framtida funktioner kan omfatta:

* Actionable Insights Engine,
* personlig analys,
* coachverktyg,
* klubbar,
* sociala utmaningar,
* topplistor,
* delade program och scenarier,
* Veckans scenario,
* Månadens scenario,
* sponsorinnehåll,
* AI-genererade scenarier,
* AI-genererade visualiseringar,
* smartklockor,
* GPS och distansmätning,
* dataexport.

---

# Plattform för flera idrotter

The Training Companion ska kunna användas inom fler tekniska idrotter och träningsmoment.

Nomenklaturen är:

> **The [Sport] Training Companion**

Exempel:

* The Disc Golf Training Companion
* The Golf Training Companion
* The Basketball Training Companion
* The MTB Training Companion
* The Martial Arts Training Companion

Discgolfprodukten utvecklas först.

Stöd för andra idrotter ingår inte i MVP.

Plattformsambitionen får inte göra den första produkten mer komplicerad.

---

# Roller och ansvar

## Product Owner

Product Owner ansvarar för:

* produktidéer,
* produktvision,
* prioriteringar,
* användarbehov,
* domänkunskap,
* elitidrott,
* fysisk och mental träning,
* discgolf,
* basket,
* Wing Tsun,
* Escrima,
* BJJ,
* mountainbike,
* affärsutveckling,
* ledarskap,
* försäljning,
* marknadsföring,
* slutliga produktbeslut.

---

## Projektets väktare

Projektets väktare ansvarar för:

* spårbarhet,
* kravstruktur,
* dokumentkonsistens,
* arkitektur,
* beroenden,
* versionshantering,
* Decision Log,
* RFC-process,
* genomförandeordning,
* teknisk risk,
* fokus och avgränsning.

Projektets väktare ska vid behov rekommendera:

> Bra idé. Inte nu.

---

# Gemensam arbetsprincip

> **Produkten formas av domänkunskap och användarbehov. Arkitekturen omsätter dessa beslut till ett hållbart system.**

Product Owner ansvarar för att rätt produkt byggs.

Projektets väktare ansvarar för att produkten byggs rätt.

---

# Medvetna avgränsningar

System Overview definierar inte:

* exakt grafisk design,
* databasprodukt,
* Flutter-paket,
* API-kontrakt,
* klassdiagram,
* detaljerad molnarkitektur,
* AI-modeller,
* prissättning,
* varumärkesplattform,
* lanseringsstrategi.

Dessa områden dokumenteras separat när de blir aktuella.

---

# Sammanfattning

The Training Companion är en plattform för att göra momentbaserad träning enklare att börja med, roligare att genomföra och mer utvecklande över tid.

The Disc Golf Training Companion är den första produkten.

Quick Challenge skapar omedelbar glädje och nytta.

Lucky Wheels skapar variation.

Training Programs skapar riktning.

Training Scenarios skapar realism och beslutsträning.

Exercises beskriver uppgiften.

Attempts dokumenterar genomförandet.

Results dokumenterar utfallet.

Progressive Engagement hjälper användaren att naturligt gå från spontan träning till medveten prestationsutveckling.

Systemet ska vara enkelt vid första mötet och kraftfullt när användaren är redo.
