<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.LoginModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log in
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--<section id="loginForm">-->
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-body">
                    <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl })) { %>
                        <%: Html.AntiForgeryToken() %>
                        <%: Html.ValidationSummary(true) %>

                        <fieldset>
                            <ol>
                                <li class="form-group">
                                    <%: Html.LabelFor(m => m.UserName) %>
                                    <%: Html.TextBoxFor(m => m.UserName, new { @class = "form-control", @PlaceHolder="UserName" })%>
                                    <%: Html.ValidationMessageFor(m => m.UserName) %>
                                </li>
                                <li class="fomr-group">
                                    <%: Html.LabelFor(m => m.Password) %>
                                    <%: Html.PasswordFor(m => m.Password,  new { @class = "form-control", @PlaceHolder = "Password" }) %>
                                    <%: Html.ValidationMessageFor(m => m.Password) %>
                                </li>
                                <li class="checkbox">
                                    <%: Html.CheckBoxFor(m => m.RememberMe) %>
                                    <%: Html.LabelFor(m => m.RememberMe) %>
                                </li>
                            </ol>
                            <input type="submit" value="Log in" class="btn btn-primary" />
                        </fieldset>
                        <p>
                            <%: Html.ActionLink("Register", "Register") %> if you don't have an account.
                        </p>
                    <% } %>
                </div>
            </div>        
        </div>
    </div>
        
    <!--</section>-->

</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
    <script>
        /**
         * parallax.js
         * @Author original @msurguy (tw) -> http://bootsnipp.com/snippets/featured/parallax-login-form
         * @Tested on FF && CH
         * @Reworked by @kaptenn_com (tw)
         * @package PARALLAX LOGIN.
         */

        $(document).ready(function () {
            $(document).mousemove(function (event) {
                TweenLite.to($("body"),
                .5, {
                    css: {
                        backgroundPosition: "" + parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / '12') + "px, " + parseInt(event.pageX / '15') + "px " + parseInt(event.pageY / '15') + "px, " + parseInt(event.pageX / '30') + "px " + parseInt(event.pageY / '30') + "px",
                        "background-position": parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / 12) + "px, " + parseInt(event.pageX / 15) + "px " + parseInt(event.pageY / 15) + "px, " + parseInt(event.pageX / 30) + "px " + parseInt(event.pageY / 30) + "px"
                    }
                })
            })
        })
    </script>
</asp:Content>
