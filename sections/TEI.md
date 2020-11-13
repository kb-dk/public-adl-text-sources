# Fælles praksis for TEI-kodning

Version 5 - 14/12-2017

Jeg er ved at indføre rettelser og samle kommentarer i dette dokument!

TYPOGRAFISK OPSÆTNING SKAL ENSRETTES!

Den nuværende version er revideret flere gange og har været til
gennemlæsning hos en række eksterne samarbejdspartnere tilknyttet hhv.,
bokselskap.no, Litteraturbanken.se, *Henrik Ibsens Skrifter,* DUDS,
Arnamagnæansk Samling, H.C. Andersen Centeret og Deutsches Textarchiv*.*
Tak til alle for de gode kommentarer, spørgsmål og rettelsesforslag, som
har dannet grundlag for den nærværende version.

Yderligere tilpasninger må forventes i forbindelse med udarbejdelsen af
en fælles visningsapplikation.

Klaus Nielsen

## INDHOLD

## 1 Indledning

-   1.1 Formål

-   1.2 Organisation

-   1.3 Om anbefalingerne

## 2 \<teiHeader\>

-   2.1 Overordnet vedr. teiHeader

-   2.2 \<fileDesc\>

    -   2.2.1 \<titleStmt\>

    -   2.2.2 \<publicationStmt\>

    -   2.2.3 \<notesStmt\>

    -   2.2.4 \<sourceDesc\>

        -   2.2.4.1 \<listBibl\> og \@decls

        -   2.2.4.2 \<msDesc\>

        -   2.2.4.3 \<listWit\> og \<witness\>

        -   2.2.4.4 \<date\>

-   2.3 \<encodingDesc\>

-   2.4 \<profileDesc\>

    -   2.4.1 \<langUsage\>

    -   2.4.2 \<textClass\>

-   2.5 \<correspDesc\>

-   2.6 \<revsionDesc\>

## 3 \<facsimile\>

## 4 \<text\>

-   4.1 Inddeling af teksten

    -   4.1.1 \<front\>

    -   4.1.2 \<body\>

    -   4.1.3 \<back\>

-   4.2 Underinddeling af teksten

    -   4.2.1 Tekstdel - \<div\>

    -   4.2.2 Afsnit - \<paragraf\>

    -   4.2.3 Lyrik - \<lg\> og \<l\>

    -   4.2.4 Citater - \<cit\>

    -   4.2.5 Figurer - \<figure\>

    -   NBNBNBNB fw

    -   4.2.6 Noter - \<note\>

    -   4.2.7 Breve

    -   4.2.8 Drama - \<sp\>, \<speaker\> og \<stage\>

    -   4.2.9 Tabeller - \<table\>

    -   4.2.10 Lister - \<list\>

-   4.3 Markeringer i den løbende tekst

    -   4.3.1 Fremhævelser

    -   4.3.2 Navne og termer

        -   4.3.2.1 Personavne - \<persName\>

        -   4.3.2.2 Stednavne - \<placeName\>

        -   4.3.2.3 Andre navne og termer - \<rs\>

    -   4.3.3 Udgiverindgreb

    -   4.3.4 Tekstkritisk apparat

        -   4.3.4.1 \<app\>, \<lem\> og \<rdg\>

        -   4.3.4.2 \<note\>

        -   4.3.4.3 Semantisk mærkning og intern varians

        -   4.3.4.4 Flere eksempler på intern varians

    -   4.3.5 Interne og eksterne referencer

    -   4.3.6 Sidetal

-   4.4 Gengivelse

## 5 Site struktur

## 6 Anvendt litteratur

## 1 Indledning

## 1.1 Formål

*TEI fælles praksis* har til formål at formulere en fælles praksis for
kodningen af elektroniske tekster i TEI. Anbefalingerne i TEI P5 dækker
over et bredt spektrum af forskellige udgivelsestyper. Derfor kan man
som udgiver kode sine elektroniske filer på forskellig vis og stadig
være TEI-konform. Dette byder på vanskeligheder i forhold til
vedligeholdelse, bevaring og visning af digitale udgivelser. Med *TEI
fælles praksis* ønsker vi dels at gøre det simplere for den enkelte
udgiver at vælge de rette koder til sit arbejde, dels at gøre det
lettere for eftertidens bevaringsinstitutioner, idet udgivelser, som er
kodet ens, dvs. som benytter den anbefalede delmængde af TEI på netop
samme måde, også kan vedligeholdes og vises med samme type værktøjer. Et
vigtig led i disse bestræbelser er at etablere en fælles
visningsapplikation, som vil kunne præsentere udgaver af forskellig
slags i en ensartet visning. Planerne for det næste skridt er under
udarbejdelse, og der sigtes efter en løsning i 2018.

## 1.2 Organisation

Projektet *TEI fælles praksis* er et samarbejde mellem følgende
institutioner:

-   Det Danske Sprog- og Litteraturselskab

-   Det Kongelige Bibliotek

-   DigHumLab (Aarhus Universitet)

-   Center for Sprogteknologi (Københavns Universitet)

-   Grundtvigs Værker (Aarhus Universitet)

På baggrund af et fælles ønske om bedre bevaringsmuligheder og et
tættere samarbejde institutionerne imellem har repræsentanter fra
ovenstående siden 2016 indsamlet erfaringer og brugerperspektiver fra
forskellige digitale udgivelsesprojekter og resursesites. Projektet er
udpræget nationalt, men har også inddraget internationale
sparringspartnere heriblandt *Deutsches Textarchiv,* *Svenska
Litteratursällskapet i Finland, Litteraturbanken.se*, *bokselskap.no* og
*Henrik Ibsens Skrifter.* Parallelt med nærværende anbefalinger arbejdes
der på en forretningsmodel for projektet.

## 1.3 Om anbefalingerne
***TEI fælles praksis* er fuldt ud konform med TEI P5 og skal forstås
som en anbefalet delmængde heraf. Der er med andre ord ikke tale om en
ny standard for opmærkning. Det enkelte projekt kan uden problemer
benytte sig af en mere eller mindre avanceret opmærkning end den *TEI
fælles praksis* anbefaler, så længe kodningen er valid og konform i
forhold TEI P5. Den kommende fælles visningsapplikation vil kunne
fungere:

-   med den minimale kodning og teiHeader, som er tilladt i forhold til
    *TEI P5,* selvom elementer, vi gerne så være tilstede, er udeladt,
    og

-   med den maksimale kodning og teiHeader, som er tilladt i forhold til
    *TEI P5,* selvom kun de her anbefalede elementer vil blive håndteret
    og repræsenteret af applikationen.

Visningsapplikationen vil enten kunne ignorere den opmærkning, som
falder uden for, eller det enkelte projekt kan foretage en
transformation (en såkaldt dumb-down-process), hvormed den avancerede
(eller ikke-konforme) kodning fjernes og *TEI fælles praksis* står
tilbage. Ved afleveringen af et projekt kan vedhæftes kopier af det RNG
skema, som er anvendt til validering.[^1] Desuden skal det deklareres,
hvilken version af TEI P5, man har benyttet. Det gøres ved at indsætte
en versionsattribut på følgende vis mellem XML-kolofonen og teiHeaderen:

\<TEI version=\"5.3.2\"
xmlns=\"[http://www.tei-c.org/ns/1.0\"](http://www.tei-c.org/ns/1.0")\>[^2]

De følgende anbefalinger af skrevet af Lene Offersgaard (CST, KU),
Sigfrid Lundberg (KB), Thomas Hansen (DSL), Karsten Kynde (SKS), Kim
Steen Ravn (GV, AU) og Klaus Nielsen (GV, AU).

## 2 \<teiHeader\>

### 2.1 Overordnet vedr. teiHeader

En teiHeader kan bestå af en række elementer, hvoraf følgende vil blive
håndteret i *TEI fælles praksis*:[^3]

-   \<fileDesc\> (file description).

-   \<encodingDesc\> (encoding description) -- dokumenterer den
    kodningsmæssige relation mellem den elektroniske tekst og den eller
    de kilder, hvorfra den stammer.

-   \<profileDesc\> (text-profile description) -- giver en detaljeret
    beskrivelse af de ikke-bibliografiske aspekter ved teksten.

-   \<revisionDesc\> (revision description) -- opsummerer filens
    revisionshistorie.

Af ovenstående er kun \<fileDesc\> obligatorisk i *P5*. I tillæg hertil
er \<revisionsDesc\> obligatorisk i *TEI fælles praksis*. Angående
angivelse af sprog, så er det tilladt at angive attributten \@xml:lang
på alle elementer i teiHeaderen, der indeholder tekst. Vi anbefaler, at
man udnytter denne mulighed og at man enten angiver xml:lang på
teiHeader-elementet, eller, hvis der er brugt mere end et sprog, angiver
xml:lang der, hvor der er angivet tekst i elementerne.[^4]

### 2.2 \<fileDesc\>

Under elementet *file description* håndteres følgende elementer:
\<titleStmt\>, \<publicationStmt\>, \<notesStmt\> og \<sourceDesc\>.

### 2.2.1 \<titleStmt\>

Titelangivelsen (titleStmt) indeholder mindst et title-element,
efterfulgt af nul eller flere author-, editor-, og funder-elementer. I
author-elementet indsættes en ref-attribut, som linker forfatternavnet
til VIAF - Virtual International Authority File.[^5] Det samme kan gøres
på editor-elementet alternativt med attributten \@xml:id i stedet.

