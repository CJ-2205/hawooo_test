<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facebooklogin.aspx.cs" Inherits="user_facebooklogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../assets/js/jquery.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script>

            function statusChangeCallback(response) {
                console.log('statusChangeCallback');
                console.log(response);

                if (response.status === 'connected') {

                    infoAPI();
                } else if (response.status === 'not_authorized') {

                    document.getElementById('status').innerHTML = 'Please log ' +
                      'into this app.';
                } else {

                    document.getElementById('status').innerHTML = 'Please log ' +
                      'into Facebook.';
                }
            }


            function checkLoginState() {
                FB.getLoginStatus(function (response) {
                    statusChangeCallback(response);
                });
            }

            window.fbAsyncInit = function () {
                FB.init({
                    appId: '874224565966537',
                    xfbml: true,
                    version: 'v2.4',
                    cookie: true
                });
            };

            function fbLogin() {
                FB.login(function (response) {
                    statusChangeCallback(response);
                })
            }

            // Load the SDK asynchronously
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));

            function infoAPI() {
                console.log('Welcome!  Fetching your information.... ');
                FB.api('/me', { fields: 'id,email,name,picture,gender' }, function (response) {

                    var data = {
                        "FBID": response.id,
                        "FBPIC": response.picture.data.url,
                        "FBEMAIL": response.email,
                        "FBNAME": response.name,
                        "FBGENDER": response.gender
                    }

                    $.ajax({
                        type: "post",
                        url: "fbjoin.ashx",
                        data: JSON.stringify(data),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (msg) {
                            alert("登入成功");
                        },
                        error: function (emsg) {
                            alert("伺服器錯誤,請重新送出訊息!");
                        }
                    })


                });
            }
        </script>


        <a href="#" onclick="fbLogin();">
            <img src="img/member-img/login_FB.png" class="am-img-responsive" style="width: 300px" />
        </a>

        <%--  <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>--%>

        <div id="status">
        </div>
    </form>
</body>
</html>
