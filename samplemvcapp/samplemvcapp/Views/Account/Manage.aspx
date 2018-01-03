<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<samplemvcapp.Models.LocalPasswordModel>" %>

<asp:Content ID="manageTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Manage Account
</asp:Content>

<asp:Content ID="manageContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>Manage Account.</h2>
        </div>
        <div class="panel-body">
            <form>
                <%: Html.AntiForgeryToken() %>
                <%: Html.ValidationSummary() %>
                <div class="form-group">
                    <label>Current Password</label>
                    <input type="password" data-val="true" data-val-required="The Current password field is required." class="form-control" name="OldPassword" placeholder="Current Password"/>
                </div>
                <div class="form-group">
                    <label>New Password</label>
                    <input type="password" data-val="true" data-val-required="The New password field is required." data-val-length="The New password must be at least 6 characters long." class="form-control" name="NewPassword" placeholder="New Password"/>
                </div>
                <div class="form-group">
                    <label>Confirm New Password</label>
                    <input type="password" data-val="true" data-val-equalto="The new password and confirmation password do not match." data-val-equalto-other="*.NewPassword" class="form-control" name="ConfirmPassword" placeholder="New Password"/>
                </div>
                <input type="submit" class="btn btn-primary" value="Set password" />
            </form>
        </div>
        <div class="panel-footer">
            <p>You're logged in as <strong><%: User.Identity.Name %></strong>.</p>
            <p class="message-success"><%: (string)ViewBag.StatusMessage %></p>
        </div>
    </div>

    <section id="externalLogins">
       
    </section>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>