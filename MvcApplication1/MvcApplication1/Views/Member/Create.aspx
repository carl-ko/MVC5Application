<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.客戶資料>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>客戶資料</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.客戶名稱) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.客戶名稱) %>
            <%: Html.ValidationMessageFor(model => model.客戶名稱) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.統一編號) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.統一編號) %>
            <%: Html.ValidationMessageFor(model => model.統一編號) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.電話) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.電話) %>
            <%: Html.ValidationMessageFor(model => model.電話) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.傳真) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.傳真) %>
            <%: Html.ValidationMessageFor(model => model.傳真) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.地址) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.地址) %>
            <%: Html.ValidationMessageFor(model => model.地址) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
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
