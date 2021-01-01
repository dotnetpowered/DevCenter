<%@ Page language="c#" Codebehind="builds.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.builds" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>builds</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="site.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="builds" method="post" runat="server">
			<h1>Build History</h1>
			<P>
				<asp:DataGrid id="BuildsGrid" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="106px" Width="750px" PageSize="15" Font-Names="Verdana" Font-Size="X-Small" CellSpacing="0" CssClass="Grid">
					<HeaderStyle CssClass="GridHeader"></HeaderStyle>
					<Columns>
						<asp:HyperLinkColumn Text="Build Date/Time" DataNavigateUrlField="Name" DataNavigateUrlFormatString="buildview.aspx?file={0}" DataTextField="Modified">
							<HeaderStyle Width="100px"></HeaderStyle>
						</asp:HyperLinkColumn>
						<asp:TemplateColumn HeaderText="Changes">
							<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center"></ItemStyle>
							<ItemTemplate>
								<asp:Label runat="server" Text='<%# GetBuildChanges( (string) DataBinder.Eval(Container, "DataItem.Name") )%>'>
								</asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Success">
							<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center"></ItemStyle>
							<ItemTemplate>
								<asp:Label runat="server" Text='<%# GetBuildSuccess( (string) DataBinder.Eval(Container, "DataItem.Name") )%>'>
								</asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="Size" HeaderText="Log Size (bytes)">
							<HeaderStyle HorizontalAlign="Right"></HeaderStyle>
							<ItemStyle HorizontalAlign="Right"></ItemStyle>
						</asp:BoundColumn>
					</Columns>
				</asp:DataGrid></P>
		</form>
	</body>
</HTML>
