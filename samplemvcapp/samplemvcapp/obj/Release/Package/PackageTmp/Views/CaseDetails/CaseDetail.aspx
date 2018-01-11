<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.CaseDetailsModel>" %>

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
			<div class="box box-solid">
				<div class="box-header with-border">
				  <h2 class="box-title" style="text-align:center"></h2>
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
					  </div>
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
							<div class="col-md-11 col-md-offset-1" style="background-color:white">
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
										<div class="box-tools pull-right">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body">
										<ul class="products-list product-list-in-box">
											<li class="item">
												<div class="product-img">
													<img src="../../Images/Defendant.png" style="border:1px double #3c8dbc; border-radius:50%;" width="100px" height="100px" />
												</div>
												<div class="product-info">
													<span class="product-description">
														<table class="table">
															<tr><td><strong>Name:</strong> <span style="color:black">Martin Hall</span></td><td><strong>Party Type : </strong> <span style="color:black">Respondent</span> </td><td><strong>Gender: </strong> <span style="color:black">Male</span></td></tr>
															<tr><td><strong>ID#: </strong> <span style="color:black">998-95-5491</td><td><strong>Status : </strong> <span style="color:black">Verified</span> </td><td><strong> Of Cases: </strong> <span style="color:black">05</span></td></tr>
															<tr><td><strong>Nationality : </strong> <span style="color:black">USA</span></td></tr>
														</table>
													</span>
												</div>
											</li>
											<li class="item">
												<div class="product-img">
													<img src="../../Images/07nlook4.jpg" style="border:1px double #3c8dbc; border-radius:50%;" width="100px" height="100px" />
												</div>
												<div class="product-info">
													<span class="product-description">
														<table class="table">
															<tr><td><strong>Name: </strong> <span style="color:black">Lewis Smith</span></td><td><strong>Party Type : </strong> <span style="color:black">Petitioner Attorney</span></td><td><strong>Gender: </strong> <span style="color:black">Male</span></td></tr>
															<tr><td><strong>ID#: </strong> <span style="color:black">998-43-6666</span></td><td><strong>Status : </strong> <span style="color:black">Verified </span></td><td><strong>Number Of Cases: </strong> <span style="color:black">16</span></td></tr>
															<tr><td><strong>Nationality : </strong> <span style="color:black">USA</span></td></tr>
														</table>
													</span>
												</div>
											</li>
											<li class="item">
												<div class="product-img">
													<img src="" style="border:1px double #3c8dbc; border-radius:50%;" width="100px" height="100px" />
												</div>
												<div class="product-info">
													<span class="product-description">
														<table class="table">
															<tr><td><strong>Name: </strong> <span style="color:black">Stephanie Anderson</span></td><td><strong>Party Type : </strong> <span style="color:black">Petitioner</span></td><td><strong>Gender: </strong> <span style="color:black">Female</span></td></tr>
															<tr><td><strong>ID#: </strong> <span style="color:black">998-95-4624</span></td><td><strong>Status : </strong> <span style="color:black">Verified </span></td><td><strong>Number Of Cases: </strong> <span style="color:black">01</span></td></tr>
															<tr><td><strong>Nationality : </strong> <span style="color:black">USA</span></td></tr>
														</table>
													</span>
												</div>
											</li>
										</ul>
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
