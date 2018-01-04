<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<% if (Request.IsAuthenticated) { %>  
    
    <% using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm", @class="navbar-right" })) { %>
 
        <%: Html.AntiForgeryToken() %>
        <ul class="nav navbar-nav">
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <span class="fa fa-user-circle"></span>
                  <span class="hidden-xs"><%: User.Identity.Name %></span>
                </a>
                <ul class="dropdown-menu">
                    <li class="user-header">
                        <span class="fa fa-user-circle" style="color:white;font-size:70px;"></span>

                        <p>
                          <%: User.Identity.Name %>
                          <small>Member since Nov. 2012</small>
                        </p>
                      </li>
                    <li class="user-footer">
                        <div class="pull-right">
                            <a href="javascript:document.getElementById('logoutForm').submit()" class="btn btn-default btn-flat">Sign out</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
        <%--<ul class="nav navbar-nav navbar-right">
            <li><%: Html.ActionLink("Hello, " + User.Identity.Name +"!", "Manage", "Account", routeValues: null, htmlAttributes: new { @class = "username", title = "Manage" }) %></li>
            <li><a href="javascript:document.getElementById('logoutForm').submit()">Log off</a></li>
        </ul>--%>
    <% } %>
<% } else { %>
    <ul class="nav navbar-nav navbar-right">
        <li><%: Html.ActionLink("Register", "Register", "Account", routeValues: null, htmlAttributes: new { id = "registerLink" })%></li>
        <li><%: Html.ActionLink("Log in", "Login", "Account", routeValues: null, htmlAttributes: new { id = "loginLink" })%></li>
    </ul>
<% } %>