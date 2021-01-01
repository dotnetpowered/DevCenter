<%@ Page language="c#" Codebehind="project_default.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.project_default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>default</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="site.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="default" method="post" runat="server">
			<asp:Xml id="Xml1" runat="server" TransformSource="xsl/links.xsl"></asp:Xml>
		</form>
	</body>
</HTML>
