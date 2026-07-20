# Data Model

**Produkt:** DGTC Platform
**Dokument:** DATA_MODEL.md
**Version:** v1.0
**Status:** Draft

---

# Syfte

Detta dokument beskriver hur DGTC:s domäninformation ska representeras och lagras.

Datamodellen ska stödja:

* offline-first,
* lokal lagring,
* redigerbara Lucky Wheels,
* Quick Challenges,
* träningsprogram,
* träningsscenarier,
* träningspass,
* försök och resultat,
* historisk integritet,
* framtida import, export och synkronisering.

Dokumentet beskriver den logiska datamodellen.

Det beskriver inte:

* val av databas,
* Flutter-paket,
* SQL-tabeller,
* exakta filformat,
* implementation av molnsynkronisering.

---

# Grundprinciper

## Lokal data är primär

I MVP är den lokala lagringen systemets primära datakälla.

Kärnfunktioner ska inte vara beroende av:

* användarkonto,
* internetuppkoppling,
* extern server,
* molnsynkronisering.

---

## Unika identifierare

Alla centrala objekt ska ha ett unikt och stabilt ID.

ID ska inte bero på:

* objektets namn,
* objektets position i en lista,
* lokal databassekvens,
* användarens språk.

Stabila ID gör det möjligt att senare stödja:

* export och import,
* synkronisering,
* delning,
* versionshantering,
* spårbarhet.

---

## Historisk integritet

Ett genomfört träningspass ska alltid beskriva vad som faktiskt användes vid träningstillfället.

Om användaren senare ändrar eller tar bort:

* ett träningsprogram,
* ett träningsscenario,
* ett Lucky Wheel,
* ett Wheel Option,

får det historiska träningspasset inte förändras.

---

## Snapshot-principen

Historiska träningspass ska lagra en ögonblicksbild, en så kallad snapshot, av den information som behövs för att förstå träningspasset.

Ett träningspass ska därför inte enbart vara beroende av aktuella versioner av redigerbart innehåll.

Exempel:

Om alternativet `Midrange` senare döps om eller tas bort ska ett äldre träningspass fortfarande visa att alternativet `Midrange` användes.

---

## Användarskapat innehåll

Användarskapade objekt ska lagras separat från förinstallerat standardinnehåll där det är praktiskt möjligt.

Det ska gå att skilja mellan:

* förinstallerat innehåll,
* användarskapat innehåll,
* framtida nedladdat innehåll,
* framtida innehåll från coach, klubb, sponsor eller community.

---

## Radering

När användaren tar bort ett redigerbart objekt ska historiska träningspass inte raderas.

Radering ska endast påverka framtida användning av objektet.

---

# Gemensamma datafält

Centrala objekt bör kunna innehålla följande gemensamma fält.

## ID

Unik identifierare.

## CreatedAt

Tidpunkt då objektet skapades.

## UpdatedAt

Tidpunkt då objektet senast ändrades.

## SourceType

Objektets ursprung.

Exempel:

* system,
* user,
* downloaded,
* coach,
* club,
* sponsor,
* community.

Endast `system` och `user` krävs i MVP.

## SchemaVersion

Version av objektets datastruktur.

Fältet möjliggör framtida datamigrering.

## IsDeleted

Anger om objektet har tagits bort logiskt men behöver finnas kvar för historik eller framtida synkronisering.

Fältet behöver inte användas för alla objekt i MVP, men modellen ska kunna stödja det.

---

# UserProfile

`UserProfile` representerar den lokala användaren eller installationen.

Inget konto krävs i MVP.

## Data

* `id`
* valfritt visningsnamn
* `createdAt`
* `updatedAt`

## Relationer

UserProfile kan äga:

* AppSettings,
* Lucky Wheels,
* Training Programs,
* Training Scenarios,
* Training Sessions.

## MVP-avgränsning

Appen ska fungera även om inget namn eller annan personlig information anges.

---

# AppSettings

`AppSettings` lagrar användarens lokala inställningar.

## Data

* `id`
* `languageCode`
* `soundEnabled`
* `createdAt`
* `updatedAt`
* `schemaVersion`

## Regler

