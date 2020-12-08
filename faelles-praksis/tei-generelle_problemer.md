# Generelle problemer

## Mange forskellige types
Der forekommer så mange forskellige types, at det er svært at skrive software, der bruger dem på en meningsfuld måde. 
På overfalden følger man måske fælles praksis, men det er problematisk, at der er så mange types "på bagsiden". *Antallet af types bør begrænses væsentligt.*

I GV har vi lavet en oversigt over alle de types, der optræder totalt. Listen rummer over 2000 forskellige elementer. Det giver ikke mening; fx optræder types,
som indeholder titlen på et stykke tekst. Se [GV types](gv_types.md).

Til sammenligning har SKS kun ca. 70 types. Se [SKS types](sks_types.md).

Fordi der er så mange types, som ikke kan læses af systemet, ignoreres de simpelthen i tekstportalen.

## rend-attributter
I GV er ca. 50 rend-attributter, men kun ganske få af dem stemmer overens med fælles praksis-dokumentets liste. Se [GV rends](gv_rends.md). Mange rends ignoreres i tekstportalen.

## Typografi vs. semantik
Ofte indkodes semantiske enheder med typografi. Det vil sige, at et citat fx ikke anføres som citat, men er tekst, der sættes i kursiv eller en paragraph med indent i stedet for quote. Dette er problematisk, da hele pointen med TEI-encoding er semantikken - hvis vi anvender vi vedtagne semantiske regler, vil typografien automatisk følge med. Vi vil understrege, at det ikke alene drejer sig om markering af citater, men af mange mindre enheder i teksterne, herunder markering af lyrik. Gør vi det rigtigt kan vi bygge en service, der indeholder mange tekster og samlinger, der præsenteres på samme måde. Men kodes smådele typografisk, vil de aldrig blive ens på tværs. Derfor må vi understrege, at semantikken er central og skal anvendes.

