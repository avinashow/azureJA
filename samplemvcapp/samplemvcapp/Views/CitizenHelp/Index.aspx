<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CitizenHelp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row" style="margin-bottom:70px">
		 <div class="polaroid" id="jurisdictionOPA">
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%;height:auto;">
		  <div class="cont">
			<h4>Determine Jurisdiction</h4>
		  </div>
		</div>
		<div class="polaroid">
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%;height:auto">
		  <div class="cont">
			<h4>Determine CaseType</h4>
		  </div>
		</div>
		<div class="polaroid">
		  <img src="http://www.dynafile.com/Media/Default/Solutions/Icons/288/contract-management.png" alt="Norway" style="width:100%;height:auto">
		  <div class="cont">
			<h4>Filing For Claims</h4>
		  </div>
		</div>
	</div>

	<div class="row" id="OPA" style="border:1px solid lightgray;padding:50px;display:none">
		<div class="col-md-10 col-md-offset-1">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="false">
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
					
					<div class="item active">
					  <form>
						<div class="form-group">
							<label>1) Are you a Citizen of the Country?</label><br />
							<div class="form-check form-check-inline" style="display:inline">
								<label class="radio-container">Yes
									<input type="radio" name="citizenship">
									<span class="checkmark"></span>
								</label>
								<label class="radio-container">No
								  <input type="radio" name="citizenship">
								  <span class="checkmark"></span>
								</label>
							</div>
						</div>	
						<div class="form-group">
							<label>2) Are you Above 18 Years old?</label><br />
							<div class="form-check form-check-inline" style="display:inline">
								<label class="radio-container">Yes
									<input type="radio" name="age">
									<span class="checkmark"></span>
								</label>
								<label class="radio-container">No
								  <input type="radio" name="age">
								  <span class="checkmark"></span>
								</label>
							</div>
						</div>	
						<div class="form-group">
							<label for="#filingcase">3) Do you have the details of the Person you are filing the Case against? </label><br />
							<div class="form-check form-check-inline" id="filingcase" style="display:inline">
								<label class="radio-container">Yes
									<input type="radio" name="filingcase">
									<span class="checkmark"></span>
								</label>
								<label class="radio-container">No
								  <input type="radio" name="filingcase">
								  <span class="checkmark"></span>
								</label>
							</div>
						</div>					
					  </form>
					</div>   
					  
					<div class="item">
					  <form>
						<div class="form-group">
							<label>4) Please Select the Case Division:</label><br />
							<select class="form-control">
								<option>Default select</option>
								<option>Criminal</option>
								<option>Civil</option>
								<option>Commercial</option>
								<option>Land Division</option>
							</select>
						</div>
						<div class="form-group" id="subcivil" style="display:none">
							<label>4.1) Choose the Relevant Category :</label><br />
							<select class="form-control">
								<option>Default select</option>
								<option>Civil Complaint (Category A, B, C, D, H)</option>
								<option>Civil Complaint (Category E – Foreclosure) </option>
								<option>Administrative Appeal (Category F) </option>
								<option>Third Party Complaint w/Service</option>
							</select>
						</div>
						<div class="form-group">
							<label>5) The person you are suing lives or does business in the same District as you live in ?</label><br />
							<div class="form-check form-check-inline" style="display:inline">
								<label class="radio-container">Yes
									<input type="radio" name="business">
									<span class="checkmark"></span>
								</label>
								<label class="radio-container">No
								  <input type="radio" name="business">
								  <span class="checkmark"></span>
								</label>
							</div>
						</div>	
					  </form>
					</div>     

					<div class="item">
						<form>
							<div class="form-group">
								<label>6) What is the  value for the purpose of Jurisdiction?</label><br />
								<div class="form-check form-check-inline" style="display:inline">
									<label class="radio-container">>22000$
										<input type="radio" name="jurisdiction">
										<span class="checkmark"></span>
									</label>
									<label class="radio-container"><22000$
									  <input type="radio" name="jurisdiction">
									  <span class="checkmark"></span>
									</label>
								</div>
							</div>	
							<div class="form-group">
								<label>7) Have you filed your case in lower Court Before?</label><br />
								<div class="form-check form-check-inline" style="display:inline">
									<label class="radio-container">Yes
										<input type="radio" name="appearance">
										<span class="checkmark"></span>
									</label>
									<label class="radio-container">No
									  <input type="radio" name="appearance">
									  <span class="checkmark"></span>
									</label>
								</div>
							</div>
							<div class="form-group row">
								<label style="margin-left:19px"> 8) What is the Date of Judgement for Previous Appeal?</label><br />
								<div class="col-xs-6">
									<input class="form-control" id="ex3" name="previousAppealDate" type="date"/>
								</div>
							</div>
						</form>
					</div>
				  </div>
				</div>
				 <!-- Controls -->
			<div class="btn-group pull-right" role="group" aria-label="Basic example">
				<a class="btn btn-primary" id="prev" href="#carousel-example-generic" role="button" style="display:none" data-slide="prev">
					Previous
				</a>
				<a class="btn btn-primary" id="next" href="#carousel-example-generic" role="button" data-slide="next">
					Next
				</a>
				<a class="btn btn-primary" id="submit" style="display:none" role="button">
					Submit
				</a>				
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
	<div class="row">
		<div class="col">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
				</ol>
			</nav>			
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>
	    $("#jurisdictionOPA").on("click", function () {
	        $(this).toggleClass("clicked");
	        $("#OPA").toggle();
	    });
		$("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");
		$('#carousel-example-generic').on('slid.bs.carousel', function () {
			var currSlide = $('div.active').index();
			console.log(currSlide);
			if (currSlide > 0) {
				$("#submit").hide();
				$("#prev").show();
				$("#next").show();
			} else {
				$("#prev").hide();
			}
			if (currSlide == 2) {
				$("#next").hide();
				$("#submit").show();
			}
		});
	</script>
</asp:Content>