* Endast en aktiv uppsättning appinställningar behövs i MVP.
* Ändringar ska sparas direkt.
* Tidigare giltiga värden ska behållas om en sparning misslyckas.

---

# LuckyWheel

`LuckyWheel` lagrar ett redigerbart hjul.

## Data

* `id`
* `name`
* valfri beskrivning
* `sourceType`
* `isSystemDefault`
* `createdAt`
* `updatedAt`
* `schemaVersion`

## Relationer

* Ett Lucky Wheel innehåller minst två `WheelOption`.
* Ett Lucky Wheel kan användas av flera Training Scenarios.
* Ett Lucky Wheel kan användas av flera Quick Challenges.
* Ett Lucky Wheel kan användas i flera träningspass.

## Regler

* Hjulets namn behöver inte vara unikt globalt.
* Förinstallerade hjul ska kunna återställas.
* Redigering av ett hjul får inte ändra historiska träningspass.

---

# WheelOption

`WheelOption` lagrar ett möjligt alternativ i ett Lucky Wheel.

## Data

* `id`
* `wheelId`
* `label`
* `sortOrder`
* valfri typ eller kategori
* `createdAt`
* `updatedAt`

## Regler

* `label` får inte vara tomt.
* Ett hjul ska ha minst två alternativ.
* Identiska etiketter får inte förekomma i samma hjul.
* `sortOrder` bestämmer visningsordningen men ska inte påverka slumpmässigheten.

---

# WheelSpin

`WheelSpin` representerar en genomförd snurrning av ett hjul.

Detta objekt motsvarar domänbegreppet `WheelResult`, men lagrar även sammanhanget för själva snurrningen.

## Data

* `id`
* `wheelId`
* `selectedOptionId`
* snapshot av hjulets namn
* snapshot av alternativets etikett
* `spunAt`
* valfri `trainingSessionId`
* valfri `exerciseId`

## Regler

* Resultatet ska bevaras efter snurrningen.
* Ett historiskt WheelSpin får inte ändras när hjulet redigeras.
* Ett WheelSpin ska kunna skapas utan ett aktivt träningspass vid Quick Challenge-förhandsvisning.

---

# QuickChallenge

`QuickChallenge` representerar en direkt genererad träningsutmaning.

## Data

* `id`
* `title`
* `instruction`
* `status`
* `createdAt`
* valfri `acceptedAt`
* valfri `completedAt`
* lista med relevanta WheelSpin-ID:n
* valfri `exerciseId`
* `schemaVersion`

## Status

* generated,
* accepted,
* completed.

## Regler

* Quick Challenge ska kunna genereras utan föregående konfigurering.
* Utmaningen ska kunna förstås även om ursprungshjulen senare redigeras.
* Därför ska relevant text och valda alternativ lagras som snapshot.

---

# TrainingProgram

`TrainingProgram` representerar ett strukturerat träningsupplägg.

## Data

* `id`
* `name`
* valfri `description`
* `sourceType`
* `status`
* `createdAt`
* `updatedAt`
* `schemaVersion`

## Relationer

* Ett Training Program innehåller minst ett Training Scenario.
* Ett Training Program kan användas av flera Training Sessions.

## Status

I MVP används främst:

* draft,
* saved.

## Regler

* Ett program får inte sparas utan namn.
* Ett program får inte sparas utan minst ett scenario.
* Ett borttaget program får inte påverka historiska träningspass.

---

# TrainingScenario

`TrainingScenario` representerar en verklig eller virtuell spelsituation.

## Data

* `id`
* `trainingProgramId`
* `name`
* `description`
* valfritt `trainingGoal`
* valfritt avstånd
* `sourceType`
* `status`
* `createdAt`
* `updatedAt`
* `schemaVersion`

## Relationer

Ett Training Scenario kan ha:

* flera Scenario Components,
* flera kopplade Lucky Wheels,
* en eller flera Scenario Visuals,
* flera Exercises,
* flera historiska Training Sessions.

## Regler

* Ett scenario ska kunna användas utan bild.
* Ett scenario ska kunna användas utan alla möjliga komponenttyper.
* Scenariot ska beskriva situationen, inte nödvändigtvis den korrekta lösningen.

---

# ScenarioComponent

`ScenarioComponent` beskriver en del av ett Training Scenario.

