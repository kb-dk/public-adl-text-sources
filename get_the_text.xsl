<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:t="http://www.tei-c.org/ns/1.0"
               xmlns:exsl="http://exslt.org/common"
               extension-element-prefixes="exsl"
               version="1.0">

  <xsl:param name="source" select="'blahahaha.xml'" />
  <xsl:output method="text"
              encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:for-each select="//node()[@decls]">
      <xsl:variable name="id"><xsl:value-of select="@xml:id"/></xsl:variable>
      <xsl:variable name="href"><xsl:value-of select="concat($source,'-',@xml:id,'.text')"/></xsl:variable>
      <exsl:document
          href = "{$href}"
          method = "text">
        <xsl:value-of select="normalize-space(.)"/>
      </exsl:document>
    </xsl:for-each>      
  </xsl:template>
              
  

</xsl:transform>
