﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.CaseDetailsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CaseDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="modal fade" tabindex="-1" id="modal-default" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h2 class="modal-title" style="text-align:center">Order Sheet</h2>
				</div>
				<div class="modal-body">
					<iframe src="https://docs.google.com/viewer?url=http://justicealign.azurewebsites.net/Content/files/OrderSheet.pdf&embedded=true" style="width:500px;height:500px;" frameborder="0"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="save-event">Save changes</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="box box-primary">
				<div class="box-header with-border" style="text-align:center">
				  <h2><strong>Case Details</strong></h2>
				</div>
				<!-- /.box-header -->
				<div class="box-body" style="display:flex;justify-content:center">
						<div class="row">
							<div class="col-md-4">
								<dl class="dl-horizontal">
								<dt>Case#:</dt>
								<dd><%: Model.caseid %></dd>
								<dt>Case Name:</dt>
								<dd><%: Model.casename %></dd>
								<dt>Case Type:</dt>
								<dd><%:Model.casetype %></dd>
								<dt>Subject: </dt>
								<dd><%:Model.subject %></dd>
								<dt>Jurisdiction:</dt>
								<dd><%: Model.jurisdiction %></dd>
								<dt>Police Report#:</dt>
								<dd><%: Model.policereport %></dd>
								</dl>
							</div>
							<div class="col-md-4">
								<dl class="dl-horizontal">
								<dt>Prosecutor:</dt>
								<dd><%: Model.prosecutor %></dd>
								<dt>Case Charge:</dt>
								<dd><%: Model.casecharge %></dd>
								<dt>Status/Penal Code:</dt>
								<dd><%:Model.penalcode %></dd>
								<dt>Classification:</dt>
								<dd><%:Model.classification %></dd>
								<dt>State:</dt>
								<dd><%: Model.state %></dd>
								<dt>Police Station:</dt>
								<dd><%: Model.policestation %></dd>
								</dl>
							</div>
							<div class="col-md-4">
								<dl class="dl-horizontal">
								<dt>Status:</dt>
								<dd><%: Model.status %></dd>
								<dt>Created By:</dt>
								<dd><%: Model.createdby %></dd>
								<dt>Submitted By:</dt>
								<dd><%: Model.submittedby %></dd>
								<dt>Assigned To:</dt>
								<dd><%: Model.assignedto %></dd>
								<dt>Session Date:</dt>
								<dd><%: Model.casereceiveddate %></dd>
								<dt>Courthouse:</dt>
								<dd><%: Model.courthouse %></dd>
								</dl>
							</div>
						</div>
					</div>
				<!-- /.box-body -->
			  </div>
		</div>
	</div>
	<div class="row icons-buttons">
		<div class="col-md-3 col-md-offset-4">
			<div class="box box-primary">
				<div class="box-body no-padding">
					<ul class="users-list clearfix">
						<li><div class="icon-button active" data-toggle="tooltip" title="summary" data-target="#quote-carousel" data-slide-to="0"><i class="fa fa-list-alt" style="font-size:48px"></i></div></li>
						<li><div class="icon-button" data-toggle="tooltip" title="contacts" data-target="#quote-carousel" data-slide-to="1"><i class="material-icons" style="font-size:48px">people</i></div></li>
						<li><div class="icon-button" data-toggle="tooltip" title="attachments" data-target="#quote-carousel" data-slide-to="2"><i class="material-icons" style="font-size:48px">folder</i></div></li>
						<li><div class="icon-button" data-toggle="tooltip" title="timeline" onclick="window.location.replace('/CaseDetails/Timeline/<%: ViewBag.caseid %>')"><img class="img-responsive" width="50px" height="50px" src="../../Images/timeline.png" /></div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-11" data-wow-delay="0.2s">
			<div class="carousel slide" data-ride="carousel" id="quote-carousel" data-interval="false">
				<div class="carousel-inner text-center">
					<div class="item active">
						<div class="row">
							<div class="col-md-11 col-md-offset-1">
								<div class="box box-primary">
									<div class="box-header">
										<h2><strong>Summary</strong></h2>
									</div>
									<div class="box-body" style="text-align:justify;font-size:17px">
										<%: Model.summary %>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-11 col-md-offset-1">
								<div class="box box-primary">
									<div class="box-header with-border">
										<h2 ><strong>Contacts</strong></h2>
									</div>
									<div class="box-body">
											<div class="row">
												<div class="col-md-2">
													<img src="../../Images/Defendant.png" style="border:1px double #3c8dbc; border-radius:50%;" width="80px" height="80px" />
												</div>
												<div class="col-md-10">
													<div class="row" style="display:flex;margin-top:10px;justify-content:center">
														<div class="col-md-4">
															<dl class="dl-horizontal">
																<dt>Name:</dt>
																<dd>Martin Hall</dd>
																<dt>Party Type:</dt>
																<dd>Respondent</dd>
																<dt>Gender:</dt>
																<dd>Male</dd>
															</dl>
														</div>
														<div class="col-md-4">
															<dl class="dl-horizontal">
																<dt>ID#:</dt>
																<dd>998-95-5491</dd>
																<dt>Status:</dt>
																<dd>Verified</dd>
																<dt>Number Of Cases:</dt>
																<dd>05</dd>
															</dl>
														</div>
														<div class="col-md-4">
															<dl class="dl-horizontal">
																<dt>Nationality:</dt>
																<dd>USA</dd>
															</dl>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-2">
													<img src="../../Images/07nlook4.jpg" style="border:1px double #3c8dbc; border-radius:50%;" width="80px" height="80px" />
												</div>
												<div class="col-md-10">
													<div class="row" style="display:flex;margin-top:10px;justify-content:center">
														<div class="col-md-4 col-sm-6">
															<dl class="dl-horizontal">
																<dt>Name:</dt>
																<dd>Lewis Smith</dd>
																<dt>Party Type:</dt>
																<dd>Petitioner Attorney</dd>
																<dt>Gender:</dt>
																<dd>Male</dd>
															</dl>
														</div>
														<div class="col-md-4 col-sm-6">
															<dl class="dl-horizontal">
																<dt>ID#:</dt>
																<dd>998-43-6666</dd>
																<dt>Status:</dt>
																<dd>Verified</dd>
																<dt>Number Of Cases:</dt>
																<dd>16</dd>
															</dl>
														</div>
														<div class="col-md-4 col-sm-6">
															<dl class="dl-horizontal">
																<dt>Nationality:</dt>
																<dd>USA</dd>
															</dl>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-2">
													<img src="../../Images/stephanie.png" style="border:1px double #3c8dbc; border-radius:50%;" width="80px" height="80px" />
												</div>
												<div class="col-md-10">
													<div class="row" style="display:flex;margin-top:10px;justify-content:center">
														<div class="col-md-4">
															<dl class="dl-horizontal">
																<dt>Name:</dt>
																<dd>Stephanie Anderson</dd>
																<dt>Party Type:</dt>
																<dd>Petitioner</dd>
																<dt>Gender:</dt>
																<dd>Female</dd>
															</dl>
														</div>
														<div class="col-md-4">
															<dl class="dl-horizontal">
																<dt>ID#:</dt>
																<dd>998-95-4624</dd>
																<dt>Status:</dt>
																<dd>Verified</dd>
																<dt>Number Of Cases:</dt>
																<dd>01</dd>
															</dl>
														</div>
														<div class="col-md-4">
															<dl class="dl-horizontal">
																<dt>Nationality:</dt>
																<dd>USA</dd>
															</dl>
														</div>
													</div>
												</div>
											</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-11 col-md-offset-1" style="background-color:white;border-radius:10px">
								<div class="box box-primary">
									<div class="box-header">
										<h2><strong>Attachments</strong></h2>
									</div>
									<div class="box-body">
										<div class="row">
										  <div class="col-xs-6 col-md-3">
											<div href="#" type="button" id="mymodal" class="thumbnail btn btn-primary btn-lg" data-toggle="modal" data-target="#modal-default">
											  <img src="https://cdn.tidyform.com/Download/708/idaho-family-law-case-information-sheet_000003.png" alt="ordersheet">
											  <div class="caption">
												<h3 style="color:white">Order Sheet</h3>
											  </div>
											</div>
										  </div>
										  <div class="col-xs-6 col-md-3">
											<div href="#" type="button" id="Div1" class="thumbnail btn btn-primary btn-lg">
											  <img src="https://cdn.tidyform.com/Download/708/idaho-family-law-case-information-sheet_000003.png" alt="ordersheet">
											  <div class="caption">
												<h3 style="color:white">Notice</h3>
											  </div>
											</div>
										  </div>
										</div>
									</div>
								</div>									
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script>
		$(".product-img").click(function () { $(this).next().toggle(); });
		$('div[data-toggle="tooltip"]').tooltip({
			animated: 'fade',
			placement: 'bottom',
		});

		$(".icon-button").on("click", function () {
			var arr = { 1: "people", 2: "folder" };
			var sarr = { 1: "people_outline", 2: "folder_open" };
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
