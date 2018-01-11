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
					<div class="row">
						<div class="col-md-6">
							<div class="row" style="text-align:center">
								<h2>Criminal Proceedings</h2>
							</div>
							<div class="row" style="display:flex;justify-content:center">
								<div class="c100 p25">
									<span>25%</span>
									<div class="slice">
										<div class="bar"></div>
										<div class="fill"></div>
									</div>
								</div>
							</div>
							
						</div>
						<div class="col-md-6">
							<div class="row" style="text-align:center">
								<h2>SLA Disposal</h2>
							</div>
							<div class="row" style="display:flex;justify-content:center">
								<div class="c100 p25 green">
									<span>4%</span>
									<div class="slice">
										<div class="bar"></div>
										<div class="fill"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row" style="text-align:center">
								<h2>Average Hearing for Category</h2>
							</div>
							<div class="row" style="display:flex;justify-content:center">
								<div class="c100 p25 orange">
									<span>12%</span>
									<div class="slice">
										<div class="bar"></div>
										<div class="fill"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row" style="text-align:center">
								<h2>CUrrent Conducted Hearing</h2>
							</div>
							<div class="row" style="display:flex;justify-content:center">
								<div class="c100 p25 green">
									<span>1%</span>
									<div class="slice">
										<div class="bar"></div>
										<div class="fill"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
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
		//column chart
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

