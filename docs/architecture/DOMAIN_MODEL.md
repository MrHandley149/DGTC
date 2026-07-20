# Domain Model

**Produkt:** DGTC Platform
**Dokument:** DOMAIN_MODEL.md
**Version:** v1.0
**Status:** Draft

---

# Syfte

Detta dokument beskriver de centrala objekten i DGTC:s domän och relationerna mellan dem.

Domänmodellen ska skapa ett gemensamt språk för:

* produktutveckling,
* design,
* arkitektur,
* implementation,
* testning,
* framtida analys och beslutsstöd.

Modellen beskriver vad som existerar i DGTC-världen och vilket ansvar varje objekt har.

Dokumentet beskriver inte:

* databastabeller,
* tekniska ramverk,
* användargränssnitt,
* Flutter-klasser,
* exakta lagringsformat.

---

# Grundprinciper

## Domänen styr implementationen

Tekniska modeller ska byggas utifrån domänen.

Domänmodellen ska inte formas efter en viss skärm, databas eller teknisk begränsning.

---

## Enkelt först, större djup senare

DGTC ska erbjuda omedelbart värde.

Användaren ska kunna:

1. öppna appen,
2. trycka på en knapp,
3. få en utmaning,
4. börja träna.

Mer avancerade träningsprogram och scenarier ska finnas tillgängliga när användaren vill fördjupa träningen.

> Djupet får aldrig stå i vägen för det första kastet.

---

## Scenariot beskriver situationen

Ett scenario ska beskriva förutsättningarna för en träningssituation.

Discgolfaren väljer själv:

* disc,
* kasttyp,
* kastlinje,
* strategi,
* risknivå.

DGTC ska stödja beslutet och dokumentera utfallet, inte alltid ange den rätta lösningen.

---

# Domänens huvudområden

DGTC:s kärndomän delas in i följande områden:

1. Utmaningar och övningar
2. Lucky Wheels
3. Träningsprogram och scenarier
4. Träningspass
5. Försök och resultat
6. Scenariokomponenter
7. Discgolfarens val
8. Inställningar och lokalt innehåll

---

# Kärnobjekt

## User

`User` representerar den person som använder DGTC.

I MVP krävs inget användarkonto. User representerar därför den lokala användaren på enheten.

### Ansvar

* Äga lokal användardata.
* Ha personliga inställningar.
* Skapa egna hjul, program och scenarier.
* Genomföra träningspass.
* Registrera försök och resultat.

### Viktig princip

Användaren äger sin data.

---

## QuickChallenge

`QuickChallenge` representerar en träningsuppgift som kan genereras och startas direkt utan att användaren först behöver välja eller skapa ett träningsprogram.

Quick Challenge är DGTC:s enklaste ingång.

### Ansvar

* Ge omedelbar träningsnytta.
* Skapa variation genom Lucky Wheels.
* Presentera en tydlig och direkt genomförbar uppgift.
* Kunna startas med mycket få användarsteg.

### Exempel

* Kasta en hyzer med putter.
* Genomför ett forehandkast med midrange.
* Träna precision från 40–50 meter.

### Relationer

* Genereras av ett eller flera `LuckyWheel`.
* Skapar eller innehåller en `Exercise`.
* Kan genomföras inom en `TrainingSession`.

---

## TrainingProgram

`TrainingProgram` representerar ett strukturerat träningsupplägg med ett gemensamt mål.

### Exempel

* Precision på 50 meter.
* Hyzer med putter och midrange.
* Forehand från skogskant.
* Riskhantering vid inspel.
* Puttning från ojämna lägen.

### Ansvar

* Beskriva programmets träningsmål.
* Samla ett eller flera träningsscenarier.
* Kunna väljas, skapas, redigeras och återanvändas.
* Fungera som startpunkt för strukturerad träning.

### Grundläggande information

Ett träningsprogram ska minst ha:

* unikt ID,
* namn,
* valfri beskrivning,
* ett eller flera scenarier,
* information om programmets ursprung.

### Ursprung

Ett träningsprogram kan vara:

* förinstallerat,
* skapat av användaren,
* framtida nedladdat innehåll,
* framtida innehåll från coach, klubb eller sponsor.

