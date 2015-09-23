<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

<xsl:for-each select="SHAKESPEARE_SCENE/SPEECH">
  <div style="background-color: #ebe8e9; color:red; padding:4px">
    <h3 style="font-weight:bold"><xsl:value-of select="SPEAKER"/></h3>

      <xsl:for-each select="DIALOGUE/LINE">
        <div><xsl:value-of select="current()"/></div>
      </xsl:for-each>
      
  </div>
</xsl:for-each>

</body>
</html>