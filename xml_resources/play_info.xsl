<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:for-each select="PERSONAE/PERSONA">
	<div class="speaker-line"><xsl:value-of select="current()"/></div>

</xsl:for-each>
</html>