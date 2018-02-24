<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<samplemvcapp.Models.CaseDetailsModel>>" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	List of Cases
</asp:Content>

<asp:Content ID="content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">	
					<div class="row">
						<div class="col-md-12"  style="padding:20px">
							<div class="nav-tabs-custom">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#content" id="Clear" aria-controls="all" role="tab" data-toggle="tab">All <span id="Span4" class="badge"></span></a></li>
									<li class=""><a href="#pendingcontent" id="Pending" aria-controls="pending" role="tab" data-toggle="tab">Pending <span id="Span1" class="badge"></span></a></li>
									<li class=""><a href="#reschedulecontent" id="Reschedule" aria-controls="reschedule" role="tab" data-toggle="tab">Reschedule <span id="Span2" class="badge"></span></a></li>
									<li class=""><a href="#highprioritycontent" id="HighPriority" aria-controls="highpriority" role="tab" data-toggle="tab">HighPriority <span id="Span3" class="badge"></span></a> </li>
								</ul>
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="content">
									<ul class="list-group list-cust" id="alllist" style="margin:20px">  

									</ul>
									 <ul class="pagination" id="nonePagination">
									  </ul>
								</div>
								<div role="tabpanel" class="tab-pane" id="pendingcontent">
									<ul class="list-group list-cust" id="pendinglist" style="margin:20px">  

									</ul>
									<ul class="pagination" id="pendingPagination">
									  </ul>
								</div>
								<div role="tabpanel" class="tab-pane" id="reschedulecontent">
									<ul class="list-group list-cust" id="reschedulelist" style="margin:20px;">  

									</ul>
									<ul class="pagination" id="reschedulePagination">
									  </ul>
								</div>
								<div role="tabpanel" class="tab-pane" id="highprioritycontent">
									<ul class="list-group list-cust" id="highprioritylist" style="margin:20px;">  

									</ul>
									<ul class="pagination" id="highpriorityPagination">
									  </ul>
								</div>
									<!-- /.tab-pane -->
								</div>
								<!-- /.tab-content -->
								</div>
						</div>
					</div>				
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script type="text/x-jquery-tmpl" id="pagination">
		{{each pages}}
			<li><a href="#">${$index+1}</a></li>
		{{/each}}
	</script>

	<script type="text/x-jquery-tmpl" id="emptyTemplate">
		{{each cases}}
			<li class="list-group-item" id="${$index}"style="text-align:center">
				<h1>No Cases</h1>
			</li>
		{{/each}}
	</script>

	 <script type="text/x-jquery-tmpl" id="caseListTemplate">
			{{each cases}}
			<li id="${$value.caseid}" class="list-group-item" >
				<div class="row">
					<div class="col-sm-2">
						<span class="glyphicon glyphicon-folder-open" style="font-size:50px;"></span>
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
									<li><a class="dropdown-item" href="">Clear</a></li>
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
		var selectedDate = null;
		var allCases;
		var perPage = 3;
		var selectedTab = "Clear";
		var paginationDict = {};
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
			d["<%:subitem.Key%>"] = "<%: subitem.Value %>".replace(":", "");
								<%}%>
			allCases.push(d);
			<%}
						%>
					<%}
					%>
			return allCases;
		}

		//fetching the cases by category
		function getCasesByCategory() {
			var casesByCategory = {};
			casesByCategory["Clear"] = [];
			casesByCategory["Pending"] = [];
			casesByCategory["HighPriority"] = [];
			casesByCategory["Reschedule"] = [];
			var allCasesForSelectedDate = getCasesForSelectedDate();
			console.log(allCasesForSelectedDate);
			for (var i = 0; i < allCasesForSelectedDate.length; i++) {
				var caseData = allCasesForSelectedDate[i];
				casesByCategory[caseData["category"]].push(caseData);
			}
			return casesByCategory;
		}

		//Fetching the cases by date data
		function getCasesByDate() {
			var casesByDate = {};
			for (var i = 0; i < allCases.length; i++) {
				var caseData = allCases[i];
				var caseDate = caseData["casereceiveddate"].split("T")[0];
				if (casesByDate[caseDate] == null) {
					casesByDate[caseDate] = [];
				}
				casesByDate[caseDate].push(caseData);
			}
			return casesByDate;
		}


		//fetching cases by selectedate
		function getCasesForSelectedDate() {
			if (selectedDate == null) {
				return allCases;
			}
			//TODO
			//filter cases by selected date
			return getCasesByDate()[selectedDate];
		}

		//displaying the pagination as per the content and perPage value
		function displayPagination(cases, contentNode) {
			var pages = (cases.length / perPage);
			if (!Number.isInteger(pages)) {
				pages = parseInt(pages) + 1;
			}
			var p = 0;
			var j = 0;
			paginationDict = {};
			for (var i = 1; i <= pages; i++) {
				paginationDict[i] = [];
				for (j = p; j < cases.length && paginationDict[i].length < perPage; j++) {
					paginationDict[i].push(cases[j]);
				}
				p = j;
			}
			contentNode.empty();
			if (cases.length > 0) {
				$('<li class="active"><a href="#">1</a></li>').appendTo(contentNode);
			}
			
			for (var i = 1; i < pages; i++) {
				$('<li><a href="#">' + (i + 1) + '</a></li>').appendTo(contentNode);
			}

			initPagination(contentNode);
		}

		//generating the pagination dictionary for displaying the page content on page num click
		function initPagination(contentNode) {
			console.log(contentNode);
			contentNode.children('li').each(function () {
				$(this).on("click", function () {
					contentNode.children('li').each(function () {
						$(this).removeClass("active");
					});
					$(this).addClass("active");
					//console.log($(this).children('a').text());
					displayPageContent(paginationDict[$(this).children('li a').text()], contentNode.prev());
				});
			});
		}

		//Updating the tab pane content
		function updateCasesListView(cases, parent) {
			displayPageContent(cases, parent);
			displayPagination(cases, $(parent).next());						
		}


		function displayPageContent(cases, parent) {
			$(parent).empty();
			var pagCases = [];
			for (var i = 0; i < cases.length && i < perPage; i++) {
				pagCases.push(cases[i]);
			}
			var casesJson = {};
			casesJson["cases"] = pagCases;
			if (pagCases.length == 0) {
			    $(parent).html("<li class='list-group-item' style='text-align:center'><h1><strong>No Cases</strong></h1></li>");
			}
			else {
				$(parent).empty();
				$("#caseListTemplate").tmpl(casesJson).appendTo(parent);
				initDragEvent();
			}
			updateTabCount();
		}
		
		function updateTabCount() {
		    var casesByCategory = getCasesByCategory();
			$("#Span1").text(casesByCategory["Pending"].length);
			$("#Span3").text(casesByCategory["HighPriority"].length);
			$("#Span2").text(casesByCategory["Reschedule"].length);
			$("#Span4").text(casesByCategory["Clear"].length);
		}

		function initDragEvent() {

			$("ul.list-group li").on("dragstart", function () {
				$(this).addClass("dec");
			});

			$("ul.list-group li").on("dragstop", function () {
				$(this).removeClass("dec");
			});

			$("ul.nav li").droppable({
				accept: "ul.list-group li",
				hoverClass: "ui-state-hover",
				drop: function (event, ui) {
					console.log(ui.draggable);
					$(ui.draggable).removeClass("dec");
					$($(this).children("a").attr("href")).find(".list-group").append(ui.draggable);
					var parentNode = $(this).children("a").attr("href");
					updateDroppedElementCategory(ui.draggable, $(this), parentNode);
				}
			})


			$("ul.list-group li").draggable({
				cancel: "a.ui-icon", // clicking an icon won't initiate dragging
				//revert: "invalid", // when not dropped, the item will revert back to its initial position
				revert: true, // bounce back when dropped // create "copy" with original properties, but not a true clone
				cursor: "move",
				revertDuration: 0
			});
		}

		function updateCurrentView() {
		    var parent = $("#" + selectedTab).attr("href");
		    console.log(parent);
		    updateCasesListView(getCasesByCategory()[selectedTab], $(parent + " ul.list-group"));
		}

		function updateDroppedElementCategory(item, category, parent) {		    
			for (var i = 0; i < allCases.length; i++) {
				if (allCases[i].caseid == $(item).attr("id")) {
					allCases[i].category = $(category).children("a").attr("id");
				}
			}
			updateCasesListView(getCasesByCategory()[$(category).children("a").attr("id")], $(parent + " ul.list-group"));
			updateCurrentView();
			postData();
		}

		function initTabClick() {
			$("ul.nav li").on("click", function () {
				var colors = { "Clear": "rgb(60, 141, 188)", "Pending": "rgb(243, 156, 18)", "Reschedule": "rgb(0, 166, 90)", "HighPriority": "rgb(221, 75, 57)" };
				$("ul.nav li").each(function () {
					$(this).css("border-top-color", "transparent");
					$(this).parent("ul").css("border-bottom-color", "transparent");
					$(this).children("a").css("border-color", "transparent");
					$(this).css("background-color", "transparent");
				});
				$(this).css("border-top-color", colors[$(this).children("a").attr("id")]);
				$(this).css("background-color", colors[$(this).children("a").attr("id")]);
				$(this).parent("ul").css("border-bottom-color", colors[$(this).children("a").attr("id")]);
				$(this).children("a").css("border-color", colors[$(this).children("a").attr("id")]);
				$(this).children("a").css("border-bottom-color", "transparent");
				selectedTab = $(this).children("a").attr("id");
				var casesByCategory = getCasesByCategory();
				var cases = (casesByCategory.hasOwnProperty($(this).children("a").attr("id")))?casesByCategory[$(this).children("a").attr("id")]:[];
				updateCasesListView(cases, $($(this).children("a").attr("href") + " ul.list-group"));
			});
		}

		(function () {
			allCases = getAllCases();
			updateCasesListView(getCasesByCategory()["Clear"], "#content ul.list-group");
			initDragEvent();
			initTabClick();
		})();

		function postData() {
			$.ajax({
				url: "<%: Url.Action("UpdateCategory","CaseDetails") %>",
				type: 'POST',
				data: JSON.stringify(allCases),
				contentType: 'application/json; charset=utf-8',
				success: function (response) {
					selectedIds = [];
				},
				error: function (jqXHR, exception) {
					alert('Error message.');
				}
			});
		}
	</script>
	  
</asp:Content>