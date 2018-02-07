<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.CaseDetailsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CaseDetails
</asp:Content>
<asp:Content ID="content3" ContentPlaceHolderID="FeaturedContent" runat="server">
	<div class="row" style="margin-left:20px">
		<div class="col-lg-2 col-md-3 col-sm-4">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
				</ol>
			</nav>			
		</div>
	</div>	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="modal fade" tabindex="-1" id="modal-default" role="dialog">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div id="snoAlertBox" class="alert alert-success" data-alert="alert">Approved!</div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h2 class="modal-title" style="text-align:center">Order Sheet</h2>
				</div>
				<div class="modal-body">
					<div class="row" style="height:78vh;">
						<div class="col-md-10" style="height:100%">
								<div id="viewer" style="height:100%;margin-left:40px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
							  <label for="comment">Comment:</label>
							  <textarea class="form-control" rows="5" id="comment"></textarea>
							</div>
						</div>						
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="save">Approve</button>
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
						<li><div class="icon-button" data-toggle="tooltip" title="contacts" data-target="#quote-carousel" data-slide-to="1"><i class="fa fa-user" style="font-size:44px"></i></div></li>
						<li><div class="icon-button" data-toggle="tooltip" title="attachments" data-target="#quote-carousel" data-slide-to="2"><i class="fa fa-folder" style="font-size:48px"></i></div></li>
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
									<div class="box-body" id="contacts">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-11 col-md-offset-1" style="border-radius:10px">
								<div class="box box-primary">
									<div class="box-header">
										<h2><strong>Attachments</strong></h2>
									</div>
									<div class="box-body">
										<div class="row">
											<div class="col-md-12">
												<div class="panel col-md-6">
													<div class="box-header with-border" style="text-align:left;">
														<h3 class="box-title">
															<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
																Order Sheet <span class="glyphicon glyphicon-chevron-down" style="top:4px"></span>
															</a>                                                        
														</h3>
													</div>
													<div id="collapseOne" class="panel-collapse collapse in">
														<div class="box-body">
															<div class="polaroid">
																<img src="../../Images/ordersheet.png" alt="OrderSheet" style="width:100%;height:200px">
															</div>
														</div>
													</div>
												</div>

												<div class="panel col-md-6">
													<div class="box-header with-border" style="text-align:left;">
														<h3 class="box-title">
															<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
																E-Filing Report <span class="glyphicon glyphicon-chevron-down" style="top:4px"></span>
															</a>                                                        
														</h3>
													</div>
													<div id="collapseTwo" class="panel-collapse collapse in">
														<div class="box-body">
															<div class="polaroid" >
																<img src="https://image.slidesharecdn.com/7c6c3f14-a58f-49cf-93b2-2dae9d9ee2aa-150225230919-conversion-gate01/95/sample-fictionalized-asset-and-encumbrance-investigation-report-1-638.jpg?cb=1424905881" alt="Filing" style="width:100%;height:200px;">
															</div>
														</div>
													</div>
												</div>

												<div class="panel col-md-6">
													<div class="box-header with-border" style="text-align:left;">
														<h3 class="box-title">
															<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
																Police Report <span class="glyphicon glyphicon-chevron-down" style="top:4px"></span>
															</a>                                                        
														</h3>
													</div>
													<div id="collapseThree" class="panel-collapse collapse in">
														<div class="polaroid" >
															<img src="https://images.examples.com/wp-content/uploads/2017/04/Police-Crime-Report-Example.jpg" alt="PoliceReport" style="width:100%;height:200px;"/>
														</div>
													</div>
												</div>

												<div class="panel col-md-6">
													<div class="box-header with-border" style="text-align:left;">
														<h3 class="box-title">
															<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
																Police Evidence Report <span class="glyphicon glyphicon-chevron-down" style="top:4px"></span>
															</a>                                                        
														</h3>
													</div>
													<div id="collapseFour" class="panel-collapse collapse in">
														<div class="polaroid" >
															<img src="https://images.examples.com/wp-content/uploads/2017/04/Police-Evidence-Report-in-PDF.jpg" alt="PoliceEvidenceReport" style="width:100%;height:200px;">
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
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script src="../../lib/WebViewer.js"></script>   
	<script src="../../lib/html5/ControlUtils.js"></script>
	<script src="../../Scripts/pdfjshtml.js"></script>
	<script type="text/x-jquery-tmpl" id="caseContacts">
		{{each Contacts}}
			 <div class="row">
				<div class="col-md-2">
					<img src="${$value.imgurl}" style="border:1px double #3c8dbc; border-radius:50%;" width="80px" height="80px" />
				</div>
				<div class="col-md-10">
					<div class="row" style="display:flex;margin-top:10px;justify-content:center">
						<div class="col-md-6">
							<dl class="dl-horizontal">
								<dt>Name:</dt>
								<dd>${$value.name}</dd>
								<dt>Party Type:</dt>
								<dd>${$value.partytype}</dd>
								<dt>Gender:</dt>
								<dd>${$value.gender}</dd>
							</dl>
						</div>
						<div class="col-md-6">
							<dl class="dl-horizontal">
								<dt>ID#:</dt>
								<dd>${$value.cid}</dd>
								<dt>Nationality:</dt>
								<dd>${$value.nationality}</dd>
								<dt>Number Of Cases:</dt>
								<dd>05</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		{{/each}}
	</script>

	<script type="text/x-jquery-tmpl" id="attachmentsModalContent">
		{{each attachments}}
			<iframe src="${$value}" style="width:100%;height:500px;" frameborder="0"></iframe>
			<form>
				<div class="form-group">
					<label for="comment">Comments:</label>
					<textarea class="form-control" rows="5" id="Textarea1"></textarea>
				</div>
			</form>
		{{/each}}
	</script>
	<script>


		$("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");
		$(".bg-image").css("height", "100%");
		$(".product-img").click(function () { $(this).next().toggle(); });
		$('div[data-toggle="tooltip"]').tooltip({
			animated: 'fade',
			placement: 'bottom',
		});

		function renderPDF(url) {
			var queryParams = window.ControlUtils.getQueryStringMap(false);
			var docType = queryParams.getString('doctype', 'xod');
			var getDocId = function (filePath) {
				return filePath.replace(/^.*[\\\/]/, '');
			};
			var initialDoc = url;
			var viewerElement = document.getElementById("viewer");
			var myWebViewer = new PDFTron.WebViewer({
				path: "../../lib",
				type: "html5",
				documentType: "pdf",
				l: "demo:avinashow.gre@gmail.com:73be2a3d01fe5d332554bd93dfb8b27a6ba7fe5a826bb21d7d",
				initialDoc: url,
				documentId: getDocId(initialDoc)
			}, viewerElement);
		}

		$(document).on("click", ".polaroid", function (event) {
			var pdf = $(this).children("img").attr("alt");
			var psdfdict = { "Filing": "http://justicealign.azurewebsites.net/Content/files/filing.pdf", "PoliceEvidenceReport": "http://justicealign.azurewebsites.net/Content/files/PoliceEvidenceReport.pdf", "OrderSheet": "http://justicealign.azurewebsites.net/Content/files/OrderSheet.pdf", "PoliceReport": "http://justicealign.azurewebsites.net/Content/files/PoliceReport.pdf" };
			var result = {};
			result["attachments"] = { "url": psdfdict[pdf] };
			$(".modal-title").text(pdf);
			$("#viewer").empty();
			renderPDF(psdfdict[pdf]);
			//displayPDF(psdfdict[pdf]);
			$("#modal-default").modal("show");
		});

		$.ajax({
			url: "/CommonService/getContacts",
			type:"GET",
			data: { caseid: "<%:Model.caseid %>" },
			success: function (response) {
				$("#caseContacts").tmpl(response).appendTo("#contacts");
			}
		});

		$("#save").click(function () {
			$("#snoAlertBox").fadeIn();
			closeSnoAlertBox();
		});


		function closeSnoAlertBox() {
			window.setTimeout(function () {
				$("#snoAlertBox").fadeOut(300)
			}, 3000);
		}

		$(".icon-button").on("click", function () {
			var arr = { 1: "people", 2: "folder" };
			var sarr = { 1: "people_outline", 2: "folder_open" };
			var that = $(this).find("i");
			$(".icons-buttons").find(".icon-button").each(function () {
				if ($(this).find("i").hasClass("fa-user-o")) {
					$(this).find("i").removeClass("fa-user-o");
					$(this).find("i").addClass("fa-user");
				}
				if ($(this).find("i").hasClass("fa-folder-o")) {
					$(this).find("i").removeClass("fa-folder-o");
					$(this).find("i").addClass("fa-folder");
				}
				$(this).find("i").removeClass("active");
			});

			if (that.hasClass("fa-user")) {
				that.removeClass("fa-user");
				that.addClass("fa-user-o");
			} else if (that.hasClass("fa-user-o")) {
				that.addClass("fa-user");
				that.removeClass("fa-user-o");
			} else if (that.hasClass("fa-folder")) {
				that.removeClass("fa-folder");
				that.addClass("fa-folder-o");
			} else if(that.hasClass("fa-folder-o")) {
				that.addClass("fa-folder");
				that.removeClass("fa-folder-o");
			} 
			that.addClass("active");

			//that.find("i").text(sarr[$(this).attr("data-slide-to")]);
		});
	</script>
</asp:Content>
