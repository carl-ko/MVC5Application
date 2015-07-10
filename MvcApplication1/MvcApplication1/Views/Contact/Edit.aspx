<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.客戶聯絡人>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>客戶聯絡人</legend>

        <%: Html.HiddenFor(model => model.Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.客戶Id, "客戶資料") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("客戶Id", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.客戶Id) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.職稱) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.職稱) %>
            <%: Html.ValidationMessageFor(model => model.職稱) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.姓名) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.姓名) %>
            <%: Html.ValidationMessageFor(model => model.姓名) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.手機) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.手機) %>
            <%: Html.ValidationMessageFor(model => model.手機) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.電話) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.電話) %>
            <%: Html.ValidationMessageFor(model => model.電話) %>
        </div>

        <p>
            <input type="submit" value="Save" />
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