> \<titleStmt\>
>
> \<title[^6] xml:lang="da"\>Mit Livs Legende\</title\>
>
> \<author ref=\"https://viaf.org/viaf/100136529\"\>Johannes
> Jørgensen\</author\>
>
> \<editor xml:id=\"ei\"\>Elise Iuul\</editor\>
>
> \<editor xml:id=\"hw\"\>Henrik Wivel\</editor\>
>
> \<funder\>Carlsbergfondet\</funder\>
>
> \</titleStmt\>

Desuden kan author-elementet forsynes med en key-attribut til angivelse
af navnets normform fra VIAF. Dette kan bruges som sorteringsnøgle i
forbindelse med registre og andre oversigter. I ovenstående eksempel
ville dette give flg.:

\<author key=\"Jørgensen, Johannes\"
ref=\"https://viaf.org/viaf/100136529\"\>

> Johannes Jørgensen
>
> \</author\>

Forskellige former for redaktion eller bidrag kan specificeres vha.
attributten \@role. Med et engelsk eksempel fra *TEI P5*:

> \<editor role=\"Technical_Editor\"\>Ron Van den Branden\</editor\>\
> \<editor role=\"Editor-in-Chief\"\>John Walsh\</editor\>\
> \<editor role=\"Managing_Editor\"\>Anne Baillot\</editor\>[^7]

Attributværdierne til *role* kan uden problemer være udformet på danks.
Hvor der er behov for at anerkende andres indsats ud over de sædvanlige
roller som redaktør, oversætter og lignende, bruges elementet
\<respStmt\>. Denne kan bruges til fx bidragsydere, eller den
institution, som står for bevaringen. Med endnu et engelsk eksempel fra
TEI P5:

> \<respStmt\>\
> \<resp\>converted to XML encoding\</resp\>\
> \<name\>Alan Morrison\</name\>\
> \</respStmt\>[^8]

Som en del af elementet \<titleStmt\> kan udgiveren føje en forkortet
titel i form af yderligere titel-element med en type-attribut af værdien
*short*. Dette kan være nyttigt ift. navngivning af filer eller url\'er,
eller ifm. visningsapplikationen som indholdet af en titelbjælke. Ved at
forsyne værket en korttitel, sørger udgiveren for at en sådan
identifikation kommer i overensstemmelse med, hvad der i øvrigt måtte
være gængs praksis inden for det pågældende forskningsområde, fx:

> \<title\>Begrebet Angest\</title\>\
> \<title type=\"short\"\>BA\</title\>

eller

> \<title\>Om Religion og Liturgie\</title\>\
> \<title type=\"short\"\>\<idno type=\"SJ\"\>650\</idno\>\</title\>

I sidste eksempel bruges korttitlen til at angive et id-nummer \<idno\>.
I type-attributten angives kilden, som her er Steen Johansens
*Bibliografi over N.F.S. Grundtvigs skrifter* (1948-54).

### 2.2.2 \<publicationStmt\>

*TEI fælles praksis* forventer, at \<publicationStmt\> har mindst ét
publisher-element, netop ét pubPlace-element og netop ét date-element;
disse er obligatoriske. Derimod er elementerne idno og availability
optionelle. De fleste dokumenter, som skal håndteres af den kommende
fælles visningsapplikation, vil være offentlig tilgængelige. I det
omfang det ikke er tilfældet, angives restriktioner for hvem der må se
data ikke i \<availability\>. Adgangsaspektet må håndteres på anden vis.

I \<date\> oplyses udgivelsesdatoen vha. attributten \@when og med
værdier som "yyyy-mm-dd" eller "yyyy", fx \<date when="1993-02-28"\>

\<publicationStmt\> giver oplysninger om udgivelsen af den tekst, som
den elektroniske fil indeholder. Disse vil oftest være forskellige fra
udgivelsesoplysningerne vedrørende den tilgrundliggende kilde, som gives
i \<sourceDesc\>.

### 2.2.3 \<notesStmt\>

benyttes til at angive en beskrivelse af teksten, evt. hvilken helhed
den indgår i. Man kan bruge en resp-attribut, hvis man ønsker at angive,
hvem der er ansvarlig for beskrivelsen.

> \<notesStmt\>\
> \<note resp=\"duds.nordisk.ku.dk\"\>This text belongs to the Knowledge
> for\
> Everyman Corpus of Danish texts from the period 1500-1750.\</note\>
>
> \</notesStmt\>

### 2.2.4 \<sourceDesc\>

Herunder gives en række bibliografiske oplysninger om den eller de
kilder, som ligger til grund for teksten i det elektroniske dokument.
Den overordnede bibliografiske deklaration gives i elementet \<bibl\>.
Herpå følger evt. deklaration af enkeltstående værker i større samling
(\<listBibl\>), evt. manuskriptbeskrivelse (\<msDesc\>) og angivelse af
tekstvidner ifm. det tekstkritiske apparat (\<listWit\>).

#### 2.2.4.1 \<listBibl\> og \@decls

Den tekst, som den elektroniske fil indeholder, kan enten repræsentere
et enkeltstående værk (fx en roman, en novelle eller et digt) eller et
værk sammensat af flere mindre værker (fx en novellesamling, en antologi
eller en digtsamling). For sammensatte værker er det nødvendigt at skabe
indgange til enkeltteksterne således, at de kan tilgås via en
værkoversigt. I \<sourceDesc\> deklareres den eventuelle relation mellem
enkelttekster og den samlede helhed ved hjælp af elementet \<listBibl\>.

I \<listBibl\> oplistes i hver sit bibl-element alle de enkeltstående
værker (noveller, digte, salmer), som samlingen består af, og hver
tildeles de unikke xml:id\'er. I selve teksten optræder de enkeltstående
værker derpå i hver deres \<div\> og tildeles attributten \@decls, som
knytter an til oplysningerne i \<listBibl\>, jf. eksemplet nedenfor:

> \<sourceDesc\>
>
> \<bibl\>
>
> \<author ref=\"https://viaf.org/viaf/32788147\"\>
>
> \<name\>
>
> \<surname\>Grundtvig\</surname\>,
>
> \<forename\>N.F.S.\</forename\>
>
> \</name\>
>
> \</author\>
>
> \<title\>Sang-Værk til den danske Kirke\</title\>
>
> \<pubPlace\>Københavbn\</pubPlace\>
>
> \<date\>1944-1964\</date\>
>
> \</bibl\>
>
> \<listBibl\>
>
> \<bibl xml:id=\"biblid64543\"\>
>
> \<title\>Oprundet er vor Jubel-Fest\</title\>
>
> \</bibl\>
>
> \<bibl xml:id=\"biblid64544\"\>
>
> \<title\>Kirken er som Himmerige\</title\>
>
> \</bibl\>
>
> \<bibl xml:id=\"biblid64545\"\>
>
> \<title\>Vær trøstig, Zion, Jesu Brud!\</title\>
>
> \</bibl\>
>
> \</listBibl\>
>
> \</sourceDesc\>
>
> \[...\]
>
> \<text\>
>
> \<body\>
>
> \<div xml:id=\"workid64544\" decls=\"\#biblid64544\"\>
>
> \<head\>
>
> \<hi rend=\"italics\"\>No. 19\</hi\>
>
> \</head\>
>
> \<lg\>
>
> \<l\>Kirken er som Himmerige,\</l\>
>
> \<l\>Meget kan den lignes ved,\</l\>
>
> \<l\>Skiøndt paa Jord den har ei Lige,\</l\>
>
> \<l\>Som Guds Naade og Guds Fred!\</l\>
>
> \</lg\>

#### 2.2.4.2 \<msDesc\>

Ingen af de projekter, som danner grundlag for udarbejdelsen af
nærværende anbefalinger, benytter på nuværende tidspunkt \<msDesc\>, og
vi skønner, at dette element ikke vil blive håndteret i første udgave af
visningsapplikationen. Elementet kan medtages i en senere version og vil
da følge *TEI P5*\'s specifikationer, jf.
<http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-msDesc.html>.

#### 2.2.4.3 \<listWit\> og \<witness\>

I forbindelse med kodning af det tekstkritiske apparat (jf. afsnit 4.3.4
nedenfor) er det nødvendigt at deklarere, hvilke tekstvidner, der er
benyttet til etableringen af teksten. Dette gøres også i \<sourceDesc\>.
Elementet \<listWit\> oplister de anvendte tekstvidner i hver sit
witness-element, fx

> \<listWit\>\
> \<witness xml:id=\"A\"\>Førstetrykket\</witness\>\
> \<witness xml:id=\"B\"\>Anden udgave\</witness\>\
> \<witness xml:id=\"SS\"\>Samlede Skrifter\</witness\>\
> \</listWit\>

#### 2.2.4.4 \<date\>

I forbindelse med de bibliografiske oplysninger ovenfor angives datoer
(date-elementer) med følgende attributter:

-   when=\"yyyy-mm-dd\" eller \"yyyy\"

-   notBefore="yyyy-mm-dd\" eller "yyyy"

-   notAfter="yyyy-mm-dd" eller "yyyy"

Desuden er det muligt at angive en tekst i \<date\>, fx:

> \<date notBefore="1300-01-01" notAfter="1330-12-31"\>\
> Tidligt i det 14. århundrede\
> \</date\>

## 2.3 \<encodingDesc\>

Herunder håndteres bl.a. \<projectDesc\> til beskrivelse af formålet med
opmærkningen af filen, fx:

> \<projectDesc\>
>
> \<p\>DK-CLARIN WP2.1\</p\>
>
> \</projectDesc\>

