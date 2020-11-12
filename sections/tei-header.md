# TEI Header

## Overordnet vedr. TEI Header
En teiHeader kan bestå af en række elementer, hvoraf følgende vil blive håndteret i TEI fælles praksis:  
*	\<fileDesc\> (file description).
*	\<encodingDesc\> (encoding description) – dokumenterer den kodningsmæssige relation mellem den elektroniske tekst og den eller de kilder, hvorfra den stammer.
*	\<profileDesc\> (text-profile description) – giver en detaljeret beskrivelse af de ikke-bibliografiske aspekter ved teksten. 
*	\<revisionDesc\> (revision description) – opsummerer filens revisionshistorie.

Af ovenstående er kun \<fileDesc\> obligatorisk i P5. I tillæg hertil er \<revisionsDesc\> obligatorisk i TEI fælles praksis. Angående angivelse af sprog, så er det tilladt at angive attributten @xml:lang på alle elementer i teiHeaderen, der indeholder tekst. Vi anbefaler, at man udnytter denne mulighed og at man enten angiver xml:lang på teiHeader-elementet, eller, hvis der er brugt mere end et sprog, angiver xml:lang der, hvor der er angivet tekst i elementerne. 


## fileDesc
| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

### titleStmt

|ADL|SKS|GV|
|----|:----:| ----:|
|```<fileDesc>
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
</fileDesc>```|```<titleStmt>
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
</titleStmt>```|

### publicationStmt

### notesStmt

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



