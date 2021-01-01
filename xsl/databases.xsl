<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<h1>Databases:</h1>
		<ul>
		<xsl:apply-templates/>
		</ul>
	</xsl:template>
	<xsl:template match="Database">
		<li>
		<img align="middle" src="images/db.gif"></img>
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="@Name"/></xsl:attribute><xsl:value-of select="@Name"/>
		</a>&nbsp;(<xsl:value-of select="@Type"/>)
		</li>
	
	</xsl:template>
</xsl:stylesheet>