För att undvika onödig komplexitet kan flera typer av scenariokomponenter följa en gemensam struktur.

## Data

* `id`
* `scenarioId`
* `componentType`
* `label`
* valfri `description`
* valfritt strukturerat värde
* `sortOrder`

## ComponentType

Exempel:

* environment,
* obstacle,
* terrain,
* stanceConstraint,
* weatherCondition,
* surfaceCondition,
* target,
* distance,
* risk.

## Exempel

```text
componentType: obstacle
label: Mando höger
```

```text
componentType: weatherCondition
label: Hällregn
```

```text
componentType: terrain
label: Ena foten betydligt högre än den andra
```

## Modellprincip

Enskilda företeelser som mur, skogsbryn, duggregn och ojämnt underlag behöver inte vara egna datatyper i MVP.

De kan representeras som komponenter med:

* typ,
* etikett,
* beskrivning,
* eventuellt strukturerat värde.

Modellen ska senare kunna specialiseras om det finns ett tydligt behov.

---

# ScenarioWheelLink

`ScenarioWheelLink` beskriver kopplingen mellan ett Training Scenario och ett Lucky Wheel.

Ett separat kopplingsobjekt gör att:

* ett scenario kan använda flera hjul,
* ett hjul kan användas av flera scenarier,
* ordning och roll kan definieras per scenario.

## Data

* `id`
* `scenarioId`
* `wheelId`
* `sortOrder`
* valfri `role`
* valfri `isRequired`

## Exempel på role

* discType,
* throwType,
* throwLine,
* stance,
* condition,
* obstacle.

---

# ScenarioVisual

`ScenarioVisual` lagrar information om en visuell representation av ett scenario.

## Data

* `id`
* `scenarioId`
* `visualType`
* lokal filreferens eller framtida extern referens
* valfri beskrivning
* valfri prompt eller metadata
* `createdAt`
* `sourceType`

## VisualType

Exempel:

* illustration,
* photo,
* generatedImage,
* map,
* animation,
* augmentedReality.

Endast statisk lokal bild behöver stödjas initialt om visualisering inkluderas.

## Regler

* Ett scenario ska fungera utan Scenario Visual.
* Om bilden saknas ska textbeskrivningen fortfarande visas.
* Bilddata ska inte lagras direkt i träningspassets kärnpost.

---

# Exercise

`Exercise` representerar en konkret träningsuppgift.

## Data

* `id`
* `title`
* `instruction`
* valfritt `trainingGoal`
* `sourceType`
* valfri `quickChallengeId`
* valfri `trainingScenarioId`
* `createdAt`
* `schemaVersion`

## Snapshot-data

När en Exercise läggs till i ett träningspass ska följande kunna bevaras:

* titel,
* instruktion,
* träningsmål,
* scenarioinformation,
* relevanta hjulresultat.

## Regler

* En Exercise ska kunna förstås fristående i ett historiskt träningspass.
* Exercise ska inte vara beroende av att ursprungsprogrammet fortfarande finns kvar.

---

# TrainingSession

`TrainingSession` representerar ett sammanhållet träningspass.

## Data

* `id`
* `status`
* `createdAt`
* `startedAt`
* valfri `completedAt`
* valfritt namn
* valfri `trainingProgramId`
* valfri `trainingScenarioId`
* valfri `quickChallengeId`
* snapshot av programnamn
* snapshot av scenarionamn
* snapshot av relevant scenariobeskrivning
* `schemaVersion`

## Relationer

Ett Training Session innehåller:

* en eller flera Session Exercises,
* noll eller flera Attempts,
* noll eller flera Results.

## Status

* created,
* active,
* completed.

## Regler

* Endast ett Training Session får vara aktivt åt gången.
* Ett aktivt pass ska kunna återställas efter oväntad avstängning.
* Ett avslutat pass är skrivskyddat i MVP.
* Ett pass kan startas från Quick Challenge eller strukturerad träning.

---

# SessionExercise

`SessionExercise` representerar den version av en Exercise som faktiskt användes under ett visst träningspass.

Detta objekt bevarar historisk integritet.

## Data

