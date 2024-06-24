
## New additions of hypertextual TEI documents

By hypertextual TEI documents we understand documents that contain references to other content outside that document. For example document that are refering to facsimile (image) pages.

### Facsimiles

The encoding of facsimilies differs between new additions and our internal format. The reason for that is that we need to be able to retrieve all images and store them in our repositories. 

* Images should be available in an uncompressed (or at least in lossless compression) as TIFF, PNG or JPEG2000.
* For various reasons it is easier technically if the images is made available to us using HTTP links.
* The linking should be made according to the TEI guidelines, the section [Representation of Primary Sources](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html). In particular, we want alignment between page breaks and graphics using the [Parallel Transcription](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html#PH-bov) technique. 

This means that immediately after the teiHeader there should be a facsimile section

```
<facsimile>
 <graphic xml:id="p414rqwe" url="http://example.org/pages/page1.png"/>
 <graphic xml:id="p7654745" url="http://example.org/pages/page2.png"/>
 <graphic xml:id="p5634563" url="http://example.org/pages/page3.png"/>
 <graphic xml:id="p5234522" url="http://example.org/pages/page4.png"/>
</facsimile>
```
The url attribute should contain an absolute URI to the page. We can then crawl those and store them in our repository and then edit the graphic element such that the url points to our image services.

Each page break must then contain a reference to the graphic element, e.g.,

```
<pb facs="#p414rqwe"/>
```

Note the hash in the facs IDREF. We can now ascertain the integrity of the relations between text and facsimile versions.

### Links in and out

http://www.tei-c.org/release/doc/tei-p5-doc/en/html/SA.html#SASO

