<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content-header">
	</section>

	<section class="content">
		<div class="row">
		<div class="col-md-3 col-sm-6 col-xs-12">
		  <div class="info-box" style="text-align:center;">
			 <div id="OrderSheetsContainer" style="width:300px;height:300px"></div>
			  <div id="orderSheets" style="position:absolute;left:-10px;top:0px;height:100%;width:100%;line-height:360px;text-align:center;font-size:30px;">300</div>
			<!-- /.info-box-content -->
		  </div>
		  <!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
		  <div class="info-box" style="text-align:center;">
			<div id="totalCases" style="width:300px;height:300px"></div>
			 <div id="totalCasesValue" style="position:absolute;left:-10px;top:0px;height:100%;width:100%;line-height:360px;text-align:center;font-size:30px;">300</div>
			<!-- /.info-box-content -->
		  </div>
		  <!-- /.info-box -->
		</div>
		<!-- /.col -->

		<div class="col-md-3 col-sm-6 col-xs-12">
		  <div class="info-box" style="text-align:center;">
			<div id="caseDisposal" style="width:300px;height:300px"></div>
			<!-- /.info-box-content -->
		  </div>
		  <!-- /.info-box -->
		</div> 


		<div class="col-md-3 col-sm-6 col-xs-12">
		  <div class="info-box" style="text-align:center;">
			<div id="pendingCases" style="width:300px;height:300px"></div>
			 <div id="totalPendingCasesValue" style="position:absolute;left:-20px;top:0px;height:100%;width:100%;line-height:320px;text-align:center;font-size:30px;">300</div>
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

				<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
				</button>
				<div class="btn-group">
					<button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
					<i class="fa fa-wrench"></i></button>
					<ul class="dropdown-menu" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
					</ul>
				</div>
				<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="row">
				<div class="col-md-12">
					<p class="text-center">
					</p>

					<div class="chart">
					<!-- Sales Chart Canvas -->
					<canvas id="salesChart" style="height: 180px;"></canvas>
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
						<h3 class="box-title">Pending Cases</h3>

						<div class="box-tools pull-right">
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-8">
								<div class="chart-responsive">
									<canvas id="pieChart" height="150"></canvas>
								</div>
								<!-- ./chart-responsive -->
							</div>
							<!-- /.col -->
							<div class="col-md-4">
								<ul class="chart-legend clearfix">
								<li><i class="fa fa-circle-o text-red"></i> Cancelled</li>
								<li><i class="fa fa-circle-o text-green"></i> Completed</li>
								<li><i class="fa fa-circle-o text-yellow"></i> Backlogged</li>
								<li><i class="fa fa-circle-o text-gray"></i> Deferred</li>
								</ul>
							</div>
						<!-- /.col -->
						</div>
						<!-- /.row -->
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
			  <h3 class="box-title">Visitors Report</h3>

			  <div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
			  </div>
			</div>
			<!-- /.box-header -->
			<div class="box-body no-padding">
			  <div class="row">
				<div class="col-md-12 col-sm-8">
				  <div class="pad">
					<!-- Map will be created here -->
					<div id="world-map-markers" style="height: 325px;"></div>
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
	    
		$(document).ready(function () {
		    


			// rendering the pending cases
			var pieChartValues = [{
				y: 486,
				exploded: true,
				indexLabel: "Received",
				legendText: "Received",
				color: "#3c8dbc"
			}, {
				y: 351,
				indexLabel: "Approved",
				legendText: "Approved",
				exploded: true,
				color: "black"
			}];
			renderPieChart(pieChartValues,"Order Sheets","orderSheets","OrderSheetsContainer");

			//rendering the total cases
			var caseChartValues = [{
				y: 641,
				exploded: true,
				indexLabel: "Assigned",
				legendText: "Assigned",
				color: "#3c8dbc"
			}, {
				y: 213,
				indexLabel: "Completed",
				legendText: "Completed",
				exploded: true,
				color: "black"
			}];
			renderPieChart(caseChartValues, "Total Cases","totalCasesValue", "totalCases");

			//rendering the case pending cases
			var pendingChartValues = [{
				y: 42,
				exploded: true,
				indexLabel: "This month",
				legendText: "This month",
				color: "#3c8dbc"
			}, {
				y: 1520,
				indexLabel: "Other months",
				legendText: "Other months",
				exploded: true,
				color: "black"
			}];
			renderPieChart(pendingChartValues, "Pending Cases", "totaPendingCasesValue", "pendingCases");

			//rendering the disposal ratio
			var disposalChartValues = [{
				y: 184,
				exploded: true,
				indexLabel: "Time Taken",
				legendText: "Time Taken",
				color: "#3c8dbc"
			}, {
				y: 260,
				indexLabel: "Target SLA",
				legendText: "Target SLA",
				exploded: true,
				color: "black"
			}];
			renderPieChart(disposalChartValues, "Disposal Ratio", "", "caseDisposal");
			
			function renderPieChart(values, text, id, divid) {
			    var chart = new CanvasJS.Chart(divid, {
			        backgroundColor: "white",
			        colorSet: "colorSet2",

			        title: {
			            text: text,
			            fontFamily: "Verdana",
			            fontSize: 25,
			            fontWeight: "normal",
			        },
			        animationEnabled: true,
			        data: [{
			            indexLabelFontSize: 15,
			            indexLabelFontFamily: "Monospace",
			            indexLabelFontColor: "darkgrey",
			            indexLabelLineColor: "darkgrey",
			            indexLabelPlacement: "outside",
			            type: "doughnut",
			            showInLegend: true,
			            toolTipContent: "<strong>#percent%</strong>",
			            dataPoints: values
			        }]
			    });
			    chart.render();
			    if (id.length > 0) {
			        $("#" + id).text(getTotal(chart));
			    }
			}

			//get Total values
			function getTotal(chart) {
				var dps = chart.options.data[0].dataPoints;
				var sum = 0;

				for (var i = 0; i < dps.length; i++) {

					sum += dps[i].y;

				}
				return sum;
			}
		})
		
	</script>
</asp:Content>

