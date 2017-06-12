
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

By instead appending info.json, such as

http://kb-images.kb.dk/public/adl/goldschmidt/goldschmidt11/gold11085/info.json

you can retrieve basic technical metadata for the page in jason format.

Texts without facsimile should ideally still contain <pb/> elements
and an @n attribute containing the pagination. If there <pb/>s with
@facs attributes with URIs that cannot be dereferenced, these should
contain a @rend attribute containing the word "missing".

Texts without OCR uses TEI for document structure, work and metadata
and page breaks only. Here is an example (from where we got page 85 above)


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
