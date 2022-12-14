<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:t="http://www.tei-c.org/ns/1.0"
               version="1.0">

  <xsl:output method="text"/>

  <xsl:variable name="base_uri">https://tekster.kb.dk/text/adl-texts-</xsl:variable>
  
  <xsl:template match="/">
    <xsl:for-each select="//t:teiHeader">
      "<xsl:for-each select="t:fileDesc/t:sourceDesc"><xsl:value-of select="t:bibl/t:author/t:name/t:surname"/>, <xsl:value-of select="t:bibl/t:author/t:name/t:forename"/>","<xsl:for-each select="t:bibl/t:title"><xsl:value-of select="."/><xsl:if test="position()&lt;last()">; </xsl:if></xsl:for-each>","<xsl:value-of select="t:bibl/t:publisher"/>, <xsl:value-of select="t:bibl/t:pubPlace"/>, <xsl:value-of select="t:bibl/t:date"/>"</xsl:for-each><xsl:for-each select="t:fileDesc/t:publicationStmt/t:idno"><xsl:call-template name="extract_uri_etc"/></xsl:for-each>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="extract_uri_etc"><xsl:variable name="url"><xsl:value-of select="$base_uri"/><xsl:value-of select=" substring-after(substring-before(@xml:base,'.xml'),'texts/')"/>-root</xsl:variable>,"<xsl:value-of select="."/>","<xsl:value-of select="@xml:base"/>","<xsl:value-of select="$url"/>"
  </xsl:template>
  
</xsl:transform>
