<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.客戶聯絡人>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>客戶聯絡人</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.客戶資料.客戶名稱) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.客戶資料.客戶名稱) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.職稱) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.職稱) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.姓名) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.姓名) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.手機) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.手機) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.電話) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.電話) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
