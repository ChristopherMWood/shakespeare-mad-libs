<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:for-each select="SHAKESPEARE_SCENE/SPEECH">
  <div class="speech-container">
    <h3 class="speaker-name"><xsl:value-of select="SPEAKER"/></h3>

    <div class="dialogue-container">
      <xsl:for-each select="DIALOGUE/LINE">
      	<div>

	      	<label class="lp-label"><xsl:value-of select="LP"/></label>
	        <input class="madlib-input" placeholder="{MADLIB/@type}"/>
	        <label class="lpe-label"><xsl:value-of select="LPE"/></label>
    	</div>
      </xsl:for-each>

    </div>
      
  </div>
</xsl:for-each>
</html>