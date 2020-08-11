<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="hacoin.aspx.cs" Inherits="user_hacoin" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/hacoin.aspx";
                }
            }
        }
         )
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="minbox" style="width:680px">
        <div class="content-full" style="width:680px">
            <div class="listbox-full" style="width:680px">

                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="Ha幣來了!買東西就送現金" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_01.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="Ha幣100抵RM1，Ha幣1500萬換免運卷" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_02.gif" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="如何拿到Ha幣" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_03.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="我有多少Ha幣" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_04.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="Ha幣有沒有使用期限" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_05.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="如何使用Ha幣" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_06.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;"><a href="https://www.hawooo.com" target="_blank">
                        <img alt="來賺Ha幣" src="https://www.hawooo.com/images/ftp/20170821hacoin/hacoin_07.png" style="float: left; display: block; width: 100%;" /></a></li>


                </ul>


            </div>
        </div>
    </div>



</asp:Content>