Herudover kan der defineres praksis for kodning af anførselstegn under
\<editorialDecl\> (se 4.3.1.1), og detaljeret angivelse af gengivelse
under \<tagsDecl\> (se 4.4).

## 2.4 \<profileDesc\>

kan indeholde følgende elementer: \<langUsage\>, \<textClass\>,
\<abstract\>, \<calendarDesc\>, \<correspDesc \> og \<creation\>. Kun de
to første vil blive håndteret i *TEI fælles praksis*.

### 2.4.1 \<langUsage\>

I elementet \<langUsage\> kan angives et eller flere language-elementer.
Hvert language-element har attributten \@ident, hvis værdi er en
sprogkode, som følger ISO 639-1, fx da (dansk), de (tysk), en (engelsk)
og fr (fransk).

> \<langUsage\>
>
> \<language ident="da"\>Dansk\</language\>
>
> \</langUsage\>

For sproghistoriske perioder, som ikke dækkes af ISO-værdierne, fx
gammel dansk, anvendes standardforkortelserne fra sprogvidenskaben.[^9]
Et par eksempler:

|     glda     |     gammeldansk (1100-1500)          |   |   |
|--------------|--------------------------------------|---|---|
|     æmda     |     ældre middeldansk (1100-1350)    |   |   |
|     ymda     |     yngre middeldansk (1350-1500)    |   |   |
|     ænyda    |     ældre nydansk (1500-1700)        |   |   |

### 2.4.2 \<textClass\>

I *TEI fælles praksis* bruges dette element til at håndtere genre- og
emneklassifikationer. En liste med en grovinddeling af genrer vil blive
etableret efter nedenstående eksempel for at gøre dette element
operativt og søgbart.[^10] Emneklassifikationen er heroverfor åben, dvs.
at man her kan angive et hvilket som helst emneord. Det er valgfrit, om
man vil henvise til en emneordsliste i keywords-elementet.
|     LYRIK                                                                                                                                                                                                                                                                                                       |     PROSA                                                                                                                                                                                                               |     DRAMA                                                         |     ANDET                                                                                |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|------------------------------------------------------------------------------------------|
|     Digt          Dialog          Digtkreds          Digtsamling          Langdigt          Lejlighedsdigt          Rimkrønike          Rolledigt          Tilegnelsesdigt     Salme          Salmesamling     Sang     Rimbrev     Vise          Folkevise          Folkevisepastiche          Selskabsvise    |     Afhandling     Anmeldelse     Artikel     Breve     Dagbladsnotits     Foredrag          Foredragsrække     Lærebog     Pamflet     Prædiken          Prædikensamling     Subskriptionsindbydelse     Tale          |     Komedie     Tragedie     Læsedrama     Syngespil              |     Antologi     Tidsskrift      Værk sammensat af           forskellige genrer          |

> \<textClass\>
>
> \<classCode scheme=\"http://grundtvigsværker.dk/genre.xml\"\>
>
> \<term\>prosa\</term\>
>
> \<term\>artikel\</term\>
>
> \</classCode\>
>
> \<keywords\>
>
> \<term\>skolen\</term\>
>
> \<term\>politik\</term\>
>
> \</keywords\>
>
> \</textClass\>

## 2.5 \<correspDesc\>

Til udgivelse af brevmateriale kan det være nødvendigt at give
oplysninger om afsender, modtager, datering og lignende, som kendes af
udgiveren, men ikke fremgår af det pågældende brev. Dette håndteres
bedst i teiHeaderen under elementet \<correspDesc\> som beskrevet i *TEI
P5*, hvorfra eksemplet nedenfor er taget.[^11]

> \<correspDesc xml:id=\"message1\"\>\
> \<correspAction type=\"sent\"\>\
>    \<persName\>John Gneisenau Neihardt\</persName\>\
>    \<placeName\>Branson (Montgomery)\</placeName\>\
>    \<date when=\"1932-12-17\"/\>\
>   \</correspAction\>\
>   \<correspAction type=\"received\"\>\
>    \<persName\>Julius Temple House\</persName\>\
>    \<placeName\>New York\</placeName\>\
>   \</correspAction\>\
> \</correspDesc\>

Til korrespondenternes \<persName\>-elementer kan knyttes samme
xml:id-attribut som til editor-elementerne under \<titleStmt\> eller en
ref-attribut som til author-elementerne, se ovenfor punkt 2.2.1.

## 2.6 \<revisionDesc\>

angiver hvornår den digitale udgave af teksten senest er ændret.

> \<revisionDesc\>
>
> \<change when=\"2010-10-21\" status=\"published\"/\>
>
> \</revisionDesc\>

Hvis der er angivet flere change-elementer, med status="published", er
det den seneste dato, der angiver seneste ændring.

## 3 \<facsimile\>

Udgaver kodet i *TEI fælles praksis* kan inkludere faksimiler af fx de
tilgrundliggende originaler, hvilket vil blive understøttet i visningen.
Faksimiler er per definition dokument-eksternt indhold, og placeringen
af disse filer skal derfor deklareres entydigt ved hjælp af HTTP links.
Det enkelte projekt angiver her de komplette om end midlertidige
URL\'er, og bevaringsinstitutionen erstatter ved overdragelsen med nye
URL\'er for billedfilernes endelige placering. Umiddelbart efter
teiHeaderen følger facsimile-elementet, som er opbygget på følgende vis:

> \<facsimile\>\
> \<graphic xml:id=\"page001\"
> url=\"http://example.org/pages/page001.png\"/\>\
> \<graphic xml:id=\"page002\"
> url=\"http://example.org/pages/page002.png\"/\>\
> \<graphic xml:id=\"page003\"
> url=\"http://example.org/pages/page003.png\"/\>\
> \<graphic xml:id=\"page004\"
> url=\"http://example.org/pages/page004.png\"/\>\
> \</facsimile\>

Attributten \@url skal indeholde en komplet URI til hver enkelt side.
Hvert pb-element (se 4.3.6) i teksten refererer dermed til
graphic-elementer ved hjælp af xml:id\'erne, fx:

\<pb facs=\"\#page001\" /\>

Faksimiler skal være tilgængelige i et ukomprimeret format, fx TIFF, PNG
eller JPEG2000. Hvor komprimering ikke kan undgås, skal der så vidt
muligt anvendes et tabsfrit format.[^12]

## 4 \<text\>

Elementet \<text\> er efter \<teiHeader\> og den valgfri sektion
\<facsimile\> en af XML-filens hovedbestanddele. Den indeholder den
tekst, som skal repræsenteres, hvad enten den er en enhed (roman,
novelle, brev og lignende), eller udgør en helhed af flere mindre
enheder som fx en essay- eller digtsamling. Tekster med trykt eller
håndskrevet forlæg kan ofte opdeles i tre komponenter:

## 4.1 Inddeling af teksten

Først optræder oplysninger om værkets titel, forfatter, udgivelsessted;
dernæst følger teksten, og til sidst findes evt. registre, noter og
lignende. For at kunne bearbejde disse komponenter særskilt er elementet
\<text\> inddelt som følger:

-   \<front\> (*front matter*), præliminære oplysninger i form af
    titelblad, forside og forord

-   \<body\> (*text body*), den centrale komponent, som indeholder
    brødteksten

-   \<back\> (*back matter*), eventuelle appendikser og fortegnelser,
    som følger efter teksten

Af disse tre elementer er kun \<body\> obligatorisk.

### 4.1.1 \<front\>

Til behandling af forsider, titelblade, dedikationer og forord i trykte
forlæg anvendes \<front\>.

> \<front\>\
> \<titlePage\>\
> \<docAuthor \>HENRIK PONTOPPIDAN\</docAuthor\>\
> \<docTitle\>\
> \<titlePart\>DET FORJÆTTEDE LAND\</titlePart\>\
> \</docTitle\>\
> \<docEdition\>TREDJE (GENNEMSETE) UDGAVE\</docEdition\>\
> \<docImprint\>\
> \<graphic url=\"img/nordugle.gif\"/\>\
> \<pubPlace\>KØBENHAVN\</pubPlace\>\
> \<publisher\>DET NORDISKE FORLAG\</publisher\>\
> \<publisher\>BOGFORLAGET: ERNST BOJESEN\</publisher\>\
> \<date\>1898\</date\>\
> \</docImprint\>\
> \</titlePage\>\
> \<div\>\
> \<head\>FORORD\</head\>\
> \<p\>I Aarene 1891 --- 92 --- 95 udgav jeg de tre sammenhørende
> Fortællinger, som nu er samlede i dette Bind. Tiltrods for den lange,
> figurrige Billedrækkes noget skitsemæssige Udførelse og dens --- med
> Hensigt valgte --- kølige og tyndt paastregne Farver, hvis Anvendelse
> den Gang ikke var saa almindelig som nu, vandt Skriftet en efter vore
> Forhold ret udbredt Læsekres. Da der derfor blev Tale om endnu et nyt
> Optryk af det, følte jeg Trang til at eftergaa Figurernes Omridslinjer
> og --- uden at berøve Billedet Karakteren af et Maleri \<hi
> rend=\"italic\"\>al fresco\</hi\> --- at udføre lidt mere i det
> enkelte, hvad der af indre Træk kun var antydet. I denne Bearbejdelse
> er det, at Fortællingen foreligger her. Det er mit Haab, at den ikke
> maa have tabt i Liv og Friskhed, hvad den vistnok har Vundet i
> Afrundethed og Fasthed.\</p\>\
> \<p\>Avg. 98.\</p\>\
> \<closer\>Forf.\</closer\>\
> \</div\>\
> \</front\>

