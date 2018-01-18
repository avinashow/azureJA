<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="row dash" style="margin-top:20px">
		<div class="col-md-3">
				<div class="title">Total Conducted Hearings Today</div>
				<div class="content">999</div>
		</div>
		<div class="col-md-3">
				<div class="title">Filed Cases</div>
				<div class="content">3.48M</div>
		</div>
		<div class="col-md-3">
				<div class="title">HC Disposed Cases</div>
				<div class="content">98.97K</div>
		</div>
		<div class="col-md-3">
			<div class="title">Total Conducted Hearings Today</div>
			<div class="content">27.35K</div>
		</div>
	</div>
	<hr />
	<div class="row" style="margin-top:20px">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-4 col-xs-4" style="height:20vh">
					<a href="/Home/About" class="image-details">
						<img width="90%" height="100%" src="https://cdn3.iconfinder.com/data/icons/flatty-series-1/512/e-book_electronic_book_text_holding_digital_tablet_reading_information_flat_icon_illustration-512.png" alt="" />
						<div class="overlay">
							<div class="text">e-file</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4" style="height:20vh;">
					<a href="javascript:void(0)" class="image-details">
						<img width="90%" height="100%" src="https://cdn4.iconfinder.com/data/icons/banking-and-finance/500/finance-hammer-512.png" alt="" />
						<div class="overlay">
							<div class="text">Legal Divisons</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4" style="height:20vh;">
					<a href="javascript:void(0)" class="image-details">
						<img width="100%" height="100%" src="https://justifiedgrid.com/wp-content/uploads/documentation.png" alt="" />
						<div class="overlay">
							<div class="text">Citizen Help</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4" style="height:20vh;">
					<a href="javascript:void(0)" class="image-details">
						<img width="100%" height="100%" src="http://www.in.gov/judiciary/images/billboard-e-filing-tutorials.jpg" alt="" />
						<div class="overlay">
							<div class="text">Calculate Court Fee</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4" style="height:20vh;">
					<a href="javascript:void(0)" class="image-details">
						<img width="100%" height="100%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTEZNCvbCEqWLgc0NPdlvc5NeWP4pJ_QJ1-Zlu3JdmorFym5zR" alt="" />
						<div class="overlay">
							<div class="text">Calculate Days Limit</div>
						</div>
					</a>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-4" style="height:20vh;">
					<a href="javascript:void(0)" class="image-details">
						<img width="100%" height="100%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiT3Wl2sO3SNDR0nPQNaU3qtfATkbfDW6bvqjMkRgFak8TIdABmQ" alt="" />
						<div class="overlay">
							<div class="text">Legal Divisions</div>
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
			$('.rollover').css('display', 'none');
			$('.image-details').hover(function () {
				$(this).children('.rollover').slideDown(250);
			}, function () {
				$(this).children('.rollover').slideUp(250);
			});
		});
	</script>
</asp:Content>
