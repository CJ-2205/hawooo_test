<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170921.aspx.cs" Inherits="user_20170921" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170921.aspx";
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
                <img alt="Ha幣上線啦，消費就轉1%回饋" src="https://www.hawooo.com/images/ftp/20170925/edm_01.png" style="width: 1180px;" />

                <img alt="買RM1就送1Ha幣" src="https://www.hawooo.com/images/ftp/20170925/edm_02.PNG" style="width: 590px;" />

                <a href="https://www.hawooo.com/user/20170906hacoin.aspx" target="_blank">
                    <img alt="慶祝新版上線，直接送你1500Ha幣" src="https://www.hawooo.com/images/ftp/20170925/edm_03.png" style="width: 590px;" /></a>



                <!--Ha幣2倍送-->

                <a href="20170921pageA.aspx" target="_blank">
                    <img alt="Ha幣回饋2倍送" src="https://www.hawooo.com/images/ftp/20170925/edm_04.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=641" target="_blank">
                    <img alt="BHK's 奢光錠 穀胱甘太 (30顆/袋) 1袋/2袋組" src="https://www.hawooo.com/images/ftp/20170925/edm_05.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                    <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 (三色可選)" src="https://www.hawooo.com/images/ftp/20170925/edm_06.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9167" target="_blank">
                    <img alt="SODA BEAUTY 炭酸粉刺調理雪泡(盒裝)" src="https://www.hawooo.com/images/ftp/20170925/edm_07.png" style="width: 201px; height: 267px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8811" target="_blank">
                    <img alt="AKUMA 驢CareMe 瑜珈冥想修護面膜(5入)" src="https://www.hawooo.com/images/ftp/20170925/edm_08.png" style="width: 200px; height: 267px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170925/edm_09.png" style="width: 47px;" />

                <a href="20170921pageA.aspx" target="_blank">
                    <img alt="Ha幣回饋2倍送 看更多" src="https://www.hawooo.com/images/ftp/20170925/edm_10.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=6847" target="_blank">
                    <img alt="NEWART 紅寶石能量瞬護隔離霜 150ml" src="https://www.hawooo.com/images/ftp/20170925/edm_11.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=5810" target="_blank">
                    <img alt="LA BEAU 心機妹媚緊緻潤澤凝膠 30ml" src="https://www.hawooo.com/images/ftp/20170925/edm_12.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=5251" target="_blank">
                    <img alt="【Beauty小舖】Fa Laiya法婡雅 會說話的唇露" src="https://www.hawooo.com/images/ftp/20170925/edm_13.png" style="width: 200px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8847" target="_blank">
                    <img alt="【Miss Hana花娜小姐】柔潤無暇BC精華棒(防曬款) SPF50 PA++ 12g (2色可選)" src="https://www.hawooo.com/images/ftp/20170925/edm_14.png" style="width: 201px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170925/edm_15.png" style="width: 47px;" />



                <!--Ha幣3倍送-->


                <a href="20170921pageB.aspx" target="_blank">
                    <img alt="Ha幣回饋3倍送" src="https://www.hawooo.com/images/ftp/20170925/edm_16.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=7936" target="_blank">
                    <img alt="【Beauty小舖】動動酵素 14包/盒" src="https://www.hawooo.com/images/ftp/20170925/edm_17.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9163" target="_blank">
                    <img alt="COZY 逆齡美肌水乳液40g＋送天堂花園牡丹活水保濕速導面膜(3入/盒" src="https://www.hawooo.com/images/ftp/20170925/edm_18.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9114" target="_blank">
                    <img alt="ScienAQUA科水 斐濟淨化三部曲面膜 (5片/盒)" src="https://www.hawooo.com/images/ftp/20170925/edm_19.png" style="width: 201px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9367" target="_blank">
                    <img alt="【茶山房手工皂】煥采果醋皂 100g" src="https://www.hawooo.com/images/ftp/20170925/edm_20.png" style="width: 200px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170925/edm_21.png" style="width: 47px;" />

                <a href="20170921pageB.aspx" target="_blank">
                    <img alt="Ha幣回饋3倍送 看更多" src="https://www.hawooo.com/images/ftp/20170925/edm_22.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=7938" target="_blank">
                    <img alt="【Fa Laiya】法婡雅_ 365 DAYS戀愛精華 30ml" src="https://www.hawooo.com/images/ftp/20170925/edm_23.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8988" target="_blank">
                    <img alt="【V.VIENNA微微安娜】超顯瘦收腹冰絲涼感褲" src="https://www.hawooo.com/images/ftp/20170925/edm_24.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9355" target="_blank">
                    <img alt="【Nature Tree】白皙無瑕柔光輕透CC霜 30ml" src="https://www.hawooo.com/images/ftp/20170925/edm_25.png" style="width: 200px; height: 249px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=5862" target="_blank">
                    <img alt="【footpure】 ㊣銷售No1除臭蜜粉襪-鞋蜜粉 49g" src="https://www.hawooo.com/images/ftp/20170925/edm_26.png" style="width: 201px; height: 249px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170925/edm_27.png" style="width: 47px;" />


                <!--footer-->


                <a href="https://www.hawooo.com/user/20170906hacoin.aspx" target="_blank">
                    <img alt="領取Ha幣1500" src="https://www.hawooo.com/images/ftp/20170925/edm_28.png" style="width: 1180px;" /></a>
            </div>
        </div>
    </div>



</asp:Content>