I Holbergs *Peder Paars* opdeles titlen i hoved- og undertitel, jf.
[*TEI
P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/DS.html#DSTITL)
4.6:

\<docTitle\>

> \<titlePart\>Peder Paars\</titlePart\>
>
> \<titlePart type=\"sub\"\>Poema Heroico-comicum\</titlePart\>

\</docTitle\>

### 4.1.2 \<body\>

Udgivelsens centrale del udgøres af elementet \<body\> (*text body*),
som indeholder teksten, inddelt som anført i det flg. afsnit 4.2, typisk
som et antal bøger, sange, dele eller kapitler vha. elementet
\<div\>.[^13]

### 4.1.3 \<back\>

I sektionen for tekstens *back matter* kan anføres fx efterskrift og
epilog, som efterfølger brødteksten.

> \<back\>\
> \<p\>Læsere af denne Bog vil kunne genfinde dens Personer i en anden,\
> der udkommer i en nær Fremtid.\</p\>\
> \<closer\>\
> Forf.\
> \</closer\>\
> \</back\>

## 4.2 Underinddeling af teksten

### 4.2.1 \<div\>

Til beskrivelse af tekstens disposition bruges elementet \<div\> (*text*
*division*), som er et rekursivt element, idet det kan inddeles med
andre div-elementer til en hvilken som helst dybde. Attributterne \@type
og \@n kan med fordel benyttes til at angive arten (med engelske
værdier, dvs. book, part, chapter, section etc.) og nummereringen af
inddelinger, hvor dette er relevant. Dertil føjes en xml:id, hvis værdi
skal være entydig og begynde med bogstav, i modsætning til attributten
n, hvis værdi følger forfatterens (evt. fejlagtige) mummerering.

En tekst i tre bøger kan fx struktureres sådan:

> \<body\>
>
> \<div type=\"book\" n=\"1\" xml:id=\"b1\"\> \... \</div\>
>
> \<div type=\"book\" n=\"2\" xml:id=\"b2\"\> \... \</div\>
>
> \<div type=\"book\" n=\"3\" xml:id=\"b3\"\> \... \</div\>
>
> \</body\>

En tekst med to dele, som hver indeholder et antal kapitler struktureres
således:

> \<body\>
>
> \<div type=\"part\" n=\"1\" xml:id=\"p1\"\>
>
> \<div type=\"chapter\" n=\"1\" xml:id=\"ch1.1\"\> \... \</div\>
>
> \<div type=\"chapter\" n=\"2\" xml:id=\"ch1.2\"\> \... \</div\>
>
> \...
>
> \</div\> \<!\-- slut på første del \--\>
>
> \<div type=\"part\" n=\"2\" xml:id=\"p2\"\>
>
> \<div type=\"chapter\" n=\"1\" xml:id=\"ch2.1\"\> \... \</div\>
>
> \<div type=\"chapter\" n=\"2\" xml:id=\"ch2.2\"\> \... \</div\>
>
> \...
>
> \</div\> \<!\-- slut på anden del \--\>
>
> \</body\>

En \<div\> kan indledes med en (eller flere) overskrift(er), \<head\>,
som kan specificeres ved attributten \@rend og værdierne angivet i
afsnit 4.4 fx

> \<div type=\"book\" n=\"1\" xml:id=\"b1\"\>\
> \<head\>FØRSTE BOG\</head\>\
> \<head rend=\"large\"\>TORBEN OG JYTTE\</head\>\
> \<div type=\"chapter\" n=\"1\" xml:id=\"b1.1\"\>\
> \<head\>I\</head\>\
> \<p\>Der var gaaet tre Aar siden den Septemberdag, da den unge
> Godsejer
>
> Torben Dihmer vendte hjem \...\</p\>
>
> \...\
> \</div\>
>
> \...\
> \</div\>

eller med et \<p\>-element, fx

> \<div\>
>
>   \<p\>Dette kapitel falder naturligt i tre dele: \... \</p\>
>
>   \<div\>\...\</div\>
>
>   \<div\>\...\</div\>
>
>   \<div\>\...\</div\>
>
>   \<!\-- NB: På dette sted må *ikke* forekomme et p-element \--\>
>
> \</div\>

### 4.2.2 Afsnit - \<paragraph\>

Under hierarkiet af elementerne \<body\> og \<div\> segmenteres
prosatekster i sideordnede afsnit vha. elementet \<p\> (*paragraph*).

### 4.2.3 Vers - \<lg\> og \<l\>

Til opmærkning af strofer og vers anvendes hhv. elementerne \<lg\>
(*line group*) og \<l\> (*line*). Dette gælder for både strofisk og
ikke-strofisk (stikisk) lyrik, dvs. at afsnit i prosadigte eller frie
vers også markeres med \<lg\>. Når verslinjen er brudt, markeres dette
vha. et \<lb\>-element (*line beginning*). Selv hvor der kun optræder en
enkelt verslinje, anbefales det at omgive den med \<lg\>.

> \<lg\>\
> \<l\>Skjøn \<hi rend=\"spaced\"\>Anne\</hi\> sig speiler og kruser sit
> Haar,\</l\>\
> \<l\>Ei længer hun kan sig det skjule:\</l\>\
> \<l\>For Roser, som rødmed i Ungdommens Vaar,\</l\>\
> \<l\>Hun seer kun Høstlilier gule;\</l\>\
> \<l\>Hos Verden, hos Verden, som byder Farvel,\</l\>\
> \<l\>Hos Verden er dog hendes Hjerte!\</l\>\
> \</lg\>

Nummerering af strofer eller afsnit indsættes ved tildeling af en
n-attribut, fx \<lg n="1"\>. Ønskes nummerering af linjer kan disse på
lignende vis forsynes med en n-attribut.

### 4.2.4 Citater - \<cit\>

Når et citat anføres som et særskilt afsnit i teksten, anvendes
elementet \<cit\> med de to sidestillede delelementer: \<quote\> og
\<bibl\>. Nedenstående eksempel er fra Sørens Kierkegaards *Stadier paa
Livets Vei* (1845):

> \<cit\>
>
>   \<quote\>
>
>     \<p\>Solche Werke sind Spiegel; wenn ein Affe hinein guckt, kann
> kein Apostel heraus sehen.\</p\>
>
>   \</quote\>
>
>   \<bibl\>Lichtenberg\</bibl\>
>
> \</cit\>[^14]

### 4.2.5 Figurer - \<figure\>

Elementet \<figure\> dækker to typer af fænomener i teksten:
dekorationer til adskillelse af afsnit og egentlige illustrationer.

> \<figure type=\"tripelasteriskup\"/\>\
> \<p\>Jeg taler helst med gamle Fruentimmer, der føre Familievrøvl,\
> dernæst med Afsindige -- og tilsidst med meget fornuftige Folk.\</p\>

Til markering af egentlige illustrationer henvises der til en billedfil
med elementet \<graphic\>. Hertil kan føjes en billedtekst i form af
elementet \<head\>, fx

> \<figure\>
>
>     \<graphic url=\"<http://example.org/illustrations/ill_k5.jpg>\"
> /\>
>
>     \<head\>5. Peter Klæstrups karikatur i Corsaren, nr. 278, den 16.
> jan. 1846\</head\>
>
> \</figure\>

Desuden kan elementet \<figDesc\> bruges til en kort beskrivelse af
indholdet i en figur eller et billede.

### 4.2.6 Sidehoved, sidefod og lignende - \<fw\>

Under fællesbetegnelsen forme work \<fw\> giver TEI P5 mulighed for at
opmærke de tekstdele på en side, som ikke hører til selve brødteksten.
Til \<fw\> kan knyttes en type-attribut med følgende værdier:

-   header -- klummetitel i sidehovedet

-   footer -- klummetitel i sidefoden

-   pageNum -- sidetal eller folieringsnummer

-   lineNum -- linjenummer

-   sig -- arksignatur

-   catch -- kustode

I *TEI fælles praksis* kan tekstdele opmærkes i \<fw\>-elementer, da
disse kan være et vigtig led i transskriberingen af primærkilden. I
første omgang vil \<fw\>-elementer dog ikke blive vist i en fælles
visningsapplikation. Sidetal håndteres i stedet som led af
pb-elemtentet, se 4.3.6, og linjetælling håndteres i kodningen af vers,
se 4.2.3.

### 4.2.6 Noter - \<note\>

Forfatterens egne noter indsættes med elementet \<note\> direkte i den
løbende tekst på det sted, hvor de er indvist, fx

> Først maa det afgiøres, om det hører til Løgnens Begreb, at den er en
> usædelig
>
> Handling\<note type=\"author\"\>\<p\>Dette er, efter Forfatterens
> Bemærkning, noget\
> Andet end at undersøge, om enhver Løgn er usædelig.\</p\>\</note\>,
> hvilket antages\
> af endeel især protestantiske Forfattere, \...

Noten typologiseres med attributværdien \"author\" for at skelne den fra
andre typer note fx den tekstkritiske udgivers, jf. afsnit 4.3.4.2,
eller en med forfatteren samtidig redaktør. Et eksempel herpå finde i
Grundtvigs forfatterskab, hvor K.L. Rhabek som redaktør og udgiver af
tidsskriftet *Ny Minerva* har tilføjet fodnoter til Grundtvigs bidrag
"Lidet om Sangene i Edda" fra september 1806 (s. 270-299; s. 290):

![](https://github.com/kb-dk/public-adl-text-sources/blob/faelles-praksis/sections/TEI_photo.png)

Noten opmærkes på samme måde, som en fodnote af forfatteren selv, men
med type-værdien prevEditor:

> \<note type=\"prevEditor\"\>\<p\>Den Anmærkning rammer blot en hidtil
> urettet Trykfeil. Den rigtige Titel er: Kiærlighed, Gudernes
> Straf.\</p\>\<p rend=\"firstIndentRight\"\>K R.\</p\>\</note\>

Af praktiske hensyn kan noter anbringes samlet fx i slutningen af
teksten. På indvisnings-stedet placeres der et pointer-element \<ptr\>,
fx

> \<div type="chapter"\>
>
> \<p\>Først maa det afgiøres, om det hører til Løgnens Begreb, at den
> er en usædelig
>
> Handling\<ptr target="\#n1"/\>, hvilket antages af endeel især
> protestantiske
>
> Forfattere, \...\</p\>

\...

\</div\>

> \...
>
> \<div type="notes"\>
>
> \<note type=\"author\" xml:id="n1"\>\<p\>Dette er, efter Forfatterens
> Bemærkning, noget
>
> Andet end at undersøge, om enhver Løgn er usædelig.\</p\>\</note\>
>
> \</div\>

### 4.2.7 Breve

Breve kan benytte elementerne nævnt i [*TEI
P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/DS.html#DSOC)
4.2.2, fx \<opener\> og \<closer\>.

> \<div type=\"letter\"\>\
> \<opener\>\
> \<dateline\>\
> \<date when=\"1837-12-07\"\>d. 7 Dec. 37\</date\>.\
> \</dateline\>\
> \<salute\>Kjære!\</salute\>\
> \</opener\>\
> \<div type=\"mainText\"\>\
> \<p\>Hermed sender jeg Dem engang de Penge, De engang \[\...\]\
> takker jeg Dem derfor isærdeleshed.\</p\>\
> \</div\>\
> \<closer\>\
> \<signed\>\
> Deres\
> \<lb/\>S. Kierkegaard.\
> \</signed\>\
> \</closer\>\
> \<postscript\>\
> \<p\>\<choice\>\<abbr\>P.S.\</abbr\>\<expan\>Post
> Scriptum\</expan\>\</choice\> Giv mit Bud paa en Stump Papir en eller
> anden Hieroglyph tilbage som Tegn paa, at De har modtaget dette
> \...\</p\>\
> \</postscript\>\
> \</div\>

Hvor et brev ikke angiver oplysninger om korrespondenter, datering og
lignende, kan disse suppleres i \<correspDesc\> i teiHeaderen, jf.
ovenfor punkt 2.5.

### 4.2.8 Drama - \<sp\>, \<speaker\> og \<stage\>

Til drama anvendes elementet \<sp\> (*speech*) til gengivelse af hver
enkelt replik i en dramatisk tekst. Under \<sp\> optræder altid et
speaker-element med karakterens navn efterfulgt af enten prosa- eller
vers-opmærkning, jf. 4.2.2 eller 4.2.3.

-   \<sp\> rummer en individuel replik i drama

-   \<speaker\> navnet på karakteren

-   \<stage\> regibemærkning

> \<sp\>
>
> \<speaker\>Herkules\</speaker\>
>
> \<p\>Hvor er Wieland? Der staaer han. Han, naa, han er lille nok,
> saadan havde jeg netop forestillet mig ham. Er I den Mand, som altid
> fører Hercules i Munden?\</p\>
>
> \</sp\>
>
> \<sp\>
>
> \<speaker\>Wieland\</speaker\>
>
> \<stage\>(vigende tilbage)\</stage\>
>
> \<p\>Jeg har Intet at gjøre med Jer, Colos.\</p\>
>
> \</sp\>
>
> \<sp\>
>
> \<speaker\>Herkules\</speaker\>
>
> \<p\>Hvad nu, bliv kun!\</p\>
>
> \</sp\>

Til speaker-elementet kan føjes en attribut \@who, hvis værdi skal være
den samme som anvendt i key-attributten under \<persName\>, jf. 4.3.2.

### 4.2.9 Tabeller - \<table\>

Tabeller kan opsættes med elementet \<table\>, se i *TEI P5,* 14.1.1
\<http://www.tei-c.org/release/doc/tei-p5-doc/en/html/FT.html\#FTTAB1\>.
Rækker eller søjler kan efter behov klappes sammen med attributterne
\@rows eller \@cols, fx (SKS, 3.2.1)

> \<table\>\
> \<row\> \<cell/\> \<cell cols=\"2\"\>En Bestaaen for sig
> (Individualitet)\</cell\> \</row\>\
> \<row\> \<cell/\> \<cell\>Receptivitet\</cell\>
> \<cell\>Spontaneitet.\</cell\> \</row\>\
> \<row\> \<cell\>1.\</cell\> \<cell cols=\"2\" rendition=\"\#center\"\>
> Krystal. \</cell\> \</row\>\
> \<row\> \<cell/\> \<cell cols=\"2\"
> rendition=\"\#center\"\>(Production)\</cell\> \</row\>\
> \<row\> \<cell\>2.\</cell\> \<cell cols=\"2\" rendition=\"\#center\"\>
> Plante. \</cell\> \</row\>\
> \...\
> \</table\>

Eksemplet repræsenterer følgende tabelopstilling:[^15]
|                           |     En   Bestaaen for sig (Individualitet)    |                      |   |
|---------------------------|-----------------------------------------------|----------------------|---|
|                           |     Receptivitet                              |     Spontaneitet.    |   |
|     1.                    |     Krystal.                                  |                      |   |
|                           |     (Production)                              |                      |   |
|     2.                    |     Plante.                                   |                      |   |                          

### 4.2.10 Lister - \<list\>

Lister er en speciel, ofte forekommende form for tabeller. De kodes med
elementet \<list\> og evt. \<label\> og \<item\>, fx

> \<list\>\
> \<label\>1.\</label\>\
> \<item\>Definitionen maa altsaa angive de væsentlige Kjendemærker d.
> e. saadanne, der høre til\
> den Gjenstands Væsen, som skal forklares, og af hvilke man ingen kan
> borttage, uden at dens\
> Begreb bliver ufuldstændigt.\</item\>\
> \<label\>2.\</label\>\
> \<item\>Indeholder Definitionen de væsentlige Kjendeærker, saa vil den
> ogsaa passe \...\</item\>\
> \...\
> \<list\>

\<label\> undlades i tilfælde, hvor listen ikke er ordnet med numre,
bogstaver eller lignende.[^16]

## 4.3 Markeringer i den løbende tekst

### 4.3.1 Fremhævelser

Man kan ifølge *TEI P5* principielt fremhæve tekst på to måder:
semantisk ud fra tekstens betydning eller rent typografisk som blot
fremhævelsesmiddel.

-   Semantisk: emfase \<emph\>, refereret \<mentioned\> eller
    fremmedsproglig \<foreign\>

-   Typografisk: fremhævelse (highlight) \<hi\>

Begge typer tager en attribut \@rend (se nedenfor afsnit 4.4) som videre
specificerer, hvordan fremhævelsen er gengivet (kursiv, spatieret, i
anførselstegn osv.) I fravær af yderligere specifikation sættes sådanne
ord i *kursiv*

> Gå \<hi rend=\"italic\"\>ikke\</hi\> over sporet, der kommer tog
>
> Gå \<emph\>ikke\</emph\> over sporet, der kommer tog

Begge disse opmærkninger fortæller os, at *\'ikke\'* er gengivet i
kursiv. Dog bør udgiveren ikke fristes til at kode \<emph\> om enhver
kursiv tekst. Kendes grunden til kursiveringen ikke, eller mener
udgiveren, at dette skal være op til læseren selv at afgøre, *skal* der
ubetinget benyttes \<hi rend=\"italic\"\>, jf. [*TEI
P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/CO.html#COHQ)
3.3.

#### 4.3.1.1 Anførselstegn

*TEI P5* har yderligere tre elementer til at fremhæve tekst, som normalt
vil blive sat i anførselstegn, nemlig \<said\>, \<soCalled\> og \<q\>. I
udgivelse af romanlitteratur er den sidste, generelle mærkning af anført
tale, \<q\> mest interessant, fx

> \<p\>\<q\>A haar min Instruks,\</q\> sagde hun paa et fremmedartet
> Jysk.
>
> \<q\>Det veed De jo aa saa møj godt, Mikkelsen.\</q\>\</p\>

Fordelen ved en sådan kodning er, at man med en xml-editor har
muligheden for automatisk at kontrollere, om alle
begyndelsesanførselstegn har matchende sluttegn. Man kan sikre sig, at
der benyttes en bestemt type enkelte, dobbelte, ens eller forskellige
tegn og let skifte disse ud med andre i overensstemmelse med en stedlig
standard.

Hvis man ikke ønsker et eller begge anførselstegn sat, hvor anført tale
går ud over et afsnit i teksten (fx fordi forfatteren ikke benytter
slutanførselstegn), kan man specificere dette i en rend-attribut:

-   \<q rend=\"beg\"\> sæt kun begyndelsestegn ved \<q\>

-   \<q rend=\"end\"\> sæt kun sluttegn ved \</q\>

-   \<q rend=\"no\"\> sæt ingen tegn

*TEI P5* anbefaler (jf.
[2.3.3](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/HD.html#HD53))
at praksis ifm. anførselstegn under alle omstændigheder erklæres i
teiHeader'en, fx for ovenstående

> \<encodingDesc\>\
> \<editorialDecl\>\
> \<quotation marks=\"none\"/\>\
> \</editorialDecl\>

eller hvor anførselstegn er sat eksplicit

> \<quotation marks=\"all\"/\>

### 4.3.2 Navne og termer

*TEI P5* tillader, at person- og stednavne kodes på forskellig vis. Fx
kan et personnavn opmærkes på en af tre måder:

> \<persName\>Nielsen\</persName\>
>
> \<name type=\"pers\"\>Nielsen\</name\>
>
> \<rs type=\"pers\"\>Nielsen\</rs\>

*TEI fælles praksis* anbefaler, at der bruges \<persName\> og
\<placeName\>.

#### 4.3.2.1 Personnavne - \<persName\>

Alle tre ovennævnte opmærkninger identificerer personen entydigt gennem
en key-attribut[^17], fx

> I alle vore litterære Bevægelser i dette Aarhundredes Begyndelse,
>
> i \<persName key=\"adam-oehlenschlager\"\>Oehlenschlägers\</persName\>
>
> Poesier, i \<persName key=\"n-f-s-grundtvig\"\>Grundtvigs\</persName\>
>
> Prædikener, i \...

#### 4.3.2.2 Stednavne - \<placeName\>

Alle placeName-elementer tager en \@key til præcisering af stedet, fx

> Ideer fra \<placeName key=\"tyskland\"\>Tydskland\</placeName\>,
>
> Revolutionens fra \<placeName key=\"frankrig\"\>Frankrig\</placeName\>

#### 4.3.2.3 Andre navne eller termer - \<rs\>

Andre termer kan markeres som *reference string* med elementet \<rs\> og
attributten \@type

> \<rs type=\"X\"\>

fx bibelsteder med en key-attribut, hvis værdi følger moderne
standardforkortelser

> Et ganske fuldendt Exempel paa Romantik finder jeg i det Gamle
> Testamente,
>
> i \<rs type=\"bible\" key=\"Judit 10,11\"\>Judiths Bog, Cap. 10, V.
> 11\</rs\> (*SKS*, 2.4.6)

eller mytologisk stof med en key-attribut, hvis værdi henviser til en
dokument-ekstern database

> de ærværdige Sagn, \<rs key=\"myth64\" type=\"myth\"\>Saga\</rs\> med
> Griffel
>
> og Skjold optegnede i sit Tempel (Grundtvig: "Lidet om Sangene i
> Edda")

### 4.3.3 Udgiverindgreb

Udgiverindgreb vil ofte skulle behandles i det tekstkritiske apparat, se
næste afsnit, 4.3.4.

For så vidt man måtte ønske sig udgiverindgreb præsenteret integralt i
teksten, fx længere slettede passager eller udgiversuppleringer, som
ønskes anbragt i teksten i en form for diakritiske klammer
(kantparenteser, vinkelparenteser, arme eller fødder), kan disse
markeres med elementerne \<del\>, \<supplied\> osv. *uden for* det
egentlige tekstkritiske apparat.

Til optagelse af fx middelalderlige forkortelser og deres opløsninger
anvendes elementet \<ex\> (*editorial expansion*), som udfyldes med
tekst suppleret af redaktøren, fx

Oc weth\<ex\>e\</ex\>r kende hwn sigh \... (Dipl. Dan. 14151114001)

Til tvivlsomme læsninger bruges elementet \<unClear\>, fx

> hvor skulde \<unclear\>En\</unclear\> ogsaa have
> ahnet\<unclear\>,\</unclear\>\
> at en saadan ung Pige kunde gaae og gjemme saadanne Ideer. Men
> saaledes\
> var \<unclear\>··\</unclear\> Pige, (*SKS*, 2.3.11.1)

Til udgiversuppleringer bruges elementet \<supplied\>, fx

> Situationen er humoristisk nok, en gl.
> China\<supplied\>-Ca\</supplied\>ptain (74 Aar gl.)\
> taler med mig paa den Maade derom. (*SKS*, 2.3.11.2)

Og til slettet tekst bruges elementet \<del\>, fx

> \<del\>Hver Mandag mell. 9-10 Formiddag har hun mødt mig. Jeg har
> intet Skridt\
> gjort derfor. Hun veed, hvilken Vei jeg pleier at gaae, jeg veed, hvad
> Vei hun jeg \<unclear\>faar\</unclear\> dog gjort Alt saaledes, at hun
> ikke ahner, \[\...\]\</del\> (*SKS*, 2.3.11.3)

### 4.3.4 Tekstkritisk apparat

Ved tekstkritisk apparat eller kort: *apparatet*, forstås de noter til
den løbende tekst som i en bogudgave sædvanligvis anbringes under en
streg i bunden af siden, hvorfra de er indvist i teksten på forskellig
måde. Indvisningen i en digital udgave vil finde sted på anden vis,
typisk ved tilvalg i en visningsmenu kombineret med museklik på de
berørte ord i teksten.

Apparatet falder i to hovedgrupper: egentlig *tekstkritik*, dvs.
udgiverens rettelse af tekstfejl eller supplerende oplysning om vage
tekststeder, og *intern varians*, dvs. tekststeder, hvor forfatteren
selv har rettet i sin tekst. De to typer anføres med typeværdierne
\"tc\" hhv. \"var\". Kombinerede noter har type=\"tc_var\" (jf. *LHS
Guidelines*, pkt. 9.2).

#### 4.3.4.1 \<app\>, \<lem\> og \<rdg\>

Apparatet kodes ved hjælp af app-elementet.[^18] \<app\> har højst ét
lemma \<lem\> og ingen, én eller flere læsninger \<rdg\>.[^19]
Elementerne \<lem\> og \<rdg\> kan begge tage attributterne \@wit,
\@resp eller \@source, der i præsentationen af apparatet anbringes som
en fremhævet *sigel* (fx i kursiv) efter den pågældende læsning. Vi
finder at man uden tab af information kan benytte sig at den førstnævnte
attribut \@wit i alle tilfælde. Når der i de følgende eksempler er
benyttet andre, skyldes det de citerede udgavers praksis.

Attributten \@wit (og de øvrige) er af datatypen: *occurrences of
teidata.pointer separated by whitespace.* Dvs. der kan forekomme flere
sigler i samme attribut, adskilt af mellemrum. At de er datapegere
betyder, at de skal foranstilles \# og henvise til en beskrivelse i
listWit-sektionen af \<sourceDesc\>, se 2.2.4.3. Sigler skal overholde
reglerne for TEI navne, hvorfor sigler som B&A eller a^2^ ikke er
tilladte og må kaldes noget andet, fx BogA og a2.

Det følgende eksempel på tekstkritik er knyttet til et tekststed, hvor
de bedste tekstvidner har \"høre\", herunder den primære grundtekst,
*A*, og renskriften hertil, *a*. Udgiveren har imidlertid valgt
\"hører\", sådan som der står i værkets 2. udgave, *B*, og som også er
gået videre i 3. udgaven, *C*. Dette er, hvad der kommer til at stå i
den løbende tekst, og det er samtidig notens *lemma* (dvs. uddrag af
teksten). Den tidligere udgivelse *Samlede Skrifter*, *SS*, har dog
beholdt grundtekstens form.

> \<app type=\"tc\"\>\
> \<lem wit=\"\#B \#C\"\>hører\</lem\>\
> \<rdg wit=\"\#A \#a\"\>høre\</rdg\>\
> \<rdg resp=\"\#SS\"\>høre\</rdg\>\
> \</app\> (*LHS Guidelines*, 9.4.4)

som kunne gengives

hører\] *B C,* høre *A a,* høre *SS*

#### 4.3.4.2 \<note\>

\<app\>-elementet kan forsynes med et antal supplerende noter, \<note
type=\"editor\"\>, til udgiverteksten, fx

> \<app type=\"tc\"\>\
> \<lem wit=\"\#N \#Λ\"\>ut\</lem\>\
> \<rdg wit=\"\#A\"\>et\</rdg\>\
> \<rdg source=\"\#Nodell\"\>ac\</rdg\>\
> \<rdg source=\"\#Heyworth\" cert=\"low\"\>\
> \<note type=\"editor\"\>perhaps\</note\>\
> quam\</rdg\>\
> \</app\> (*TEI P5*, 12.4)

som kunne gengives

ut\] *N, Λ,* et *A,* ac *Nodell,* *perhaps* quam *Heyworth*

Det følgende er et eksempel på kodningen af intern varians og stammer
fra *Søren Kierkegaards Skrifter*: I sin dagbog fortæller forfatteren om
et møde med sin sætter. I anden sætning skriver han \"Han be\" (skal
måske fortsættes: \"-gynder at ...\"), men fortryder, streger de to ord
ud og fortsætter i stedet: \"Jeg loe rigtignok lidt af ham\"

> Sætteren beder for dette Forord.\
> \<app type=\"var\"\>\
> \<lem\>Jeg\</lem\>\
> \<rdg\>\<note type=\"editor\"\>først skrevet\</note\> Han be\</rdg\>\
> \</app\>\
> loe rigtignok lidt af ham, (*SKS* 2.5.2.2)

som kunne gengives

> Jeg\] *først skrevet* Han be

\<lem\> skal nødvendigvis stå først. Ovenstående kodning transskriberer
med andre ord teksten i modsat rækkefølge af, hvordan den optræder i
manuskriptet.

Attributten \@wit er ikke nødvendig, når det drejer sig om interne
varianter, siden læsemåden i både \<lem\> og \<rdg\> altid vil være fra
grundteksten, altså manuskriptet.

\<app\>-elementer i \<app\>-elementer er ikke tilladt. Brug i stedet
\<note type="editor"\> til at afklare fx rettelser i rettelser.

#### 4.3.4.3 Semantisk mærkning

Ovenstående praksis udgør de nødvendige markeringer til en passende
*præsentation* af apparatet, dvs. at udgiveren hermed kan udforme sine
noter, som det måtte ønskes. For også at støtte en egl. maskinlæsbar
*semantik* kan man derudover mærke den enkelte læsning med den relevante
TEI-mærkning, fx en korrektion med \<corr\> for at markere, at rettelsen
er udgiverens uden belæg i et tekstvidne:

> \<app type=\"tc\"\>\
> \<lem resp=\"\#Rahbek\"\>\<corr\>belee,\</corr\>\</lem\>\
> \<rdg wit=\"\#A \#a \#B \#a2 \#a3\"\>belee.\</rdg\>\
> \</app\> (*LHS Guidelines,* pkt. 9.4.3)

som kunne gengives

belee,\] *Rahbek,* belee. *A a B a2 a3*

Det ovenfor anførte eksempel på intern varians i afsnit 4.3.4.2 udgør en
såkaldt 'straksrettelse', hvor forfatteren har streget noget ud og
rettet umiddelbart herefter, før han har fortsat sin skrivning.[^20] Det
kan læses ud af noteteksten \"først skrevet\", og betegnelsen er
beskrevet i den pågældende udgaves retningslinjer. Vi kan udtrykke dette
i TEI ved at mærke den pågældende læsning

> \<rdg\>\<del instant=\"true\"\>\<note type=\"editor\"\>først
> skrevet\</note\> Han be\</del\>\</rdg\>

I det følgende eksempel er der tale om en tilføjelse, som mærkes med
elementet \<add\>:

> en Pige, der i de afgjørende Dage før Brylluppet\
> \<app type=\"var\"\>\
> \<lem\>\
> \<add instant=\"false\"\>blev bedraget\<note
> type=\"editor\"\>tilføjet\</note\>\</add\>\
> \</lem\>\
> \</app\>, (*SKS,* 2.5.2.2)

Der er ingen alternativ læsning; en tilføjelse kan per definition ikke
være øjeblikkelig.

Følgende mærkning er relevant for apparatet:

-   \<corr\> Udgiverrettelse

-   \<supplied\> Udgiversupplering

-   \<sic\> Tekstproblem bemærket, men ikke rettet

-   \<del\> Slettet af forfatteren

-   \<add\> Tilføjet af forfatteren

I tilfælde hvor der er tale om en ofte tilbagevendende udgivertekst, kan
man sammenkæde den semantiske mærkning med udgavens foretrukne tekst til
betegnelse af fænomenet vha. attributten \@rendition i stedet for noten,
fx

\<del instant=\"true\" rendition=\"\#fs\"/\>Han be\</del\>

hvor en tilhørende \<rendition\> anføres i teiHeader'ens
\<encodingDesc\> (*TEI P5*, 2.3.4.1):

> \<rendition xml:id=\"fs\" selector=\"del\"
> scope=\"before\"\>content:\"først skrevet\"\</rendition\>\
> \<rendition xml:id=\"aef\" selector=\"del\"
> scope=\"before\"\>content:\"ændret fra\"\</rendition\>\
> \<rendition xml:id=\"uvis\" selector=\"del\"
> scope=\"before\"\>content:\"&lt;\"\</rendition\>\
> \<rendition xml:id=\"til\" selector=\"add\"
> scope=\"after\"\>content:\"tilføjet\"\</rendition\>

#### 4.3.4.4 Flere eksempler på intern varians

I det foregående behandledes intern varians genetisk mht. øjeblikkelige
rettelser og senere tilføjelser. Det følgende eksempel[^21] viser
kodningen af en senere rettelse med erstattende variant:

> (...) Havde vi nu den\
> \<app type=\"var\"\>\
> \<lem\>\<add\>krøllede\</add\>\</lem\>\
> \<rdg\>\<del instant=\"false\" rendition=\"aef\"\>hvide\</rdg\>
>
> \</app\> Fritz (...)

som kunne vises

krøllede\] *ændret fra* hvide

