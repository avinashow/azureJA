<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="contactTitle" ContentPlaceHolderID="TitleContent" runat="server">
	Contact - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
	<div class="row">
		<div class="col">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class='breadcrumb-item'><a href='/Home/altindex'>Home</a></li>
					<li class='breadcrumb-item'><a href='/Home/About'>E-filing</a></li>
					<li class='breadcrumb-item active'>E-filing Resources</li>
				</ol>
			</nav>			
		</div>
	</div>
</asp:Content>

<asp:Content ID="contactContent" ContentPlaceHolderID="MainContent" runat="server">
<h1>E-Filing Resources</h1>
<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h4 class="panel-title">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel1"><i class="glyphicon glyphicon-minus"></i>&nbsp;Civil Division</a>
			</h4>

		</div>
		<div id="panel1" class="panel-collapse collapse in">
			<div class="panel-body">
				<div class="container">
					<a href="../../Content/files/2016CivilPresentation.pptx"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;Civil e-Filing Guide</a><br/>
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Process Server Guide</a><br />
					<a href="javascript:void(0)"><i class="fa fa-chain"></i>&nbsp;Civil Forms</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Civil e-Filing Guidelines</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Filing a Safe at Home Address Petition</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Instruction Manual for Filing a Public Records Access Dispute</a><br />
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h4 class="panel-title">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel2"><i class="glyphicon glyphicon-plus"></i>&nbsp;Criminal Division</a>
			</h4>

		</div>
		<div id="panel2" class="panel-collapse collapse">
			<div class="panel-body">
				<div class="container">
					<a href="javascript;void(0)"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;Criminal e-Filing Guide</a><br/>
					<a href="javascript:void(0)"><i class="fa fa-chain"></i>&nbsp;Criminal Forms</a><br />
					<a href="javascript:void(0)"><i class="fa fa-chain"></i>&nbsp;Criminal E-Filing Guidelines</a><br />
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h4 class="panel-title">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel3"><i class="glyphicon glyphicon-plus"></i>&nbsp;Domestics Relation Division</a>
			</h4>

		</div>
		<div id="panel3" class="panel-collapse collapse">
			<div class="panel-body">
				<div class="container">
					<a href="javascript;void(0)"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;Domestic e-Filing Guide</a><br/>
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Uniquer Behaviors in Domestic/Juvenile e-Filing</a><br />
					<a href="javascript:void(0)"><i class="fa fa-chain"></i>&nbsp;Domestic Forms</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Domestic e-Filing Guidelines</a><br />
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h4 class="panel-title">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel4"><i class="glyphicon glyphicon-plus"></i>&nbsp;Juvenile Division</a>
			</h4>

		</div>
		<div id="panel4" class="panel-collapse collapse">
			<div class="panel-body">
				<div class="container">
					<a href="javascript;void(0)"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;Juvenile e-Filing Guide</a><br/>
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Uniquer Behaviors in Domestic/Juvenile e-Filing</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Process Server Guide</a><br />
					<a href="javascript:void(0)"><i class="fa fa-chain"></i>&nbsp;Juvenile Forms</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Juvenile e-Filing Guidelines</a><br />
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h4 class="panel-title">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel5"><i class="glyphicon glyphicon-plus"></i>&nbsp;Appeals Division</a>
			</h4>

		</div>
		<div id="panel5" class="panel-collapse collapse">
			<div class="panel-body">
				<div class="container">
					<a href="javascript;void(0)"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;Appeals e-Filing Guide</a><br/>
					<a href="javascript:void(0)"><i class="fa fa-chain"></i>&nbsp;Appeal Forms</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Local Rule for 10th District Court of Appeals</a><br />
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h4 class="panel-title">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel6"><i class="glyphicon glyphicon-plus"></i>&nbsp;Additional Resources</a>
			</h4>

		</div>
		<div id="panel6" class="panel-collapse collapse">
			<div class="panel-body">
				<div class="container">
					<a href="javascript:void(0)"><i class="fa fa-external-link"></i>&nbsp;Introduction to e-Filing Video Series</a><br />
					<a href="javascript:void(0)"><i class="fa fa-file-pdf-o"></i>&nbsp;Media e-Filing Instructions</a><br />
				</div>
			</div>
		</div>
	</div>
</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>
		var selectIds = $('#panel1,#panel2,#panel3,#panel4,#panel5,#panel6');
		$(function ($) {
			selectIds.on('show.bs.collapse hidden.bs.collapse', function () {
				$(this).prev().find('.glyphicon').toggleClass('glyphicon-plus glyphicon-minus');
			})
		});
	</script>
</asp:Content>