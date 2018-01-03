<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Login.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.RegisterModel>" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Register Page
</asp:Content>

<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="register-box">
      <div class="register-logo">
        <a href=""><img width="400px" src="http://www.justicealign.com/images/logo.png" /></a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">Register a new membership</p>

        <form action="" method="post">
            <%: Html.AntiForgeryToken() %>
            <%: Html.ValidationSummary() %>
          <div class="form-group has-feedback">
            <%: Html.TextBoxFor(m => m.UserName, new { @class = "form-control", @PlaceHolder="UserName" }) %>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <%: Html.PasswordFor(m => m.Password, new { @class = "form-control", @PlaceHolder="Password" }) %>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <%: Html.PasswordFor(m => m.ConfirmPassword, new { @class = "form-control", @PlaceHolder="Confirm Password" }) %>
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> I agree to the <a href="#">terms</a>
                </label>
              </div>
            </div>
            <!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
            </div>
            <!-- /.col -->
          </div>
        </form>

        <div class="social-auth-links text-center">
        </div>

        <a href="/Account/Login" class="text-center">I already have a membership</a>
      </div>
      <!-- /.form-box -->
    </div>



</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
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
