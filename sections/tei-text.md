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
| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

### Afsnit - \<p\>
| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

### Lyrik - \<lg\> og \<l\>

### Citater - \<cit\>
Behandles ikke på en særskilt måde. Behandles normalt som en paragraph.

### Figurer - \<fig\>
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
Hvis ikke skrevet af forfatteren: 

| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

### Breve

### Drama - \<sp\>, \<speaker\> og \<stage\>

### Tabeller - \<table\>

### Lister - \<list\>

## Markeringer i den løbende tekst

### Fremhævelser

### Navne og termer

#### Personnavne - \<persName\>

#### Stednavne - \<placeName\>

#### Andre navne og termer - \<rs\>

### Udgiverindgreb

### Tekstkritisk apparat

#### \<app\>, \<lem\> og \<rdg\> 

#### \<note\>

#### Semantisk mærkning og intern varians

#### Flere eksempler på intern varians

### Interne og eksterne referencer

### Sidetal

## Gengivelse

