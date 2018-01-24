<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Alt1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Fee Calculator
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
							<button type="button" id="casetype" class="btn btn-default  dropdown-toggle" data-toggle="dropdown">Select<span class="caret"></span>
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
							<button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown">Select <span class="caret"></span>
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
							<button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="subCategoryList" role="menu">
								<li id="Li1"><a href="javascript:void(0)">Select</a></li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>  
	</div>

	<table id="fees" class="table table-bordered" style="display:none">
	<thead>
		<tr>
			<th>S.No.</th>
			<th>Category</th>
			<th>Court Fee</th>
			<th>Valuation</th>
		</tr>
	</thead>
	<tbody>

	<tr>
		<td>
			1        </td>
		<td>
			Election Matters-Appeals u/s 116 A of Representation of People Act, 1951.        </td>
		<td>
			
	   
20000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			2        </td>
		<td>
			Matters Relating To Consumer Protection-Appeals u/s 23 of Consumer Protection Act, 1986.        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			3        </td>
		<td>
			Appeal Against Orders Of Statutory Bodies-Bar Council of India        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			4        </td>
		<td>
			Appeal Against Orders Of Statutory Bodies-Tribunals        </td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			5        </td>
		<td>
			Direct Taxes Matter-Appeals under Section 261 of Income Tax Act upon a certificate granted by the High Court        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			6        </td>
		<td>
			Direct Taxes Matter-Appeals under Section 29(1) of the Wealth Tax Act, 1957 upon a certificate granted by the High Court        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			7        </td>
		<td>
			Indirect Taxes Matters-Appeals u/s 130 E of Customs Act, 1962        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			8        </td>
		<td>
			Indirect Taxes Matters-Appeals u/s 35 L of Central Excise and Salt Act, 1944.        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			9        </td>
		<td>
			Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Appeals under Section 55 of the MRTP Act, 1969        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			10        </td>
		<td>
			Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Appeals u/s 15 Z of Securities and Exchange Board of India Act, 1992.        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			11        </td>
		<td>
			Appeal Against Orders Of Statutory Bodies-Appeals and other matters U/Ss 30 and 31 of the Armed Forces Tribunal Act, 2007        </td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			12        </td>
		<td>
			Appeal Against Orders Of Statutory Bodies-Matters filed against the orders of other Regulatory Authorities / Bodies        </td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			13        </td>
		<td>
			Contempt Of Court Matters-Appeals u/s 19(1)(b) of Contempt of Court Act, 1971.        </td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			14        </td>
		<td>
			Ordinary Civil Matters-Appeals u/s 10 of Special Courts (Trial of offences relating to Transactions in Securities) Act, 1992        </td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			15        </td>
		<td>
			Ordinary Civil Matters-Appeals u/s 53 T of The Competition Act, 2002        </td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			16        </td>
		<td>
			Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi-Matters arising out of orders of Company Law Board under Section 397 &amp; 398 of Companies Act, 1956        </td>
		<td>
			
	   
5000              </td>
			  <td>
								</td>
	</tr>
		<tr>
		<td>
			17        </td>
		<td>
					</td>
		<td>
			
	   
1500              </td>
			  <td>
								</td>
	</tr>
		   </tbody>
	</table>

</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script>
		$("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");
	</script>
	<script src="../../Scripts/CommonService.js"></script>	
</asp:Content>
