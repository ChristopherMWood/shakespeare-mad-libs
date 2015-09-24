<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:for-each select="PERSONAE/PERSONA">
	<div class="character-container">
		<label class="character-title"><xsl:value-of select="TITLE"/></label>
		<span class="character-description"><xsl:value-of select="DESC"/></span>
	</div>
</xsl:for-each>
</html>