Endelig kan genesen være usikker, fx hvor et bogstav er rettet ved
overskrivning

> (...) om hans\
> \<app type=\"var\"\>\
> \<lem\>\<add\>Karakter\</add\>\</lem\>\
> \<rdg\>\<del instant=\"unknown\" rendition=\"uvis\"\>Carakter\</rdg\>
>
> \</app\>. Han er opdraget (...)

som kunne vises

Karakter\] \< Charakter

Er genesen usikker kan man desuden anvende en positionel angivelse.
Hertil har TEI en række forslag ([*TEI
P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.placement.html#tei_att.place)
app. B, att.placement). I dette tilfælde har forfatteren tilføjet noget
over linjen uden at indvise den nye tekst og uden at slette tilsvarende
tekst i linjen:

> (...) Efterat Fritz havde strøifet en 14 Dages Tid omkring i Jylland\
> \<app type=\"var\"\>\
> \<lem\>saa han snart den Tid imøde\</lem\>\
> \<rdg\>\<add place=\"above\"\>mærkede han at den Tid snart vilde
> komme\</add\>\</rdg\>\
> \</app\> da han ikke meer havde noget (...)

som kunne vises

saa han snart den Tid imøde\] *over linjen er tilføjet* mærkede han at
den Tid snart vilde komme

