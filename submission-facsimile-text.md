
## Submission of hypertextual TEI documents

### Facsimiles

The encoding of facsimilies differs between submissions and our internal format. The reason for that is that we need to be able to retrieve all images and store them in our repositories. 

* Images should be available in an uncompressed (or at least in lossless compression) as TIFF, PNG or JPEG2000.
* For various reasons it is easier technically if the images is made available to us using HTTP links.
* The linking should be made accoring to the TEI guidelines, the secion [Representation of Primary Sources](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html). In particular, we want [alignment using the Parallel Transcription](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html#PH-bov) technique. 

This means that immediately after the teiHeader there should be a section

```
<facsimile>
 <graphic xml:id="p414rqwe" url="page1.png"/>
 <graphic xml:id="p7654745" url="page2.png"/>
 <graphic xml:id="p5634563" url="page3.png"/>
 <graphic xml:id="p5234522" url="page4.png"/>
</facsimile>
```

### Stand-off

http://www.tei-c.org/release/doc/tei-p5-doc/en/html/SA.html#SASO
