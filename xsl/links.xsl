<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="Links">
		<h1><xsl:value-of select="@Category"/></h1>
		<ul>
		<xsl:apply-templates/>
		</ul>	
	</xsl:template>
	<xsl:template match="Link">
		<li>
		<a target="_new"><xsl:attribute name="href"><xsl:value-of select="@Url"/></xsl:attribute>
		<xsl:value-of select="@Name"/>
		</a>
		</li>
	</xsl:template>
	
</xsl:stylesheet>