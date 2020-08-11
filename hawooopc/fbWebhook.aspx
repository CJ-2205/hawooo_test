<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fbWebhook.aspx.cs" Inherits="fb_fbWebhook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--  <script src="http://connect.facebook.net/zh_TW/all.js"></script>--%>
    <link href="../css/amazeui.css" rel="stylesheet" />
    <link href="../css/app.css" rel="stylesheet" />
</head>
<body>
    <script src="http://connect.facebook.net/zh_TW/all.js"></script>

    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '205449713200906',
                autoLogAppEvents: true,
                xfbml: true,
                version: 'v2.10'
            });
            FB.AppEvents.logPageView();
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.10&appId=649850248547294";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        FB.login(function (response) {
            // handle the response
        }, { scope: 'public_profile,email' });

        FB.getLoginStatus(function (response) {
            if (response.status === 'connected') {
                //console.log(response.authResponse.accessToken);
                alert(response.authResponse.accessToken);
            }
        });

    </script>
    <form id="form1" runat="server">
        <div id="fb-root"></div>
        <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
        <table>
            <tr>
                <asp:Literal ID="lt1" runat="server"></asp:Literal>
            </tr>
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txt1" runat="server" TextMode="MultiLine" Height="300px" Width="300px" Enabled="false" AutoPostBack="true" ></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt2" runat="server" TextMode="MultiLine" Height="100px" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="回覆" OnClick="btn_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
