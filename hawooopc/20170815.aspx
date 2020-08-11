<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170815.aspx.cs" Inherits="user_20170815" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170815.aspx";
                }
            }
        }
         )
    </script>


    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

                <%--          <style>
                    body {
                        background-color: #f5cd49;
                    }
                </style>--%>

                <!-- 页面内容 -->
                <div class="am-show-md-up">
                    <div class="fullBanner">
                        <img src="https://www.hawooo.com/images/ftp/20170815/edm_01.png" alt="MERDEKA SALE">
                    </div>
                </div>

                <div class="am-show-md-up">
                    <div class="fullBanner">
                        <img src="https://www.hawooo.com/images/ftp/20170815/edm_02.png" alt="MERDEKA SALE折價卷">
                    </div>
                </div>

                <!--活動A buy 1 free 1-->
                <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9146" target="_blank">
                            <img alt="【買一送一】INNER SKIN 毛孔緊緻調理精華 50ml" src="https://www.hawooo.com/images/ftp/20170815/edm_03.png" style="float: left; display: block; width: 30%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9165" target="_blank">
                            <img alt="【買洗髮精送保護液】NEWART茶樹舒敏止癢洗髮精285ml★送新技活氧茶樹頭皮保護液120ml" src="https://www.hawooo.com/images/ftp/20170815/edm_04.png" style="float: left; display: block; width: 18%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9156" target="_blank">
                            <img alt="【買麵送醬】老媽拌麵口味任選3袋組★送「40ml手工麻辣醬」" src="https://www.hawooo.com/images/ftp/20170815/edm_05.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9158" target="_blank">
                            <img alt="【買三送一】Fa Laiy法婡雅-巴黎多重唇頰彩3件組   送會說話的唇露" src="https://www.hawooo.com/images/ftp/20170815/edm_06.png" style="float: left; display: block; width: 22%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/20170815pageA.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20170815/edm_07.png" style="float: left; display: block; width: 10%;" /></a></li>
                    </ul>
                </div>

                <!--活動B Top20 items-->
                <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8909&cid=42" target="_blank">
                            <img alt="【婦潔VIGILL】私密沐浴露(日常潔淨) 220ml" src="https://www.hawooo.com/images/ftp/20170815/edm_08.png" style="float: left; display: block; width: 30%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8847" target="_blank">
                            <img alt="【Miss Hana花娜小姐】柔潤無暇BC精華棒(防曬款) SPF50 PA++ 12g (2色可選)" src="https://www.hawooo.com/images/ftp/20170815/edm_09.png" style="float: left; display: block; width: 18%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8834" target="_blank">
                            <img alt="BHK's 人氣美白凍齡組" src="https://www.hawooo.com/images/ftp/20170815/edm_10.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9141" target="_blank">
                            <img alt="【Merdeka Sale國慶限定】Laler菈楽 日日輕控＆夜夜爆燃(30顆/盒)" src="https://www.hawooo.com/images/ftp/20170815/edm_11.png" style="float: left; display: block; width: 22%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/20170815pageB.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20170815/edm_12.png" style="float: left; display: block; width: 10%;" /></a></li>
                    </ul>
                </div>

                <!--活動C 買supplement送collagen-->
                <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E7%A9%80%E8%83%B1%E7%94%98%E5%A4%AA%20(60%E9%A1%86" target="_blank">
                            <img alt="BHK's 奢光錠 穀胱甘太 (60顆瓶裝) 1瓶/2瓶組" src="https://www.hawooo.com/images/ftp/20170815/edm_13.png" style="float: left; display: block; width: 30%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=2569&bid=12" target="_blank">
                            <img alt="BHK's 白高顆(30顆/袋) 3袋/6袋組" src="https://www.hawooo.com/images/ftp/20170815/edm_14.png" style="float: left; display: block; width: 18%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8527" target="_blank">
                            <img alt="月來月順調理組" src="https://www.hawooo.com/images/ftp/20170815/edm_15.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=6901" target="_blank">
                            <img alt="【Beauty小舖】SPORT動動膠囊+Sleep夜動動膠囊" src="https://www.hawooo.com/images/ftp/20170815/edm_16.png" style="float: left; display: block; width: 22%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/20170815pageC.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20170815/edm_17.png" style="float: left; display: block; width: 10%;" /></a></li>
                    </ul>
                </div>

                <!--活動D all below rm60-->
                <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8904" target="_blank">
                            <img alt="【婦潔VIGILL】私密高效美白凝露 30ml" src="https://www.hawooo.com/images/ftp/20170815/edm_18.png" style="float: left; display: block; width: 30%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=7682" target="_blank">
                            <img alt="【Miss Hana花娜小姐】妝素顏透亮賴床霜 30ml" src="https://www.hawooo.com/images/ftp/20170815/edm_19.png" style="float: left; display: block; width: 18%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8348" target="_blank">
                            <img alt="NEWART 水芹控油淨化精華 120ml" src="https://www.hawooo.com/images/ftp/20170815/edm_20.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=3615" target="_blank">
                            <img alt="Anden Hud 低腰三角褲 6入(隨機) Ｍ/L/XL" src="https://www.hawooo.com/images/ftp/20170815/edm_21.png" style="float: left; display: block; width: 22%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/20170815pageD.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20170815/edm_22.png" style="float: left; display: block; width: 10%;" /></a></li>
                    </ul>
                </div>

                <!--活動E Fashion全部免運-->
                <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=2382" target="_blank">
                            <img alt="FM Shoes 交叉腳踝繞帶楔型休閒涼鞋 36-40" src="https://www.hawooo.com/images/ftp/20170815/edm_23.png" style="float: left; display: block; width: 30%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E3%80%90Bonbons%E3%80%91%E9%87%91%E5%B1%AC%E9%A2%A8%E9%8F%A1%E9%9D%A2%E9%8F%A4%E7%A9%BA%E7%B9%9E%E5%B8%B6%E9%AB%98%E8%B7%9F%E9%9E%8B" target="_blank">
                            <img alt="【Bonbons】金屬風鏡面鏤空繞帶高跟鞋35-40" src="https://www.hawooo.com/images/ftp/20170815/edm_24.png" style="float: left; display: block; width: 18%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E5%81%B4%E6%8E%A8%E9%9B%86%E4%B8%AD%20%E5%A4%9A%E7%A9%BF%E6%B3%95" target="_blank">
                            <img alt="My Bra AINIA 側推集中 多穿法側扣內衣褲組" src="https://www.hawooo.com/images/ftp/20170815/edm_25.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E7%BE%8E%E8%87%80%E6%9B%B2%E7%B7%9A%E4%BF%AE%E9%A3%BE%E8%A4%B2" target="_blank">
                            <img alt="玉如阿姨 美臀曲線修飾褲" src="https://www.hawooo.com/images/ftp/20170815/edm_26.png" style="float: left; display: block; width: 22%;" /></a></li>
                        <li style="margin: 0;"><a href="https://www.hawooo.com/user/20170815pageE.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20170815/edm_27.png" style="float: left; display: block; width: 10%;" /></a></li>
                    </ul>
                </div>

                <div class="am-show-md-up">
                    <div class="fullBanner">
                        <img src="https://www.hawooo.com/images/ftp/20170815/edm_28.png" alt="Hawooo.com">
                    </div>
                </div>

                <!--頁面結束-->
                <script src="assets/js/jquery.min.js"></script>

                <script src="assets/js/amazeui.min.js"></script>

            </div>
        </div>
    </div>

</asp:Content>

