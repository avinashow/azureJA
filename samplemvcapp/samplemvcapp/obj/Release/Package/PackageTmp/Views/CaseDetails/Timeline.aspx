<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Timeline
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content">
		<div class="row">
		<div class="col-md-6">
			<div class="box box-primary">
				<div class="box-body">
					<div id="pieChart" style="height:360px;width:100%"></div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="box box-primary">
				<div class="box-body">
					<div id="columnChart" style="height:360px;width:100%"></div>
				</div>
			</div>            
		</div>
	</div>
		<!-- row -->
		<div class="row" >
			<div class="container">
				<div class="box box-primary">
				  <div class="box-body">
					  <ul class="timeline">
						<li class="time-label">
							<span class="bg-red">
								15 December 2017
							  </span>
						</li>
						<li>
							<i class="fa fa-envelope bg-blue"></i>
							<div class="timeline-item">
								<h3 class="timeline-header"><strong>Order Sheet Approved Case Closed</strong></h3>
							</div>
						</li>
						<li class="time-label">
							<span class="bg-red">
								14 December 2017
							  </span>
						</li>
						<li>
							<i class="fa fa-envelope bg-blue"></i>
							<div class="timeline-item">
								<h3 class="timeline-header"><strong>Order Sheet Submitted for Approval</strong></h3>
							</div>
						</li>
						<li class="time-label">
							<span class="bg-red">
								13 December 2017
							  </span>
						</li>
						<li>
							<i class="fa fa-envelope bg-blue"></i>
							<div class="timeline-item">
								<h3 class="timeline-header"><strong>First Hearing Scheduled</strong></h3>
								<div class="timeline-body">
									<h3><b>Summary:</b></h3>
									<p>Both parties appeared before court, Police presented enough evidence against Martin to be Pronounced Guilty </p>
									<h3><b>Result:</b></h3>
									<p><b>Session Time: </b> 31mins<br /></p>
									<p><b>Short Order: </b>Disposed, Life Sentence</p>
								</div>
							</div>
						</li>
						<li class="time-label">
							<span class="bg-red">
								12 December 2017
							  </span>
						</li>
						<li>
							<i class="fa fa-envelope bg-blue"></i>
							<div class="timeline-item">
								<h3 class="timeline-header"><strong>Case Filed in the Court</strong></h3>
							</div>
						
						</li>
			
					 </ul>
				  </div>
			  </div>
			</div>
	   </div>
	</section>
	

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
	
	<script>
		var pieChartValues = [{
			y: 39.16,
			exploded: true,
			indexLabel: "Criminal Proceedings",
			color: "#1f77b4"
		}, {
			y: 21.8,
			indexLabel: "Average Hearing for category",
			exploded: true,
			color: "#ff7f0e"
		}, {
			y: 21.45,
			indexLabel: "SLA disposal",
			exploded: true,
			color: " #ffbb78"
		}, {
			y: 5.56,
			indexLabel: "Current Conducting Hearings",
			exploded: true,
			color: "#d62728"
		}];
		renderPieChart(pieChartValues);
		function renderPieChart(values) {

			var chart = new CanvasJS.Chart("pieChart", {
				backgroundColor: "white",
				colorSet: "colorSet2",

				title: {
					text: "Case Category",
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
					type: "pie",
					showInLegend: false,
					toolTipContent: "<strong>#percent%</strong>",
					dataPoints: values
				}]
			});
			chart.render();
		}

		var columnChartValues = [{
			y: 686.04,
			label: "Jan",
			color: "#1f77b4"
		}, {
			y: 381.84,
			label: "Feb",
			color: "#ff7f0e"
		}, {
			y: 375.76,
			label: "Mar",
			color: " #ffbb78"
		}, {
			y: 97.48,
			label: "Apr",
			color: "#d62728"
		}, {
			y: 94.2,
			label: "May",
			color: "#98df8a"
		}, {
			y: 65.28,
			label: "Jun",
			color: "#bcbd22"
		}, {
			y: 51.2,
			label: "Jul",
			color: "#f7b6d2"
		}];
		renderColumnChart(columnChartValues);

		function renderColumnChart(values) {

			var chart = new CanvasJS.Chart("columnChart", {
				backgroundColor: "white",
				colorSet: "colorSet3",
				title: {
				    text: "Case Category Trend",
					fontFamily: "Verdana",
					fontSize: 25,
					fontWeight: "normal",
				},
				animationEnabled: true,
				legend: {
					verticalAlign: "bottom",
					horizontalAlign: "center"
				},
				theme: "theme2",
				data: [

				  {
					  indexLabelFontSize: 15,
					  indexLabelFontFamily: "Monospace",
					  indexLabelFontColor: "darkgrey",
					  indexLabelLineColor: "darkgrey",
					  indexLabelPlacement: "outside",
					  type: "column",
					  showInLegend: false,
					  legendMarkerColor: "grey",
					  dataPoints: values
				  }
				]
			});

			chart.render();
		}
	</script>
</asp:Content>

