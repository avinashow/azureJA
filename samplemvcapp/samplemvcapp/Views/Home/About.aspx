<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
	E-Filing Page
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
	<div class="row">
		<div class="col">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class='breadcrumb-item'><a href='/Home/altindex'>Home</a></li>
					<li class='breadcrumb-item active'>E-filing</li>
				</ol>
			</nav>			
		</div>
	</div>
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div class="row">

		<div class="polaroid" onclick="window.location.href='/Home/Contact'">
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%">
		  <div class="cont">
			<p>E-filing</p>
		  </div>
		</div>
		<div class="polaroid">
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%">
		  <div class="cont">
			<p>E-filing resources</p>
		  </div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>