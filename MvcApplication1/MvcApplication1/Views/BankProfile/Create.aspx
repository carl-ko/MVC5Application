<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.客戶銀行資訊>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>客戶銀行資訊</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.客戶Id, "客戶資料") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("客戶Id", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.客戶Id) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.銀行名稱) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.銀行名稱) %>
            <%: Html.ValidationMessageFor(model => model.銀行名稱) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.銀行代碼) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.銀行代碼) %>
            <%: Html.ValidationMessageFor(model => model.銀行代碼) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.分行代碼) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.分行代碼) %>
            <%: Html.ValidationMessageFor(model => model.分行代碼) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.帳戶名稱) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.帳戶名稱) %>
            <%: Html.ValidationMessageFor(model => model.帳戶名稱) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.帳戶號碼) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.帳戶號碼) %>
            <%: Html.ValidationMessageFor(model => model.帳戶號碼) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
