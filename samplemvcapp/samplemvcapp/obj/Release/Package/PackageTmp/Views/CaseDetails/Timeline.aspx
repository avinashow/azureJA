<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Timeline
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content">

		<div class="row">
		<div class="col-md-6">
			<div class="box">
				<div class="box-body">
					<div id="pieChart" style="height:360px;width:100%"></div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="box">
				<div class="box-body">
					<div id="columnChart" style="height:360px;width:100%"></div>
				</div>
			</div>            
		</div>
	</div>
		<!-- row -->
		<div class="row">
		<div class="col-md-12">
		  <div class="box box-primary">
			  <div class="box-body">
				  <!-- The time line -->
				  <ul class="timeline">
					<!-- timeline time label -->
					<li class="time-label">
						  <span class="bg-red">
							2017
						  </span>
					</li>
					<li class="time-label">
						  <span class="bg-red">
							21 December 2017
						  </span>
					</li>
					<!-- /.timeline-label -->
					<!-- timeline item -->
					<li>
					  <i class="fa fa-envelope bg-blue"></i>

					  <div class="timeline-item">
						<span class="time"><i class="fa fa-calendar-o"></i> 21 December 2017</span>

						<h2 class="timeline-header"><strong>Status: Scheduled</strong></h2>

						<div class="timeline-body">
						</div>
						<!--<div class="timeline-footer">
						  <a class="btn btn-primary btn-xs">Read more</a>
						  <a class="btn btn-danger btn-xs">Delete</a>
						</div>-->
					  </div>
					</li>
					<li class="time-label">
						  <span class="bg-red">
							18 December 2017
						  </span>
					</li>
					<li>
						<i class="fa fa-envelope bg-blue"></i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-calendar-o"></i> 18 December 2017</span>
							<h2 class="timeline-header"><strong>Anderson vs Martin</strong></h2>
							<div class="timeline-body">
								<h3><b>Summary:</b></h3>
								<p>Both parties appeared before court, Police presented enough evidence against Martin to be Pronounced Guilty </p>
								<h3><b>Result:</b></h3>
								<p><b>Session Time: </b> 31mins<br /></p>
								<p><b>Short Order: </b>Notice to Authority Medical Test reports Of Minor</p>
							</div>
						</div>
					</li>
					<li class="time-label">
						  <span class="bg-red">
							18 December 2017
						  </span>
					</li>
					<li>
						<i class="fa fa-user-o bg-blue"></i>

						<div class="timeline-item">
							<span class="time"><i class="fa fa-calendar-o"></i> 18 December 2017</span>

							<h3 class="timeline-header"><strong>Lewis Smith</strong><br/><small>Petitioner's Attorney</small></h3>

							<div class="timeline-body">
								<table class="table">
									<tbody>
										<tr>
											<td>SSN: </td><td>998226988</td>
										</tr>
										<tr>
											<td>Started Practice: </td><td>1996</td>
										</tr>
										<tr>
											<td>Current Cases: </td><td>14</td>
										</tr>
									</tbody>
								</table>
							</div>
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
			label: "one",
			color: "#1f77b4"
		}, {
			y: 381.84,
			label: "two",
			color: "#ff7f0e"
		}, {
			y: 375.76,
			label: "three",
			color: " #ffbb78"
		}, {
			y: 97.48,
			label: "four",
			color: "#d62728"
		}, {
			y: 94.2,
			label: "five",
			color: "#98df8a"
		}, {
			y: 65.28,
			label: "Hi",
			color: "#bcbd22"
		}, {
			y: 51.2,
			label: "Hello",
			color: "#f7b6d2"
		}];
		renderColumnChart(columnChartValues);

		function renderColumnChart(values) {

			var chart = new CanvasJS.Chart("columnChart", {
				backgroundColor: "white",
				colorSet: "colorSet3",
				title: {
					text: "Current Trend",
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

