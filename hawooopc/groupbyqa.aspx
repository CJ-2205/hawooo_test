<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="groupbyqa.aspx.cs" Inherits="user_groupbyqa" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/groupbyqa.aspx";
                }
            }
        }
         )
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="minbox" style="width:680px">
        <div class="content-full">
            <div class="listbox-full">

                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 680px;">

                    <li style="margin: 0;"><a href="https://www.hawooo.com/user/group.aspx" target="_blank">
                        <img alt="限時團購｜買越多價格越低!2件9折，3件8折!" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_01.png" style="float: left; display: block; width: 100%;" /></a></li>

                    <li style="margin: 0;">
                        <img alt="價格怎麼算?" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_02.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="團購有什麼優惠?" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_03.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="可以使用網站其他優惠?" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_04.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;"><a href="https://www.hawooo.com/user/group.aspx" target="_blank">
                        <img alt="jio朋友，買越多越便宜" src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_05.png" style="float: left; display: block; width: 100%;" /></a></li>


                </ul>


            </div>
        </div>
    </div>



</asp:Content>