### Relationer

* Innehåller ett eller flera `TrainingScenario`.
* Kan användas av flera `TrainingSession`.
* Ska inte förändra historiska träningspass när programmet redigeras.

---

## TrainingScenario

`TrainingScenario` representerar en verklig eller virtuell spelsituation som discgolfaren ska lösa.

Scenariot beskriver situationen, men behöver inte ange lösningen.

### Exempel

**Skogskanten**

Discgolfaren befinner sig i kanten av en skogsdunge. Korgen ligger cirka 50 meter bort, snett åt höger.

**OB bakom korgen**

Discgolfaren befinner sig på fairway cirka 30 meter från korgen. Till vänster och bakom korgen finns OB.

**Ojämnt underlag**

Discgolfaren står med ena foten betydligt högre än den andra och ska genomföra ett inspel.

### Ansvar

* Beskriva träningssituationen.
* Definiera mål och förutsättningar.
* Kombinera relevanta scenariokomponenter.
* Kunna kopplas till Lucky Wheels.
* Kunna ha en visuell representation.
* Kunna användas för flera träningspass.

### Grundläggande information

Ett scenario ska kunna innehålla:

* unikt ID,
* namn,
* beskrivning,
* träningsmål,
* avstånd,
* mål,
* miljö,
* hinder,
* terräng,
* stansbegränsningar,
* väderförhållanden,
* underlagsförhållanden,
* risker,
* kopplade Lucky Wheels,
* valfri visualisering.

### Relationer

* Tillhör ett `TrainingProgram`.
* Innehåller eller refererar till `ScenarioComponent`.
* Kan använda ett eller flera `LuckyWheel`.
* Kan skapa en eller flera `Exercise`.
* Kan användas inom flera `TrainingSession`.

---

## ScenarioVisual

`ScenarioVisual` representerar en visuell presentation av ett träningsscenario.

Visualiseringen hjälper discgolfaren att föreställa sig situationen även när träningen genomförs på en enkel eller öppen plats.

### Möjliga format

* statisk illustration,
* fotografi,
* genererad bild,
* kartvy,
* framtida animation,
* framtida AR-representation.

### Ansvar

* Visualisera scenariots miljö, hinder och mål.
* Förstärka förståelsen av träningsuppgiften.
* Kunna vara valfri utan att scenariot slutar fungera.

### Viktig princip

Ett scenario ska kunna användas utan en bild.

Visualisering är ett stöd, inte ett krav för kärnfunktionaliteten.

---

## LuckyWheel

`LuckyWheel` representerar en mekanism som gör ett slumpmässigt val bland ett antal alternativ.

Lucky Wheel skapar variation, men är inte själva träningsuppgiften.

### Ansvar

* Innehålla två eller flera alternativ.
* Välja ett alternativ på ett rättvist sätt.
* Kunna låsas eller snurras.
* Kunna redigeras av användaren.
* Kunna återanvändas i flera program och scenarier.
* Kunna återställas till standardinnehåll.

### Exempel på hjul

* disctyp,
* kasttyp,
* kastlinje,
* avstånd,
* hinder,
* miljö,
* stans,
* väderförhållande.

### Relationer

* Innehåller flera `WheelOption`.
* Producerar ett `WheelResult`.
* Kan användas av `QuickChallenge`.
* Kan kopplas till `TrainingScenario`.

---

## WheelOption

`WheelOption` representerar ett möjligt utfall i ett Lucky Wheel.

### Exempel

* Putter
* Midrange
* Forehand
* Hyzer
* Stå på ett knä
* Mando höger
* Duggregn

### Ansvar

* Ha ett tydligt namn eller värde.
* Tillhöra ett Lucky Wheel.
* Kunna skapas, redigeras, tas bort och sorteras.
* Kunna användas för att bygga en övning eller ett scenario.

### Affärsregler

* Ett alternativ får inte vara tomt.
* Identiska alternativ ska inte förekomma i samma hjul.
* Ett hjul ska alltid ha minst två alternativ.

---

## WheelResult

`WheelResult` representerar det alternativ som valdes när ett Lucky Wheel snurrades.

### Ansvar

