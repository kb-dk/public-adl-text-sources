# Public ADL text sources

The [Archive for Danish Literature, ADL,](http://www.adl.dk/) comes to you via a collaboration between

* [Det Danske Sprog- og Litteraturselskab (DSL)](http://dsl.dk/)
* [Danish Royal Library](http://www.kb.dk)

As of writing, the corpus comprises 498 volumes with in total 165512
pages of Danish literature.  The whole corpus has been encoded using
TEI, but only about two-thirds of the pages have been subject to OCR
and text encoding. This repository contains all those texts. 

We also describe our data and particular our encoding practices. We
also give information on how we envisage submissions could be
structured.

* [The ADL work](work.md)
* [Connecting works with metadata](work-metadata.md)
* [Submission of documents connecting text to facsimile](submission-facsimile-text.md)
* [Connecting text to facsimile](facsimile-text.md)
* [Workflows and requirements for new documents](workflows.md)

## Getting text

As might have noticed are all the texts in a XML format called [Text
Encoding Initiative (TEI)](https://tei-c.org/). For many purposes, if
not all, that is a good format.

If you want to extract texts from the files, you can use the the scripts

1. [get_titles.xsl](get_titles.xsl)
1. [get_the_text.xsl](get_the_text.xsl)
1. [extract_stuff.sh](extract_stuff.sh)

The first one (`get_titles.xsl`) creates a list of works inside a TEI file.

```
xsltproc  get_titles.xsl texts/hcaeventyr01val.xml 
workid57967;Eventyr, fortalte for Børn. Første Samling. Første Hefte. 1885.
workid58084;Fyrtøiet
workid59091;Lille Claus og store Claus
workid61051;Prindsessen paa Ærten
workid61317;Den lille Idas Blomster
workid62461;Eventyr, fortalte for Børn. Første Samling. Andet Hefte. 1885.
workid62544;Tommelise
workid64209;Den uartige Dreng
workid64656;Reisekammeraten

...

```
The second script (`get_the_text.xsl`) creates one text file per title in the TEI file.

Finally, you can adapt the shell script `extract_stuff.sh` to do both things directly.

## Contributing documents

Projects with relevant scope can contribute documents to ADL, provided the

* Copyright issues are resolved
* They are accepted by DSL and KB
* The XML is valid TEI

A contribution can be received by branch and pull request in github as
is the practice on GitHub.



