<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facebooklogin - 複製 .aspx.cs" Inherits="user_facebooklogin" %>

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
            // This is called with the results from from FB.getLoginStatus().
            function statusChangeCallback(response) {
                console.log('statusChangeCallback');
                console.log(response);
                // The response object is returned with a status field that lets the
                // app know the current login status of the person.
                // Full docs on the response object can be found in the documentation
                // for FB.getLoginStatus().
                if (response.status === 'connected') {
                    // Logged into your app and Facebook.
                    infoAPI();
                } else if (response.status === 'not_authorized') {
                    // The person is logged into Facebook, but not your app.
                    document.getElementById('status').innerHTML = 'Please log ' +
                      'into this app.';
                } else {
                    // The person is not logged into Facebook, so we're not sure if
                    // they are logged into this app or not.
                    document.getElementById('status').innerHTML = 'Please log ' +
                      'into Facebook.';
                }
            }

            // This function is called when someone finishes with the Login
            // Button.  See the onlogin handler attached to it in the sample
            // code below.
            function checkLoginState() {
                FB.getLoginStatus(function (response) {
                    statusChangeCallback(response);
                });
            }

            window.fbAsyncInit = function () {
                FB.init({
                    appId: '1468592400102662',
                    xfbml: true,
                    version: 'v2.4',
                    cookie: true
                });

                //FB.getLoginStatus(function (response) {
                //    statusChangeCallback(response);
                //});

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

            // Here we run a very simple test of the Graph API after login is
            // successful.  See statusChangeCallback() for when this call is made.
            function infoAPI() {
                console.log('Welcome!  Fetching your information.... ');
                FB.api('/me', { fields: 'id,email,name,picture,gender' }, function (response) {
                    //進行登入作業

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
                            debugger;
                            alert("ID:" + msg[0].A01 + ";EMAIL:" + msg[0].A08);
                        },
                        error: function (emsg) {
                            alert("伺服器錯誤,請重新送出訊息!");
                        }
                    })

                    //alert(response.id + "," + response.name + "," + response.email + "," + response.picture.data.url);
                    //console.log('Successful login for: ' + response.name);
                    //document.getElementById('status').innerHTML =
                    //  'Thanks for logging in, ' + response.name + '!';
                });
            }
        </script>

        <!--
        Below we include the Login Button social plugin. This button uses
        the JavaScript SDK to present a graphical Login button that triggers
        the FB.login() function when clicked.
        -->

        <a href="#" onclick="fbLogin();">
            <img src="img/member-img/login_FB.png" class="am-img-responsive" style="width: 300px" />
        </a>

        <%--  <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
              </fb:login-button>
        --%>

        <div id="status">
        </div>
    </form>
</body>
</html>
