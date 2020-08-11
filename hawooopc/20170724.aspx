<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170724.aspx.cs" Inherits="user_20170724" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170621.aspx";
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
                    <img alt="Labeau週年慶" src="https://www.hawooo.com/images/ftp/20170724/edm_01.png" style="width: 393px;" /></a>

                <a href="#" target="_blank">
                    <img alt="全系列商品買一送一" src="https://www.hawooo.com/images/ftp/20170724/edm_02.gif" style="width: 591px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8850&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="buy1 get1" src="https://www.hawooo.com/images/ftp/20170724/edm_03.png" style="width: 196px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8850&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="心機妹緊緻潤澤凝膠30ml" src="https://www.hawooo.com/images/ftp/20170724/edm_04.png" style="width: 1180px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8863&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="淨膚淡斑美白精華30ml" src="https://www.hawooo.com/images/ftp/20170724/edm_05.png" style="width: 432px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8867&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="蛇毒緊緻精華30ml" src="https://www.hawooo.com/images/ftp/20170724/edm_06.png" style="width: 748px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8863&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="好好照顧自己 全系列買一送一" src="https://www.hawooo.com/images/ftp/20170724/edm_07.png" style="width: 432px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8865&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="蘋果澎澎霜30ml" src="https://www.hawooo.com/images/ftp/20170724/edm_08.png" style="width: 748px;" /></a>

                <a href="https://www.hawooo.com/user/search.aspx?stxt=%E3%80%90%E9%99%90%E6%99%82%E8%B2%B7%E4%B8%80%E9%80%81%E4%B8%80%E3%80%91LA%20BEAU&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                    <img alt="exclusive for Taiwan select products" src="https://www.hawooo.com/images/ftp/20170724/edm_09.png" style="width: 1180px;" /></a>

            </div>
        </div>
    </div>

</asp:Content>

