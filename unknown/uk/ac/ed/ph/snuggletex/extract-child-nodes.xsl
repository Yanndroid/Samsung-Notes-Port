<?xml version="1.0"?>
<!--

Trivial stylesheet by XMLUtilities.serializeNodeChildren() to pull out just
the required child Nodes as a well-formed external parsed entity.

$Id$

-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- This matches the Node we want to extract children from -->
  <xsl:template match="node()">
    <xsl:copy-of select="node()"/>
  </xsl:template>

</xsl:stylesheet>
