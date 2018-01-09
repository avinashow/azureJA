<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/site.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.CaseDetailsModel>" %>

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
		<div class="col-md-8 col-md-offset-2">
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
									<dd><%: Model.casetype %></dd>
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
						<li><div class="icon-button active" data-toggle="tooltip" title="contacts" data-target="#quote-carousel" data-slide-to="0"><i class="material-icons" style="font-size:48px">people_outline</i></div></li>
						<li><div class="icon-button" data-toggle="tooltip" title="attachments" data-target="#quote-carousel" data-slide-to="1"><i class="material-icons" style="font-size:48px">folder</i></div></li>
						<li><div class="icon-button" data-toggle="tooltip" title="summary" data-target="#quote-carousel" data-slide-to="2"><i class="fa fa-list-alt" style="font-size:48px"></i></div></li>
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
									<div class="box-header with-border">
										<h3 class="box-title">Contacts</h3>
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
												<div class="product-info" style="display:none">
													<span class="product-description">
														<table class="table">
															<tr><td>Name: Martin Hall</td><td>Party Type : Respondent </td><td>Gender: Male</td></tr>
															<tr><td>ID#: 998-95-5491</td><td>Status : Verified </td><td>Number Of Cases: 05</td></tr>
															<tr><td>Nationality : USA</td></tr>
														</table>
													</span>
												</div>
											</li>
											<li class="item">
												<div class="product-img">
													<img src="../../Images/07nlook4.jpg" style="border:1px double #3c8dbc; border-radius:50%;" width="100px" height="100px" />
												</div>
												<div class="product-info" style="display:none">
													<span class="product-description">
														<table class="table">
															<tr><td>Name: Lewis Smith</td><td>Party Type : Petitioner Attorney</td><td>Gender: Male</td></tr>
															<tr><td>ID#: 998-43-6666</td><td>Status : Verified </td><td>Number Of Cases: 16</td></tr>
															<tr><td>Nationality : USA</td></tr>
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
							<div class="col-md-11 col-md-offset-1" style="padding:30px;background-color:white;border-radius:10px">
								<div class="box">
									<div class="box-body">
										<button type="button" id="mymodal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modal-default">
											View OrderSheet
										</button>
									</div>
								</div>									
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-11 col-md-offset-1" style="background-color:white">
								<div class="box box-primary">
									<div class="box-body" style="text-align:justify;font-size:17px">
										<%: Model.summary %>
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
