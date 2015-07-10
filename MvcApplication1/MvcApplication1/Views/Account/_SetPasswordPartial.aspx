﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.LocalPasswordModel>" %>

<p>
    您沒有這個網站的本機密碼。請新增本機
    密碼，讓您不需要外部登入即可登入。
</p>

<% using (Html.BeginForm("Manage", "Account")) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary() %>

    <fieldset>
        <legend>設定密碼表單</legend>
        <ol>
            <li>
                <%: Html.LabelFor(m => m.NewPassword) %>
                <%: Html.PasswordFor(m => m.NewPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
            </li>
        </ol>
        <input type="submit" value="設定密碼" />
    </fieldset>
<% } %>
