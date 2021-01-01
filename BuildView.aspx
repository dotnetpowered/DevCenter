<%@ Page language="c#" Codebehind="BuildView.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.ViewLog" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ViewLog</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="default.css" type="text/css">
		<LINK href="site.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="ViewLog" method="post" runat="server">
			<P>
				<asp:Xml id="Xml1" runat="server" TransformSource="modifications.xsl"></asp:Xml></P>
		</form>
	</body>
</HTML>
