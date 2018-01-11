<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<samplemvcapp.Models.CaseDetailsModel>>" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	
	Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col-md-5" style="border-radius:20px">
			<div class="box box-primary">
				<div class="box-body">
					<div id='calendar' style="border-radius:20px"></div>
				</div>
			</div>
			<div id='datepicker'></div>
		</div>

		<div class="col-md-7">
			<div class="box box-primary">	
					<div class="icon">
						<div class="image"><span class="glyphicon glyphicon-calendar" style="padding-right:5px;padding-top:5px;font-size:20px"></span><span class="date"></span></div>
						<div class="info">
							<div class="row pull-right" style="display:flex;padding-top:10px">
								<div class="col-md-5">
									<input type="text" style="border-radius: 5px;"placeholder="Search" class="form-control" />
								</div>
								<div class="col-md-3">
									<button class="btn btn-default" type="button" id="clearSearch">
										<i class="fa fa-pencil" style="color:red;margin-right:5px"></i>Clear
									</button>
								
								</div>
								<div class="col-md-3">
									<button class="btn btn-danger dropdown-toggle" style="display:none;width:100%" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Category
									</button>
									<ul class="dropdown-menu" id="dropdownMenu" aria-labelledby="dropdownMenuButton">
										<li><a class="dropdown-item" href="#">Reschedule</a></li>
										<li><a class="dropdown-item" href="#">Pending</a></li>
										<li><a class="dropdown-item" href="#">HighPriority</a></li>
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
								<li role="presentation">
									<a href="#content" id="HighPriority" aria-controls="highpriority" role="tab" data-toggle="tab">HighPriority <span id="highpriority" class="badge" style="background-color:#0069d9"></span></a>     
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
					<div class="space">
					</div>					
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.0/pagination.min.js"></script>
	<script type="text/x-jquery-tmpl" id="pagination">
		{{each pages}}
			<li><a href="#">${$index+1}</a></li>
		{{/each}}
	</script>

	 <script type="text/x-jquery-tmpl" id="caseListTemplate">
			{{each cases}}
			<li id="${$value.caseid}" class="list-group-item clearfix" >
				<div class="row">
					<div class="col-sm-2">
						<span class="glyphicon glyphicon-folder-open" style="font-size:70px;"></span>
					</div>
					<div class="col-sm-10" style="text-align:left">
						<div class="row pull-right" style="width: 30%;padding-top: 10px;">
							<div class="col-sm-1">
								<span id="select" style="font-size:20px;" class="glyphicon"></span>
							</div>
							<div class="col-sm-1">
								<span id="${$index+1}" style="font-size:20px;" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="glyphicon glyphicon-option-horizontal dropdown-toggle"></span>
								<ul class="dropdown-menu" id="conmenu">
									<li><a class="dropdown-item" href="">Reschedule</a></li>
									<li><a class="dropdown-item" href="">Pending</a></li>
									<li><a class="dropdown-item" href="">HighPriority</a></li>
								</ul>
							</div>
						</div>
						<div class="row" style="padding-right: 10px;">
							<h4><a class="list-group-item-heading" href="/CaseDetails/CaseDetail/${$value.caseid}">Case#:${$value.caseid}</a></h4>
							<p class="list-group-item-text">
								<strong>Type: </strong> ${$value.classification}
							</p>
							<p class="list-group-item-text">
								<strong>Subject: </strong> ${$value.subject}
							</p>
							<p class="list-group-item-text" style="text-align:justify">
								<strong>Summary: </strong> ${$value.summary}
							</p>
						</div>
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
						d["<%:subitem.Key%>"] = "<%: subitem.Value %>".replace(":","");
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
		    $("#dropdownMenuButton").hide();
		    $("#dropdownMenu").hide();
			updateCasesListView(getCasesForSelectedDate(), "ul.list-group");
		}
	</script>
	<script src="../../Scripts/CaseList.js"></script>
	  
</asp:Content>