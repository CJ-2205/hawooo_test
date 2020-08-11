<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170906hacoin.aspx.cs" Inherits="user_20170906hacoin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        .minbox {
            margin: 0 auto;
            width: 1180px;
        }

        .content-full {
            margin: 0 auto;
            padding: 0;
            width: 1180px;
        }

        .listbox-full {
            float: left;
            display: block;
            font-size: 0;
            margin: 0;
            width: 1180px;
        }

            .listbox-full img {
                float: left;
                display: block;
                margin: 0;
                padding: 0;
                font-size: 0;
            }
    </style>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20170906.aspx";
                }
            }
        }
         )
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="minbox">
        <div class="content-full" style="width: 680px">
            <div class="listbox-full" style="width: 680px">

                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="Ha幣來了!現在登入就送Ha幣1500！" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_01.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;">
                            <img alt="Ha幣1500換免運卷或現抵RM15" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_02.gif" style="float: left; display: block; width: 100%;" /></li>
                    </ul>
                </div>

                <!--已加入會員-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="登入會員中心個人資料管理" src="https://www.hawooo.com/images/ftp/20170821hacoin/0905_hacoin_02.png" style="float: left; display: block; width: 100%;" /></li>


                        <li style="margin: 0;">
                            <img alt="點擊 發驗證信" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_08.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;">
                            <img alt="去e-mail信箱驗證" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_09.png" style="float: left; display: block; width: 100%;" /></li>


                        <li style="margin: 0;">
                            <img alt="立即獲得1500 Ha幣" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_10.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;"><a  id="center">
                            <img alt="點我去會員中心" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_11.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>


                <!--新加入會員-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;" id="joinR">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;">
                            <img alt="註冊新會員" src="https://www.hawooo.com/images/ftp/20170821hacoin/0905_hacoin_07.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;">
                            <img alt="去e-mail信箱點擊認證信" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_04.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;">
                            <img alt="立即獲得1500 Ha幣" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_05.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;"><a id="join" href="#" target="_blank">
                            <img alt="點我去註冊" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_hacoin_06.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>



</asp:Content>

