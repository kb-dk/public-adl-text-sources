# Text

Elementet \<text\> er efter \<teiHeader\> og den valgfri sektion \<facsimile\> en af XML-filens hovedbestanddele. 
Den indeholder den tekst, som skal repræsenteres, hvad enten den er en enhed (roman, novelle, brev og lignende), 
eller udgør en helhed af flere mindre enheder som fx en essay- eller digtsamling. 

## Inddeling af teksten

### Front
Ikke søgbart i tekstservice. Betragtes som redaktionel tekst. Er normalt forord, indledning og indholdsfortegnelse. 
Se nedenfor. 

### Body
Se nedenfor. 

### Back
Ikke søgbart i tekstservice. Betragtes som redaktionel tekst. Kan være alfabetisk indeks, slutnoter, litteraturliste o.lign.
Se nedenfor. 

## Underinddeling af teksten

### Tekstdel - \<div\>
\<head\> definerer strukturen på et dokument.

| ADL | GV | SKS |
|-----|----|-----|
|Uproblematisk; følger standard.     |Uproblematisk; følger standard.    |Problematisk \<head\>, der kan gøre det svært at generere indholdsfortegnelser. Desuden svært at finde titler på dele af dokumentet. Dette skyldes, at alle overskrifter reelt er tomme.     |

### De følgende tre er tekstens "atomer"
Det meste af en tekst vil falde inden for disse tre.

#### Afsnit - \<p\>
Typografen (eller browseren) bestemmer linjebredde.

| ADL | GV | SKS |
|-----|----|-----|
|Uproblematisk, følger standard.     |Uproblematisk, følger standard.    |Uproblematisk, følger standard.     |

#### Lyrik - \<lg\> og \<l\>
Digteren bestemmer linjebredde.

| ADL | GV | SKS |
|-----|----|-----|
|Uproblematisk, følger standard.     |Uproblematisk, følger standard.    |Følger ikke standarden; bruges slet ikke.     |

#### Dialog (drama) - \<sp\>, \<speaker\> og \<stage\>
| ADL | GV | SKS |
|-----|----|-----|
|Uproblematisk, følger standard.     |Uproblematisk, følger standard.    |N/A     |

#### Citater - \<cit\>
Er implementeret og vises i tekstportalen som citater, der "står uden for" den øvrige tekst.

| ADL | GV | SKS |
|-----|----|-----|
|Følger næsten fælles praksis, men afviger lidt. Se nedenfor.     |Følger ikke fælles praksis. Der er citater, men de er ikke kodede som beskrevet i fælles praksis. Se nedenfor.    |Følger fælles praksis.     |

**ADL**
```
 <epigraph xml:id="idm140608068139680">
          <cit xml:id="idm140608068139424">
            <q xml:id="idm140608068231104">
              <p xml:id="idm140608068230848"><hi rend="italics" xml:id="idm140608068230720">Wo das Eisen wächst in der Berge Schacht</hi>,<lb xml:id="idm140608068229968"/><hi rend="italics" xml:id="idm140608068229840">da entspringen der Erde Gebieter</hi>.</p>
              <bibl xml:id="idm140608068229056">SCHILLER</bibl>
            </q>
          </cit>
        </epigraph>
 ```
 
 **GV**
 ```
 <p rend="quote">&#x2013; du, som ved min baade aandelige og legemlige Hjemkomst 1819 rakte mig din <rs type="title" key="title153">Saxo</rs>, med den kj&#x00E6;rlige Opfordring til at &#x2018;ride Sommer i By&#x2019; med hans og Danmarks Helte, som jeg kunde bedst!&#x201D; (<rs type="title" key="title447">Grundtvig og Ingemann 1882</rs>, s. 325).</p>
```


#### Figurer - \<fig\>
| ADL | GV | SKS |
|-----|----|-----|
|Ingen figurer/ikke relevant.     |Fortolkes ikke og vises ikke.    |Følger fælles praksis, se eksempler nedenfor.     |

#### Eksempel SKS
**Illustration**
```
 <p xml:id="ida51a76fc-ea91-4c6d-9df8-a32af9dbc9b1" rend="decoration">
          <figure xml:id="id15d13c04-537d-42c9-9e9f-d3681f97fec5" type="vignet">
            <figDesc xml:id="id923a53d6-abe2-420c-9965-01ff138242f7">large curli
cue</figDesc>
            <graphic xml:id="idf0bf32b5-b9bf-432a-9c12-94d88cabb930" url="../vignet/vig-dd-207.jpg"/>
          </figure>
        </p>
```


**Ornament**
```
  <xsl:template match="t:figure[@type='3crossesDown']">
    <p style="text-align:center;">
      <xsl:text>† &#160; †</xsl:text><br/>
      <xsl:text>†</xsl:text><br/>
    </p>
  </xsl:template>
  ```
  
### Sidehoved, sidefod o.lign - \<fw\>
Bruges ikke og fortolkes ikke.

