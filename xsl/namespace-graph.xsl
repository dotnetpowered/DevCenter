<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/namespace">
		<h1>Namespace: <xsl:value-of select="@name"/></h1>
		
		<img><xsl:attribute name="src">classbrowser.aspx?namespace=<xsl:value-of select="@name"/>&amp;display=graph-image</xsl:attribute></img>
	</xsl:template>
</xsl:stylesheet>