### 4.3.5 Interne og eksterne referencer

Henvisninger til andre ressourcer indsættes i elementet \<ref\> på
følgende måde:

> \... \<ref target=\"14091009001\"\>14091009001\</ref\> \...

En \<ref\> forsynes med en attributten \@type, som angiver referencens
art, fx en realkommentar

> Vil man have et Billede af Forholdet som det er eller var, maa man
> tænke sig\
> \<ref type=\"commentary\" target=\"comm.xml\#010\"\>den gamle Fabel om
> Ræven og\
> Storken\</ref\>. De husker, at Ræven bød Storken til Gjæst, men \...

### 4.3.6 Sidetal

Sideskift i forlæg markeres med det tomme element \<pb/\> (*page
beginning*). Elementet kan indeholde tre attributter:

-   \@edRef[^22] (edition) udfyldes med sigelværdien for det relevante
    tekstvidne

-   \@n (number) udfyldes med tekstvidnets sidetal.

-   \@rend (rendition) -- såfremt tekstvidnet ikke indeholder
    paginering, angives suppleringen \<pb n=\"2\" rend=\"supplied\"/\>

-   \@facs (facsimile) udfyldes med en fil-id for den tilknyttede
    faksimile

Et eksempel på en pb-element kunne se således ud:

\<pb edRef=\"\#A\" n=\"5\" facs=\"\#page005\" /\>

