<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:t="http://www.tei-c.org/ns/1.0" 
               version="1.0">

  <xsl:param name="source" select="'blahahaha.xml'" />
  <xsl:output method="text"
              encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:for-each select="//node()[@decls]">
      <xsl:variable name="id"><xsl:value-of select="@xml:id"/></xsl:variable>
      <xsl:value-of select="normalize-space(.)"/>
      </xsl:for-each>      
  </xsl:template>
              
  

</xsl:transform>
