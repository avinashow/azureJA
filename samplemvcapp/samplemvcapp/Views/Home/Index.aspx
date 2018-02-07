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
				<!--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
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
					  <div id="chartContainer" style="width:100%;height:365px"></div>
					</div>
					<!-- /.box-body -->
				  </div>
		   </div>
	   </div>  
	</section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>
		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			title: {
				text: "Weekly Schedule"
			},
			legend: {
				cursor: "pointer",
				itemclick: toggleDataSeries
			},
			toolTip: {
				shared: true,
				content: toolTipFormatter
			},
			data: [{
				type: "bar",
				showInLegend: true,
				name: "Max Work Load",
				color: "#00A3EA",
				dataPoints: [
					{ y: 0, label: "Sunday", indexLabelFontSize: 26 },
					{ y: 0, label: "Saturday", indexLabelFontSize: 26 },
					{ y: 269, label: "Friday", indexLabelFontSize: 26 },
					{ y: 273, label: "Thursday", indexLabelFontSize: 26 },
					{ y: 243, label: "Wednesday", indexLabelFontSize: 26 },
					{ y: 236, label: "Tuesday", indexLabelFontSize: 26 },
					{ y: 243, label: "Monday", indexLabelFontSize: 40 }	
				]
			},
			{
				type: "bar",
				showInLegend: true,
				name: "Work Load Assigned",
				color: "#FF5473",
				dataPoints: [
					{ y: 0, label: "Sunday" },
					{ y: 0, label: "Saturday" },
					{ y: 270, label: "Friday" },
					{ y: 299, label: "Thursday" },
					{ y: 272, label: "Wednesday" },
					{ y: 186, label: "Tuesday" },
					{ y: 212, label: "Monday" }
				]
			}]
		});
		chart.render();

		function toolTipFormatter(e) {
			var str = "";
			var total = 0;
			var str3;
			var str2;
			for (var i = 0; i < e.entries.length; i++) {
				var str1 = "<span style= \"color:" + e.entries[i].dataSeries.color + "\">" + e.entries[i].dataSeries.name + "</span>: <strong>" + e.entries[i].dataPoint.y + "</strong> <br/>";
				total = e.entries[i].dataPoint.y - total;
				str = str.concat(str1);
			}
			str2 = "<strong>" + e.entries[0].dataPoint.label + "</strong> <br/>";

			str3 = "<span style = \"color:Tomato\">Diff: </span><strong>" + Math.abs(total) + "</strong>";
			str4 = "<i class='fa fa-caret-up' style='font-size:24px;color:green'></i><br/>";
			if (total < 0) {
			    str4 = "<i class='fa fa-caret-down' style='font-size:24px;color:red'></i><br/>";
			}
			return (str2.concat(str)).concat(str3).concat(str4);
		}

		function toggleDataSeries(e) {
			if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
				e.dataSeries.visible = false;
			}
			else {
				e.dataSeries.visible = true;
			}
			chart.render();
		}

		
	</script>
</asp:Content>