* `id`
* `trainingSessionId`
* valfri `sourceExerciseId`
* `titleSnapshot`
* `instructionSnapshot`
* valfritt `trainingGoalSnapshot`
* valfri `scenarioSnapshot`
* valfri lista med Wheel Spin-ID:n
* `sortOrder`
* `createdAt`
* valfri `completedAt`

## Regler

* Ändringar i ursprunglig Exercise eller Scenario får inte ändra Session Exercise.
* Ett Training Session kan innehålla flera Session Exercises.
* Session Exercise är skrivskyddad efter avslutat träningspass.

---

# Attempt

`Attempt` representerar ett enskilt genomförande av en Session Exercise.

## Data

* `id`
* `trainingSessionId`
* `sessionExerciseId`
* `status`
* `startedAt`
* valfri `finishedAt`
* valfritt discval
* valfri kasttyp
* valfri kastlinje
* valfri strategi
* valfri risknivå
* valfri kommentar
* `schemaVersion`

## Regler

* Ett Attempt tillhör exakt ett Training Session.
* Ett Attempt tillhör exakt en Session Exercise.
* Discgolfarens val ska vara frivilliga i MVP om snabb registrering annars försvåras.
* Ett avslutat Attempt ska kunna ha ett Result.

---

# Result

`Result` representerar utfallet av ett Attempt.

## Data

* `id`
* `attemptId`
* `resultType`
* valfritt numeriskt värde
* valfri text
* valfri enhet
* `recordedAt`
* `schemaVersion`

## Exempel på ResultType

* success,
* partialSuccess,
* miss,
* withinTarget,
* outsideTarget,
* ob,
* hazard,
* distanceFromTarget,
* custom.

## Modellprincip

Resultatmodellen ska vara enkel i MVP men utbyggbar.

En kombination av:

* resultattyp,
* valfritt värde,
* valfri enhet,
* valfri text

ger flexibilitet utan att alla framtida resultattyper behöver definieras nu.

## Regler

* Ett Result tillhör exakt ett Attempt.
* Resultat ska sparas omedelbart.
* Ett Result är skrivskyddat efter avslutat träningspass i MVP.

---

# SessionSummary

`SessionSummary` kan beräknas från ett avslutat Training Session och behöver inte nödvändigtvis lagras som ett separat objekt.

## Beräknad information

* starttid,
* sluttid,
* total längd,
* antal genomförda övningar,
* antal Attempts,
* antal registrerade Results.

## Modellprincip

Information som säkert kan beräknas från kärndata bör normalt inte dupliceras.

En lagrad sammanfattning kan senare införas om det krävs för:

* prestanda,
* export,
* synkronisering,
* avancerad analys.

---

# Relationer

## Övergripande relationer

```text
UserProfile
 ├── AppSettings
 ├── LuckyWheel
 │    └── WheelOption
 ├── TrainingProgram
 │    └── TrainingScenario
 │         ├── ScenarioComponent
 │         ├── ScenarioVisual
 │         └── ScenarioWheelLink ── LuckyWheel
 └── TrainingSession
      ├── SessionExercise
      │    └── Attempt
      │         └── Result
      └── WheelSpin
```

---

# Quick Challenge-flöde

```text
LuckyWheel
   │
   ▼
WheelSpin
   │
   ▼
QuickChallenge
   │
   ▼
Exercise
   │
   ▼
TrainingSession
   │
   ▼
SessionExercise
   │
   ▼
Attempt
   │
   ▼
Result
```

---

# Strukturerat träningsflöde

```text
TrainingProgram
   │
   ▼
TrainingScenario
   │
   ├── ScenarioComponent
   ├── ScenarioVisual
   └── LuckyWheel
           │
           ▼
       WheelSpin
           │
           ▼
        Exercise
           │
           ▼
    TrainingSession
           │
           ▼
    SessionExercise
           │
           ▼
        Attempt
           │
           ▼
         Result
```

---

# Sparstrategi

## Omedelbar sparning

Följande ska sparas direkt efter ändring:

* AppSettings,
* Lucky Wheels,
* Wheel Options,
* Training Programs,
* Training Scenarios,
* Scenario Components,
* Results.

---

## Aktivt träningspass

Ett aktivt träningspass ska sparas kontinuerligt.

Minst följande händelser ska utlösa sparning:

