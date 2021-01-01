<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<h1>Namespaces:</h1>
		<ul>
		<xsl:apply-templates/>
		</ul>
	</xsl:template>
	<xsl:template match="namespace">
		<li>
		<a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="@name"/></xsl:attribute><xsl:value-of select="@name"/></a>
		</li>
	</xsl:template>
</xsl:stylesheet>