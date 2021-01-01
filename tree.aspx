<%@ Page language="c#" Codebehind="tree.aspx.cs" AutoEventWireup="false" Inherits="SharpRepositoryLib.RepositoryViewer.tree" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>tree</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script type="text/javascript" src="js/xtree.js"></script>
		<script type="text/javascript" src="js/xmlextras.js"></script>
		<script type="text/javascript" src="js/xloadtree.js"></script>
		<link type="text/css" rel="stylesheet" href="site.css">
		<base target="main">
	</HEAD>
	<body class="tree">
		<span class="pagebody">
			<script type="text/javascript">

			/// XP Look
			webFXTreeConfig.rootIcon		= "images/xp/project.gif";
			webFXTreeConfig.openRootIcon	= "images/xp/project.gif";
			webFXTreeConfig.folderIcon		= "images/xp/folder.png";
			webFXTreeConfig.openFolderIcon	= "images/xp/openfolder.png";
			webFXTreeConfig.fileIcon		= "images/xp/file.png";
			webFXTreeConfig.lMinusIcon		= "images/xp/Lminus.png";
			webFXTreeConfig.lPlusIcon		= "images/xp/Lplus.png";
			webFXTreeConfig.tMinusIcon		= "images/xp/Tminus.png";
			webFXTreeConfig.tPlusIcon		= "images/xp/Tplus.png";
			webFXTreeConfig.iIcon			= "images/xp/I.png";
			webFXTreeConfig.lIcon			= "images/xp/L.png";
			webFXTreeConfig.tIcon			= "images/xp/T.png";

			var rti;
			var tree = new WebFXLoadTree("Project", "treexml.aspx?mode=root", "project_default.aspx", "classic");
			//tree.setBehavior("classic");

			document.write(tree);

		</script>
		</span>
	</body>
</HTML>
