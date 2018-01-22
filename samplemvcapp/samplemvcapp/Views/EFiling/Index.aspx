<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
	E-Filing Page
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
	<div class="row">
		<div class="col">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
				</ol>
			</nav>			
		</div>
	</div>
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="row">

		<div class="polaroid" >
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%">
		  <div class="cont">
			<p>E-filing</p>
		  </div>
		</div>
		<div class="polaroid" onclick="window.location.href='/EFiling/Resources'">
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%">
		  <div class="cont">
			<p>E-filing resources</p>
		  </div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>
		(function () {
			$("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");
		})();
	</script>
</asp:Content>
