<%@ Page language="c#" Codebehind="tree_top.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.tree_top" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link type="text/css" rel="stylesheet" href="site.css">
	</HEAD>
	<body class="treetop">
		<form id="tree_top" runat="server">
			<table border="0" cellpadding="0" cellspacing="0" width="100%" ID="Table1">
				<tr class="treetop">
					<TD style="WIDTH: 2px; HEIGHT: 28px">&nbsp;</TD>
					<TD style="WIDTH: 159px; HEIGHT: 28px">
						<asp:DropDownList id="ProjectList" runat="server" AutoPostBack="True" Width="153px"></asp:DropDownList></TD>
					<td style="WIDTH: 1109px; HEIGHT: 28px"><A href="help.aspx" target="main"><IMG src="images/icon_help.gif" border="0"></A></td>
					<td align="right" style="HEIGHT: 28px" vAlign="center"><A class="closer" href="javascript:top.HideTree();"><IMG src="images/closex.gif" border="0"></A>&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
