<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	adminIndex
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="modal fade" tabindex="-1" id="myModal" role="dialog">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h2 class="modal-title" style="text-align:center">Order Sheet</h2>
				</div>
				<div class="modal-body">
					<div class="row" style="display:flex;justify-content:center">
					  <div class="col" >
						  <span class="glyphicon glyphicon-chevron-left" id="prev"></span>
						  <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>
						  <span class="glyphicon glyphicon-chevron-right" id="next"></span>
						  <!--<span class="glyphicon glyphicon-zoom-in" id="zoominbutton"></span>
						  <span class="glyphicon glyphicon-zoom-out" id="zoomoutbutton"></span>-->
					  </div>
					</div>

					<div class="row">
						<div class="col-md-8">
							<canvas id="the-canvas"></canvas>
							<div class="textLayer" id="text-layer">
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="save">Approve</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script src="../../Scripts/pdfjshtml.js"></script>
	<script>
		$("#myModal").modal("show");
	</script>
</asp:Content>
