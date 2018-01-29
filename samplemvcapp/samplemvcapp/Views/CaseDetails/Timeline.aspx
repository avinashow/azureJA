<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Timeline
</asp:Content>
<asp:Content ID="content4" ContentPlaceHolderID="FeaturedContent" runat="server">
	<div class="row" style="margin-left:20px">
		<div class="col-lg-3 col-md-4 col-sm-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
				</ol>
			</nav>			
		</div>
	</div>	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content">
		<div class="row">
		<div class="col-md-6">
			<div class="box box-primary">
				<div class="box-body">
					<div class="row">
						<div class="col-md-6">
							<div class="row" style="display:flex;justify-content:center;text-align:center;padding-left:10px">
								<div class="col">
									<h2>Criminal Proceedings Filing</h2>
								</div>								
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
							<div class="row" style="display:flex;justify-content:center;text-align:center">
								<div class="col-md-10">
									<h2>SLA Disposal</h2>
								</div>								
							</div>
							<div class="row" style="display:flex;justify-content:center">
								<div class="c100 p25 green">
									<span>4<h6 style="position:relative;top:-49px">Weeks</h6></span>
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
							<div class="row" style="justify-content:center;display:flex;text-align:center">
								<div class="col-md-10">
									<h2>Average Hearing for Category Disposal</h2>
								</div>								
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
							<div class="row" style="justify-content:center;display:flex;padding-left:10px;text-align:center">
								<div class="col-md-10">
									<h2>Current Conducted Hearing</h2>
								</div>
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
					<div id="columnChart" style="height:420px;width:100%"></div>
				</div>
			</div>            
		</div>
	</div>
		<!-- row -->
		<div class="row" >
			<div class="col-md-10 col-md-offset-1">
				<div class="box box-primary">
				  <div class="box-body">
					  <div class="timeline_block">
							<div class="timeline_inblock">
								<br>
								<div class="timeline_title"> Case Timeline</div>
								<div class="container_chart">
									<section id="timeline-wrapper">
										<div class="container-fluid">
											<div class="row">
												<div class="timeline-top">
													<div class="top-year">2017</div>
												</div>
												<div class="timeline-block">
													<div class="timeline-events">
														<br>
														<div class="event l-event col-md-6 col-sm-6 col-xs-8 ">
															<span class="thumb fa fa-calendar"></span>
															<div class=" event-body" style="transform: matrix(1, 0, 0, 1, 0, 0);">
																<div class="event-content">
																	<h5 class="text-case-primary text-left">Order Sheet Approved Case Closed</h5>
																	<span class="text-muted text-left" style="display:block; margin: 0">
																		<small>15 December 2017</small>
																	</span>
																	<br>
																	<br>
																</div>
															</div>
														</div>
														<!-- end of event body -->
														<div class="row"></div>
														<div class="clear-fix"></div>
														<div class="event r-event col-md-6 col-sm-6 col-xs-8 ">
															<span class="thumb fa fa-calendar"></span>
															<div class=" event-body" style="transform: matrix(1, 0, 0, 1, 0, 0);">
																<div class="event-content">
																	<h5 class="text-case-primary text-left">Order Sheet Submitted for Approval</h5>
																	<span class="text-muted text-left" style="display:block; margin: 0">
																		<small>14 December 2017</small>
																	</span>
																	<br>
																	<br>
																</div>
															</div>
														</div>
														<!-- end of right event <-->
														<div class="row"></div>
														<div class="clearfix"></div>
														<div class="event l-event col-md-6 col-sm-6 col-xs-8 ">
															<span class="thumb fa fa-calendar"></span>
															<div class=" event-body" style="transform: matrix(1, 0, 0, 1, 0, 0);">
																<div class="event-content">
																	<h5 class="text-case-primary text-left">First Hearing Scheduled</h5>
																	<span class="text-muted text-left" style="display:block; margin: 0">
																		<small>13 December 2017</small>
																	</span>
																	<br>
																	<br>
																	<blockquote class=" text-left">
																		<span class="text-muted">Summary :</span>
																		<br> Both parties appeared before court, Police presented enough evidence against Martin to be Pronounced Guilty 
																		<br>
																		<span class="text-muted">Result :</span>
																		<br>
																		<span >
																			<span style="font-weight:bold;font-size: 11.5px;">Session Time</span> : 31mins
																			<br>
																		</span>
																		<span>
																			<span style="font-weight:bold;font-size: 11.5px;">Short Order :</span> Disposed, Life Sentence.
																		</span>
																	</blockquote>
																</div>
															</div>
														</div>
														<div class="row"></div>
														<div class="clearfix"></div>
														<div class="event r-event col-md-6 col-sm-6 col-xs-8 ">
															<span class="thumb fa fa-calendar"></span>
															<div class=" event-body" style="transform: matrix(1, 0, 0, 1, 0, 0);">
																<div class="event-content">
																	<h5 class="text-case-primary text-left">Case Filed in the Court</h5>
																	<span class="text-muted text-left" style="display:block; margin: 0">
																		<small>12 December 2017</small>
																	</span>
																	<br>
																	<br>
																</div>
															</div>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
					  </div>
				  </div>
			  </div>
			</div>
	   </div>
	</section>
	

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
	
	<script>

	    $("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");

		//$("body").css("background-image", "url('https://www.elijahkyeyune.com/home/wp-content/uploads/2013/07/blue-wood-bkg.jpg')");
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
				title: {
					text: "Case Category Trend",
					fontFamily: "Verdana",
					fontSize: 25,
					fontWeight: "normal"
				},
				animationEnabled: true,
				legend: {
					verticalAlign: "bottom",
					horizontalAlign: "center"
				},
				theme: "theme1",
				data: [

				  {
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

