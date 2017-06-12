
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
