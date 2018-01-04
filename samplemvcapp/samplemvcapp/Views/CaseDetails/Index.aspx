<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<samplemvcapp.Models.CaseDetailsModel>>"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CaseDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        span.badge.badge-event
        {
            background-color: red!important;
        }
        td.event > div.day
        {
            background-color:none;
        }
        .selectedTab
        {
            background-color:#0069d9;
            color:white;
        }

        .selectedList
        {
            background-color:#0069d9;
            color:white;
        }

        .list-group-item:hover {
            cursor:pointer;
            background-color:#DCDCDC;
        }
    </style>
    <div class="row">
        <div class="col-md-4" style="border-radius:10px;padding:20px;background-color:white">
            <div id="calendar">
            </div>
        </div>
        <div class="col-md-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Case Search" id="search" />
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <a id="clearSearch" class="btn btn-default" href=""><i class="glyphicon glyphicon-pencil" style="color:red"></i>&nbsp;Clear Search</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <ul class="nav nav-tabs" role="tablist">
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
                            <div id="dateSelected" class="pull-left">

                            </div><br />
                            <ul class="list-group list-cust" style="overflow:auto;">  
                                    
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <label for="btn-group">Change Category</label><br />
                    <div class="btn-group">
                      <button type="button" id="selectbtn" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Select Option
                      </button>
                      <ul class="dropdown-menu" id="conmenu">
                          <li><a class="dropdown-item" href="">Reschedule</a></li>
                          <li class="divider"></li>
                          <li><a class="dropdown-item" href="">Pending</a></li>
                      </ul>
                    </div>
                </div>
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
                        <span class="glyphicon glyphicon-book" style="font-size:70px;"></span>
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
                        <span id="${$index+1}" style="font-size:20px;" data-toggle="popover" title="Category" class="glyphicon glyphicon-cog"></span>
                    </div>
                </div>
            </li> 
            {{/each}}
    </script>  
    <script>

        var allCases;
        var selectedDate = null;

        function myNavFunction(id) {
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
        }

        function initSearch() {
            //Function for searching the displayed cases using text inside the case div
            $("#search").on("keyup", function () {
                var filter = $(this).val();
                var count = 0;
                $("ul.list-group li").each(function () {

                    // If the list item does not contain the text phrase fade it out
                    if ($(this).find("td").text().search(new RegExp(filter, "i")) < 0) {
                        $(this).fadeOut();

                        // Show the list item if the phrase matches and increase the count by 1
                    } else {
                        $(this).show();
                        count++;
                    }
                });
            });
        }
        
        function redisplay(id) {
            
            var parent = "ul.list-group";
            $("#dateSelected").html("<strong>Date: " + id + "</strong>");
            var casesByDate = getCasesByDate();
            if (casesByDate.hasOwnProperty(id)) {
                updateCasesListView(casesByDate[id], parent);
            } else {
                $("ul.list-group").html("<li style='text-align:center'><h3>No Cases</h3></li>");
                $("span#pending").text("");
                $("span#reschedule").text("");
            }
        }

        function clearAllSelection(date) {
            $(".dow-clickable").each(function () { $(this).css("background-color", ""); });
            date.css("background-color", "black");
        }

        function updateCasesListView(cases, parent) {
            var casesByCategory = getCasesByCategory();
            $("span#pending").text("");
            $("span#reschedule").text("");

            for (var category in casesByCategory) {
                var categoryId = category.toLowerCase();
                if (categoryId == 'pending' || categoryId == 'reschedule') {
                    $("span#" + categoryId).text(casesByCategory[category].length);
                }
            }

            $("ul.list-group").empty();
            var casesJson = {};
            casesJson["cases"] = cases;
            $("#caseListTemplate").tmpl(casesJson).appendTo(parent);
            initMultiSelect();
        }
        
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

        //fetching the cases by category
        function getCasesByCategory() {
            var casesByCategory = {};
            var allCasesForSelectedDate = getCasesForSelectedDate();
            casesByCategory["All"] = allCasesForSelectedDate;
            for (var i = 0; i < allCasesForSelectedDate.length; i++) {
                var caseData = allCasesForSelectedDate[i];
                if (casesByCategory[caseData["category"]] == null) {
                    casesByCategory[caseData["category"]] = [];
                }
                casesByCategory[caseData["category"]].push(caseData);
            }
            return casesByCategory;
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
        
        // get the cases on particualr day on calendar
        function getEvents(casesByDate) {
            var keys = Object.keys(casesByDate);
            var arr = [];
            for (var i = 0; i < keys.length; i++) {
                var idarr = keys[i].split("T");
                var d = {
                    date: idarr[0],
                    badge: true,
                    title: "No Of cases #" + casesByDate[keys[i]].length,
                };
                arr.push(d);
            }
            return arr;
        }

        //initialising the calendar
        function initCalendar(casesByDate) {
            var calendardict = {
                cell_border: true,
                today: true,
                show_days: false,
                weekstartson: 0,
                show_days: true,
                action: function () {
                    selectedDate = $("#" + this.id).data("date");
                    clearAllSelection($("#" + this.id));
                    
                    return redisplay(selectedDate);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                data: [],
                modal: true,

                legend: [
                    { type: "text", label: "Cases", badge: "00" }
                ]
            };

            calendardict.data = getEvents(casesByDate);
            $("#calendar").zabuto_calendar(calendardict);            
        }

        //initialising the tabclick
        function initTabClick() {
            $("li a[role='tab']").click(function () {
                var casesByCategory = getCasesByCategory();
                $("ul.list-group").empty();
                if (casesByCategory.hasOwnProperty($(this).attr("id"))) {
                    updateCasesListView(casesByCategory[$(this).attr("id")], "ul.list-group");
                } else if($(this).attr("id") == "All") {
                    updateCasesListView(allCases, "ul.list-group");
                }
                
            });
        }

        var selectedIds = [];

        function initMultiSelect() {
            $(".list-group-item").on("click", function () {

                if (selectedIds.indexOf($(this).attr("id")) < 0) {
                    selectedIds.push($(this).attr("id"));
                    //$(this).addClass("selectedList");
                    $(this).find("span#select").addClass("glyphicon-ok");
                } else {
                    var index = selectedIds.indexOf($(this).attr("id"));
                    selectedIds.splice(index, 1);
                    $(this).find("span#select").removeClass("glyphicon-ok");
                    //$(this).removeClass("selectedList");
                }
                consoleLog("Selected Cases" + selectedIds);
                if (selectedIds.length == 0) {
                    $("#selectbtn").prop("disabled", true);
                } else {
                    $("#selectbtn").prop("disabled", false);
                }
            });
        }

        function consoleLog(msg) {
            if (console) {
                console.log(msg);
            }
        }

        function intiClearSelectionDate() {
            $("#clearSearch").on("click", function () {
                updateCasesListView(allCases, "ul.list-group");
            });
        }

        function initPopover() {
            console.log("popover initiated");
            $('span[data-toggle="popover"]').popover({
                trigger: "manual",
                html: true,
                content: function () {
                    return $(".dropdown-menu").html();
                }
            });
        }

        (function () {
            allCases = getAllCases();
            var casesByDate = getCasesByDate();
            var casesByCategory = getCasesByCategory();
            initCalendar(casesByDate);
            updateCasesListView(allCases, "ul.list-group");
            initSearch();
            intiClearSelectionDate();
            initTabClick();
            updateTabCounts();
            initPopover();
        })();

        function updateTabCounts() {
            //TODO
            //get categories count
            var casesByCategory = getCasesByCategory();
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

        $("#conmenu a").click(function () {
            postData($(this).text());
            return false;
        });

    </script>
</asp:Content>
