## Connecting works with metadata

One of the simplest ways to connect text with metadata seem to be using
[the decls attribute](http://www.tei-c.org/Vault/P5/2.5.0/doc/tei-p5-doc/en/html/CC.html#CCAS2)
(we consulted the TEI-L listserv where [Lou
Bournard](https://listserv.brown.edu/cgi-bin/wa?A2=ind1408&L=TEI-L&P=R10595) gave us the information we needed).

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

