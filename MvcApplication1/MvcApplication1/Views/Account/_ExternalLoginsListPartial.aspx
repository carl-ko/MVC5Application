﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<ICollection<Microsoft.Web.WebPages.OAuth.AuthenticationClientData>>" %>

<% if (Model.Count == 0) { %>
    <div class="message-info">
        <p>未設定任何的外部驗證服務。請參閱<a href="http://go.microsoft.com/fwlink/?LinkId=252166">這篇文章</a>，
        以取得設定這個 ASP.NET 應用程式以支援透過外部服務登入的詳細資料。</p>
    </div>
<% } else {
    using (Html.BeginForm("ExternalLogin", "Account", new { ReturnUrl = ViewBag.ReturnUrl })) { %>
    <%: Html.AntiForgeryToken() %>
    <fieldset id="socialLoginList">
        <legend>使用其他服務登入</legend>
        <p>
        <% foreach (Microsoft.Web.WebPages.OAuth.AuthenticationClientData p in Model) { %>
            <button type="submit" name="provider" value="<%: p.AuthenticationClient.ProviderName %>" title="使用您的 <%: p.DisplayName %> 帳戶登入"><%: p.DisplayName%></button>
        <% } %>
        </p>
    </fieldset>
    <% }
} %>
