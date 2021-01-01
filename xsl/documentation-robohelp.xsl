<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
	<xsl:param name="path"/>
	<xsl:template match="/tocdata">
		<tree><xsl:apply-templates/></tree>
	</xsl:template>

	<xsl:template match="item">
		<tree><xsl:attribute name="text"><xsl:value-of select="@name"/></xsl:attribute>
			<xsl:attribute name="action"><xsl:value-of select="$path"/>/<xsl:value-of select="@url"/></xsl:attribute>
			<xsl:attribute name="icon">images/xp/documentation-topic.gif</xsl:attribute></tree>
	</xsl:template>
	
	<xsl:template match="book">
		<tree><xsl:attribute name="text"><xsl:value-of select="@name"/></xsl:attribute>
			<xsl:attribute name="icon">images/xp/documentation-book.gif</xsl:attribute>
			<xsl:attribute name="openIcon">images/xp/documentation-openbook.gif</xsl:attribute>
			<xsl:apply-templates/>			
		</tree>
	</xsl:template>

</xsl:stylesheet>