* Referera till det valda alternativet.
* Dokumentera när valet gjordes.
* Bevara resultatet efter avslutad snurrning.
* Kunna användas för att skapa en träningsuppgift.

### Relationer

* Skapas av ett `LuckyWheel`.
* Refererar till en `WheelOption`.
* Kan användas som en del av en `Exercise`.

---

## Exercise

`Exercise` representerar den konkreta träningsuppgift som discgolfaren ska genomföra.

Övningen kan vara:

* direkt genererad av Lucky Wheels,
* skapad från ett träningsscenario,
* definierad i ett träningsprogram.

### Exempel

* Kasta en hyzer med putter från cirka 50 meter och försök landa inom bekvämt puttavstånd.
* Lös situationen vid skogskanten med valfri disc och kasttyp.
* Putta från ett knä på ojämnt underlag.

### Ansvar

* Beskriva vad som ska genomföras.
* Referera till relevant scenario och hjulresultat.
* Definiera ett träningsmål.
* Kunna genomföras en eller flera gånger.
* Kunna kopplas till registrerade försök.

### Relationer

* Kan skapas av `QuickChallenge`.
* Kan skapas från ett `TrainingScenario`.
* Kan ingå i en `TrainingSession`.
* Har ett eller flera `Attempt`.

---

## TrainingSession

`TrainingSession` representerar ett sammanhållet träningspass.

### Ansvar

* Registrera start- och sluttid.
* Samla genomförda övningar.
* Samla försök och resultat.
* Bevara vilket program och scenario som användes.
* Kunna återställas efter en oväntad avstängning.
* Skapa underlag för en sammanfattning.

### Tillstånd

Ett träningspass kan vara:

* skapat,
* aktivt,
* avslutat.

De exakta tillstånden definieras i `STATE_MODEL.md`.

### Relationer

Ett träningspass kan startas från:

* en `QuickChallenge`,
* ett `TrainingProgram`,
* ett `TrainingScenario`.

Ett träningspass innehåller:

* en eller flera `Exercise`,
* noll eller flera `Attempt`,
* noll eller flera `Result`.

---

## Attempt

`Attempt` representerar ett enskilt genomförande av en övning.

Ett försök beskriver vad discgolfaren valde och genomförde.

### Ansvar

* Tillhöra exakt en övning.
* Tillhöra exakt ett träningspass.
* Registrera tidpunkten för försöket.
* Dokumentera discgolfarens val.
* Kopplas till ett resultat.

### Möjliga val

Ett försök kan dokumentera:

* vald disc,
* vald kasttyp,
* vald kastlinje,
* vald strategi,
* vald risknivå,
* valfri kommentar.

Alla dessa uppgifter behöver inte vara obligatoriska i MVP.

---

## Result

`Result` representerar utfallet av ett försök.

### Ansvar

* Beskriva vad som hände.
* Tillhöra ett specifikt försök.
* Kunna registreras snabbt.
* Kunna användas i sammanfattningar.
* Kunna stödja framtida statistik och beslutsstöd.

### Möjliga resultat

* lyckat,
* delvis lyckat,
* misslyckat,
* inom målområde,
* utanför målområde,
* OB,
* hazard,
* nära korg,
* antal lyckade kast,
* avstånd från mål.

Den exakta resultatmodellen definieras senare och ska hållas enkel i MVP.

### Viktig princip

`Attempt` beskriver vad discgolfaren gjorde.

`Result` beskriver vad utfallet blev.

---

## SessionSummary

`SessionSummary` representerar en skrivskyddad sammanfattning av ett avslutat träningspass.

### Ansvar

* Visa starttid och sluttid.
* Visa träningspassets längd.
* Visa antal övningar.
* Visa antal registrerade försök eller resultat.
* Bekräfta att träningspasset har sparats.

### Viktig avgränsning

Session Summary beskriver träningspasset.

Den analyserar eller värderar inte prestationen i MVP.

---

## AppSettings

`AppSettings` representerar användarens lokala inställningar.

### Ansvar

* Spara valt språk.
* Spara ljudinställning.
* Hantera framtida appinställningar.
* Fungera helt offline.

### Relationer

* Tillhör den lokala användaren eller installationen.
* Är oberoende av enskilda träningspass.

