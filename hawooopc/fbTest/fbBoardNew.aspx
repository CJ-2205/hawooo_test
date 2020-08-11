<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fbBoardNew.aspx.cs" Inherits="fb_fbBoardNew" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--   <link href="../css/amazeui.css" rel="stylesheet" />
    <link href="../css/app.css" rel="stylesheet" />--%>
    <link href="../assets/css/amazeui.css" rel="stylesheet" />
    <link href="../assets/css/app.css" rel="stylesheet" />
    <link href="../assets/css/amazeui.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>

    <meta property="fb:admins" content="1817448381605190" />
    <meta property="fb:app_id" content="205449713200906" />
</head>
<body>

    <%--  <textarea id="textarea" rows="1"></textarea>--%>

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
                //if (location.href == "https://www.hawooo.com/user/fbTest/fbBoardNew.aspx") {
                //    location.href = "https://www.hawooo.com/user/fbTest/fbBoardNew.aspx?tk=" + response.authResponse.accessToken;
                document.getElementById("hfTk").value = response.authResponse.accessToken;
                //}

                //document.getElementById('myId').innerHTML = response.authResponse.accessToken;
                // Logged into your app and Facebook.
                //testAPI();
                //得到用戶TOKEN
                //var accessToken = response.authResponse.accessToken;
                //document.getElementById("abc") = accessToken;

            } else {
                // The person is not logged into your app or we are unable to tell.
                document.getElementById('status').innerHTML = 'Please log ' +
                  'into this app.';
            }
        }

        //function loginEvent() {
        //    document.getElementById('name').innerHTML = response.name;
        //    if (location.href == "https://www.hawooo.com/user/fbTest/fbBoardNew.aspx")
        //        location.href = "https://www.hawooo.com/user/fbTest/fbBoardNew.aspx?tk=" + response.authResponse.accessToken;
        //}

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
                appId: '205449713200906',
                cookie: true,  // enable cookies to allow the server to access 
                // the session
                xfbml: true,  // parse social plugins on this page
                version: 'v2.10' // use graph api version 2.10
            });

            // Now that we've initialized the JavaScript SDK, we call 
            // FB.getLoginStatus().  This function gets the state of the
            // person visiting this page and can return one of three states to
            // the callback you provide.  They can be:
            //
            // 1. Logged into your app ('connected')
            // 2. Logged into Facebook, but not your app ('not_authorized')
            // 3. Not logged into Facebook and can't tell if they are logged into
            //    your app or not.
            //
            // These three cases are handled in the callback function.

            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });

        };

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
        //function testAPI() {
        //    console.log('Welcome!  Fetching your information.... ');
        //    FB.api('/me', function (response) {
        //        console.log('Successful login for: ' + response.name);
        //        document.getElementById('status').innerHTML =
        //          'Thanks for logging in, ' + response.name + '!';
        //        //document.getElementById("hfTk").value = response.authResponse.accessToken;
        //    });
        //}
    </script>

    <form id="form1" runat="server">
        <asp:HiddenField ID="hfTk" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%--<input id="abc" runat='server' />--%>
        <div class="am-g" width="100%" style="margin: 10px">

            <div class="am-u-md-12 am-titlebar " style="padding: 10px 0px 0px 30px">
                <%--FB start --%>
                <div id="fb-root">
                </div>
                <div>
                    <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>
                </div>
                <div id="status"></div>
                <%--<div class="fb-page"
                    data-tabs="timeline,events,messages"
                    data-href="https://www.facebook.com/Sdfsdf-780442165450140/"
                    data-width="380"
                    data-small-header="false"
                    data-adapt-container-width="true"
                    data-hide-cover="false"
                    data-show-facepile="true">
                    <blockquote cite="https://www.facebook.com/Sdfsdf-780442165450140/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Sdfsdf-780442165450140/">Sdfsdf</a></blockquote>
                </div>
                <div class="fb-page"
                    data-href="https://www.facebook.com/hawooohawooo/?ref=ts&amp;fref=ts&amp;sw_fnr_id=1342945490&amp;fnr_t=0"
                    data-tabs="timeline,events,messages"
                    data-small-header="false"
                    data-adapt-container-width="true"
                    data-hide-cover="false"
                    data-show-facepile="true">
                    <blockquote cite="https://www.facebook.com/hawooohawooo/?ref=ts&amp;fref=ts&amp;sw_fnr_id=1342945490&amp;fnr_t=0" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/hawooohawooo/?ref=ts&amp;fref=ts&amp;sw_fnr_id=1342945490&amp;fnr_t=0">HaWooo.com 好物飛行</a></blockquote>
                </div>--%>
                <%--FB end --%>



                <div style="padding-top: 10px">
                    粉絲團:
                             <asp:DropDownList ID="ddl_ID" runat="server">
                                 <asp:ListItem Value="780442165450140" Text="Sdfsdf"></asp:ListItem>
                                 <asp:ListItem Value="1650338545038282" Text="Asdasd"></asp:ListItem>
                                 <asp:ListItem Value="334712033639183" Text="Zxc"></asp:ListItem>
                                 <asp:ListItem Value="1450151798399229" Text="Sdddd"></asp:ListItem>
                                 <asp:ListItem Value="1930924023903393" Text="XCCC"></asp:ListItem>
                                 <asp:ListItem Value="464335860593655" Text="Khjkhjkhjkhjk"></asp:ListItem>
                             </asp:DropDownList>
                    測試Token: 
                <asp:TextBox ID="txtToken" runat="server"></asp:TextBox>

                    <asp:Button ID="btnToken" runat="server" Text="確認" OnClick="btnToken_Click" />
                </div>

            </div>

            <asp:Panel ID="Panel1" runat="server" Visible="false">



                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <%-- <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick"></asp:Timer>--%>
                        <div class="am-u-md-5">
                            <div style="font-size: large; font-weight: bold; padding: 20px 10px 10px 10px" class="am-u-md-12 am-titlebar ">
                                粉絲團留言:<asp:Literal ID="ltCount" runat="server"></asp:Literal>
                            </div>
                            <div id="test" style="font-size: large; padding: 0px 10px 10px 10px">
                                <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp1_ItemDataBound">
                                    <ItemTemplate>
                                        <table width="100%" style="padding: 20px; border-spacing: 10px; border: 1px solid; border-collapse: separate; word-break: break-all">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <asp:HiddenField ID="ltBID" runat="server" Value='<%#Eval("BID") %>' />
                                                        <a href='https://www.facebook.com/<%#Eval("BID") %>' target="_blank">Sdfsdf
                                                        <%--<asp:Literal ID="ltBID" runat="server" Text='<%#Eval("BID") %>'></asp:Literal>--%><%--</span>--%></a>
                                                        於  <%#Convert.ToDateTime(Eval("create_time")).ToString("MM-dd HH:mm") %> 發佈

                                                    <br />
                                                        <br />
                                                        <%#Eval("message") %>
                                                        <br />
                                                        <br />
                                                        留言:
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Repeater ID="rp2" runat="server" OnItemCommand="rp2_ItemCommand" OnItemDataBound="rp2_ItemDataBound">
                                                            <ItemTemplate>
                                                                <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
                                                                    <tr>
                                                                        <asp:HiddenField ID="hfBID" runat="server" Value='<%#Eval("BID") %>' />
                                                                        <asp:HiddenField ID="hfMID" runat="server" Value='<%#Eval("MID") %>' />
                                                                        <asp:HiddenField ID="hfID" runat="server" Value='<%#Eval("from_id") %>' />
                                                                        <td><%#Convert.ToDateTime(Eval("create_time")).ToString("MM-dd HH:mm") %> - <%#Eval("from_name") %>:<%#Eval("message") %>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding: 10px;">小編
                                                                        -
                                                                  
                                                                        <asp:TextBox ID="txtRp" runat="server" Height="100px" Width="55%" CssClass="howard-1" TextMode="MultiLine" Visible="false"> </asp:TextBox>

                                                                            <asp:Button ID="btnBp" runat="server" Text="回覆" Height="35px" CssClass="am-btn-success" CommandName="replyB" CommandArgument='<%#Eval("MID") %>' />

                                                                            <asp:Button ID="btnRp" runat="server" Text="PM" Height="35px" CssClass="am-btn-primary" CommandName="replyP" CommandArgument='<%#Eval("MID") %>' />
                                                                        </td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-top: 10px">
                                                                            <asp:Literal ID="ltSt" runat="server"></asp:Literal>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <div style="padding-left: 60px">
                                                                    <asp:Repeater ID="rp3" runat="server">
                                                                        <ItemTemplate>
                                                                            <table width="100%" class="am-table am-table-bordered  ">
                                                                                <tr>
                                                                                    <asp:HiddenField ID="hfBID2" runat="server" Value='<%#Eval("BID") %>' />
                                                                                    <asp:HiddenField ID="hfID2" runat="server" Value='<%#Eval("from_id") %>' />
                                                                                    <td><%#Convert.ToDateTime(Eval("create_time")).ToString("MM-dd HH:mm") %> - <%#Eval("from_name") %>:<%#Eval("message") %>
                                                                                    </td>
                                                                                </tr>

                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <div style="padding: 10px">
                                            </div>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>


                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="am-u-md-4">
                            <div style="font-size: large; font-weight: bold; padding: 20px 10px 10px 0px" class="am-u-md-12 am-titlebar ">
                                聊天室訊息:<asp:Literal ID="ltCount2" runat="server"></asp:Literal>
                            </div>
                            <div>
                                <table>
                                    <tr>
                                        <td>
                                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="cb1" runat="server" Text="常客" />
                                        </td>
                                        <td>
                                            <i class="fa fa-money" aria-hidden="true"></i>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="cb2" runat="server" Text="消費高" />
                                        </td>
                                        <td>
                                            <i class="fa fa-users" aria-hidden="true"></i>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="cb3" runat="server" Text="批發客" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <asp:Repeater ID="rp4" runat="server" OnItemCommand="rp4_ItemCommand">
                                <HeaderTemplate>
                                    <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <tr>
                                        <td>
                                            <div>
                                                <span><%#Eval("FC08")%></span>
                                                <asp:CheckBox ID="cbCs" runat="server" Text="代入" />
                                            </div>
                                            <div>
                                                <img src='<%#Eval("PIC")%>' width="40" height="40" style="border-radius: 50%"></img>
                                                <asp:Button ID="btnMp" runat="server" Text='<%#Eval("NAME").ToString()+":"+Eval("FC05").ToString()%>' CommandName="replyM" CommandArgument='<%#Eval("FC02") %>' />
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Repeater ID="rp5" runat="server">
                                                <HeaderTemplate>
                                                    <table width="100%">
                                                        <tbody>
                                                </HeaderTemplate>
                                                <ItemTemplate>

                                                    <tr style="padding-right: 20px">
                                                        <td style="padding-top: 10px"><span class='<%#St.strSt(Eval("FC04").ToString()) %>'><%#Eval("FC05") %> <%#Convert.ToDateTime(Eval("FC06")).ToString("HH:mm") %></span></td>
                                                    </tr>

                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </tbody>
                                                    </table>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Width="80%" Height="100px"></asp:TextBox><asp:Button ID="btnInput" runat="server" Text="輸入" CommandName="replyM2" CommandArgument='<%#Eval("FC02") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                </table>                           
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>


                <div class="am-u-md-3" style="padding-top: 19px">
                    <div style="font-size: large; font-weight: bold; padding: 0px 10px 10px 0px" class="am-u-md-12 am-titlebar ">
                        建立客服單:<asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </div>
                    <table>
                        <tr>
                            <td>類別:</td>
                            <td>
                                <asp:DropDownList ID="ddlCls" runat="server">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="1" Text="類別1"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="類別2"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="類別3"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>手機:</td>
                            <td>
                                <asp:TextBox ID="txtPhon" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>備註:</td>
                            <td>
                                <textarea id="TextArea1" cols="20" rows="2"></textarea></td>
                        </tr>
                        <tr>
                            <td>
                                <input id="Button1" type="button" value="建立" /></td>
                        </tr>
                    </table>
                </div>

            </asp:Panel>
        </div>

    </form>

    <style>
        .howard-1 {
            resize: none;
            height: auto;
            word-break: break-all;
            font-size: 16px;
            color: #666;
            border: 1px solid #ccc;
            outline: 0 none;
            box-shadow: 0 0 5px #999;
            border-radius: 3px;
            box-sizing: border-box;
            transition: all 200ms linear;
        }


        .am-tabs-nav li {
            position: relative;
            z-index: 1;
        }

        .am-tabs-nav .am-icon-close {
            position: absolute;
            top: 0;
            right: 10px;
            color: #888;
            cursor: pointer;
            z-index: 100;
        }

            .am-tabs-nav .am-icon-close:hover {
                color: #333;
            }

            .am-tabs-nav .am-icon-close ~ a {
                padding-right: 25px !important;
            }



        .ul_self {
            list-style: none;
            margin: 0;
            padding: 0;
        }

            .ul_self li {
                display: inline-block;
                clear: both;
                padding: 20px;
                border-radius: 30px;
                margin-bottom: 2px;
                font-family: Helvetica, Arial, sans-serif;
            }

        .him {
            background: #eee;
            float: left;
        }

        .me {
            float: right;
            background: #0084ff;
            color: #fff;
        }

        .him + .me {
            border-bottom-right-radius: 5px;
        }

        .me + .me {
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }
    </style>
    <%-- <script>
        //自定義按鈕
        function fbLogin() {
            FB.login(function (response) {
                if (response.session) {
                    if (response.perms) {

                        alert('已登入成功，取得授權');
                    } else {

                        alert('已登入成功，未取得授權');
                    }
                } else {
                    登入失敗
                    alert('登入失敗');
                }
            }, { perms: 'email,user_checkins,publish_stream,offline_access' });  //設定需要授權的項目
        }
    </script>--%>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/amazeui.min.js"></script>

</body>
</html>
