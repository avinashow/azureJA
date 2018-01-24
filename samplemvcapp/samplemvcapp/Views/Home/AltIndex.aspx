<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="row dash" style="margin:20px">
		<div class="col-md-3" style="opacity:0">
			<div class="box box-primary" style="height:50%;">
				<div class="box-heading" style="text-align:center">
					<h1>999</h1>
				</div>
				<div class="box-body">
					<div class="content">Total Conducted Hearings Today</div>
				</div>
			</div>
		</div>
		<div class="col-md-3" style="opacity:0">
			<div class="box box-warning" style="height:50%;">
				<div class="box-heading" style="text-align:center">
					<h1>3.48M</h1>
				</div>
				<div class="box-body">
					<div class="content">Filed Cases</div>
				</div>
			</div>
		</div>
		<div class="col-md-3" style="opacity:0">
			<div class="box box-danger" style="height:50%;">
				<div class="box-heading" style="text-align:center">
					<h1>98.97K</h1>
				</div>
				<div class="box-body">
					<div class="content">HC Disposed Cases</div>
				</div>
			</div>
		</div>
		<div class="col-md-3" style="opacity:0">
			<div class="box box-success" style="height:50%;">
				<div class="box-heading" style="text-align:center">
				</div>
				<div class="box-body">
					<div id="conductedHearingGraph">

					</div>
					<h1>27.35K</h1>
					<div class="content">Total Conducted Hearings Today</div>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="row" style="margin:20px">
		<div class="container">
			<div class="row " id="icons">
				<div class="col-md-2 col-sm-4 col-xs-4 col-md-offset-1">
					<a href="/EFiling" class="image-details">
						<img width="90%" height="100%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIjucmDtooVxGBf382UFJGdZF_uMUAPxAXwCimSy2kvc9U1nws" alt="" />
						<div class="overlay">
							<div class="text">e-file</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4">
					<a href="javascript:void(0)" class="image-details">
						<img width="90%" height="100%" src="https://cdn4.iconfinder.com/data/icons/banking-and-finance/500/finance-hammer-512.png" alt="" />
						<div class="overlay">
							<div class="text">Legal Divisons</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4">
					<a href="/CitizenHelp" class="image-details">
						<img width="90%" height="100%" src="http://www.communityfoodbank.org/portals/0/Images/Icons/GetHelp/Connect-with-Community-Icon.png" alt="" />
						<div class="overlay">
							<div class="text">Citizen Help</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4">
					<a href="/CourtFees" class="image-details">
						<img width="90%" height="100%" src="https://trafek.com/wp-content/uploads/2016/08/icon-fees.png" alt="" />
						<div class="overlay">
							<div class="text">Calculate Court Fee</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4">
					<a href="/Limitation" class="image-details">
						<img width="90%" height="100%" src="https://pt.seaicons.com/wp-content/uploads/2016/02/google-docs-icon.png" alt="" />
						<div class="overlay">
							<div class="text">Calculate Days Limit</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	
	
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>
		$(document).ready(function () {
		    $("#arrow").on("click", function (event) { $('html,body').animate({ scrollTop: $(".dash").offset().top }, 1700);});

			function isScrolledIntoView(elem) {
				var $window = $(window),
					docViewTop = $window.scrollTop(),
					docViewBottom = docViewTop + $window.height(),
					elemTop = $(elem).offset().top,
					elemBottom = elemTop + $(elem).outerHeight();
				return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
			}
			$(window).on("scroll", function () {
				if (isScrolledIntoView($(".dash"))) {
					$(".dash .col-md-3").each(function () {
						$(this).fadeTo(1000, 1);
					});
				}
				if (isScrolledIntoView($("#icons"))) {
					$("#icons .col-md-2").each(function () {
						$(this).fadeTo(1000,1).addClass("iconsCircle");
					});
				}
			});
		});
	</script>
</asp:Content>