## 4.4 Gengivelse

Der findes en række attributter, som kan anføres til ethvert
TEI-element, herunder \@rend og \@rendition, som beskæftiger sig med
tekstens gengivelse.[^23] Forskellen på de to er, at \@rendition er en
reference til et andet element, \<rendition\>, mens \@rend er en løsere
prosabetegnelse for gengivelsen, se nedenfor. Begge kan have flere
værdier adskilt af mellemrum.

Elementer som markerer løbende tekst (sådanne som er nævnt i 4.3) kan
benytte sig af gengivelser, som specificerer skriftstørrelse eller
skriftart, mens blok-elementer (4.2) tillige kan benytte sig af
gengivelser, som specificerer indrykning eller margen.

Følgende værdier er bl.a. forhåndsdefinerede for \@rend:

  ---------------- ----------------------------------------
  center           centreret tekst
  right            højrestillet tekst
  indent           indrykning af første linje i et afsnit
  margin-left      indrykning af helt afsnit
  italic           kursiv
  small            petit skriftgrad
  large            stor skriftgrad
  letter-spacing   spatieret
  bold             fed skrift
  underline        understreget
  small-caps       kapitæler
  sub              lavstillet tekst
  super            højtstillet tekst
  ---------------- ----------------------------------------

En højrestillet tekst kan fx kodes således:

> \<p rend=\"right\"\>Søndag.\</p\>

Tilsvarende kan \@rendition benyttes til samme formål, fx

> \<p rendition=\"\#right\"\>Søndag.\</p\>

Udover den foranstillede havelåge: \"\#right\", fordrer denne kodning,
at man i teiHeader'ens \<encodingDesc\> har specificeret

