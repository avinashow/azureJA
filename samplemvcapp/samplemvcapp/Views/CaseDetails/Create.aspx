<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>Enter Case Details</h2>
                </div>
                <div class="panel-body">
                    <form method="post" class="form-bottom-line" style="margin: 5% 0 0">
                        <%: Html.AntiForgeryToken() %>
                        <%: Html.ValidationSummary() %>
                        <div class="form-group float-label-control">
                            <input type="text" class="form-control"style="border:none;" name="caseid" placeholder="Case ID">
                        </div>
                        <div class="form-group float-label-control">
                            <input type="text" class="form-control" style="border:none;" name="casename" placeholder="Case Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="casetype" style="border:none;" placeholder="Classification"></input>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" style="border:none;" placeholder="Subject"></input>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="summary" style="border:none;" placeholder="Summary"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="casereceiveddate">Select Recieved Date</label>
                            <input type="datetime-local" class="form-control" name="casereceiveddate" style="border:none;"></input>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Save" />

                    </form>
                </div>
                <div class="panel-footer">
                    <% if (ViewBag.submitted)
                       {%>
                           <p style="font-family:'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', 'DejaVu Sans Condensed', sans-serif"><%: ViewBag.Message %></p>
                     <%  } %>
                    
                </div>
            </div>
            
        </div>
    </div>
    

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
   <script>
       $(".form-control").focus(function () {
           $(this).toggleClass("form-underline");
       });
   </script>
</asp:Content>
