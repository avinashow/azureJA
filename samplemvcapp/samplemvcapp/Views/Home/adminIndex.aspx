﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    adminIndex
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="col-md-8">
            <div class="page-header">
            <h1><small class="pull-right">45 comments</small> Comments </h1>
            </div> 
            <div class="comments-list">
                <div class="media">
                    <p class="pull-right"><small>5 days ago</small></p>
                    <a class="media-left" href="#">
                        <img src="http://lorempixel.com/40/40/people/1/">
                    </a>
                    <div class="media-body">
                                
                        <h4 class="media-heading user_name">Baltej Singh</h4>
                        Wow! this is really great.
                              
                        <p><small><a href="">Like</a> - <a href="">Share</a></small></p>
                    </div>
                  </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>