* träningspass startas,
* Exercise läggs till,
* Wheel Spin genomförs,
* Attempt startas,
* Attempt avslutas,
* Result registreras,
* träningspass avslutas.

---

## Atomära sparoperationer

En operation som ändrar flera relaterade objekt ska antingen:

* sparas helt,
* eller inte sparas alls.

Exempel:

När ett Training Program och dess scenarier sparas får inte endast delar av strukturen bli kvar om ett fel uppstår.

---

# Radering och återställning

## Lucky Wheels

När ett standardhjul återställs ska det aktuella redigerade innehållet ersättas av standardalternativen.

Historiska Wheel Spins och Training Sessions påverkas inte.

---

## Training Programs och Scenarios

När användaren tar bort ett program eller scenario ska det tas bort från framtida val.

Historiska träningspass ska fortsätta visa sparade snapshots.

---

## Training Sessions

Radering av historiska träningspass ingår inte i MVP-kraven om den inte definieras separat.

Arkitekturen ska dock senare kunna stödja användarstyrd radering och full dataexport.

---

# Datavalidering

Följande ska valideras innan sparning:

* obligatoriska fält finns,
* textfält inte endast innehåller blanksteg,
* Lucky Wheels har minst två alternativ,
* Training Programs har minst ett scenario,
* refererade objekt finns eller har giltiga snapshots,
* tillståndsövergångar följer State Model,
* avslutade träningspass inte ändras.

---

# Felhantering

Om lokal data inte kan läsas ska systemet:

1. försöka läsa en tidigare giltig version eller backup om sådan finns,
2. bevara opåverkad data,
3. använda standardinnehåll där det är möjligt,
4. informera användaren utan att appen kraschar.

Om en sparning misslyckas ska systemet:

* behålla den senast giltiga versionen,
* informera användaren,
* erbjuda eller automatiskt genomföra ett nytt försök,
* aldrig markera operationen som slutförd innan den faktiskt är sparad.

---

# Datamigrering

Varje lagrad huvudmodell ska kunna versionsmärkas.

När datamodellen förändras ska systemet kunna:

* identifiera gammal data,
* migrera den till aktuell struktur,
* bevara användarens information,
* avbryta säkert om migreringen misslyckas.

Datamigrering ska testas innan nya appversioner publiceras.

---

# Export och framtida synkronisering

MVP behöver inte implementera molnsynkronisering, men datamodellen ska förberedas genom:

* stabila unika ID:n,
* tidsstämplar,
* ursprungsinformation,
* schemaversioner,
* tydligt ägarskap,
* separerade historiska snapshots.

Framtida export ska kunna omfatta:

* inställningar,
* egna hjul,
* egna träningsprogram,
* egna scenarier,
* träningspass,
* försök,
* resultat.

---

# Integritet

DGTC ska endast lagra data som har ett tydligt produktvärde.

MVP ska inte kräva lagring av:

* fullständigt namn,
* e-postadress,
* exakt plats,
* kontaktlista,
* personlig profilinformation.

GPS- eller platsdata får endast införas när en definierad funktion kräver det och användaren aktivt godkänner användningen.

---

# Medvetna avgränsningar

Följande definieras inte tekniskt i denna version:

* databasprodukt,
* SQL-schema,
* krypteringsteknik,
* molndatabas,
* konfliktlösning vid synkronisering,
* filsystemslayout,
* bildkomprimering,
* backupformat,
* exportformat.

Dessa beslut fattas i samband med den tekniska implementationen och dokumenteras separat.

---

# Sammanfattning

DGTC:s datamodell bygger på fyra huvudprinciper:

1. **Offline först:** Lokal data är alltid tillgänglig.
2. **Historisk integritet:** Genomförd träning förändras aldrig i efterhand.
3. **Stabila relationer:** Alla centrala objekt har unika identifierare.
4. **Utbyggbarhet:** Data ska senare kunna exporteras, delas och synkroniseras.

Redigerbart innehåll beskriver hur användaren vill träna framöver.

Snapshots beskriver vad som faktiskt användes under ett genomfört träningspass.

Den skillnaden är avgörande för att DGTC ska kunna växa utan att användarens träningshistorik förlorar sin betydelse.
