<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170825.aspx.cs" Inherits="user_20170825" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170825.aspx";
                }
            }
        }
         )
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

                <a href="#" target="_blank">
                    <img alt="全區只要RM6.6 up 第二波" src="https://www.hawooo.com/images/ftp/20170825/edm6_01.png" style="width: 100%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9177" target="_blank">
                    <img alt="Anden Hud 中腰三角褲1入(隨機出貨)" src="https://www.hawooo.com/images/ftp/20170825/edm6_02.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9175" target="_blank">
                    <img alt="【LSY林三益】雙弧BB海綿" src="https://www.hawooo.com/images/ftp/20170825/edm6_03.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=479&bid=10" target="_blank">
                    <img alt="【Dr.Douxi 朵璽】腋下美白去味去角質霜 80m" src="https://www.hawooo.com/images/ftp/20170825/edm6_04.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=5862" target="_blank">
                    <img alt="【footpure】 ㊣銷售No1除臭蜜粉襪-鞋蜜粉 49g" src="https://www.hawooo.com/images/ftp/20170825/edm6_05.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/20170815.aspx?block=MI01-1" target="_blank">
                    <img alt="看更多國慶Sale" src="https://www.hawooo.com/images/ftp/20170825/edm6_06.png" style="width: 100%;" /></a>


            </div>
        </div>
    </div>



</asp:Content>

