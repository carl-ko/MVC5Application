<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.客戶銀行資訊>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>客戶銀行資訊</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.客戶資料.客戶名稱) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.客戶資料.客戶名稱) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.銀行名稱) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.銀行名稱) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.銀行代碼) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.銀行代碼) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.分行代碼) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.分行代碼) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.帳戶名稱) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.帳戶名稱) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.帳戶號碼) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.帳戶號碼) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
