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
							<ul class="dropdown-menu" id="caseType" role="menu">
									<li><a href="javascript:void(0)">Select</a></li>
									<li id="24"><a href="javascript:void(0)">ARBITRATION PETITION</a></li>   
									<li id="3"><a href="javascript:void(0)">CIVIL APPEAL</a></li>   
									<li id="19"><a href="javascript:void(0)">CONTEMPT PETITION (CIVIL)</a></li>   
									<li id="20"><a href="javascript:void(0)">CONTEMPT PETITION (CRIMINAL)</a></li>   
									<li id="4"><a href="javascript:void(0)">CRIMINAL APPEAL</a></li>   
									<li id="25"><a href="javascript:void(0)">CURATIVE PETITION(CIVIL)</a></li>   
									<li id="26"><a href="javascript:void(0)">CURATIVE PETITION(CRL)</a></li>   
									<li id="18"><a href="javascript:void(0)">DEATH REFERENCE CASE</a></li>   
									<li id="31"><a href="javascript:void(0)">DIARYNO AND DIARYYR</a></li>   
									<li id="23"><a href="javascript:void(0)">ELECTION PETITION (CIVIL)</a></li>   
									<li id="39"><a href="javascript:void(0)">MISCELLANEOUS APPLICATION</a></li>   
									<li id="28"><a href="javascript:void(0)">MOTION(CRL)</a></li>   
									<li id="17"><a href="javascript:void(0)">ORIGINAL SUIT</a></li>   
									<li id="27"><a href="javascript:void(0)">REF. U/A 317(1)</a></li>   
									<li id="37"><a href="javascript:void(0)">REF. U/S 14 RTI</a></li>   
									<li id="36"><a href="javascript:void(0)">REF. U/S 143</a></li>   
									<li id="38"><a href="javascript:void(0)">REF. U/S 17 RTI</a></li>   
									<li id="9"><a href="javascript:void(0)">REVIEW PETITION (CIVIL)</a></li>   
									<li id="10"><a href="javascript:void(0)">REVIEW PETITION (CRIMINAL)</a></li>   
									<li id="1"><a href="javascript:void(0)">SPECIAL LEAVE PETITION (CIVIL)</a></li>   
									<li id="2"><a href="javascript:void(0)">SPECIAL LEAVE PETITION (CRIMINAL)</a></li>   
									<li id="13"><a href="javascript:void(0)">SPECIAL LEAVE TO PETITION (CIVIL)...</a></li>   
									<li id="14"><a href="javascript:void(0)">SPECIAL LEAVE TO PETITION (CRIMINAL)...</a></li>     
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
							<ul class="dropdown-menu" role="menu">
								<li id=""><a href="javascript:void(0)">Select</a></li>
								<li id="342"><a href="javascript:void(0)">Labour Matters</a></li>
								<li id="343"><a href="javascript:void(0)">Rent Act Matters</a></li>
								<li id="344"><a href="javascript:void(0)">Direct Taxes Matter</a></li>
								<li id="345"><a href="javascript:void(0)">Indirect Taxes Matters</a></li>
								<li id="346"><a href="javascript:void(0)">Land Acquisition &amp; Requisition Matters</a></li>
								<li id="347"><a href="javascript:void(0)">Service Matters</a></li>
								<li id="348"><a href="javascript:void(0)">Academic Matters</a></li>
								<li id="349"><a href="javascript:void(0)">Letter Petition &amp; Pil Matters</a></li>
								<li id="350"><a href="javascript:void(0)">Election Matters</a></li>
								<li id="351"><a href="javascript:void(0)">Company Law, Mrtp, Trai, Sebi, Idrai &amp; Rbi</a></li>
								<li id="352"><a href="javascript:void(0)">Arbitration Matters</a></li>
								<li id="353"><a href="javascript:void(0)">Compensation Matters</a></li>
								<li id="164"><a href="javascript:void(0)">Habeas Corpus Matters</a></li>
								<li id="354"><a href="javascript:void(0)">Criminal Matters</a></li>
								<li id="355"><a href="javascript:void(0)">Appeal Against Orders Of Statutory Bodies</a></li>
								<li id="356"><a href="javascript:void(0)">Family Law Matters</a></li>
								<li id="357"><a href="javascript:void(0)">Contempt Of Court Matters</a></li>
								<li id="358"><a href="javascript:void(0)">Ordinary Civil Matters</a></li>
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
							<ul class="dropdown-menu" role="menu">
								<li><a href="#" </a>
								</li>
								<li><a href="http://google.com/">Google</a>
								</li>
								<li><a href="http://yahoo.com/">Yahoo</a>
								</li>
								<li class="divider"></li>
								<li><a href="http://hotmail.com/">Hotmail</a>
								</li>
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
		function initCaseType() {
			$(".dropdown-menu li").click(function () {
				var id = $(this).parent().prev();
				if ($(this).attr("id") == "3") {
					$("#fees").show();
				} else {
					$("#fees").hide();
				}
				id.html($(this).children().text() + "&nbsp;<span class='caret'></span>");
			});
		}
		(function () {
			$("ol.breadcrumb").html("<%= ViewBag.breadCrumb %>");
			initCaseType();
		})();
	</script>	
</asp:Content>
