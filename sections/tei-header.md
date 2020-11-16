# TEI Header

## Overordnet vedr. TEI Header
En teiHeader kan bestå af en række elementer, hvoraf følgende vil blive håndteret i TEI fælles praksis:  
*	\<fileDesc\> (file description).
*	\<encodingDesc\> (encoding description) – dokumenterer den kodningsmæssige relation mellem den elektroniske tekst og den eller de kilder, hvorfra den stammer.
*	\<profileDesc\> (text-profile description) – giver en detaljeret beskrivelse af de ikke-bibliografiske aspekter ved teksten. 
*	\<revisionDesc\> (revision description) – opsummerer filens revisionshistorie.

Af ovenstående er kun \<fileDesc\> obligatorisk i P5. I tillæg hertil er \<revisionsDesc\> obligatorisk i TEI fælles praksis. Angående angivelse af sprog, så er det tilladt at angive attributten @xml:lang på alle elementer i teiHeaderen, der indeholder tekst. Vi anbefaler, at man udnytter denne mulighed og at man enten angiver xml:lang på teiHeader-elementet, eller, hvis der er brugt mere end et sprog, angiver xml:lang der, hvor der er angivet tekst i elementerne. 

## Tekstuddrag

#### Exempel 1. ADL
```
<fileDesc>
  <titleStmt>
    <title>samlede skrifter I</title>
    <author>gustaf munch-petersen</author>
  </titleStmt>
  <publicationStmt>
    <publisher>KUNST OG KULTUR</publisher>
    <idno  xml:base="texts/munp1.xml">001346243:1</idno>
  </publicationStmt>
  <notesStmt>
    <note>
    </note>
  </notesStmt>
  <sourceDesc>
    <bibl>
      <author n="1">
        <name><surname>Munch-Petersen</surname>, 
        <forename>Gustaf</forename></name>
      </author>
      <title>Samlede skrifter</title>
      <pubPlace>Valby</pubPlace>
      <publisher>Borgen</publisher>
      <date>1988</date>
    </bibl>

    ...
    
  </sourceDesc>
</fileDesc>

```

#### Exempel 2. GV
```
 <titleStmt>
        <title rend="main">Heimdall. Dansk Nyaars-Gave for 1816</title>
        <title rend="shortForm">Heimdall</title>
        <author>Nicolai Frederik Severin Grundtvig</author>
        <editor role="philologist">Kim Steen Ravn</editor>
        <editor role="student1">Stine Kylsø Pedersen</editor>
        <editor role="student2">Josefine Rahbek</editor>
     </titleStmt>
	 
	 ...
	 
  <publicationStmt>
       <availability status="restricted">
          <p>© Grundtvig Centeret, Aarhus Universitet</p>
       </availability>
       <publisher>Faculty of Arts, Aarhus University</publisher>
       <distributor>Grundtvig Centeret, Vartov, København</distributor>
       <date when="2018-11-01">www.grundtvigsværker.dk, version 1.13, 1. november 2018</date>
  </publicationStmt>
	 
```

#### Exempel 3. SKS
```
<titleStmt>
  <title level="s">Søren Kierkegaards Skrifter</title>
  <title>Enten – Eller. Første del</title>
  <title type="short">EE1</title>
  <author>
    <name>Søren Kierkegaard</name>
  </author>
  <editor>
    <name>Niels Jørgen Cappelørn</name>
    <name>Joakim Garff</name>
    <name>Johnny Kondrup</name>
    <name>Alastair McKinnon</name>
    <name>Finn Hauberg Mortensen</name>
  </editor>
  <respStmt>
    <resp>udgivet af</resp>
    <name>Niels Jørgen Cappelørn</name>
    <name>Joakim Garff</name>
    <name>Johnny Kondrup</name>
    <name>Finn Hauberg Mortensen</name>
  </respStmt>
  <respStmt>
    <resp>etableret af</resp>
    <name>Henrik Blicher</name>
    <name>Søren Bruun</name>
    <name>Jette Knudsen</name>
    <name>Johnny Kondrup</name>
    <name>Kim Ravn</name>
  </respStmt>
  <respStmt>
    <resp>elektronisk redigeret af</resp>
    <name>Karsten Kynde</name>
    <name>Kim Ravn</name>
  </respStmt>
</titleStmt>

  <publicationStmt>
        <authority>Søren Kierkegaard Forskningscenteret 1997</authority>
        <availability status="restricted">
          <p>copyright</p>
        </availability>
      </publicationStmt>
      <seriesStmt>
        <title xml:id="SKS">Søren Kierkegaards Skrifter</title>
        <biblScope unit="volume">2</biblScope>
        <biblScope unit="file">http://sks.dk/ee1/txt.xml</biblScope>
      </seriesStmt>

```



## fileDesc
| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

### titleStmt

| ADL | GV | SKS |
|-----|----|-----|
| [titleStmt](#exempel-1-adl) og publicationStmt bruges ikke i ADL. Disse informationer læses fra sourceDesc, som indeholder metadata til kilderne, der ligger til grund for filen.   | [titleStmt](#exempel-2-gv) rummer de angivne elementer, men navn er ikke delt i for- og efternavn.   | [titleStmt](#exempel-3-sks) i SKS fortæller på en god måde, hvilken serie en udgivelse er en del af. Den har en title for serien og en title for værket i serien. titleStmt rummer alle nødvendige elementer, men navne er ikke delt i for- og efternavn.    |



### publicationStmt

| ADL | GV | SKS |
|-----|----|-----|
|Læses fra sourceDesc, fordi det er digitaliseret.     |Born digital, så publisher læses fra publicationStmt.    |Born digital, så publisher læses fra publicationStmt.     |


### notesStmt

| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |


### sourceDesc

#### listBibl og decls

#### msDesc

### listWit og witness

#### date

## encodingDesc

## profileDesc

### langUsage

### textClass

## correspDesc

## revisionDesc



