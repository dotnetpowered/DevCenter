<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/namespace">
		<h1>Namespace: <xsl:value-of select="@name"/></h1>
		
		<xsl:if test="namespace">
			Sub-Namespaces: 
			<xsl:for-each select="namespace">
			<xsl:sort select="@name"/>
				<a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="../@name"/>.<xsl:value-of select="@name"/></xsl:attribute>
				<xsl:value-of select="@name"/></a><xsl:if test="position()!=last()">, </xsl:if> 
			</xsl:for-each>	
			<br></br>
		</xsl:if>
		
		[ <a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="@name"/>&amp;display=graph</xsl:attribute>Graph</a> ]
		<br></br>
		<br></br>

		<xsl:if test="type[@class='true']">
			<img src="images/xp/class.gif" align="absmiddle"></img>&#160;
			<span class="SubheaderTitle">Classes</span>
			<ul>
			<xsl:for-each select="type[@class='true']">
			<xsl:sort select="@name"/>
				<li>
				<a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="../@name"/>&amp;type=<xsl:value-of select="@name"/></xsl:attribute>
				<xsl:value-of select="@name"/></a>
				</li>
			</xsl:for-each>
			</ul>	
		</xsl:if>

		<xsl:if test="type[@interface='true']">
			<img src="images/xp/interface.gif" align="absmiddle"></img>&#160;
			<span class="SubheaderTitle">Interfaces</span>
			<ul>
			<xsl:for-each select="type[@interface='true']">
			<xsl:sort select="@name"/>
				<li>
				<a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="../@name"/>&amp;type=<xsl:value-of select="@name"/></xsl:attribute>
				<xsl:value-of select="@name"/></a>
				</li>
			</xsl:for-each>
			</ul>	
		</xsl:if>

		<xsl:if test="type[@enum='true']">
			<img src="images/xp/enum.gif" align="absmiddle"></img>&#160;
			<span class="SubheaderTitle">Enumerations</span>
			<ul>
			<xsl:for-each select="type[@enum='true']">
			<xsl:sort select="@name"/>
				<li>
				<a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="../@name"/>&amp;type=<xsl:value-of select="@name"/></xsl:attribute>
				<xsl:value-of select="@name"/></a>
				</li>
			</xsl:for-each>
			</ul>	
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>