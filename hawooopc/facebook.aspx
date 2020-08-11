<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facebook.aspx.cs" Inherits="user_facebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '1468567733438462',
                xfbml: true,
                version: 'v2.4'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <form id="form1" runat="server">
        <div>
            <div
                class="fb-like"
                data-share="true"
                data-width="450"
                data-show-faces="true">
            </div>
        </div>
    </form>
</body>
</html>
