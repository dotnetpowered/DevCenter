<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/database/tables">
		<h1><img align="middle" src="images/db.gif" border="0"></img><xsl:value-of select="../@name"/></h1>
		
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../@name"/></xsl:attribute>
		<xsl:value-of select="../@name"/>
		</a>
		&gt;
		Tables
		<ul>
		<xsl:apply-templates/>
		</ul>	
	</xsl:template>
	<xsl:template match="table">
		<li>
		<img align="absmiddle" src="images/db-table.gif" border="0"></img>&nbsp;
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../../@name"/>&amp;area=tables&amp;table=<xsl:value-of select="@name"/></xsl:attribute>
		<xsl:value-of select="@name"/></a>
		</li>
	</xsl:template>
	<xsl:template match="/database/views">
	</xsl:template>	
	<xsl:template match="/database/storedprocs">
	</xsl:template>	
	
</xsl:stylesheet>