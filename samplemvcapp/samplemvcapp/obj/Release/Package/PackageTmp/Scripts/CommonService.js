var categoriesList;
var casetypesList;
function initCaseType() {
    $(".dropdown-menu li").click(function () {
        var id = $(this).parent().prev();
        if ($(this).attr("id") == "3") {
            $("#limitation").show();
        } else {
            $("#limitation").hide();
        }
        id.html($(this).children().text() + "&nbsp;<span class='caret'></span>");
    });
}

function initCaseTypes(caseTypes) {
    var caseType = $("#caseTypesList");
    casetypesList = caseTypes;
    buildList(caseType, caseTypes);
}

function initCategories(categories) {
    var category = $("#categoryList");
    categoriesList = categories;
    buildList(category, categories);
}

function buildList(element, response) {
    for (var i = 0; i < response.length; i++) {
        $("<li id='" + response[i].Id + "'><a href='javascript:void(0)'>" + response[i].name + "</a></li>").appendTo(element);
    }
    initCaseType();
}

function makeAjaxRequest(url, callback) {
    $.ajax({
        url: url,
        success: function (response) {
            callback(response.Response);
        }
    });
}
(function () {
    makeAjaxRequest("/CommonService/getCaseTypes", initCaseTypes);
    makeAjaxRequest("/CommonService/getCategories", initCategories);
})();