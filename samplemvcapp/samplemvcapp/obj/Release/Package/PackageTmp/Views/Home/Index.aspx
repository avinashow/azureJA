<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>




<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	
	Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-3 text-center" style="margin:10px;border-radius:20px;padding:10px;background-color:white">
				  <input type="text" class="knob test" data-readonly="true" value="53%" data-width="100" data-height="100"
						 data-fgColor="green">
				  <div class="knob-label"><strong>Case Assigned to Disposal Ratio</strong></div>
				</div>
				<div class="col-md-3 text-center" style="margin:10px;border-radius:20px;padding:10px;background-color:white">
				  <input type="text" class="knob" data-readonly="true" value="30" data-width="100" data-height="100"
						 data-fgColor="orange">
				  <div class="knob-label"><Strong>Pending Order Sheets</Strong></div>
				</div>
				<div class="col-md-3 text-center" style="margin:10px;border-radius:20px;padding:10px;background-color:white">
				  <input type="text" class="knob" data-readonly="true" value="30" data-width="100" data-height="100"
						 data-fgColor="red">
				  <div class="knob-label"><Strong>Pending Cases</Strong></div>
				</div>
			</div>
			<div class="row">
				<div class="col" style="background-color:white;border-radius:20px;padding:20px;text-align:justify">
					<div style="text-align:center">
						<h2>Time to Resolve the cases vs Target</h2>
					</div>
					<hr style="width:100%;background:none;height:0;border:1px solid lightgray;"/>
					<canvas id="bar-chart" width="100%" height="50px"></canvas>
				</div>
			</div>
		</div>
		<div class="col-md-5">
			<div class="col text-center" style="margin:10px;border-radius:20px;padding:30px;background-color:white">
				<div id="pieChart" style="height: 360px; width: 100%;">

				</div>
				<div id="js-legend" class="chart-legend"></div>
			</div>
		</div>
	</div>
</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.3/Chart.min.js"></script>
	<script src="../../Scripts/morris.min.js"></script>

	<script>
		$(document).ready(function () {
			var pieChartValues = [{
				y: 39.16,
				exploded: true,
				legendText: "Backlogged",
				indexLabel: "Backlogged",
				color: "#1f77b4"
			}, {
				y: 21.8,
				legendText: "Completed",
				indexLabel: "Completed",
				exploded: true,
				color: "#ff7f0e"
			}, {
				y: 21.45,
				legendText:"Deferred",
				indexLabel: "Deferred",
				exploded: true,
				color: " #ffbb78"
			}, {
				y: 5.56,
				legendText:"Cancelled",
				indexLabel: "Cancelled",
				exploded: true,
				color: "#d62728"
			}];
			renderPieChart(pieChartValues);

			function renderPieChart(values) {

				var chart = new CanvasJS.Chart("pieChart", {
					backgroundColor: "white",
					colorSet: "colorSet2",

					title: {
						text: "Pending Cases",
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
			}

			//display knobs
			$('.knob').knob();

			//Bar chart 
			// Return with commas in between
			var numberWithCommas = function (x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			};

			var dataPack1 = [21000, 22000, 26000, 35000];
			var dataPack2 = [1000, 1200, 1300, 1400];
			var dates = ["Mar 2016", "May 2016", "Jul 2016", "Sep 2016"];

			// Chart.defaults.global.elements.rectangle.backgroundColor = '#FF0000';

			var bar_ctx = document.getElementById('bar-chart');
			var bar_chart = new Chart(bar_ctx, {
				type: 'bar',
				data: {
					labels: dates,
					datasets: [
					{
						label: 'Actual',
						data: dataPack1,
						backgroundColor: "rgba(55, 160, 225, 0.7)",
						hoverBackgroundColor: "rgba(55, 160, 225, 0.7)",
						hoverBorderWidth: 2,
						hoverBorderColor: 'lightgrey'
					},
					{
						label: 'Target',
						data: dataPack2,
						backgroundColor: "rgba(225, 58, 55, 0.7)",
						hoverBackgroundColor: "rgba(225, 58, 55, 0.7)",
						hoverBorderWidth: 2,
						hoverBorderColor: 'lightgrey'
					},
					]
				},
				options: {
					animation: {
						duration: 10,
					},
					responsive:true,
					tooltips: {
						mode: 'label',
						callbacks: {
							label: function (tooltipItem, data) {
								return data.datasets[tooltipItem.datasetIndex].label + ": " + numberWithCommas(tooltipItem.yLabel);
							}
						}
					},
					scales: {
						xAxes: [{
							stacked:true,
							ticks: {
								autoSkip: true,
								autoSkipPadding: 20,
							},						    
							//gridLines: { display: false },
						}],
						yAxes: [{
							stacked: true,
							ticks: {
								callback: function (value) { return numberWithCommas(value); },
							},
						}],
					}, // scales
					legend: { display: true }
				} // options
			}
			);

		});
		
	</script>
	  
</asp:Content>
