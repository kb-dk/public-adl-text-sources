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
Udgiver-oplysninger kan læses forskellige steder fra.

| ADL | GV | SKS |
|-----|----|-----|
|Læses fra sourceDesc, fordi det er digitaliseret.     |Born digital; publisher læses fra publicationStmt.    |Publisher læses fra publicationStmt, authority. Så den afviger i form ift. [fælles praksis](TEI.md#222-publicationstmt), men læses herfra.    |


### notesStmt
Præsenteres ikke i tekstservice.

| ADL | GV | SKS |
|-----|----|-----|
|Bruges ikke.     |Bruges.    |Bruges ikke.     |


### sourceDesc
| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

#### bibl
| ADL | GV | SKS |
|-----|----|-----|
|Bruges til almene metadata for det enkelte bind.     |Anvendes ikke.    |Anvendes ikke.     |

#### listBibl og decls
Når vi digitaliserer store korpusser bliver hver del af korpusset katalogiseret individuelt. Dette felt bruges til at vise, hvilken helhed delen indgår i.

| ADL | GV | SKS |
|-----|----|-----|
|Bruges i alt som KB er ansvarlig for, herunder ADL.     |Bruges ikke.    |Bruges ikke.     |

#### Eksempel
Herunder ses best practice for, hvordan man kobler tekster til et værk ift. metadata:

Connecting works with metadata

One of the simplest way to connect text with metadata seem to be using
[the decls attribute](http://www.tei-c.org/Vault/P5/2.5.0/doc/tei-p5-doc/en/html/CC.html#CCAS2)
(we consulted the TEI-L listserv where [Lou
Bournard](https://listserv.brown.edu/archives/cgi-bin/wa?A2=ind1408&L=TEI-L&F=&S=&P=58469) gave us the information we needed).

> @decls identifies one or more declarable elements within the header,
> which are understood to apply to the element bearing this attribute
> and its content [[@decls definition](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.declaring.html)]

Just about any structure in the text can be used as a __work__, by
giving it a decls attribute which is an _idref_ pointing to a bibl or
biblStruct by it's _xml:id_ somewhere in sourceDesc in the teiHeader. The markup will
look like

```
 <?xml version="1.0" encoding="UTF-8" ?>
 <TEI xmlns="http://www.tei-c.org/ns/1.0">
   <teiHeader>
     <fileDesc>
       <titleStmt>
	 <title>Sang-Værk til den danske Kirke</title>
       </titleStmt>
       <publicationStmt>
	 <publisher>
	 </publisher>
       </publicationStmt>
       <sourceDesc>
	 <bibl xml:id="idm140638899271024">
	   <author n="1" xml:id="idm140638899270336">
	     <name xml:id="idm140638899270080">
	       <surname xml:id="idm140638899269952">Grundtvig</surname>,
	       <forename xml:id="idm140638899269520">N. F. S.</forename>
	     </name>
	   </author>
	   <title xml:id="idm140638899269264"> Sang-Værk til den danske Kirke. - 1944</title>
	   <pubPlace xml:id="idm140638899268912">Kbh.</pubPlace>
	   <date xml:id="idm140638899268432">1944-1964</date>
	 </bibl>
	 <listBibl>
	   <bibl xml:id="biblid64544">
	     <title>Kirken er som Himmerige</title>
	   </bibl>
	 </listBibl>
       </sourceDesc>
     </fileDesc>
   </teiHeader>
   <text>
     <body>
       <div xml:id="workid64544" decls="#biblid64544">
	 <head xml:id="idm140638897625920">
            <hi rend="italics" xml:id="idm140638897625792">No. 19</hi>
         </head>
	 <lg xml:id="idm140638897624976">
	   <l xml:id="idm140638897624720">Kirken er som Himmerige,</l>
	   <l xml:id="idm140638897624288">Meget kan den lignes ved,</l>
	   <l xml:id="idm140638897623856">Skiøndt paa Jord den har ei Lige,</l>
	   <l xml:id="idm140638897623392">Som Guds Naade og Guds Fred!</l>
	 </lg>
	 <lg xml:id="idm140638897622832">
	   <l xml:id="idm140638897622576">Mest dog lig en Barne-Moder,</l>
	   <l xml:id="idm140638897622144">Herren kalder den sin Brud,</l>
	   <l xml:id="idm140638897621712">Ved dens Mælk opvoxe Poder,</l>
	   <l xml:id="idm140638897621248">Som ved Bække Pile-Skud!</l>
	 </lg>
	 <pb n="75" xml:id="s75" facs="adl/grundtvig/grundtvig11/grun11075"/>
	 <lg xml:id="idm140638897619408">
	   <l xml:id="idm140638897619152">Kirkens Favn og derfor kaldes</l>
	   <l xml:id="idm140638897618720">Rettelig et Moder-Skiød,</l>
	   <l xml:id="idm140638897618272">Naar der sørges, naar der faldes,</l>
	   <l xml:id="idm140638897617808">Altid der er Hvilen sød!</l>
	 </lg>
	 <lg xml:id="idm140638897617232">
	   <l xml:id="idm140638897616976">Kastes Vrag paa Kirkens Goder</l>
	   <l xml:id="idm140638897616544">Af den Sjæl, som dem bar smagt,</l>
	   <l xml:id="idm140638897616080">Da forhaaner Søn sin Moder,</l>
	   <l xml:id="idm140638897615616">Og hans Dom er forudsagt.</l>
	 </lg>
	 <lg xml:id="idm140638897615056">
	   <l xml:id="idm140638897614800">Angres det med ærlig Smerte,</l>
	   <l xml:id="idm140638897614336">Vendes om med ydmyg Bøn,</l>
	   <l xml:id="idm140638897613888">Kirken dog med Moder-Hjerte</l>
	   <l xml:id="idm140638897613456">Favner den forlorne Søn!</l>
	 </lg>
       </div>
     </body>
   </text>
 </TEI>
```



#### msDesc
| ADL | GV | SKS |
|-----|----|-----|
|Bruges ikke (ingen transkriberede håndskrifter)     |Bruges ikke.    |Anvendes for håndskriftsmateriale; katalogiseret ved hjælp af msDesc.     |

#### listWit og witness
| ADL | GV | SKS |
|-----|----|-----|
|Ikke relevant; et værk digitaliseres, så der er ikke flere vidner.     |Følger standard.    |Følger standard.     |

#### date
| ADL | GV | SKS |
|-----|----|-----|
|Kun trykkeår er angivet som datoelement. Ingen andre datoer angivet. Følger ikke standarden.    |Trykkeår angivet. Følger ikke standarden.    |Flere datoelementer findes. Følger ikke standarden.     |

## encodingDesc
| ADL | GV | SKS |
|-----|----|-----|
|Fortolkes ikke i tekstservice. Findes ikke i encodingen.     |Fortolkes ikke i tekstservice. Findes i encodingen.    |Fortolkes ikke i tekstservice. Findes i encodingen.     |

## profileDesc
| ADL | GV | SKS |
|-----|----|-----|
|Fortolkes ikke i tekstservice. Findes ikke i encodingen.     |Fortolkes ikke i tekstservice. Findes i encodingen.    |Fortolkes ikke i tekstservice. Findes i encodingen.     |

### langUsage
| ADL | GV | SKS |
|-----|----|-----|
|Fortolkes ikke i tekstservice. Findes ikke i encodingen.     |Fortolkes ikke i tekstservice. Findes i encodingen.    |Fortolkes ikke i tekstservice. Findes i encodingen.     |

### textClass
Fortolkes i tekstservice.
| ADL | GV | SKS |
|-----|----|-----|
|Der er genreangivelser, der anvendes i søgemaskiner. De er ikke baseret på textClass og følger derfor ikke fælles praksis.     |Anvendes og vises som facetter i søgemaskinen. Følger fælles praksis.    |Anvendes og vises som facetter i søgemaskinen, men følger ikke fælles praksis. Er ikke baseret på textClass.     |

## correspDesc
DB er ikke i dette format.
| ADL | GV | SKS |
|-----|----|-----|
|Findes ikke.     |Findes ikke.    |Findes ikke. Har breve, men ikke på dette format (correspDesc).     |

## revisionDesc
| ADL | GV | SKS |
|-----|----|-----|
|Findes ikke på dette format.     |Findes.    |Findes ikke på dette format.     |
