<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170818.aspx.cs" Inherits="user_20170818" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170818.aspx";
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
                    <img alt="全區只要RM6.6 up" src="https://www.hawooo.com/images/ftp/20170818/edm6_01.png" style="width: 100%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=4941" target="_blank">
                    <img alt="滿鍋香 養生鍋底-香辣風味(2~3人用)" src="https://www.hawooo.com/images/ftp/20170818/edm6_02.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8852" target="_blank">
                    <img alt="INNER SKIN 茶樹控油胺基酸潔膚皂 100g" src="https://www.hawooo.com/images/ftp/20170818/edm6_03.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=1842&bid=10" target="_blank">
                    <img alt="【Dr.Douxi 朵璽】XIN NI SUNG 賦活新生卵殼膜 20g" src="https://www.hawooo.com/images/ftp/20170818/edm6_04.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8962" target="_blank">
                    <img alt="【老媽拌麵】四川麻辣拌麵1袋＋老成都擔擔麵1袋" src="https://www.hawooo.com/images/ftp/20170818/edm6_05.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/20170815.aspx?block=MI01-1" target="_blank">
                    <img alt="看更多國慶Sale" src="https://www.hawooo.com/images/ftp/20170818/edm6_06.png" style="width: 100%;" /></a>


            </div>
        </div>
    </div>



</asp:Content>