---

# Scenariokomponenter

`ScenarioComponent` är ett samlingsbegrepp för faktorer som beskriver en träningssituation.

Scenariokomponenter kan kombineras för att skapa många olika situationer utan att varje kombination behöver definieras som en helt separat objekttyp.

---

## Environment

`Environment` beskriver den övergripande miljön.

### Exempel

* fairway,
* skog,
* skogsbryn,
* dunge,
* öppet fält,
* högt gräs,
* vattennära område.

---

## Obstacle

`Obstacle` beskriver ett hinder eller en regelbegränsning.

### Exempel

* mur som kräver en hög kastlinje,
* låg gren,
* trång lucka,
* inne i skogen,
* Mando höger,
* Mando vänster,
* OB,
* hazard,
* å,
* bäck,
* dunge,
* buske.

---

## Terrain

`Terrain` beskriver markens form och lutning.

### Exempel

* plan mark,
* uppförsbacke,
* nedförsbacke,
* sidolutning,
* ojämnt underlag,
* ena foten högre än den andra.

---

## StanceConstraint

`StanceConstraint` beskriver hur discgolfaren kan eller ska placera kroppen.

### Exempel

* stå på ett knä vid inspel,
* stå på ett knä vid puttning,
* begränsad ansats,
* stillastående kast,
* ena foten högre än den andra,
* dåligt fotfäste.

---

## WeatherCondition

`WeatherCondition` beskriver väderförhållanden som påverkar träningssituationen.

### Exempel

* vindstilla,
* motvind,
* medvind,
* sidvind,
* duggregn,
* regnskurar,
* hällregn,
* snö,
* temperatur.

---

## SurfaceCondition

`SurfaceCondition` beskriver underlagets skick.

### Exempel

* torrt,
* vått,
* lerigt,
* halt,
* isigt,
* snötäckt,
* stenigt,
* rötter,
* grus,
* högt gräs.

---

## Target

`Target` beskriver vart discgolfaren försöker placera discen eller avsluta uppgiften.

### Exempel

* korg,
* landningszon,
* målområde,
* Circle 1,
* Circle 2,
* bekvämt puttavstånd.

---

## Distance

`Distance` beskriver avståndet till målet eller den avsedda landningszonen.

Avstånd kan anges som:

* exakt värde,
* ungefärligt värde,
* intervall,
* kategori.

### Exempel

* 30 meter,
* cirka 50 meter,
* 40–60 meter,
* kort inspel.

---

## Risk

`Risk` beskriver möjliga negativa konsekvenser eller riskområden i situationen.

### Exempel

* OB bakom korgen,
* vatten till vänster,
* sluttning bakom målet,
* hazard nära landningszonen,
* smal säker kastlinje.

---

# Discgolfarens val

Discgolfarens val ska hållas åtskilda från scenariots förutsättningar.

Scenariot beskriver situationen.

Discgolfaren väljer lösningen.

---

## Disc

`Disc` representerar den disc eller disctyp som används vid ett försök.

### Grundläggande typer

* putter,
* midrange,
* fairway driver,
* distance driver.

Framtida versioner kan innehålla:

* discmodell,
* tillverkare,
* plast,
* vikt,
* stabilitet,
* personlig discbag.

---

## ThrowType

`ThrowType` beskriver den grundläggande kasttekniken.

### Exempel

* backhand,
* forehand,
* putt,
* jump putt,
* step putt,
* roller,
* tomahawk,
* thumber.

---

## ThrowLine

`ThrowLine` beskriver discens avsedda flyglinje.

### Exempel

* hyzer,
* flat,
* anhyzer,
* spike hyzer,
* låg linje,
* hög linje,
* turnover,
* flexlinje.

---

## Strategy

`Strategy` beskriver discgolfarens övergripande plan för att lösa situationen.

### Exempel

* säker landningszon,
* attackera korgen,
* spela bort från OB,
* lägga upp för nästa kast,
* välja minsta möjliga risk.

---

## RiskLevel

`RiskLevel` representerar discgolfarens valda risknivå.

### Exempel

* låg,
* medel,
* hög.

Risknivån kan i framtiden användas för reflektion och beslutsstöd.

---

