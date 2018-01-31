var allCases;
var selectedDate = null;
var selectedTab = "";

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
	var casesByDate = getCasesByDate();
	console.log(casesByDate);
	if (casesByDate.hasOwnProperty(id)) {
		updateCasesListView(casesByDate[id], parent);
	} else {
		$("ul.list-group").html("<li class='list-group-item' style='text-align:center'><h3>No Cases</h3></li>");
		$("span#pending").text("");
		$("span#reschedule").text("");
		$("span#highpriority").text("");
	}
}

function clearAllSelection(date) {
	$(".dow-clickable").each(function () { $(this).children().css("background-color", ""); });
	date.children().css("background-color", "black");
}


function updateCasesListView(cases, parent) {
	var casesByCategory = getCasesByCategory();
	$("span#pending").text("");
	$("span#reschedule").text("");
	$("span#highpriority").text("");
	for (var category in casesByCategory) {
		var categoryId = category.toLowerCase();
		if (categoryId == 'pending' || categoryId == 'reschedule' || categoryId == 'highpriority') {
			$("span#" + categoryId).text(casesByCategory[category].length);
		}
	}
	$(parent).empty();
	var casesJson = {};
	casesJson["cases"] = cases;
	$("li a[role='tab']").each(function () {
		$(this).removeClass("active");
	});
	$("#caseListTemplate").tmpl(casesJson).appendTo(parent);
	initMultiSelect();
	initDropDownSelect();
	initDraggable();
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
			"title": casesByDate[keys[i]].length
		};
		arr.push(d);
	}
	return arr;
}

//initialising the calendar
function initCalendar(casesByDate) {
	$('#calendar').fullCalendar({
			header: {
				left: '',
				center: 'prev title, next',
				right: 'month'
			},
			navLinks: true, // can click day/week names to navigate views
			selectable: true,
			selectHelper: true,
			dayClick: function (date) {
				selectedDate = date.format();
				$(".date").text(date.format());
				redisplay(date.format());
			},
			select: function (start, end) {
				// Display the modal.
				// You could fill in the start and end fields based on the parameters
				//$('.modal').modal('show');

			},
			eventClick: function (event, element) {
				// Display the modal and set the values to the event values.
				/*$('.modal').modal('show');
				$('.modal').find('#title').val(event.title);
				$('.modal').find('#starts-at').val(event.start);
				$('.modal').find('#ends-at').val(event.end);*/

			},
			editable: true,
			eventLimit: true // allow "more" link when too many events

		});

		// Bind the dates to datetimepicker.
		// You should pass the options you need
		$("#starts-at, #ends-at").datetimepicker();

		// Whenever the user clicks on the "save" button om the dialog
		$('#save-event').on('click', function () {
			var title = $('#title').val();
			if (title) {
				var eventData = {
					title: title,
					start: $('#starts-at').val(),
					end: $('#ends-at').val()
				};
				$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
			}
			$('#calendar').fullCalendar('unselect');

			// Clear modal inputs
			$('.modal').find('input').val('');

			// hide modal
			$('.modal').modal('hide');
		});
}

//rendering the Calendar Events
function renderCalendarEvents(allCases) {
	for (var i = 0; i < allCases.length; i++) {
		var eventData = {
			title: "Case# "+allCases[i].caseid,
			start: allCases[i].casereceiveddate,
			end: allCases[i].casereceiveddate
		};
		$('#calendar').fullCalendar('renderEvent', eventData, true);
	}
}

//initialising the tabclick
function initTabClick() {
	$("li a[role='tab']").click(function () {
		selectedTab = $(this).attr("id");
		var tabContentIDS = {"All":"content","Pending" : "pendingcontent","Reschedule":"reschedulecontent","HighPriority":"highprioritycontent"};
		var casesByCategory = getCasesByCategory();
		console.log(tabContentIDS[selectedTab]);
		$("#" + tabContentIDS[selectedTab] + "ul.list-group").empty();
		if (selectedTab == "none") {
			updateCasesListView(casesByCategory["All"], "#content ul.list-group");
		} else {
			if (casesByCategory.hasOwnProperty(selectedTab)) {
				updateCasesListView(casesByCategory[selectedTab], "#" + tabContentIDS[selectedTab] + " ul.list-group");
			}
		}
	});
}


function initDraggable() {
	$tabs = $(".info");

	$(".list-group").sortable({
			connectWith: ".list-group",
			items: "> li",
			appendTo: $tabs,
			//helper: "clone",
			tolerance: "pointer",
			cursor:"move",
			zIndex: 999990,
			start: function(event,ui) {
				$(ui.item).width("100px");
				$(ui.item).height("80px");
				$(ui.item).css("overflow","hidden");
				$tabs.addClass("dragging")
			},
			stop: function(event,ui) {
				$tabs.removeClass("dragging")
			}
		}).disableSelection();

	var $tab_items = $(".nav-pills > li", $tabs).droppable({
		accept: ".list-cust li",
		hoverClass: "ui-state-hover",
		over: function (event, ui) {
			var $item = $(this);
			$item.find("a").tab("show");
		},
		drop: function (event, ui) {
			var $item = $(this);
			var $list = $($item.find("a").attr("href")).find(".list-cust");
			ui.draggable.show().hide("fast", function () {
				//$(this).appendTo($list).show("fast");	
				selectedIds.push($(ui.draggable).attr("id"));
				console.log(selectedIds);
				selectedTab = $item.find("a").attr("id");
				//console.log($item.find("a").attr("id"));
				postData($item.find("a").attr("id"));
			});
			
		}
	});
}

var selectedIds = [];

function initMultiSelect() {
	$(".list-group-item").on("click", function () {
		if (selectedIds.indexOf($(this).attr("id")) < 0) {
			selectedIds.push($(this).attr("id"));
			$(this).find("span#select").addClass("glyphicon-ok");
		} else {
			var index = selectedIds.indexOf($(this).attr("id"));
			selectedIds.splice(index, 1);
			$(this).find("span#select").removeClass("glyphicon-ok");
		}
		consoleLog("Selected Cases " + selectedIds);
		if (selectedIds.length <= 1) {
			$("#dropdownMenu").hide();
			$("#dropdownMenuButton").css("display", "none");
		} else {
			$("#dropdownMenu").show();
			$("#dropdownMenuButton").css("display", "block");
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
		selectedDate = null;
		$(".date").text("");
		updateCasesListView(allCases, "ul.list-group");
	});
}

function initPopover() {
	console.log("popover initiated");
	$('[data-toggle="popover"]').popover({
		html: true,
		content: function () {
			return $("#con").html();
		}
	});
}

function initDropDownSelect() {
	$("#conmenu a").on("click",function (e) {
		postData($(this).text());
		return false;
	});

	$("#dropdownMenu a").on("click",function (e) {
		postData($(this).text());
		return false;
	});
}

(function () {
	allCases = getAllCases();
	var casesByDate = getCasesByDate();
	var casesByCategory = getCasesByCategory();
	console.log(casesByCategory);
	initCalendar(getCasesByDate());
	updateCasesListView(allCases, "#content ul.list-group");
	renderCalendarEvents(allCases);
	initSearch();
	intiClearSelectionDate();
	initTabClick();
	initDropDownSelect();
	updateTabCounts();
	initDraggable();
})();

function updateTabCounts() {
	//TODO
	//get categories count
	var casesByCategory = getCasesByCategory();
}
