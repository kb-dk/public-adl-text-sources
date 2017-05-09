# Public ADL text sources

The [Archive for Danish Literature, ADL](http://www.adl.dk/) comes to you via a collaboration between

* [Det Danske Sprog- og Litteraturselskab (DSL)](http://dsl.dk/)
* [Danish Royal Library](http://www.kb.dk)

As of writing, the corpus comprises 166316 pages of Danish literature,
about two-thirds of those pages have been subject to OCR and been encoded using TEI.

## The ADL work

ADL uses a work concept developed together with the original service
some 15 years ago by experienced reference librarians. It is
completely pragmatic and related to what their needs were when helping
patrons by providing pointers to texts in the information desk.

There the most common questions about literature were about

* individual poems, songs and psalms
* individual short stories
* novels and other longer pieces of prose (basically: "books")
* plays

With the exception for novels, most of these works are text fragments
inside a volume, the unit delivered by the library's circulation desk.

For more information on markup used, have a look at [the texts](https://github.com/Det-Kongelige-Bibliotek/public-adl-text-sources),
and the markup information there.

## Connecting works with metadata

The simplest way to connect text with metadata seem to be 
[the decls attribute](http://www.tei-c.org/Vault/P5/2.5.0/doc/tei-p5-doc/en/html/CC.html#CCAS2)
(we consulted the TEI-L listserv where [Lou
Bournard](https://listserv.brown.edu/archives/cgi-bin/wa?A2=ind1408&L=TEI-L&F=&S=&P=58469) gave us the information we needed).

> @decls identifies one or more declarable elements within the header,
> which are understood to apply to the element bearing this attribute
> and its content [@decls definition](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.declaring.html)

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
	   <bibl xml:id="#biblid64544">
	     <title>Kirken er som Himmerige</title>
	     <author>N. F. S. Grundtvig</author>
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



## Connecting text with facsimile

The page break <pb/> is a TEI milestone (empty) element. It gives the
precise point in the text where a new page starts. In a digitisation
service this implies that a new image should be shown. The image URIs are
given directly on <pb/> using the @facs attibute

```
 <pb n="85" facs="adl/goldschmidt/goldschmidt11/gold11085" xml:id="idm140454498545840"/>

```

We have opted for not trying to embed persistent URIs for the images,
rather we give their paths inside our image server (see our [image API
docs](https://github.com/Det-Kongelige-Bibliotek/access-digital-objects/blob/master/image-delivery.md))

To retrieve page 85 prepend http://kb-images.kb.dk/public and append
(for example) /full/!2000,/0/native.jpg to the content of @facs, which gives:

http://kb-images.kb.dk/public/adl/goldschmidt/goldschmidt11/gold11085/full/!2000,/0/native.jpg

Texts without OCR uses TEI for document structure, work and metadata. Here is one example:


```
<text xml:id="workid54813" decls="#biblid54813">
  <body xml:id="idm140454498551728">
    <pb n="78" facs="adl/goldschmidt/goldschmidt11/gold11078" xml:id="idm140454498551472"/>
    <pb n="79" facs="adl/goldschmidt/goldschmidt11/gold11079" xml:id="idm140454498550704"/>
    <div xml:id="idm140454498549936">
      <pb n="80" facs="adl/goldschmidt/goldschmidt11/gold11080" xml:id="idm140454498549680"/>
      <pb n="81" facs="adl/goldschmidt/goldschmidt11/gold11081" xml:id="idm140454498548912"/>
      <pb n="82" facs="adl/goldschmidt/goldschmidt11/gold11082" xml:id="idm140454498548144"/>
      <pb n="83" facs="adl/goldschmidt/goldschmidt11/gold11083" xml:id="idm140454498547376"/>
      <pb n="84" facs="adl/goldschmidt/goldschmidt11/gold11084" xml:id="idm140454498546608"/>
      <pb n="85" facs="adl/goldschmidt/goldschmidt11/gold11085" xml:id="idm140454498545840"/>
      <p xml:id="idm140454498545072"/>
    </div>
    <pb n="86" facs="adl/goldschmidt/goldschmidt11/gold11086" xml:id="idm140454498544688"/>
    <div xml:id="workid54881" decls="#biblid54881">
      <pb n="87" facs="adl/goldschmidt/goldschmidt11/gold11087" xml:id="idm140454498543024"/>
      <pb n="88" facs="adl/goldschmidt/goldschmidt11/gold11088" xml:id="idm140454498542256"/>
      <p xml:id="idm140454498541488"/>
    </div>
```

## Workflows and requirements for new documents

Any TEI light document could be included in ADL provided that it has
metadata in sourceDesc, such as:

```
<sourceDesc xml:id="idm140462580906160">
  <bibl xml:id="idm140462580905904">
    <author n="1" xml:id="idm140462580905040">
      <name xml:id="idm140462580904608">
        <surname xml:id="idm140462580904480">Munch-Petersen</surname>, 
        <forename xml:id="idm140462580904064">Gustaf</forename>
      </name>
    </author>
    <title xml:id="idm140462580903520">Samlede skrifter</title>
    <pubPlace xml:id="idm140462580903104">Valby</pubPlace>
    <publisher xml:id="idm140462580902688">Borgen</publisher>
    <date xml:id="idm140462580902224">1988</date>
  </bibl>
</sourceDesc>
```

TEI documents pass through a number of procedures before
entering ADL.

The @decls/bibl (ID/IDREF markup) are placed on elements regarded as
described above.

The <pb/> elements are adorned with @facs, @n and @xml:id attributes
as needed.

Each element in the texts is then possible to use as an anchor
for linking.   The most important one is to add an xml:id
attribute to each element in a document that has not got one to begin
with. For building a [cool service](https://www.w3.org/Provider/Style/URI.html) based on these
documents, their names must never be changed, nor must the xml:id.

There are TEI elements that containers and those that are empty. When
indexing we concentrate on the former, since they are the ones that we
need to search. There are a very important class of empty elements
called milestones, and the most important one is presumably page
break, at least in a digitisation project (where we need to address
facsimiles).

