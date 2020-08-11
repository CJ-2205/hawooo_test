<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170808.aspx.cs" Inherits="user_20170808" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
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
                    window.location.href = "https://www.hawooo.com/mobile/20170808.aspx";
                }
            }


        }
         )
    </script>
    <%--  <link rel="stylesheet" href="../user/assets/css/newyearmom1.css">
    <link rel="stylesheet" href="../user/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="../user/assets/css/app.css">--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="../user/assets/css/newyearmom1.css">
    <link rel="stylesheet" href="../user/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="../user/assets/css/app.css">
    <%-- <div class="minbox">
        <div class="content-full">--%>
    <%-- <div class="listbox-full">
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

            </div>--%>


    <!-- 页面内容 -->
    <div class="am-show-md-up">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20170808/edm_01.png" alt="BHK's 你是哪種圓?" style="width: 100%">
        </div>
    </div>
    <div class="am-show-md-up">
        <div class="fullBanner">
            <a href="#q1">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_02.png" alt="對症減肥，事半功倍！開始測驗吧！" style="width: 100%"></a>
        </div>
    </div>
    <!--Q1-->

    <div class="am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="q1"></a>
        </div>
        <div class="am-u-md-7 mx3BannerL" style="padding: 0px">
            <%-- <a id="q1"></a>--%>
            <img src="https://www.hawooo.com/images/ftp/20170808/edm_03.png" alt="你曾經瘦過嗎" style="max-height: 627px; width: 100%">
        </div>
        <div class="am-u-md-5 mx3BannerR" style="padding: 0px">
            <a href="#q3">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_04.png" alt="曾經是個瘦子" style="max-height: 314px; width: 100%"></a>
            <a href="#q2">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_05.png" alt="圓圓才是王道" style="max-height: 314px; width: 100%"></a>
        </div>
    </div>

    <!--Q2-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="q2"></a>
        </div>
        <div class="am-u-md-12 mx3BannerL" style="padding: 0px">
            <%-- <a id="q2"></a>--%><a href="#q1">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_06.png" alt="對症減肥，事半功倍！開始測驗吧！" style="width: 100%"></a>
        </div>

        <div class="am-u-md-4 mx3BannerL" style="padding: 0px">
            <a href="#tian">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_07.png" alt="Yes但沒效" style="max-height: 257px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerL" style="padding: 0px">

            <a href="#dong">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_08.png" alt="Yes效果不大" style="max-height: 257px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerL" style="padding: 0px">
            <a href="#tian">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_09.png" alt="NO" style="max-height: 257px; width: 100%"></a>
        </div>
    </div>
    <!--Q3-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="q3"></a>
        </div>
        <div class="am-u-md-7 mx3BannerL" style="padding: 0px">
            <%--   <a id="q3"></a>--%>
            <img src="https://www.hawooo.com/images/ftp/20170808/edm_10.png" alt="什麼時候開始變胖" style="max-height: 627px; width: 100%">
        </div>
        <div class="am-u-md-5 mx3BannerR" style="padding: 0px">
            <a href="#q4">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_11.png" alt="生小孩" style="max-height: 311px; width: 100%"></a>
            <a href="#q5">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_12.png" alt="工作後" style="max-height: 311px; width: 100%"></a>
        </div>
    </div>

    <!--Q4-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="q4"></a>
        </div>
        <div class="am-u-md-5 mx3BannerR" style="padding: 0px">
            <%--   <a id="q4"></a>--%>
            <a href="#ya">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_13.png" alt="我都睡不飽" style="max-height: 310px; width: 100%"></a>
            <a href="#ma">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_15.png" alt="每晚睡飽飽" style="max-height: 309px; width: 100%"></a>
        </div>
        <div class="am-u-md-7 mx3BannerR" style="padding: 0px">
            <img src="https://www.hawooo.com/images/ftp/20170808/edm_14.png" alt="長期睡眠不足" style="max-height: 619px; width: 100%">
        </div>
    </div>
    <!--Q5-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="q5"></a>
        </div>
        <div class="am-u-md-7 mx3BannerL" style="padding: 0px">
            <%-- <a id="q5"></a>--%>
            <img src="https://www.hawooo.com/images/ftp/20170808/edm_16.png" alt="時常熬夜" style="max-height: 622px; width: 100%">
        </div>
        <div class="am-u-md-5 mx3BannerR" style="padding: 0px">
            <a href="#q6">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_17.png" alt="越夜越美麗" style="max-height: 311px; width: 100%"></a>
            <a href="#da">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_18.png" alt="最睡早起身體好" style="max-height: 311px; width: 100%"></a>
        </div>
    </div>


    <!--Q6-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="q6"></a>
        </div>
        <div class="am-u-md-5 mx3BannerR" style="padding: 0px">
            <%-- <a id="q6"></a>--%>
            <a href="#shui">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_19.png" alt="常常金魚眼" style="max-height: 311px; width: 100%"></a>
            <a href="#ya">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_21.png" alt="我熊貓眼" style="max-height: 311px; width: 100%"></a>
        </div>
        <div class="am-u-md-7 mx3BannerR" style="padding: 0px">
            <img src="https://www.hawooo.com/images/ftp/20170808/edm_20.png" alt="時常眼睛浮腫" style="max-height: 622px; width: 100%">
        </div>
    </div>
    <!--測驗結束-->
    <!--大肚圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="du"></a>
        </div>
        <%--   <a id="du"></a>--%>
        <div class="fullBanner">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9078" target="_blank" style="max-height: 423px; width: 100%">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_22.png" alt="大肚圓" style="width: 100%"></a>
        </div>
    </div>
    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_23.png" alt="澱粉控" style="max-height: 196px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_24.png" alt="甜點控" style="max-height: 196px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_25.png" alt="油炸控" style="max-height: 196px; width: 100%"></a>

        </div>
    </div>

    <!--tian天生圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="tian"></a>
        </div>
        <%-- <a id="tian"></a>--%>
        <div class="fullBanner">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8177" target="_blank" style="max-height: 423px; width: 100%">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_26.png" alt="天生圓" style="width: 100%"></a>
        </div>
    </div>
    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_27.png" alt="澱粉控" style="max-height: 196px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_28.png" alt="甜點控" style="max-height: 196px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_29.png" alt="油炸控" style="max-height: 196px; width: 100%"></a>

        </div>
    </div>
    <!--大肚圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="da"></a>
        </div>
        <div class="am-show-md-up">
            <%-- <a id="da"></a>--%>
            <div class="fullBanner">
                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9078" target="_blank" style="max-height: 425px; width: 100%">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edm_22.png" alt="大肚圓" style="width: 100%"></a>
            </div>
        </div>
    </div>

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_23.png" alt="澱粉控" style="max-height: 197px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_24.png" alt="甜點控" style="max-height: 197px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_25.png" alt="油炸控" style="max-height: 197px; width: 100%"></a>

        </div>
    </div>

    <!--shui水腫圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="shui"></a>
        </div>
        <%-- <a id="shui"></a>--%>
        <div class="fullBanner">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8499" target="_blank" style="max-height: 428px; width: 100%">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_30.png" alt="水腫圓" style="width: 100%"></a>
        </div>
    </div>

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_31.png" alt="澱粉控" style="max-height: 193px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_32.png" alt="甜點控" style="max-height: 193px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_33.png" alt="油炸控" style="max-height: 193px; width: 100%"></a>

        </div>
    </div>

    <!--ya壓力圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="ya"></a>
        </div>
        <%--<a id="ya"></a>--%>
        <div class="fullBanner">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9076" target="_blank" style="max-height: 425px; width: 100%">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_34.png" alt="壓力圓" style="width: 100%"></a>
        </div>
    </div>
    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_35.png" alt="澱粉控" style="max-height: 195px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_36.png" alt="甜點控" style="max-height: 195px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_37.png" alt="油炸控" style="max-height: 195px; width: 100%"></a>

        </div>
    </div>

    <!--dong動卻圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="dong"></a>
        </div>
        <%--<a id="dong"></a>--%>
        <div class="fullBanner">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9081" target="_blank" style="max-height: 429px; width: 100%">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_38.png" alt="動卻圓" style="width: 100%"></a>
        </div>
    </div>
    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_39.png" alt="澱粉控" style="max-height: 191px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_40.png" alt="甜點控" style="max-height: 191px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_41.png" alt="油炸控" style="max-height: 191px; width: 100%"></a>

        </div>
    </div>

    <!--ma媽咪圓-->

    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div style="padding-top: 122px">
            <a id="ma"></a>
        </div>
        <%--<a id="ma"></a>--%>
        <div class="fullBanner">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9079" target="_blank" style="max-height: 429px; width: 100%">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_42.png" alt="媽咪圓" style="width: 100%"></a>
        </div>
    </div>
    <div class="am-show-md-up am-u-md-12" style="padding: 0px">
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_43.png" alt="澱粉控" style="max-height: 201px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_44.png" alt="甜點控" style="max-height: 201px; width: 100%"></a>
        </div>
        <div class="am-u-md-4 mx3BannerR" style="padding: 0px">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                <img src="https://www.hawooo.com/images/ftp/20170808/edm_45.png" alt="油炸控" style="max-height: 201px; width: 100%"></a>

        </div>
    </div>
    <!--結果結束-->
    <footer class="fullBanner am-show-md-up">
        <img src="https://www.hawooo.com/images/ftp/20170808/edm_46.png" alt="BHK's減肥問卷">
    </footer>

    <script src="../user/assets/js/jquery.min.js"></script>
    <script src="../user/assets/js/amazeui.min.js"></script>
    <script src="../user/js/170808.js"></script>
    <style>
        .am-container {
            width: 100%;
        }

        body {
            background-color: #e9eded;
        }
    </style>
    <%--  </div>
    </div>--%>
</asp:Content>

