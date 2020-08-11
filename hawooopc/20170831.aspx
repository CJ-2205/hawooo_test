<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170831.aspx.cs" Inherits="user_20170831" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170831.aspx";
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
                    <img alt="全區只要RM6.6 up 第三波" src="https://www.hawooo.com/images/ftp/201708311/edm6_01.png" style="width: 100%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9174" target="_blank">
                    <img alt="AKUMA 啾ME 親一下果漾潤唇膏8g  2入組 (多款可選)" src="https://www.hawooo.com/images/ftp/201708311/edm6_02.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=6396" target="_blank">
                    <img alt="【淨毒五郎】蔬果清潔劑 400ml" src="https://www.hawooo.com/images/ftp/201708311/edm6_03.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9171" target="_blank">
                    <img alt="ScienAQUA科水三部曲面膜保濕淨化組(加拿大美白) (2片/袋)" src="https://www.hawooo.com/images/ftp/201708311/edm6_04.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=455&bid=10" target="_blank">
                    <img alt="【Dr.Douxi 朵璽】火晶靈極粹美白火山泥 100g 軟管" src="https://www.hawooo.com/images/ftp/201708311/edm6_05.png" style="width: 50%;" /></a>

                <a href="https://www.hawooo.com/user/20170815.aspx?block=MI01-1" target="_blank">
                    <img alt="看更多國慶Sale" src="https://www.hawooo.com/images/ftp/201708311/edm6_06.png" style="width: 100%;" /></a>


            </div>
        </div>
    </div>



</asp:Content>