> \<encodingDesc\>
>
> \<tagsDecl\>
>
> \<rendition xml:id=\"right\"\>text-align: right\</rendition\>
>
> (jf. [*TEI
> P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/HD.html#HD57-1)
> 2.3.4.1)

Indholdet i dette element er kodet efter *Cascading Style Sheets*
([www.w3.org/TR/CSS/](https://www.w3.org/TR/CSS/)), og tillader dermed
udgiveren at specificere ganske avancerede gengivelser, fx hængende
indrykning, dvs. indrykning af alle linjer undtagen den første:

> \<rendition xml:id=\"hang\"\>margin-left: 1em; text-indent:
> -1em\</rendition\>

## 5 Site struktur

Det anbefales af fx kommentarer og registrer holdes adskilt fra den
udgivne tekst og placeres i separate filer. Henvisninger mellem
tekstdokumentet og disse laves med relative links, jf. 4.3.5.

## 6 Anvendt litteratur

URL'er kontrolleret 30.8.2017. Nedenstående liste indeholder både
offentlig tilgængeligt materiale og interne dokumenter.

*Beckett Digital Manuscript Project Encoding Manual,*
<http://uahost.uantwerpen.be/bdmp/>

*Dansk Sproghistorie* 1-6, bind 1, red. Laurids Kristian Fahl Ebba
Hjorth, Henrik Galberg Jacobsen, Bent Jørgensen & Birgitte Jacobsen, Det
Danske Sprog- og Litteraturselskab & Aarhus Universitetsforlag 2016

*Dsl-basis -- retningslinjer for digital udgivelse af det Danske Sprog-
og Litteraturselskabs tekster,* ufuldstændig og ikke gennemredigeret
kladde, Thomas Hansen, 21.3.2017, København \[INTERNT\]

Kondrup, Johnny: *Editionsfilologi*, København: Museum Tusculanum Press
2011

*LHS - Kodingsretningslinjer for Ludvig Holbergs skrifter,* versjon 1.1,
sidst revideret 8.11.2013, <http://plutus.uib.no/doc/LHS_Kodebok.pdf>

*Poul Martin Møllers skrifter,* prototype, en kodebog er ikke
offentliggjort, men xml-filerne ligger tilgængelige på
[http://pmm.dsl.dk](http://pmm.dsl.dk/)

*Retningslinjer for Henrik Ibsens skrifter. Retningslinjer for
tekstkoding (Kodepraksis),*
<http://www.edd.uio.no/cocoon/ibsenarkiv01_02/kodepraksis.xhtml>

*Retningslinjer for XML-kodningen af Grundtvigs Værker,* Kim Steen Ravn,
sidst revideret: 17.8.2016,
[http://www.grundtvigsværker.dk](http://www.grundtvigsværker.dk)
\[INTERNT\]

*SKS - TEI usage for Søren Kierkegaards Skrifter. Code book and
documentation,* revideret udgave 1.9, Karsten Kynde, 24.2.2017,
<https://sid.erda.dk/share_redirect/cxBocvPeF8/data/v1.9/red/teidoc.htm>

*TEI P5: Guidelines for Electronic Text Encoding and Interchange,*
version 3.1.0, last updated on 15th December 2016, revision d3f5e70,
[http://www.teic.org/release/doc/tei p5
doc/en/html/](http://www.teic.org/release/doc/tei p5 doc/en/html/)

*Zacharias Topelius Skrifter, Metoder, textkodning och verktyg,* Anna
Movall, Katarina Pihlflyckt & Elisa Veit, sidst revideret 11.2.2016
<http://www.topelius.fi/pdf_zts/metoder_textkodning_verktyg.pdf>

[^1]: Dette kan evt. gøres ved hjælp af en ODD-fil, jf. *TEI P5*
    <http://www.tei-c.org/Guidelines/Customization/odds.xml>.

[^2]: Versionsnummer fremgår øverst (og nederst) på TEIs hjemmeside og
    sammensættes af det overordnede nummer 5 (af *TEI P5*) samt de to
    første decimaler i versionsnummeret p.t.: 3.2.

[^3]: For *TEI P5'*s specifikationer for teiHeaderen se
    <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/HD.html>

[^4]: Se også
    <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.global.html>,
    hvor der bl.a. står*:* "The xml:lang\
    value will be inherited from the immediately enclosing element, or
    from its parent, and so on up the document hierarchy. It is
    generally good practice to specify xml:lang at the highest
    appropriate level, noticing that a different default may be needed
    for the teiHeader from that needed for the associated resource
    element or elements, and that a single TEI document may contain
    texts in many languages."

[^5]: Vær opmærksom på, at VIAF desværre har en del dobbeltposter.
    Johannes Jørgensen er således repræsenteret på følgende to links:
    <https://viaf.org/viaf/261060266> og
    <https://viaf.org/viaf/100136529>. Sidstnævnte er ikke blot den
    fyldigste, men ser ud til at have de korrekte oplysninger. Desuden
    indeholder den standardlinket til wikipedia.org, som er almindelig
    praksis i VIAF, og som mangler i den førstnævnte post. Af mangel på
    et bedre alternativ fastholdes denne reference.

[^6]: Hvis man ønsker det kan \<title\>-elementet gentages med hhv. en
    dansk og fx en engelsk titel, med xml:lang sat til hhv. "da" og
    "en".

[^7]: http://www.tei-c.org/release/doc/tei-p5-doc/en/html/examples-editor.html

[^8]: http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-respStmt.html

[^9]: Standardforkortelserne er hentet fra *Dansk Sproghistorie* 1-6,
    bind 1, red. Laurids Kristian Fahl, Ebba Hjorth, Henrik Galberg
    Jacobsen, Bent Jørgensen & Birgitte Jacobsen, Det Danske Sprog- og
    Litteraturselskab & Aarhus Universitetsforlag 2016. Viser det sig at
    være problematisk med æ, ø, å i disse ident-værdier, må
    standardomskrivningerne anvendes, dvs. aemda og aenyda.

[^10]: Oversigten og det efterfølgende eksempel på kodningen af
    \<textClass\> bygger på kodningen til *Grundtvigs Værker*. Kodningen
    bruges til at præsentere værkerne i en genremenu, se
    [http://www.grundtvigsværker.dk/genre](http://www.grundtvigsværker.dk/genre).

[^11]: Se
    <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-correspDesc.html>

[^12]: De enkelte graphic-elementer kan indrammes i et surface-element.
    Attributten xml:id knyttes da til dette, hvormed graphic-elementet
    kun vil indeholde url-attributten.

[^13]: Angående evt. gruppering af tekster og om indlejring af
    \<p\>-afsnit (paragraphs) i div-elementer, se [*TEI
    P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/DS.html#DSFLT)
    4.3.1.-4.3.2.

[^14]: se
    [[http://sks.dk/SLV/txt.xml\#ss16]{.ul}](http://sks.dk/SLV/txt.xml#ss16).

[^15]: Se *SKS,* 3.2.1
    \<https://sid.erda.dk/share_redirect/cxBocvPeF8/data/v1.9/red/teidoc.htm\#sekt.3.2.1\>

[^16]: Til vores formål, nemlig transskription af tekster (hvori der
    evt. kan forekomme tekstfejl i form af fejlnummerering) anbefaler vi
    at anføre indholdet af \<label\> som vist og ikke at tilbyde en
    automatisk ordning af elementerne, sådan som man kender det fra fx
    HTMLs \<ol\>, ordered list, som mest er til glæde for den primære
    forfatter af teksten.

[^17]: \[NB: vi overvejer, at lade key-værdien til \<persName\> tager
    sin normform fra VIAF (som i author-elementet, jf. 2.2.1 ovenfor) og
    at indføre en henvisning til samme. En udfordring i den henseende
    vil være fiktive personer samt historiske personer, hvis virke ikke
    har afstedkommet en post i VIAF. Til punkt 4.3.2.2 nedenfor må det
    undersøges, om der findes et tilsvarende register over normformer
    for geografiske navne som VIAF. Endelig overvejes, om
    attributværdien i \@key i stedet udformes som en id, der refererer
    til et register; på den måde bliver det lettere at rette fx
    ortografien i et stednavn, da det kun skal rettes ét sted, nemlig i
    registret.\]

[^18]: Tekstkritik kan ganske vist anføres på en stærkt forenklet form
    vha. choice-elementet, men vi betragter ikke denne løsning som en
    del af apparatet. Det er muligt, at \<choice\> bør inkluderes fx til
    stiltiende rettelser, hvor man ubetinget vælger \<corr\>-delen.

[^19]: Man kan overveje at tillade gruppering af læsninger vha.
    \<rdgGrp\>. Dette kan have betydning for adskillelsen af

    læsningerne i en note. Hvis disse fx adskilles med et komma, kan man
    ønske sig at adskille grupper med et semikolon, fx i tilfælde af
    kombinerede noter, dvs. intern varians og udgiverindgreb.

[^20]: Dette og de følgende eksempler bygger på en genetisk fortolkning
    af de interne varianter. Det betyder, at apparatet så vidt muligt
    meddeler varianternes tidslige rækkefølge. Der skelnes primært
    mellem øjeblikkelige ændringer og senere ændringer. Når det ikke er
    muligt at foretage en entydig genetisk tolkning, anvendes en
    *positionel* bestemmelse af varianten. Det vil sige, at apparatet
    beskriver, hvor på papiret ændringen står. For en diskussion om
    fortolkning af interne varianter se Johnny Kondrup:
    *Editionsfilologi*, 2011, s. 217-236.

[^21]: Dette og følgende eksempler er hentet fra Poul Martin Møller, se
    f.eks. udgaven af "En dansk Students Eventyr",
    <http://pmm.dsl.dk/en-dansk-students-eventyr/txt059.9.xml>. Her kan
    man også se, hvordan de forskellige genetiske noter vises.

[^22]: ed=\"A\" angiver en sigel, edRef=\"\#A\" er en reference til en
    beskrivelse af det relevante tekstvidne, jf. afsnit 4.3.4 om det
    tekstkritiske apparat

[^23]: Bemærk at *TEI fælles praksis* overholder *TEI P5\'s* helt
    generelle linje: at kode *grundtekstens* fremtræden, dvs. at
    formålet med nævnte attributter "is to describe the appearance of
    *the source text*, not necessarily to determine how that text should
    be presented on screen or paper." (jf. *TEI P5,* [app. B,
    att.global.rendition](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.global.rendition.html);
    vores fremhævning, jf. også [*TEI
    P5,*](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ST.html#STGAre)
    1.3.1.1.3).
