<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<samplemvcapp.Models.CaseDetailsModel>>" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	
	Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col-md-5" style="padding:20px;border-radius:20px">
			
			<div id='calendar' style="background-color:#5cb85c;border-radius:20px"></div>
			<div id='datepicker'></div>

			<div class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title">Create new event</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="title">Event title</label>
									<input type="text" name="title" id="title" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="starts-at">Starts at</label>
									<input type="text" name="starts_at" id="starts-at" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="ends-at">Ends at</label>
									<input type="text" name="ends_at" id="ends-at" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="save-event">Save changes</button>
						</div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		</div>

		<div class="col-md-7">
			<div class="box">							
				<div class="icon">
					<div class="image"><i class="fa fa-calendar"></i><span class="date" style="padding-left:10px"></span></div>
					<div class="info">
						<div class="row" style="display:flex;padding:20px">
							<div class="col-md-9">
								<input type="text" placeholder="Search" class="form-control" />
							</div>
							<div class="col-md-2">
								<button class="btn btn-default" type="button" id="clearSearch">
									<i class="fa fa-pencil" style="color:red;margin-right:5px"></i>Clear
								</button>
								
							</div>
							<div class="col-md-3">
								<button class="btn btn-danger dropdown-toggle" style="display:none" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Select Category
								</button>
								<ul class="dropdown-menu" id="dropdownMenu" aria-labelledby="dropdownMenuButton">
									<li><a class="dropdown-item" href="#">Reschedule</a></li>
									<li><a class="dropdown-item" href="#">Pending</a></li>
								</ul>
							</div>
						</div>
						<ul class="nav nav-tabs" role="tablist" style="margin-top:20px">
							<li role="presentation" class="active">
								<a href="#content" id="All" aria-controls="all" role="tab" data-toggle="tab">All</a>     
							</li>
							<li role="presentation">
								<a href="#content" id="Pending" aria-controls="pending" role="tab" data-toggle="tab">Pending <span id="pending" class="badge" style="background-color:#0069d9"></span></a>
							</li>
							<li role="presentation">
								<a href="#content" id="Reschedule" aria-controls="reschedule" role="tab" data-toggle="tab">Reschedule <span id="reschedule" class="badge" style="background-color:#0069d9"></span></a>     
							</li>
						</ul>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="content">
								<ul class="list-group list-cust" style="margin:20px;overflow:auto;">  
									
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="space"></div>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">

	 <script type="text/x-jquery-tmpl" id="caseListTemplate">
			{{each cases}}
			<li id="${$value.caseid}" class="list-group-item clearfix" >
				<div class="row">
					<div class="col-sm-2">
						<span class="glyphicon glyphicon-folder-open" style="font-size:70px;"></span>
					</div>
					<div class="col-sm-6">
						<h4><a class="list-group-item-heading" href="/CaseDetails/CaseDetail/${$value.caseid}">Case#:${$value.caseid}</a></h4>
						<p class="list-group-item-text">
							Case Received Date: ${$value.casereceiveddate}
						</p>
						<p class="list-group-item-text">
							Category: ${$value.category}
						</p>
					</div>
					<div class="col-sm-1">
						<span id="select" style="font-size:20px;" class="glyphicon"></span>
					</div>
					<div class="col-sm-1">
						<span id="${$index+1}" style="font-size:20px;" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="glyphicon glyphicon-option-horizontal dropdown-toggle"></span>
						<ul class="dropdown-menu" id="conmenu">
							<li><a class="dropdown-item" href="">Reschedule</a></li>
							<li><a class="dropdown-item" href="">Pending</a></li>
						</ul>
					</div>
				</div>
			</li> 
			{{/each}}
	</script> 
	<script>
		function getAllCases() {
			var allCases = [];
			<%
				foreach (var item in ViewBag.calendardates)
					{%>
						<%
						for (var i = 0; i < item.Value.Count; i++)
						{%>

			var d = {};
							<% foreach(var subitem in item.Value[i]) {%>
			d["<%:subitem.Key%>"] = "<%: subitem.Value %>";
								<%}%>
			allCases.push(d);
			<%}
						%>
					<%}
					%>
			return allCases;
		}

		function postData(selectedMenu) {
			var caseData;
			var data = {};
			for (var i = 0; i < allCases.length; i++) {
				if (selectedIds.indexOf(allCases[i].caseid) >= 0) {
					allCases[i].category = selectedMenu.trim();
				}
			}
			$.ajax({
				url: "<%: Url.Action("UpdateCategory","CaseDetails") %>",
				type: 'POST',
				data: JSON.stringify(allCases),
				contentType: 'application/json; charset=utf-8',
				success: function (response) {
					selectedIds = [];
					updateTabCounts();
				},
				error: function (jqXHR, exception) {
					alert('Error message.');
				}
			});
			updateCasesListView(getCasesForSelectedDate(), "ul.list-group");
		}
	</script>
	<script src="../../Scripts/CaseList.js"></script>
	  
</asp:Content>