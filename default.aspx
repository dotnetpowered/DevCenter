<%@ Page language="c#" Codebehind="default.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer._default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<TITLE>default</TITLE>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="javascript">
			function HideTree()
			{
			  document.all.tags( "frameset" )[1].cols = "1,*";
			} 
		</script>
	</HEAD>
	<frameset rows="44,94%" border="0" frameSpacing="0" frameBorder="0">
		<frame name="banner" src="header.aspx" scrolling="no" noresize marginheight="0" marginwidth="0">
		<frameset cols="297,75%" frameborder="1" frameSpacing="1">
			<frameset rows="30,96%" border="0" frameSpacing="0" frameBorder="0">
				<frame name="contents_top" src="tree_top.aspx" scrolling="no" marginheight="0" marginwidth="0">
				<frame name="contents" src="tree.aspx">
			</frameset>
			<frame name="main" src="project_default.aspx" scrolling="yes">
		</frameset>
		<noframes>
			<p id="p1">
				This HTML frameset displays multiple Web pages. To view this frameset, use a 
				Web browser that supports HTML 4.0 and later.
			</p>
		</noframes>
	</frameset>
</HTML>
