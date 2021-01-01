<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/database/storedprocs/storedproc">
		<h1><img align="absmiddle" src="images/db.gif" border="0"></img><xsl:value-of select="../../@name"/></h1>
		
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../../@name"/></xsl:attribute>
		<xsl:value-of select="../../@name"/>
		</a>
		&gt;		
		<a><xsl:attribute name="href">database.aspx?name=<xsl:value-of select="../../@name"/>&amp;area=storedprocs</xsl:attribute>
		Stored Procedures</a>
		&gt;
		<img align="absmiddle" src="images/db-proc.gif" border="0"></img>&nbsp;
		<xsl:value-of select="@name"/>
		<br></br>
		<br></br>
		<xsl:apply-templates select="columns"/> 
		<br></br>
		<xsl:apply-templates select="definition/text()"/> 
	</xsl:template>	

	<xsl:template match="text()">
		<h4>Definition:</h4>
		<pre class="code">
			<xsl:value-of select="."/>
		</pre>
	</xsl:template>
	
	<xsl:template match="columns">
		<h4>Columns:</h4>
		<table class="Grid" cellspacing="0" cellpadding="3">
			<tr class="GridHeader">
				<td>Name</td>
				<td>Type</td>
			</tr>
			<xsl:apply-templates/>
		</table>
	</xsl:template>	
		
	<xsl:template match="column">
			<tr class="GridItem">
				<td class="GridItem"><xsl:value-of select="@name"/></td>
				<td class="GridItem"><xsl:value-of select="@type"/></td>
			</tr>
	</xsl:template>	
</xsl:stylesheet>