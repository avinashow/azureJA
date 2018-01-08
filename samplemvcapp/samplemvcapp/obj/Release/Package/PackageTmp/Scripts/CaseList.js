﻿var allCases;
var selectedDate = null;

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
				right: ''
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
				$('.modal').modal('show');
				$('.modal').find('#title').val(event.title);
				$('.modal').find('#starts-at').val(event.start);
				$('.modal').find('#ends-at').val(event.end);

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
		var casesByCategory = getCasesByCategory();
		$("ul.list-group").empty();
		console.log(casesByCategory);
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
		html: true,
		content: function () {
			return $(".popover-content").html();
		}
	});
}

(function () {
	allCases = getAllCases();
	var casesByDate = getCasesByDate();
	var casesByCategory = getCasesByCategory();
	initCalendar(getCasesByDate());
	updateCasesListView(allCases, "ul.list-group");
	renderCalendarEvents(allCases);
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

$("#conmenu a").click(function () {
	postData($(this).text());
	return false;
});