<?xml version="1.0"?>
<!--

Trivial stylesheet to move ALL XML elements into "no namespace".

$Id$

-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Remove namespace from elements, along with any XML attributes -->
  <xsl:template match="*">
    <xsl:element name="{local-name()}">
      <xsl:copy-of select="@*[not(starts-with(name(),'xml:'))]"/>
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <!-- Keep text, comments and any PIs (since they are required by MathPlayer) -->
  <xsl:template match="text()|comment()|processing-instruction()">
    <xsl:copy-of select="."/>
  </xsl:template>

</xsl:stylesheet>

