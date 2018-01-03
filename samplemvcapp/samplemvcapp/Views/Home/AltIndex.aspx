<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Login.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.LoginModel>" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-box">
      <div class="login-logo">
        <a href=""><img width="400px" src="http://www.justicealign.com/images/logo.png" /></a>
      </div>
      <!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl })) { %>
            <div class="form-group has-feedback">
                <%: Html.TextBoxFor(m => m.UserName, new { @class = "form-control", @PlaceHolder="UserName" })%>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                <%: Html.ValidationMessageFor(m => m.UserName) %>                
            </div>
            <div class="form-group has-feedback">
                <%: Html.TextBoxFor(m => m.Password, new { @class = "form-control", @PlaceHolder="Password" })%>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                <%: Html.ValidationMessageFor(m => m.Password) %>                
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <%: Html.CheckBoxFor(m => m.RememberMe) %>
                        <%: Html.LabelFor(m => m.RememberMe) %>
                    </div>
                </div>
                 <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                </div>
                <!-- /.col -->
            </div>
        <% } %>
        <div class="social-auth-links text-center">
          <!-- social netwrok logins -->
        </div>
        <!-- /.social-auth-links -->
        <%: Html.ActionLink("Register", "Register", new { @class = "text-center" })%>  if you don't have an account.
      </div>
      <!-- /.login-box-body -->
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
     <script>
         $(function () {
             $('input').iCheck({
                 checkboxClass: 'icheckbox_square-blue',
                 radioClass: 'iradio_square-blue',
                 increaseArea: '20%' // optional
             });
         });
     </script>
</asp:Content>

