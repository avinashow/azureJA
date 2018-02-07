<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<% if (Request.IsAuthenticated) { %>  
	  <ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>&nbsp;&nbsp;<%: User.Identity.Name %><span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li style="display:flex;justify-content:center">
					<% using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm", @class="navbar-right" })) { %>
 
					<%: Html.AntiForgeryToken() %>
					<a href="javascript:document.getElementById('logoutForm').submit()"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a>
				</li>
			</ul>
		</li>
	   </ul>
	<% } %>
<% } else { %>
	<ul class="nav navbar-nav navbar-right">
		<li><%: Html.ActionLink("Register", "Register", "Account", routeValues: null, htmlAttributes: new { id = "registerLink" })%></li>
		<li><%: Html.ActionLink("Log in", "Login", "Account", routeValues: null, htmlAttributes: new { id = "loginLink" })%></li>
	</ul>
<% } %>