<%@ Page language="c#" Codebehind="FileInfo.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.FileInfoPage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>FileInfo</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="site.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="FileInfo" method="post" runat="server">
			<asp:Panel id="LogPanel" runat="server"><IMG src="images/editor.png" align="left"><STRONG>File:
					<asp:Label id="hrefLabel" runat="server">Label</asp:Label></STRONG><BR>Revision 
Log<BR><BR><BR>
<P>
					<asp:DataGrid id="LogGrid" runat="server" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#999999" Width="710px" AutoGenerateColumns="False" GridLines="Vertical">
						<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
						<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
						<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
						<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
						<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
						<Columns>
							<asp:TemplateColumn HeaderText="Log Entries">
								<ItemTemplate>
									<P><STRONG>Revision </STRONG>
										<asp:Label id=Label2 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' Font-Bold="True">
										</asp:Label>,
										<asp:Label id=date runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DateOfChange") %>'>
										</asp:Label>&nbsp;by
										<asp:Label id=Label1 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Author") %>'>
										</asp:Label></P>
									<asp:Label id=comment runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Comments") %>'>
									</asp:Label>&nbsp;<BR>
									<BR>
								</ItemTemplate>
							</asp:TemplateColumn>
						</Columns>
						<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
					</asp:DataGrid></P>
			</asp:Panel></form>
	</body>
</HTML>
