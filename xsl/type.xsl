<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:key name="methods-by-type" match="method" use="@methodType" />

	<xsl:template match="/type">
		<h1><xsl:value-of select="@name"/></h1>
		
		<xsl:if test="@source">
		[ <a><xsl:attribute name="href">fileinfo.aspx?href=/nps2/<xsl:value-of select="@source"/></xsl:attribute>View Revisions</a> ]
		<br></br>
		</xsl:if>
		
		<br></br>
		Namespace: 
		<a><xsl:attribute name="href">classbrowser.aspx?namespace=<xsl:value-of select="@namespace"/></xsl:attribute>
		<xsl:value-of select="@namespace"/></a>

		<br></br>
		<xsl:if test="method[@public='true' and @methodType='Constructor']">
			<span class="SubheaderTitle">Public Constructors</span>
			<ul>
			<xsl:for-each select="method[@public='true' and @methodType='Constructor']">
			<xsl:sort select="@name"/>
				<xsl:value-of select="@name"/>
			</xsl:for-each>
			</ul>	
		</xsl:if>
		
		<xsl:for-each select="methods/method[count(. | key('methods-by-type', @methodType)[1]) = 1]">
			<xsl:sort select="@methodType" />
			<br></br>
			<table class="MethodGrouping" cellpadding="0" cellspacing="2" width="95%">
			<tr><td class="MethodGroupingHeader">
			<xsl:value-of select="@methodType" />
			</td></tr>
			<tr><td>
			<br></br>
			<xsl:for-each select="key('methods-by-type', @methodType)">
				<xsl:sort select="@name" />
				
				<img align="absmiddle"><xsl:attribute name="src">images/xp/<xsl:value-of select="@methodType" />.gif</xsl:attribute></img>&#160;
				<span class="SubheaderTitle">
				<xsl:if test="@name='.ctor'"><xsl:value-of select="../../@name" /></xsl:if>
				<xsl:if test="@name!='.ctor'"><xsl:value-of select="@name" /></xsl:if>
				</span>
				<br></br><br></br>
				
				<div class="code">
				
				
				<xsl:choose>
					<xsl:when test="@name='.ctor'"><b><xsl:value-of select="../../@name" /></b></xsl:when>
					<xsl:when test="@returnType='System.Void'">void&#160;<b><xsl:value-of select="@name" /></b></xsl:when>
					<xsl:when test="@returnType='System.Boolean'">bool&#160;<b><xsl:value-of select="@name" /></b></xsl:when>
					<xsl:when test="@returnType='System.String'">string&#160;<b><xsl:value-of select="@name" /></b></xsl:when>
					<xsl:when test="@returnType='System.Object'">object&#160;<b><xsl:value-of select="@name" /></b></xsl:when>
					<xsl:when test="@returnType='System.Int32'">int&#160;<b><xsl:value-of select="@name" /></b></xsl:when>
					<xsl:otherwise><xsl:value-of select="@returnType" />&#160;<b><xsl:value-of select="@name" /></b></xsl:otherwise>
				</xsl:choose>
				
				<xsl:choose>
					<xsl:when test="@methodType='Field'">
					</xsl:when>
					<xsl:when test="@methodType='Property'">
						<br></br>
						{<br></br>
						<xsl:if test="@property-get='true'">
						&#160;&#160;&#160;get;<br></br>
						</xsl:if>
						<xsl:if test="@property-set='true'">
						&#160;&#160;&#160;set;<br></br>
						</xsl:if>
						}
					</xsl:when>
					<xsl:otherwise>				
						(<xsl:for-each select="parameters/parameter">
							<xsl:choose>
								<xsl:when test="@name='.ctor'"><xsl:value-of select="../../@name" /></xsl:when>
								<xsl:when test="@type='System.Void'">void&#160;<xsl:value-of select="@name" /></xsl:when>
								<xsl:when test="@type='System.Boolean'">bool&#160;<xsl:value-of select="@name" /></xsl:when>
								<xsl:when test="@type='System.String'">string&#160;<xsl:value-of select="@name" /></xsl:when>
								<xsl:when test="@type='System.Object'">object&#160;<xsl:value-of select="@name" /></xsl:when>
								<xsl:when test="@type='System.Int32'">int&#160;<xsl:value-of select="@name" /></xsl:when>
								<xsl:otherwise><xsl:value-of select="@type" />&#160;<xsl:value-of select="@name" /></xsl:otherwise>
							</xsl:choose>
							<xsl:if test="position()!=last()">, </xsl:if>
						</xsl:for-each>)
					</xsl:otherwise>
				</xsl:choose>

				</div>
				<br></br><br></br>
			</xsl:for-each>
			</td></tr>		
			</table>
			<br></br>
		</xsl:for-each>


	</xsl:template>
</xsl:stylesheet>