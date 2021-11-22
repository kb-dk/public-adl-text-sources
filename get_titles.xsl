<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:t="http://www.tei-c.org/ns/1.0" 
               version="1.0">
  <xsl:param name="sep">;</xsl:param>
  <xsl:output method="text"
              encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:for-each select="//node()[@decls]">
      <xsl:variable name="bibid"><xsl:value-of select="substring-after(@decls,'#')"/></xsl:variable>
      <xsl:value-of select="@xml:id"/><xsl:value-of select="$sep"/><xsl:for-each select="/t:TEI//t:listBibl/t:bibl[@xml:id=$bibid]"><xsl:value-of select="t:title"/></xsl:for-each><xsl:text>
</xsl:text>
      </xsl:for-each>      
  </xsl:template>
              
  

</xsl:transform>