### Noter - \<note\>
Se [4.2.6 "Noter" i Fælles Praksis](TEI.md#426-noter---note).
Visse typer fortolkes, andre ikke. Noter behøver ikke have angivet en type. Default er, at man trykker på noten, og så "folder den sig ud" på dét sted. De findes overalt på alle tekster i tekstportalen (undtagen Trykkefrihedens Skrifter).
Det er problematisk, at der anvendes alverdens typer, da det kan være vanskeligt at tolke på. Derfor følger teksterne på overfalden fælles praksis, men software som skal fortolke dokumentet kan blive forvirret over de mange typer; markdown med mange typer bliver misvisende. **Antallet af anvendte typer bør begrænses væsentligt**.

| ADL | GV | SKS |
|-----|----|-----|
|Følger formelt set fælles praksis, men se note ovenfor.| Samme. | Samme. |

### Breve
Her er forskellige muligheder, se [4.2.7 "Breve" i Fælles Praksis](TEI.md#427-breve).
I DB følges standard forstået som Fælles Praksis formelt set ikke, men der følges en etableret praksis, som fungerer og kan læses af systemet. Fælles Praksis-tags ville også blive fortolket og forstået. Et brev er at betragte som et værk og en samling breve er en samling af værker, som markeres som vanligt i TEI-header, se [listbibl og decls](tei-header.md#listbibl-og-decls).

I tekstportalen fortolkes breve ikke som breve, de betragtes blot som tekst. Det fungerer, men er et stykke tekst, ikke en særlig kategori.

| ADL | GV | SKS |
|-----|----|-----|
|Hvis der findes breve, er de markeret som prosa. |Hvis der findes breve, er de markeret som prosa.   |Rummer breve, der betragtes som prosa, med typografi som et brev. Dvs. sofistikeret prosa, men de er ikke breve fra et TEI Fælles Praksis-perspektiv. Hvert brev er ikke et værk ligesom i DB.     |

For teksttyper som **dagbøger og journaler** med datoangivelser og lignende vil det fungerere på samme måde: Det er ikke en særskilt kategori, men er prosa med typografi der indikerer hvilken teksttype, der er tale om. Fra et brugerperspektiv ser teksten således ud som den kan forventes, men fra et TEI-perspektiv er det alt sammen prosa.

### Tabeller - \<table\>
Ligesom i punktet breve ligger her en mulig pædagogisk udfordring: Det lader til at være opfattelsen, at så længe, det ser rigtigt ud på brugersiden, er alt fint. Dermed er der fokus på form frem for indhold, hvilket støder mod pointen i TEI-encoding, hvor indholdet er det væsentlige og hvis encodet korrekt, vil formen naturligt følge indholdet.

| ADL | GV | SKS |
|-----|----|-----|
|Følger fælles praksis. Indholdsfortegnelser markeres dog også som tables, men burde være list med items - dette er en semantisk fejl, se ovenfor.  |Følger fælles praksis. Indholdsfortegnelser markeres dog også som tables, men burde være list med items - dette er en semantisk fejl, se ovenfor.  |Følger fælles praksis. Indholdsfortegnelser markeres dog også som tables, men burde være list med items - dette er en semantisk fejl, se ovenfor.     |

### Lister - \<list\>
| ADL | GV | SKS |
|-----|----|-----|
|Følger fælles praksis.  |Følger fælles praksis.  |Følger fælles praksis.     |

## Markeringer i den løbende tekst

### Fremhævelser
| ADL | GV | SKS |
|-----|----|-----|
|Følger fælles praksis.     |Følger fælles praksis.    |Følger fælles praksis.     |

### Navne og termer

#### Personnavne - \<persName\>
Semantisk opmærkning.
Reelt betyder "fælles praksis" to forskellige ting i GV hhv. SKS, da opmærkningerne tager sig ganske forskellige ud.

| ADL | GV | SKS |
|-----|----|-----|
|Forekommer ikke, da det er et digitaliseringsprojekt.     |Følger fælles praksis; navne henviser til noter i en separat database.    |Følger fælles praksis, men simpelt.     |

#### Stednavne - \<placeName\>
Semantisk opmærkning.
Reelt betyder "fælles praksis" to forskellige ting i GV hhv. SKS, da opmærkningerne tager sig ganske forskellige ud.

| ADL | GV | SKS |
|-----|----|-----|
|Forekommer ikke, da det er et digitaliseringsprojekt.     |Følger fælles praksis; navne henviser til noter i en separat database.    |Følger fælles praksis, men simpelt.     |

#### Andre navne og termer - \<rs\>
| ADL | GV | SKS |
|-----|----|-----|
|Forekommer ikke, da det er et digitaliseringsprojekt.     |Anvendes og følger fælles praksis-syntaks.    |Forekommer ikke.     |

### Udgiverindgreb
| ADL | GV | SKS |
|-----|----|-----|
|N/A - Ingen redaktør er gået igennem teksterne efter digitaliseringen.     |Forekommer ikke/sjældent.    |Følger fælles praksis.     |

### Tekstkritisk apparat
Se underafsnittene nedenfor.

#### \<app\>, \<lem\> og \<rdg\> 
Fælles praksis rækker ikke helt ift. at præsentere data for udgivelserne. Her følges TEI-guidelines; fælles praksis er en delmængde af TEI-guidelines. Se [TEI guidelines kap. 12](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/TC.html) og [Fælles praksis afsnit 4.3.4.1](TEI.md#4341-app-lem-og-rdg).

| ADL | GV | SKS |
|-----|----|-----|
|N/A. Her findes tekstkritisk apparat i den trykte original, men det er ikke overført til mark-up. Dette ville være et kæmpe arbejde, da det er et digitaliseringsprojekt.     |Følger fælles praksis.    |Følger fælles praksis.     |

#### \<note\>
Se [Noter](#noter---note)

#### Semantisk mærkning og intern varians
Ikke relevant for disse udgivelser. Findes der intern varians, så er det under alle omstændigheder ikke markeret (ud fra TEI fælles praksis) og derfor er det ikke lykkedes os at finde eksempler på det.

#### Flere eksempler på intern varians
Se ovenfor.

### Interne og eksterne referencer

Se [Fælles praksis afsnit 4.3.5](TEI.md#435-interne-og-eksterne-referencer)

#### SKS style
```
<ref type="commentary" target="kom.xml#ee1-34" xml:id="ee1-34">min elskværdige Læserinde</ref>,
```

#### GV style

```
<l>Hvem det undtes <seg type="com" n="com562">saa</seg> at <seg type="com" n="com658">bygge</seg></l>
```

and

```
 <notesStmt>
    <note target="1815_255_txt.xml" type="txt" xml:id="thisFile">Læsetekst</note>
    <note target="1815_255_com.xml" type="com">Punktkommentar</note>
    <note target="1815_255_intro.xml" type="intro">Indledning</note>
    <note target="1815_255_txr.xml" type="txr">Tekstredegørelse</note>
    <note type="minusVar">Variant</note>
 </notesStmt>
```

#### Holberg

\<seg/\> is also used in Ludvig Holberg Værker (LHV). Here is a snippet from *Niels Klim*.
The difference from GV being that here the comment anchor is a single
point, not a text segment. An again, the URI of the target is
implicit. I.e., you need to know that the comments are to be found in
a file niels\_klim\_komm.xml

```
 Nam adspectus corporis humani, in aëre circumacti, harpagonem dextra tenentis, et longum post
 se funem caudae instar trahentis, phaenomenon erat, quod quoduis brutum animal
 <seg xml:id="id7871066d-b59b-4e34-8c8b-59279aaed03e" type="komm" target="p11-26"/>in spectaculum
 sui allicere posset. Insolita ista
 <pb xml:id="ide98ce60e-e91d-41aa-a82b-bed116ff7ce6" ed="A" n="12" facs="p12"/>figura,
 quam tunc expressi, variis, vt postea audiui, sermonibus et coniecturis ansam dederat incolis globi,
 circa quem voluebar.
```

#### Møller

Paul Martin Møller edition follow the linking practice from SKS.

```
 Endelig kommer han til det her oversatte Eventyr, som han maatte <ref
 xml:id="id0465d8c9-d24b-44b1-9c79-6f839b62d5b7" type="commentary"
 target="com006.xml#com9-0e">bestaae</ref> med den eenøyede Kjæmpe
 Polyfemos, der aad sex af hans <ref
 xml:id="id5c2b12d9-cb87-474d-a819-5f60e85966af" type="commentary"
 target="com006.xml#com9-0f">Staldbrødre</ref>, men til Straf derfor
 paa en listig Maade af Odysseus blev skilt ved sit Øie.</hi>
```

| ADL | GV | SKS |
|-----|----|-----|
| n/a | Følger ikke fælles praksis-syntaks. | Følger fælles praksis-syntaks. |

### Sidetal
| ADL | GV | SKS |
|-----|----|-----|
|Følger fælles praksis (dog trivielt, da det er et digitaliseringsprojekt)     |Følger fælles praksis.    |Følger fælles praksis.     |

## Gengivelse
Tekstportalen understøtter både rend (direkte henvisning) og rendition (reference til et andet element). 

I fælles praksis er listet nogle værdier for rend: [4.4 Gengivelse](TEI.md#44-gengivelse). Her er en liste over de rends, der faktisk anvendes i GV:[Statistikk for rend-attributter](gv_rends.md). Som det ses, er der ikke megen overensstemmelse; til gengæld anvendes en hel del andre (ca. 100 ialt). Det kan give fortolkningsproblemer, og antallet bør begrænses, se [Generelle problemer](tei-generelle_problemer.md). Med andre ord: Hvis GV følger fælles praksis, er der et problem med fælles praksis i sig selv.

| ADL | GV | SKS |
|-----|----|-----|
|Stort set generisk mark-up; der findes ingen styles. N/A.     |Se ovenfor.    |Bruger mest rendition-elementer. Fokus er for meget på typografi frem for semantik. Se [Generelle problemer](tei-generelle_problemer.md).     |
