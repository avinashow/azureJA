<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content-header">
	</section>

	<section class="content">
		<div class="row">
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="box box-primary">
				<div class="box-body">
					<div id="OrderSheetsContainer" style="width:100%;height:300px"></div>
					<div id="orderSheets" style="position:absolute;left:-10px;top:0px;height:100%;width:100%;line-height:360px;text-align:center;font-size:30px;">300</div>
				</div>
			</div>
			 
			<!-- /.info-box-content -->
		  <!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="box box-primary">
				<div class="box-body">
					<div id="totalCases" style="width:100%;height:300px"></div>
					<div id="totalCasesValue" style="position:absolute;left:-10px;top:0px;height:100%;width:100%;line-height:360px;text-align:center;font-size:30px;">300</div>
				</div>
			</div>
			 
			<!-- /.info-box-content -->
		  <!-- /.info-box -->
		</div>
		<!-- /.col -->

		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="box box-primary">
				<div class="box-body">
					<div id="caseDisposal" style="width:100%;height:300px"></div>
				</div>
			</div>
			
			<!-- /.info-box-content -->
		  <!-- /.info-box -->
		</div> 


		<div class="col-md-3 col-sm-6 col-xs-12">
		  <div class="box box-primary">
			 <div class="box-body">
				 <div id="pendingCases" style="width:100%;height:300px"></div>
				 <div id="totalPendingCasesValue" style="position:absolute;left:-20px;top:0px;height:100%;width:100%;line-height:320px;text-align:center;font-size:30px;">300</div>
			 </div>
			<!-- /.info-box-content -->
		  </div>
		  <!-- /.info-box -->
		</div>        
		<!-- /.col -->
	  </div>
		<!-- Row#2 -->
	  <div class="row">
			<div class="col-md-8">
			<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">Time to Resolve the Cases vs Target</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="row">
				<div class="col-md-12">
					<p class="text-center">
					</p>

					<div class="chart">
					<!-- Sales Chart Canvas -->
					<canvas id="salesChart" style="width:100%;height: 259px;"></canvas>
					</div>
					<!-- /.chart-responsive -->
				</div>
				<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.box-footer -->
			</div>
			<!-- /.box -->
		</div>

			<div class="col-md-4">
				<div class="box box-danger">
					<div class="box-header with-border">
					</div>
					<!-- /.box-header -->
					<div class="box-body">
							<div id="pendingCasesChart" style="width:100%;height:300px"></div>
					</div>
				</div>
				<!-- /.col -->
			</div>
	</div>
		<!-- Row#2 -->
	   <!--- Row#3 --->
	 <div class="row">
		   <div class="col-md-8">
		  <!-- MAP & BOX PANE -->
		  <div class="box box-primary">
			<div class="box-header with-border">
			  <h3 class="box-title">Cases Filed Based on Territory</h3>

			  <div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
			  </div>
			</div>
			<!-- /.box-header -->
			<div class="box-body no-padding">
			  <div class="row">
				<div class="col-md-12 col-sm-12">
				  <div class="pad">
					<!-- Map will be created here -->
					<div id="world-map-markers" style="width:100%;height: 325px;"></div>
				  </div>
				</div>
				<!-- /.col -->
				<!-- /.col -->
			  </div>
			  <!-- /.row -->
			</div>
			<!-- /.box-body -->
		  </div>
		  <!-- /.box -->
		</div>
		   <div class="col-md-4">
			   <!-- TO DO List -->
				  <div class="box box-primary">
					<!-- /.box-header -->
					<div class="box-body">
					  <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
					  <img src="../../Images/latestKPI.png" width="100%" height="100%" />
					</div>
					<!-- /.box-body -->
				  </div>
		   </div>
	   </div>  
	</section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>

		
	</script>
</asp:Content>

