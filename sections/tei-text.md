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
|     |    |Følger fælles praksis.     |

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
Hvis ikke skrevet af forfatteren: 

| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |

### Breve

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

| ADL | GV | SKS |
|-----|----|-----|
|     |    |     |
