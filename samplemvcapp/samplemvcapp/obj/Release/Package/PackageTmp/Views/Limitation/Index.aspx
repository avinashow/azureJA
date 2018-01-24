<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Limitation Calculator
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

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col">
			<table class="table table-hover">
				<tr>
					<td>
						CaseType: 
					</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown">Select<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="caseTypesList" role="menu">
									<li><a href="javascript:void(0)">Select</a></li>   
							</ul>
						</div>
					</td>
				</tr>
				<tr>
					<td>Category:</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown"> Select <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="categoryList" role="menu">
								<li id=""><a href="javascript:void(0)">Select</a></li>
							</ul>
						</div>
					</td>
				</tr>
				<tr>
					<td>Sub Category:</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown">Select<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>  
	</div>
	<table id="limitation" class="table table-bordered" style="display:none;">
	<thead>
		<tr>
			<th>Category Name</th>
			<th>Order / Certificate of fitness Date</th>
			<th>No. of days</th>
		</tr>
	</thead>
	<tbody>

<tr>
	  <td>
		Ordinary Civil Matters-Appeals u/s 10 of Special Courts (Trial of offences relating to Transactions in Securities) Act, 1992        
	</td>
	<td>
		Order    </td>
	<td>
		30    </td>
   
</tr>
<tr>
	  <td>
		Matters Relating To Consumer Protection-Appeals u/s 23 of Consumer Protection Act, 1986.        
	</td>
	<td>
		Order    </td>
	<td>
		30    </td>
   
</tr>
<tr>
	  <td>
		Election Matters-Appeals u/s 116 A of Representation of People Act, 1951.        
	</td>
	<td>
		Order    </td>
	<td>
		30    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Appeals under Section 55 of the MRTP Act, 1969        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Indirect Taxes Matters-Appeals u/s 130 E of Customs Act, 1962        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Indirect Taxes Matters-Appeals u/s 35 L of Central Excise and Salt Act, 1944.        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Contempt Of Court Matters-Appeals u/s 19(1)(b) of Contempt of Court Act, 1971.        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Appeals u/s 15 Z of Securities and Exchange Board of India Act, 1992.        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Ordinary Civil Matters-Appeals u/s 53 T of The Competition Act, 2002        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Criminal Matters-Appeals u/s 10 of the Special Courts (Trial of Offences relating to transactions in Securities) Act, 1992.        
	</td>
	<td>
		Order    </td>
	<td>
		30    </td>
   
</tr>
<tr>
	  <td>
		Direct Taxes Matter-Appeals under Section 261 of Income Tax Act upon a certificate granted by the High Court        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Appeal Against Orders Of Statutory Bodies-Bar Council of India        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Matters pertaining to TRAI / SEBI / IDRAI and RBI including Appeals U/S 18 of TRAI Act, Indian Electricity Act, 1910 and 2003, Electricity Supply Act, 1948 and Electricity Reforms Commission Act, 1998        
	</td>
	<td>
		Order    </td>
	<td>
		90    </td>
   
</tr>
<tr>
	  <td>
				
	</td>
	<td>
		Certificate of fitness    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Appeal Against Orders Of Statutory Bodies-Tribunals        
	</td>
	<td>
		Order    </td>
	<td>
		90    </td>
   
</tr>
<tr>
	  <td>
		Appeal Against Orders Of Statutory Bodies-Appeals and other matters U/Ss 30 and 31 of the Armed Forces Tribunal Act, 2007        
	</td>
	<td>
		Order    </td>
	<td>
		90    </td>
   
</tr>
<tr>
	  <td>
		Appeal Against Orders Of Statutory Bodies-Appeals and other matters U/Ss 30 and 31 of the Armed Forces Tribunal Act, 2007        
	</td>
	<td>
		Certificate of fitness    </td>
	<td>
		30    </td>
   
</tr>
<tr>
	  <td>
		Direct Taxes Matter-Appeals under Section 29(1) of the Wealth Tax Act, 1957 upon a certificate granted by the High Court        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Appeals under Section 55 of the MRTP Act, 1969        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Appeals u/s 15 Z of Securities and Exchange Board of India Act, 1992.        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Appeal Against Orders Of Statutory Bodies-Matters filed against the orders of other Regulatory Authorities / Bodies        
	</td>
	<td>
		Order    </td>
	<td>
		90    </td>
   
</tr>
<tr>
	  <td>
		Contempt Of Court Matters-Appeals u/s 19(1)(b) of Contempt of Court Act, 1971.        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Matters arising out of orders of Company Law Board under Section 397 &amp; 398 of Companies Act, 1956        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
				
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Indirect Taxes Matters-Others        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Matters pertaining to TRAI / SEBI / IDRAI and RBI including Appeals U/S 18 of TRAI Act, Indian Electricity Act, 1910 and 2003, Electricity Supply Act, 1948 and Electricity Reforms Commission Act, 1998-Matters pertaining to TRAI / SEBI / IDRAI and RBI including Appeals U/S 18 of TRAI Act        
	</td>
	<td>
		Order    </td>
	<td>
		90    </td>
   
</tr>
<tr>
	  <td>
		Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Matters pertaining to TRAI / SEBI / IDRAI and RBI including Appeals U/S 18 of TRAI Act, Indian Electricity Act, 1910 and 2003, Electricity Supply Act, 1948 and Electricity Reforms Commission Act, 1998-Indian Electricity Act, 1910 and 2003, Electricity Supply Act, 1948 and Electricity Reforms Commission Act, 1998        
	</td>
	<td>
		Order    </td>
	<td>
		60    </td>
   
</tr>
</tbody>
	</table>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>$("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");</script>
	<script src="../../Scripts/CommonService.js"></script>	
</asp:Content>
