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
	<!-- Button trigger modal -->
	<button type="button" id="mymodal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
	  Launch demo modal
	</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-lg" style="width:1500px" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="myModalLabel">Modal title</h4>
		  </div>
		  <div class="modal-body" style="height:600px">
			<div id="viewer" style="height:100%"></div>
		  </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" class="btn btn-primary">Save changes</button>
		  </div>
		</div>
	  </div>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsSection" runat="server">
	<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
	<script src="../../lib/WebViewer.js"></script>   
	<script src="../../lib/html5/ControlUtils.js"></script>
	<script>
		$(function () {
			var queryParams = window.ControlUtils.getQueryStringMap(false);
			var docType = queryParams.getString('doctype', 'xod');
			var getDocId = function (filePath) {
				return filePath.replace(/^.*[\\\/]/, '');
			};
			var initialDoc = "../../Content/files/filing.pdf";
			var viewerElement = document.getElementById("viewer");
			var myWebViewer = new PDFTron.WebViewer({
				path: "../../lib",
				type: "html5",
				documentType: "pdf",
				showToolbarControl: false,
				l: "demo:avinashow.gre@gmail.com:73be2a3d01fe5d332554bd93dfb8b27a6ba7fe5a826bb21d7d",
				initialDoc: "../../Content/files/filing.pdf",
				documentId: getDocId(initialDoc)
			}, viewerElement);
		});
	</script>
</asp:Content>