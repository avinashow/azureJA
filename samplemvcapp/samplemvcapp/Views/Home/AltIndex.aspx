<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
		<div class="row">
			<div class="cover-card col-sm-12" style="height:100vh;">
				  <div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
					  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					  <li data-target="#myCarousel" data-slide-to="1"></li>
					  <li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
					  <div class="item active">
						<img src="" alt="Los Angeles" style="width:100%;">
					  </div>

					  <div class="item">
						<img src="" alt="Chicago" style="width:100%;">
					  </div>
	
					  <div class="item">
						<img src="ny.jpg" alt="New york" style="width:100%;">
					  </div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					  <span class="glyphicon glyphicon-chevron-left"></span>
					  <span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
					  <span class="glyphicon glyphicon-chevron-right"></span>
					  <span class="sr-only">Next</span>
					</a>
				  </div>
			</div>
		</div>
		<div class="row">
			<div class="container">
				<div class="row" style="display:flex;justify-content:center">
					<div class="col-md-10">
						<table>
							<tr>
								<td>
									<div class="cover-card col" style="background-color:#3c8dbc">
										<div class="row" style="color:white;text-align:center">
											<h2>Order Sheets</h2>
										</div>
										<div class="row" style="display:flex;color:white;justify-content:space-around">
											<div class="col">
												<span class="glyphicon glyphicon-list-alt" style="color:white;padding-top:20px;font-size:60px"></span>
											</div>
											<div class="col" style="color:white">
												<div><h3>Received: 486</h3></div>
												<div><h4>Approved: 351</h4></div>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="cover-card" style="background-color:#98FB98">
										<div class="row" style="color:white;text-align:center">
											<h2>Total Cases</h2>
										</div>
										<div class="row" style="display:flex;color:white;justify-content:space-around">
											<div class="col">
												<span class="glyphicon glyphicon-briefcase" style="color:white;padding-top:20px;font-size:60px"></span>
											</div>
											<div class="col" style="color:white">
												<div><h3>Assigned: 641</h3></div>
												<div><h4>Completed: 213</h4></div>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="cover-card" style="background-color:#FF7F50">
										<div class="row" style="color:white;text-align:center">
											<h2>Case Disposal Ratio</h2>
										</div>
										<div class="row" style="display:flex;color:white;justify-content:space-around">
											<div class="col">
												<span class="glyphicon glyphicon-repeat" style="color:white;padding-top:20px;font-size:60px"></span>
											</div>
											<div class="col" style="color:white">
												<div><h3>Time Taken: 46%</h3></div>
												<div><h4>Target SLA: 65%</h4></div>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="cover-card" style="background-color:#cc5490">
										<div class="row" style="color:white;text-align:center">
											<h2>Pending Cases</h2>
										</div>
										<div class="row" style="display:flex;color:white;justify-content:space-around">
											<div class="col">
												<i class="fa fa-hourglass" style="color:white;padding-top:20px;font-size:60px"></i>
											</div>
											<div class="col" style="color:white">
												<div><h3>Total: 1562</h3></div>
												<div><h4>This Month: 42</h4></div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<link rel="stylesheet" href="../../Content/worldmap/jqvmap.css" />
	<script src="../../Scripts/worldmap/jquery.vmap.js"></script>	
	<script src="../../Scripts/worldmap/jquery.vmap.world.js"></script>
	<script src="../../Scripts/worldmap/jquery.vmap.sampledata.js"></script>
	<script>
		$(document).ready(function () {

			//Spline Chart
			var chart = new CanvasJS.Chart("chartContainer", {
				animationEnabled: true,
				theme: "light2",
				title: {
					text: ""
				},
				axisY: {
					includeZero: false
				},
				data: [{
					type: "spline",
					showInLegend: true,
					lineColor:"#3c8dbc",
					name:"Target Time SLA",
					dataPoints: [
						{ label:"JAN",y: 450 },
						{ label: "FEB", y: 414 },
						{ label: "MAR", y: 520, indexLabel: "highest", markerColor: "red", markerType: "triangle" },
						{ label: "APR", y: 460 },
						{ label: "MAY", y: 450 },
						{ label: "JUN", y: 500 },
						{ label: "JUL", y: 480 }
					]
				},
				{
					type: "spline",
					showInLegend: true,
					lineColor: "pink",
					name:"Actual Time Taken",
					dataPoints: [
						{ label: "JAN", y: 200 },
						{ label: "FEB", y: 214 },
						{ label: "MAR", y: 320, indexLabel: "highest", markerColor: "red", markerType: "triangle" },
						{ label: "APR", y: 260 },
						{ label: "MAY", y: 250 },
						{ label: "JUN", y: 300 },
						{ label: "JUL", y: 280 }
					]
				}
				]
			});
			chart.render();

			//Doughtnut chart
			var chart = new CanvasJS.Chart("dounut", {
				animationEnabled: true,
				title: {
					text: "Email Categories",
					horizontalAlign: "left"
				},
				data: [{
					type: "doughnut",
					startAngle: 60,
					//innerRadius: 60,
					indexLabelFontSize: 17,
					indexLabel: "{label} - #percent%",
					toolTipContent: "<b>{label}:</b> {y} (#percent%)",
					dataPoints: [
						{ y: 67, label: "Inbox" },
						{ y: 28, label: "Archives" },
						{ y: 10, label: "Labels" },
						{ y: 7, label: "Drafts" },
						{ y: 15, label: "Trash" },
						{ y: 6, label: "Spam" }
					]
				}]
			});
			chart.render();

			//World Map
			jQuery('#vmap').vectorMap({
				map: 'world_en',
				backgroundColor: '#333333',
				color: '#ffffff',
				hoverOpacity: 0.7,
				selectedColor: '#666666',
				enableZoom: true,
				showTooltip: true,
				scaleColors: ['#C8EEFF', '#006491'],
				values: sample_data,
				normalizeFunction: 'polynomial'
			});

		});
	</script>
</asp:Content>