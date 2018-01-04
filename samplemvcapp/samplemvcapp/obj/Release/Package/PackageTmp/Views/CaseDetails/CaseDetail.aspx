<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/site.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.CaseDetailsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CaseDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-solid">
				<div class="box-header with-border">
				  <h2 class="box-title" style="text-align:center"><strong>Case <%: Model.caseid %></strong></h2>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
				  <div class="box-group" id="accordion">
					<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
					<div class="panel box box-primary">
					  <div class="box-header with-border">
						<h4 class="box-title">
						  <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
							Case Details
						  </a>
						</h4>
					  </div>
					  <div id="collapseOne" class="panel-collapse collapse in">
						<div class="box-body">
						  <div class="row">
							  <div class="col-md-4">
								  <dl class="dl-horizontal">
									<dt>Case#:</dt>
									<dd><%: Model.caseid %></dd>
									<dt>District Ct. File #:</dt>
									<dd></dd>
									<dt>Case Name:</dt>
									<dd><%: Model.casename %></dd>
									<dt>Case Type:</dt>
									<dd>Civil</dd>
									<dt>Prosecutor: </dt>
									<dd>Frank Kratovil</dd>
									<dt>Created By:</dt>
									<dd>JUD1</dd>
								  </dl>
							  </div>
							  <div class="col-md-4">
								  <dl class="dl-horizontal">
									<dt>Classification:</dt>
									<dd><%: Model.classification %></dd>
									<dt>Case Charge:</dt>
									<dd>Felony</dd>
									<dt>Status/Penal Code:</dt>
									<dd>1735A</dd>
									<dt>Reference#:</dt>
									<dd>1-188499951</dd>
									<dt>Status:</dt>
									<dd>Scheduled</dd>
									<dt>Disposition:</dt>
									<dd></dd>
									<dt>Assigned To:</dt>
									<dd>JSPREG</dd>
								  </dl>
							  </div>
							  <div class="col-md-4">
								  <dl class="dl-horizontal">
									<dt>Received By:</dt>
									<dd>Court Clerk</dd>
									<dt>Received Date:</dt>
									<dd><%: Model.casereceiveddate %></dd>
									<dt>Received From:</dt>
									<dd>Judicial Department</dd>
									<dt>Police Division:</dt>
									<dd>South Block</dd>
									<dt>Stage:</dt>
									<dd>Country Court</dd>
									<dt>Courthouse:</dt>
									<dd>A24</dd>
								  </dl>
							  </div>
						  </div>
						</div>
					  </div>
					</div>
					<div class="panel box box-primary">
					  <div class="box-header with-border">
						<h4 class="box-title">
						  <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
							Summary
						  </a>
						</h4>
					  </div>
					  <div id="collapseTwo" class="panel-collapse collapse">
						<div class="box-body">
						  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
						  wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
						  eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
						  assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
						  nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
						  farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
						  labore sustainable VHS.
						</div>
					  </div>
					</div>
				  </div>
				</div>
				<!-- /.box-body -->
			  </div>
		</div>
	</div>
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
													<div class="col-xs-3 text-left" style=" "><%= Html.ActionLink("Button Name", "CaseDetail", "CaseDetails", new { id = 123 }, new { @class = "classname" })%></div>
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
													<div class="col-xs-3 text-left" style=" "><%= Html.ActionLink("Button Name", "CaseDetail", "CaseDetails", new { id = 123 }, new { @class = "classname1" })%></div>
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
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2" style="padding:30px;background-color:white;border-radius:10px">
								<button type="button" id="mymodal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modal-default">
									View OrderSheet
								</button>

								<!-- Modal -->
								<div class="modal fade" id="modal-default">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										  <span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title">Default Modal</h4>
									  </div>
									  <div class="modal-body">
										<iframe src="../../Content/files/OrderSheet.pdf" style="width:500px;height:500px;" frameborder="0"></iframe>
									  </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									  </div>
									</div>
									<!-- /.modal-content -->
								  </div>
								  <!-- /.modal-dialog -->
								</div>									
							</div>
						</div>
					</div>
				</div>
				<!-- Carousel Buttons Next/Prev
				<a data-slide="prev" href="#quote-carousel" class="left carousel-control"><span class="glyphicon glyphicon-chevron-left"></span></a>
				<a data-slide="next" href="#quote-carousel" class="right carousel-control"><span class="glyphicon glyphicon-chevron-right"></span></a>-->
			</div>
		</div>
	</div>
	


</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script>
	    $('div[data-toggle="tooltip"]').tooltip({
	        animated: 'fade',
	        placement: 'bottom',
	    });

	    $(".icon-button").on("click", function () {
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
