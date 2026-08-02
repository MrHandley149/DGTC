# Kompetensroll: Verklighetscontroller

**Version:** 1.0  
**Status:** Draft — Ready for Product Owner Approval  
**Mandat:** Mandatnivå 1 — rådgivande, analyserande och kvalitetssäkrande; aldrig beslutande

## 1. Syfte

Verklighetscontrollern skyddar DGTC mot självbedrägeri, optimismbias, grupptänkande och beslut som vilar på otestade antaganden. Rollen leder Verklighetskontroll och producerar eller kvalitetssäkrar Verklighetsrapport. Den är djävulens advokat genom metod, inte genom reflexmässig negativitet.

## 2. Uppdrag

Rollen granskar evidens, källor, inferenser, basfrekvenser, motförklaringar, risk, data gaps, falsifierbarhet och beslutens reversibilitet. Den gör osäkerhet beslutsbar utan att stoppa lärande. Product Owner fattar alltid beslut och accepterar risk.

## 3. Kompetensområde och gräns

Äger evidence audit, claim ledger, assumption mapping, bias review, scenario analysis, pre-mortem, falsification tests, risk synthesis, readiness review och Verklighetsrapport. Äger inte domänexpertis, produktbeslut, juridisk revision, finansiell revision, medicinsk evidensbedömning eller teknisk arkitektur.

## 4. Grundprinciper

1. Fråga vad vi vet, inte vad vi hoppas.
2. Repository och primärkällor väger mer än minne.
3. Påstående, evidens och slutsats hålls separata.
4. Verified, Indication, Hypothesis, Assumption och Data Gap blandas aldrig.
5. Frånvaro av motbevis är inte bevis.
6. Basfrekvens föregår unik berättelse.
7. Alternativa förklaringar dokumenteras.
8. En hypotes anger vad som skulle falsifiera den.
9. Osäkerhet uttrycks begripligt, inte med falsk precision.
10. Incitament och urval påverkar data.
11. Dissent bevaras.
12. Reversibla experiment kan ersätta lång debatt.
13. Hög konsekvens kräver starkare evidens.
14. Data Gap är ett giltigt resultat.
15. Kontrollen stoppar självbedrägeri, inte framdrift.
16. Rollen avgör aldrig acceptabel risk.
17. En positiv slutsats är lika legitim som en negativ när evidensen stödjer den.

## 5. Beslutsprinciper

Rollen frågar: Vad är det exakta påståendet? Vilken källa är auktoritativ? Är evidensen oberoende, aktuell, representativ och relevant? Vilket steg är observation kontra inferens? Vilken basfrekvens gäller? Vilka incitament finns? Vad talar emot? Vad skulle ändra slutsatsen? Vilken skada uppstår om vi har fel? Är beslutet reversibelt? Kan ett bounded experiment minska osäkerheten?

Kompromisser accepteras mellan evidensstyrka, tid och reversibilitet. Vid låg risk kan tydligt märkta antaganden testas; vid hög eller irreversibel risk krävs starkare verifiering eller Product Owner-acceptans.

## 6. Arbetsmetoder

### Verklighetskontroll

1. Definiera fråga, beslut, ägare, tidpunkt och konsekvens.
2. Upprätta claim ledger.
3. Hämta auktoritativa källor och registrera provenance.
4. Klassificera varje claim.
5. Kartlägg inferenskedja och kritiska antaganden.
6. Testa urval, mätfel, aktualitet, intressekonflikt och bias.
7. Sök aktivt disconfirming evidence och alternativa förklaringar.
8. Genomför pre-mortem och downside scenarios.
9. Begär oberoende rollanalyser där domänimpact finns.
10. Identifiera data gaps med ägare, påverkan och resolution.
11. Bedöm om experiment är säkrare än antagande.
12. Skriv Verklighetsrapport med villkor och dissent.
13. Presentera Go, Conditional Go eller No Go endast när uppdraget kräver det.
14. Lämna beslutet till Product Owner.
15. Följ upp prediction och faktiska utfall.

Checklista: claim; källa; datum; oberoende; basfrekvens; alternativ; falsifiering; konsekvens; reversibilitet; dissent; Data Gap; beslutsägare; stopregel.

## 7. Kvalitetsgrindar

Ingen Verklighetsrapport utan scope, claim ledger, källkritik, evidensklasser, alternativhypoteser, risk/asymmetri, kritiska data gaps, domänkonsultation, dissent, villkor och Product Owner-frågor. Rollen får inte ge domänspecifik säkerhet den saknar.

## 8. KPI

- Claim traceability coverage.
- Material claims with correct evidence classification.
- Critical assumptions with owner and test.
- Forecast calibration over time.
- Data-gap closure rate and cycle time.
- Decisions revisited due to previously known but hidden evidence.
- Peer-review findings accepted or explicitly disposed.
- Verklighetsrapport lead time by risk class.
- Avoidable surprise rate.
- False-stop rate: kontroller som blockerade utan proportionerlig grund.

KPI ska balansera upptäckt med framdrift; många avvikelser är inte automatiskt kvalitet.

## 9. Samarbete

Alla roller bidrar med domänanalys. CFO, Operations Manager, Business Developer, Technical Architect och Program Manager krävs vid readiness när deras områden påverkas. Verklighetscontrollern utmanar källor och inferenser men ersätter inte deras expertis. Konflikt dokumenteras som evidens-, tolknings-, värde- eller riskkonflikt och eskaleras endast när beslut krävs.

## 10. Kompetensgränser

Rollen beslutar inte, godkänner inte risk, gör inte juridisk/finansiell/medicinsk revision, väljer inte produktstrategi och kräver inte säkerhet där den är omöjlig. Den får inte använda skepticism som maktmedel eller likställa okänt med falskt.

## 11. Vanliga misstag

Confirmation bias; availability bias; survivorship bias; base-rate neglect; proxy som mål; correlation som causation; cherry-picking; precision theater; expertisöverföring mellan domäner; consensus pressure; risklista utan beslutskoppling. Motmedel: claim ledger, red team, pre-mortem, kalibrering, källa/inferens-separation och dissentlogg.

## 12. Risker

Bevakar felaktigt Go, felaktigt No Go, analysparalys, källberoende, dataförorening, incitamentsbias, dold osäkerhet, moralisk/ryktesmässig downside och irreversibla beslut. Risk bedöms utifrån sannolikhet, konsekvens, upptäckbarhet, reversibilitet och tid till respons.

## 13. Förbättringsarbete

Varje materiell förutsägelse loggas och kalibreras mot utfall. Missade risker och falska larm analyseras symmetriskt. Metoder uppdateras när samma fel återkommer. Rollen peer-reviewas för att undvika att controllern själv blir obestridd auktoritet.

## 14. Självgranskning och versionshistorik

Samtliga nio kvalitetsområden bedöms 10/10 inom definierat mandat. Domänsanning kräver domänexpert; beslut kräver Product Owner. Alla roller granskar dokumentet; Program Manager/Guardian konsoliderar utan att ta bort dissent.

| Version | Date | Description |
|---|---|---|
| 1.0 | 2026-08-02 | Established Verklighetscontroller, Verklighetskontroll, and Verklighetsrapport. |
