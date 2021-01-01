<%@ Page language="c#" Codebehind="filelist.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.FileList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>proplist</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="site.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="proplist" method="post" runat="server">
			<h1>Source Repository</h1>
			<P>
				<asp:panel id="FilesPanel" runat="server"></P>
			<IMG src="images/folder2.png" align="left"> <STRONG>Directory:
				<asp:label id="filesHrefLabel" runat="server">Label</asp:label></STRONG><BR>
			Click on a file to display its revision history.
			<BR>
			<BR>
			<BR>
			<P>
			<P></P>
			<P>
				<asp:datagrid id="FilesGrid" runat="server" AllowSorting="True" AutoGenerateColumns="False" Width="921px" CssClass="Grid">
					<HeaderStyle CssClass="GridHeader"></HeaderStyle>
					<Columns>
						<asp:TemplateColumn SortExpression="Name" HeaderText="Name">
							<ItemTemplate>
								<asp:HyperLink runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Name") %>' NavigateUrl='<%# BuildQueryString((string)DataBinder.Eval(Container, "DataItem.Name")) %>' >
								</asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="CurrentRevision" SortExpression="CurrentRevision" HeaderText="Version">
							<HeaderStyle Width="80px"></HeaderStyle>
						</asp:BoundColumn>
						<asp:BoundColumn HeaderText="Created">
							<HeaderStyle Width="100px"></HeaderStyle>
						</asp:BoundColumn>
						<asp:BoundColumn HeaderText="Created By">
							<HeaderStyle Width="100px"></HeaderStyle>
						</asp:BoundColumn>
						<asp:BoundColumn HeaderText="Modified">
							<HeaderStyle Width="150px"></HeaderStyle>
						</asp:BoundColumn>
						<asp:BoundColumn DataField="Length" SortExpression="Length" HeaderText="Size (bytes)">
							<HeaderStyle Width="100px"></HeaderStyle>
							<ItemStyle HorizontalAlign="Right"></ItemStyle>
						</asp:BoundColumn>
					</Columns>
				</asp:datagrid></P>
			</asp:panel></form>
	</body>
</HTML>