# Relationer mellan kärnobjekten

## Direktträning

```text
User
  │
  ▼
QuickChallenge
  │
  ├── använder LuckyWheel
  │       │
  │       ├── innehåller WheelOption
  │       └── skapar WheelResult
  │
  ▼
Exercise
  │
  ▼
TrainingSession
  │
  ▼
Attempt
  │
  ▼
Result
  │
  ▼
SessionSummary
```

---

## Strukturerad träning

```text
User
  │
  ▼
TrainingProgram
  │
  ▼
TrainingScenario
  │
  ├── består av ScenarioComponent
  ├── kan ha ScenarioVisual
  └── kan använda LuckyWheel
                  │
                  ▼
               Exercise
                  │
                  ▼
           TrainingSession
                  │
                  ▼
               Attempt
                  │
                  ▼
                Result
                  │
                  ▼
            SessionSummary
```

---

# Historisk integritet

Historiska träningspass får inte förändras när användaren senare redigerar:

* Lucky Wheels,
* Wheel Options,
* Training Programs,
* Training Scenarios,
* övningsmallar.

Ett träningspass ska därför bevara den information som faktiskt användes vid genomförandet.

Detta kan lösas genom kopior, snapshots eller versionsreferenser. Den tekniska lösningen definieras i `DATA_MODEL.md`.

---

# Ägarskap

## Förinstallerat innehåll

Förinstallerade program, scenarier och hjul tillhör appens standardinnehåll.

Användaren ska kunna använda dem direkt.

Det ska vara möjligt att återställa redigerbart innehåll till standard.

---

## Användarskapat innehåll

Användaren äger:

* egna hjul,
* egna hjulalternativ,
* egna träningsprogram,
* egna scenarier,
* egna träningspass,
* egna försök,
* egna resultat.

---

## Framtida externt innehåll

Arkitekturen ska senare kunna skilja mellan innehåll från:

* DGTC,
* användare,
* coach,
* klubb,
* sponsor,
* community.

Detta ingår inte i MVP men ska kunna läggas till utan att kärnobjekten behöver ersättas.

---

# Domänregler för MVP

1. Appen ska kunna användas utan ett användarkonto.
2. Kärnfunktionaliteten ska fungera offline.
3. Endast ett träningspass får vara aktivt åt gången.
4. Ett Lucky Wheel ska innehålla minst två alternativ.
5. Ett Training Program ska innehålla minst ett Training Scenario.
6. Ett resultat får endast registreras under ett aktivt träningspass.
7. Ett Attempt ska tillhöra exakt en Exercise och en TrainingSession.
8. Ett Result ska tillhöra exakt ett Attempt.
9. Avslutade träningspass ska vara skrivskyddade i MVP.
10. Historiska träningspass ska inte påverkas av senare innehållsändringar.
11. Quick Challenge ska kunna startas utan föregående konfigurering.
12. ScenarioVisual ska vara valfritt.
13. Användaren ska kunna skapa och redigera lokalt innehåll utan internet.

---

# Medvetna avgränsningar

Följande definieras inte i detalj i denna version:

* användarkonton,
* molnsynkronisering,
* communitydelning,
* AI-genererade bilder,
* AI-genererade program,
* coachportaler,
* klubbar,
* sponsorer,
* avancerad statistik,
* exakta resultattyper,
* exakta metadata för discar,
* GPS och distansmätning.

Domänmodellen ska kunna utökas med dessa områden senare utan att MVP:s kärnmodell behöver ersättas.

---

# Sammanfattning

DGTC har två vägar in i träningen:

## Direktträning

Användaren öppnar appen, genererar en utmaning och börjar träna.

## Strukturerad träning

Användaren väljer ett träningsprogram och ett scenario för att träna mer målmedvetet och situationsbaserat.

Lucky Wheels skapar variation.

Training Scenarios beskriver situationen.

Exercises beskriver uppgiften.

Discgolfaren fattar besluten.

Attempts dokumenterar genomförandet.

Results dokumenterar utfallet.

DGTC ska ge omedelbar glädje och nytta samtidigt som samma domänmodell skapar grunden för ett större ekosystem för lärande, beslutsträning och prestationsutveckling.
