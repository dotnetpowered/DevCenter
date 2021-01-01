<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/database">
		<h1><img align="middle" src="images/db.gif"></img><xsl:value-of select="@name"/></h1>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="tables">
		<h2>Tables</h2>
		<ul>
		<xsl:apply-templates select="table"/>
		</ul>	
	</xsl:template>
	<xsl:template match="table">
		<li>
		<img align="middle" src="images/db-table.gif" border="0"></img>&nbsp;
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../../@name"/>&amp;area=tables&amp;table=<xsl:value-of select="@name"/></xsl:attribute>
		<xsl:value-of select="@name"/></a>
		</li>
	</xsl:template>
	<xsl:template match="views">
		<h2>Views</h2>
		<ul>
		<xsl:apply-templates select="view"/>
		</ul>	
	</xsl:template>
	<xsl:template match="view">
		<li>
		<img align="middle" src="images/db-view.gif" border="0"></img>&nbsp;
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../../@name"/>&amp;area=views&amp;view=<xsl:value-of select="@name"/></xsl:attribute>
		<xsl:value-of select="@name"/></a>
		</li>
	</xsl:template>
	<xsl:template match="storedprocs">
		<h2>Stored Procedures</h2>
		<ul>
		<xsl:apply-templates select="storedproc"/>
		</ul>	
	</xsl:template>
	<xsl:template match="storedproc">
		<li>
		<img align="middle" src="images/db-proc.gif" border="0"></img>&nbsp;
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../../@name"/>&amp;area=storedprocs&amp;storedproc=<xsl:value-of select="@name"/></xsl:attribute>
		<xsl:value-of select="@name"/></a>
		</li>
	</xsl:template>
</xsl:stylesheet>