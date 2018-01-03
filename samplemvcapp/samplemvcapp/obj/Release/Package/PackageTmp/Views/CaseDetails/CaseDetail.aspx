<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.CaseDetailsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CaseDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row" style="display:flex;justify-content:center;background-color:white;border-bottom:0.5px solid #DCDCDC;border-top-left-radius:10px;border-top-right-radius:10px">
		<div class="col-md-4" style="text-align:center">
			<h2>Case Details</h2>
		</div>	
	</div>
	<div class="row" style="background-color:white;padding-bottom:10px;border-bottom-left-radius:10px;border-bottom-right-radius:10px"> 
		<div class="col-sm-3 col-sm-offset-1" style="display:flex;justify-content:center">
			<div class="col-padding">
				<table>
					<tr><td>Case #</td><td><%: Model.caseid %></td></tr>
					<tr><td>District Ct. File # </td><td></td></tr>
					<tr><td>Case Name</td><td><%: Model.casename %></td></tr>
					<tr><td>Case Type</td><td>Civil</td></tr>
					<tr><td>Prosecutor </td><td>Frank Kratovil</td></tr>
					<tr><td>Created By</td><td>JUD1</td></tr>
				</table>
			</div>
		</div>
		<div class="col-sm-3" style="display:flex;justify-content:center">
			<div class="col-padding">
				<table>
					<tr><td>Classification</td><td><%: Model.classification %></td></tr>
					<tr><td>Case Charge</td><td>Felony</td></tr>
					<tr><td>Status/ Penal Code</td><td>1735A</td></tr>
					<tr><td>Reference # </td><td>1-188499951</td></tr>
					<tr><td>Status </td><td>Scheduled</td></tr>
					<tr><td>Disposition</td><td></td></tr>
					<tr><td>Assigned To</td><td>JSPREG</td></tr>
				</table>
			</div>
		</div>
		<div class="col-sm-3" style="display:flex;justify-content:center">
			<div class="col-padding">
				<table>
					<tr><td>Received By</td><td>Court Clerk</td></tr>
					<tr><td>Received Date</td><td><%: Model.casereceiveddate %></td></tr>
					<tr><td>Received From</td><td>Judicial Department</td></tr>
					<tr><td>Police Division </td><td>South Block</td></tr>
					<tr><td>Stage </td><td>Country Court</td></tr>
					<tr><td>Courthouse</td><td>A24</td></tr>
				</table>
			</div>
		</div>
	</div>
	<br />
	<div class="row icons-buttons" style="display:flex;justify-content:center">
		<div class="col" style="display:flex;background-color:white;border-radius:10px;">
			<div class="icon-button active" data-toggle="tooltip" title="contacts" data-target="#quote-carousel" data-slide-to="0"><i class="material-icons" style="font-size:48px">people_outline</i></div>
			<div class="icon-button" data-toggle="tooltip" title="attachments" data-target="#quote-carousel" data-slide-to="1"><i class="material-icons" style="font-size:48px">folder</i></div>
			<div class="icon-button" data-toggle="tooltip" title="timeline" onclick="window.location.replace('/CaseDetails/Timeline/<%: ViewBag.caseid %>')"><img class="img-responsive" width="50px" height="50px" src="../../Images/timeline.png" /></div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12" data-wow-delay="0.2s">
			<div class="carousel slide" data-ride="carousel" id="quote-carousel" data-interval="false">
				<div class="carousel-inner text-center">
					<div class="item active">
						<div class="row">
							<div class="col-md-9 col-md-offset-2">
								<div class="panel panel-default">
									<div class="panel-body">
										<ul class="list-group list-group-body" style="">
											<li class="list-group-item">
												<div class="row">
													<div class="col-xs-3 text-left" style=" "><%= Html.ActionLink("Button Name", "CaseDetail", "CaseDetails", new { id = Model.caseid }, new { @class = "classname" })%></div>
													<div class="col-xs-4" style="">
														<table>
															<tbody>
																<tr>
																	<td>Name: </td><td>Stephanie</td>
																</tr>
																<tr>
																	<td>Party Type: </td><td>Petitioner</td>
																</tr>
																<tr>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="col-xs-4" style="">
														<table>
															<tr>
																<td>Mobile: </td><td>+1(786)-376-7045</td>
															</tr>
															<tr>
																<td>Home: </td><td>Unavailable</td>
															</tr>
															<tr>
																<td>Gender: </td><td>Female</td>
															</tr>
															<tr>
																<td>Nationality: </td><td>Unavailable</td>
															</tr>
														</table>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="row">
													<div class="col-xs-3 text-left" style=" "><%= Html.ActionLink("Button Name", "CaseDetail", "CaseDetails", new { id = Model.caseid }, new { @class = "classname1" })%></div>
													<div class="col-xs-4" style="">
														<table>
															<tbody>
																<tr>
																	<td>Name: </td><td>Stephanie</td>
																</tr>
																<tr>
																	<td>Party Type: </td><td>Petitioner</td>
																</tr>
																<tr>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="col-xs-4" style="">
														<table>
															<tr>
																<td>Mobile: </td><td>+1(786)-376-7045</td>
															</tr>
															<tr>
																<td>Home: </td><td>Unavailable</td>
															</tr>
															<tr>
																<td>Gender: </td><td>Female</td>
															</tr>
															<tr>
																<td>Nationality: </td><td>Unavailable</td>
															</tr>
														</table>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="panel-footer" style="line-height: 34px; height: 54px;">
										<div class="row" style="display:flex;">
										  <div class="col col-xs-2">Page 1 of 1
										  </div>
										  <div class="col col-xs-8 col-md-push-2">
											  <ul class="pagination hidden-xs pull-right" style="margin:0;">
												  <li class="active"><a href="#">1</a></li>
												</ul>
										  </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<blockquote>
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2" style="padding:30px;background-color:white;border-radius:10px">
									<button type="button" id="mymodal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
										View OrderSheet
									</button>

									<!-- Modal -->
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<h4 class="modal-title" id="myModalLabel">Order Sheet</h4>
											</div>
											<div class="modal-body">
											    <iframe src="../../Content/files/OrderSheet.pdf" style="width:500px;height:500px;" frameborder="0"></iframe>
											</div>
											<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save changes</button>
											</div>
										</div>
										</div>
									</div>
									
								</div>
							</div>
						</blockquote>
					</div>
				</div>
				<!-- Carousel Buttons Next/Prev
				<a data-slide="prev" href="#quote-carousel" class="left carousel-control"><span class="glyphicon glyphicon-chevron-left"></span></a>
				<a data-slide="next" href="#quote-carousel" class="right carousel-control"><span class="glyphicon glyphicon-chevron-right"></span></a>-->
			</div>
		</div>
	</div>
	


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script>
		$('div[data-toggle="tooltip"]').tooltip({
			animated: 'fade',
			placement: 'bottom',
		});
		
		$(".icon-button").on("click",function () {
			var arr = { 0: "people", 1: "folder" };
			var sarr = { 0: "people_outline", 1: "folder_open" };
			var that = $(this);
			$(".icons-buttons").find(".icon-button").each(function () {
				$(this).find("i").text(arr[$(this).attr("data-slide-to")]);
				$(this).removeClass("active");
			});
			$(this).addClass("active");

			$(this).find("i").text(sarr[$(this).attr("data-slide-to")]);
		});
	</script>
</asp:Content>
