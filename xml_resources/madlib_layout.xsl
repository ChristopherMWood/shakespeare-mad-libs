<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:for-each select="SHAKESPEARE_SCENE/SPEECH">
  <div class="speech-container">
    <h3 class="speaker-name"><xsl:value-of select="SPEAKER"/></h3>

    <div class="dialogue-container">
      <xsl:for-each select="DIALOGUE/LINE">
        <div class="speaker-line"><xsl:value-of select="current()"/></div>
      </xsl:for-each>

    </div>
      
  </div>
</xsl:for-each>
</html>