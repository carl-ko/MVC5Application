<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.客戶資料>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.客戶名稱) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.統一編號) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.電話) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.傳真) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.地址) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Email) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.客戶名稱) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.統一編號) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.電話) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.傳真) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.地址) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Email) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
