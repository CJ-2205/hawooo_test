<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2018xmas.aspx.cs" Inherits="mobile_2018xmas" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="assets/countdown/jquery.countdown.css?v=4" rel="stylesheet" />
    <%--   <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            /*font-size: small;*/
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
            position: relative;
        }

        .edm_title {
            float: left;
            font-size: medium;
            color: #424242;
            overflow: hidden;
            margin: 15px 0 10px 15px;
            /*loading bar開始*/
        }

        .w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray, .w3-hover-light-gray:hover {
            color: #000 !important;
            background-color: #f1f1f1 !important;
        }

        .w3-round-xlarge {
            border-radius: 16px;
        }

        .bar-orange, .w3-hover-orange:hover {
            color: #fff !important;
            background-color: #FF4A1D !important;
            font-size: 10px;
            text-align: center;
        }

        .bar-white, .w3-hover-white:hover {
            color: #fff !important;
            background-color: rgba(255,255,255,0.5);
        }

        .barstyle1 {
            display: inline;
            position: absolute;
            z-index: 52;
            top: 1px;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .bar-white {
            height: 100% !important;
            padding: 0px !important;
            border-radius: initial;
        }

        .w3-container, .w3-panel {
            padding: 0.01em 16px;
        }

            .w3-container:after, .w3-container:before, .w3-panel:after, .w3-panel:before, .w3-row:after, .w3-row:before, .w3-row-padding:after, .w3-row-padding:before, .w3-cell-row:before, .w3-cell-row:after, .w3-clear:after, .w3-clear:before, .w3-bar:before, .w3-bar:after {
                content: "";
                display: table;
                clear: both;
            }

        .burn-text {
            color: white;
            text-align: center;
            position: absolute;
            right: 30%;
            bottom: 0;
            font-size: small;
        }

        .burn-text2 {
            color: white;
            text-align: center;
            position: absolute;
            top: 6%;
            right: 33%;
            font-size: small;
        }

        .fire60 {
            position: absolute;
            margin: auto;
            width: 12%;
            right: 88%;
            top: 3%;
        }


        /*DK類別用的*/

        [data-am-widget=tabs] {
            margin: 0px;
        }



        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
                padding: 0 15px;
            }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                background-color: #C9C5C9 !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    color: black !important;
                }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                border-bottom: 6px solid #d1031c !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    line-height: 55px;
                }



                .am-tabs-d2 .am-tabs-nav > .am-active:after {
                    border: 0px;
                }



            .am-tabs-d2 .am-tabs-nav a {
                line-height: 55px;
            }



        .am-tabs-bd {
            -moz-user-select: text !important;
            -webkit-user-select: text !important;
            -ms-user-select: text !important;
            user-select: text !important;
            background-color: #fff;
        }



        .bar {
            overflow-y: hidden !important;
            width: 100%;
        }



        .am-tabs-bd .am-tab-panel {
            padding: 0px;
        }



        .bar::-webkit-scrollbar {
            display: none;
        }

        /*品牌館用的*/

        .brand_logo_space {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 66%;
            top: 28%;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .brand_logo {
            position: absolute;
            top: 32%;
            margin: auto;
            width: 45%;
            left: 53%;
            outline: 2px solid white;
        }

        .brand_logo_text {
            margin-top: 30px;
            font-size: medium;
            line-height: 11px;
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 5px;
        }

        .brand_logo_slogan {
            margin: 0 2px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 18px;
            color: #979697;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            padding-top: 3px;
        }


        /*公告用的*/
        .note_title {
            text-align: left;
            font-size: small;
            font-weight: bold;
            color: #f8d1dd;
            padding: 10px 0px;
        }

        .note_white {
            color: white;
            font-weight: normal;
        }

        .am-tabs {
            padding-top: 10px;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .tag-chinese {
            padding: 0em 0.3em;
            display: inline-block;
            position: absolute;
            font-size: .9em;
            top: 5px;
            right: 5px;
            border: 1px solid #f1b13b;
            color: #f1b13b;
            background: rgba(255,255,255,.9);
        }
    </style>--%>
    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
            position: relative;
        }

        .edm_title {
            float: left;
            font-size: medium;
            color: #424242;
            overflow: hidden;
            margin: 15px 0 10px 15px;
            /*loading bar開始*/
        }

        .w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray, .w3-hover-light-gray:hover {
            color: #000 !important;
            background-color: #f1f1f1 !important;
        }

        .w3-round-xlarge {
            border-radius: 16px;
        }

        .bar-orange, .w3-hover-orange:hover {
            color: #fff !important;
            background-color: #FF4A1D !important;
            font-size: 10px;
            text-align: center;
        }

        .bar-white, .w3-hover-white:hover {
            color: #fff !important;
            background-color: rgba(255,255,255,0.5);
        }

        .w3-container, .w3-panel {
            padding: 0.01em 16px;
        }

            .w3-container:after, .w3-container:before, .w3-panel:after, .w3-panel:before, .w3-row:after, .w3-row:before, .w3-row-padding:after, .w3-row-padding:before, .w3-cell-row:before, .w3-cell-row:after, .w3-clear:after, .w3-clear:before, .w3-bar:before, .w3-bar:after {
                content: "";
                display: table;
                clear: both;
            }

        .burn-text {
            color: white;
            text-align: center;
            position: absolute;
            right: 30%;
            top: 6%;
            font-size: small;
        }

        .burn-text2 {
            color: white;
            text-align: center;
            position: absolute;
            top: 6%;
            right: 33%;
            font-size: small;
        }

        .fire60 {
            position: absolute;
            margin: auto;
            width: 12%;
            right: 88%;
            top: 3%;
        }


        /*DK類別用的*/

        [data-am-widget=tabs] {
            margin: 0px;
        }



        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
                padding: 0 15px;
            }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                background-color: #C9C5C9 !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    color: black !important;
                }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                border-bottom: 6px solid #d1031c !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    line-height: 55px;
                }



                .am-tabs-d2 .am-tabs-nav > .am-active:after {
                    border: 0px;
                }



            .am-tabs-d2 .am-tabs-nav a {
                line-height: 55px;
            }



        .am-tabs-bd {
            -moz-user-select: text !important;
            -webkit-user-select: text !important;
            -ms-user-select: text !important;
            user-select: text !important;
            background-color: #fff;
        }



        .bar {
            overflow-y: hidden !important;
            width: 100%;
        }



        .am-tabs-bd .am-tab-panel {
            padding: 0px;
        }



        .bar::-webkit-scrollbar {
            display: none;
        }

        /*品牌館用的*/

        .brand_logo_space {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 66%;
            top: 28%;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .brand_download {
            display: inline;
            position: absolute;
            z-index: 2;
            bottom: 0;
            left: 9%;
            right: 0;
        }

        .brand_logo {
            position: absolute;
            top: 25%;
            margin: auto;
            width: 45%;
            left: 53%;
            outline: 2px solid white;
        }

        .brand_logo_text {
            margin-top: 30px;
            font-size: medium;
            line-height: 11px;
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 5px;
        }

        .brand_logo_slogan {
            margin: 0 2px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 18px;
            color: #979697;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            padding-top: 3px;
            margin-bottom: 12%;
        }


        /*公告用的*/
        .note_title {
            text-align: left;
            font-size: small;
            font-weight: bold;
            color: #f8d1dd;
            padding: 10px 0px;
        }

        .note_white {
            color: white;
            font-weight: normal;
        }

        /*時間軸用*/
        .timelineup {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 30%;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        /*老人飄飄*/

        .cloud_one {
            position: absolute;
            top: 50%;
            left: 10%;
            z-index: 3;
            animation-name: cloud_one;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
        }

        @keyframes cloud_one {
            from {
                left: 1%;
            }

            to {
                left: 20%;
            }
        }


        .cloud_two {
            position: absolute;
            top: 0;
            left: 125%;
            z-index: 3;
            animation-name: cloud_two;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
        }

        @keyframes cloud_two {
            from {
                left: 240%;
            }

            to {
                left: 280%;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--8大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 120px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="2018xmas.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasfs.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="Flash sale"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=2">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="beauty"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=4">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Home"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmas.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=1">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="package"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=3">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="supplement"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=5">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="fashion"></a>
            </li>





        </ul>
    </div>
    <!--8大類別小選單再見-->
    <!--Howard修改開始-->
    <!--神奇主視覺開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20181129/edmm_01.png" alt="xmas party" style="width: 100%">


        <%--    <div class="timelineup">--%>
        <div class="timelineup">
            <a onclick="GetCoupon('2018xmas1');">
                <img class="cloud_one" src="https://www.hawooo.com/images/ftp/20181129/santa2.png" alt="Santa" style="top: 10%; width: 35%;" />
            </a>

      
        <%--      </div>--%>

        <%--     <div class="timelineup">--%>
      
            <a onclick="GetCoupon('2018xmas2');">
                <img src="https://www.hawooo.com/images/ftp/20181129/santa1.png" alt="Santa" style="top: 39%; width: 78%; left: 191%; position: absolute" />
            </a>
        </div>
        <%--     </div>--%>
    </div>
    <div style="background-color: #ff36a3; width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; padding: 1%">
        <div style="max-width: 500px; margin: 0 auto; text-align: center">
            <b style="text-align: center; font-size: small; color: white;">I find
            <asp:Label ID="litCount" runat="server" Text="0"></asp:Label>
                Santa, I get <span style="color: yellow">
                    <asp:Label ID="litTotal" runat="server" Text="0"></asp:Label></span> Ha Coin.</b>
        </div>
    </div>

    <!--神奇時間軸開始-->

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/20181129/edmm_02.png" alt="xmas party" style="width: 100%">


        <div class="timelineup" style="top: 8%;">
            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/time1.png" alt="11/29開始" style="width: 90%; left: 0%; position: absolute" />
            </a>

            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/time2no.png" alt="12/12開始" style="width: 90%; left: 80%; position: absolute" />
            </a>

            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/time3no.png" alt="12/12開始" style="width: 90%; left: 160%; position: absolute" />
            </a>

            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/time4no.png" alt="12/26開始" style="width: 90%; left: 240%; position: absolute" />
            </a>

        </div>


    </div>

    <!--神奇好禮開始-->

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -70px;">
        <img src="https://www.hawooo.com/images/ftp/20181129/edmm_03.png" alt="xmas party" style="width: 100%">


        <div class="timelineup">

            <a onclick="GetCoupon('2018xmas3');">
                <img src="https://www.hawooo.com/images/ftp/20181129/santa2.png" alt="Santa" style="top: 9%; width: 70%; left: 140%; position: absolute;" />
            </a>

            <a onclick="GetCoupon('2018xmas4');">
                <img class="cloud_two" src="https://www.hawooo.com/images/ftp/20181129/santa22.png" alt="santa" style="width: 40%; position: absolute" />
            </a>

        </div>

        <div class="timelineup" style="top: 26%; width: 25%">

            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/freegiftm.png" alt="滿額贈" style="width: 130%; left: 5%; top: -25%; position: absolute" />
            </a>

            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/coupon1.png" alt="折價券30" style="width: 140%; left: 125%; position: absolute" />
            </a>
            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20181129/coupon2.png" alt="折價券60" style="width: 140%; left: 258%; position: absolute" />
            </a>


        </div>

    </div>
    <!--Howard修改結束-->
    <!--神奇活動開始-->

    <!--神奇活動開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20181129/edmm_04.png" alt="xmas party" style="width: 100%">


        <div class="timelineup">
            <img src="https://www.hawooo.com/images/ftp/20181129/ad1.png" alt="flash sale" style="top: 2%; width: 300%; left: 14%; position: absolute" />

        </div>

        <div class="timelineup">
            <img src="https://www.hawooo.com/images/ftp/20181129/ad2.png" alt="value package" style="top: 50%; width: 300%; left: 14%; position: absolute" />

        </div>
    </div>

    <!--神奇圖層區掰掰-->







    <div style="width: 100％; max-width: 650px; margin: 0 auto;">
        <a href="2018xmas.aspx?did=2">
            <img src="https://www.hawooo.com/images/ftp/20181129/s1m.png" alt="" style="width: 100%"></a>

        <section class="am-container product-info-wrapper container-suggested-slider">
            <div class="product-slider-content" id="tg1">
                <ul class="am-cf">
                    <asp:Repeater ID="rp1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />

                                    <div class="product-slider-text">
                                        <h3>
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                        <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                        <p class="am-fr">
                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %>
                                        <p>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>


        <a href="2018xmas.aspx?did=3">
            <img src="https://www.hawooo.com/images/ftp/20181129/s2m.png" alt="" style="width: 100%"></a>


        <section class="am-container product-info-wrapper container-suggested-slider">
            <div class="product-slider-content" id="tg8">
                <ul class="am-cf">

                    <asp:Repeater ID="rp2" runat="server">
                        <ItemTemplate>

                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />

                                    <div class="product-slider-text">
                                        <h3>
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                        <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                        <p class="am-fr">
                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %>
                                        <p>
                                    </div>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <a href="2018xmas.aspx?did=4">
            <img src="https://www.hawooo.com/images/ftp/20181129/s3m.png" alt="" style="width: 100%"></a>
        <section class="am-container product-info-wrapper container-suggested-slider">
            <div class="product-slider-content" id="tg7">
                <ul class="am-cf">

                    <asp:Repeater ID="rp3" runat="server">
                        <ItemTemplate>


                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />

                                    <div class="product-slider-text">
                                        <h3>
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                        <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                        <p class="am-fr">
                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %>
                                        <p>
                                    </div>
                                </a>
                            </li>


                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <a href="2018xmas.aspx?did=5">
            <img src="https://www.hawooo.com/images/ftp/20181129/s4m.png" alt="" style="width: 100%"></a>

        <section class="am-container product-info-wrapper container-suggested-slider">
            <div class="product-slider-content" id="tg6">
                <ul class="am-cf">
                    <asp:Repeater ID="rp4" runat="server">
                        <ItemTemplate>



                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <div class="product-slider-text">
                                        <h3>
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                        <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                        <p class="am-fr">
                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %>
                                        <p>
                                    </div>
                                </a>
                            </li>



                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>






        <!--DK類別Easy Life開始-->



        <!--celebrities' choice開始-->

        <style>
            .shopmore {
                padding: 5px;
                padding-top: 15px;
                display: flex;
                font-size: 14px;
            }
        </style>

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; background-color: #0b1359" id="p3">


            <div style="position: relative; max-width: 650px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href='<%#"https://www.hawooo.com/user/brands.aspx?bid="+Eval("BID") %>' target="_blank">
                                    <img src='<%#"https://www.hawooo.com/images/ftp/20181101/"+Eval("IMG")+".png" %>' style="width: 100%;">
                                    <h4 class="brand_logo_text"><%#Eval("NAME") %></h4>
                                    <h4 class="brand_logo_slogan"><%#Eval("NOTE") %></h4>
                                    <div class="brand_logo_space">
                                        <img class="go_bt brand_logo" src='<%#"https://www.hawooo.com/images/ftp/20181101/"+Eval("LOGO")+".png" %>' alt='<%#Eval("NAME") %>' />
                                    </div>
                                    <div class="brand_download">
                                        <img src="https://www.hawooo.com/images/ftp/20181129/download.png" alt="download" style="width: 90%" />
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>


            </div>


        </div>


        <%--    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;  background-color: #eee">
        <a href="brand1.aspx">
            <img alt="more brands" src="https://www.hawooo.com/images/ftp/20181101/morebrand_m.png" style="float: left; display: block; width: 100%;" />
        </a>

    </div>--%>




        <%--     <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; background-color: #eee">
            <h4 class="edm_title">You may also like…</h4>
        </div>--%>
        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
            <img alt="u may like" src="https://www.hawooo.com/images/ftp/20181129/edmm_05.png" style="width: 100%;">
        </div>

        <!--也許你會喜歡-->
        <section class="am-container" id="pnews" runat="server" style="background-color: #0b1359; padding-bottom: 5px;">
            <div class="am-u-sm-12 index-section-wrapper hot-sale" style="background-color: #0b1359">


                <ul class="am-cf">
                    <asp:Repeater ID="rp15" runat="server">
                        <ItemTemplate>
                            <li class="am-fl" style="background-color: white">

                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto"
                                            src="../noimg.png"
                                            data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                        <div class="product_item_block am-cf">
                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                            <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                <%# ((mobile) this.Master).LgType.Equals(LangType.en) ? "<img src='../images/icon/" + Eval("WP30") + ".png'/>" : "<span class='product-items-tag'>" + Eval("WP30") + "</span>" %>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

            </div>
        </section>


        <!--活動辦法+footer開始喔-->

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;">
            <%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td bgcolor="#000000" class="note_title" style="padding-left: 100px">HaWooo 1111 Shopping Festival:<br />
                        1. Promotion Date . Now - November 11, 2018<br />
                        2. Promotion Description．Coupon<br />
                        <span class="note_white">RM30 OFF (use Promo code:SF30) min spend 250<br>
                            RM40 OFF (use Promo code:SF40) min spend 350<br>
                            RM111 OFF (use Promo code:SF111) min spend 666 (only on 11.11)<br>
                        </span>
                        3.  Notice：<br>
                        <span class="note_white">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN,H&J,KP,Share,mamaway...etc, and 24H FLASH SALE products.<br>
                            ※ Free gift with purchase activity is not available to certain products<br />
                            ※ All brand promotional activities are not applicable to 24H FLASH SALE products.
                        </span>
                        <br>
                    </td>



                </tr>
            </tbody>
        </table>--%>

            <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

        </div>
    </div>
    <!--頁面END-!>
        


     <!--倒數計時用的-->
    <!-- JavaScript includes -->

    <script src="assets/countdown/jquery.countdown.js"></script>
    <script src="assets/js/bday.js"></script>
    <%-- <script>
        function timeEvent(stime) {

            var note = $('#note'),
                ts = new Date(stime.replace(/-/g, '/')).getTime() + 2 * 24 * 60 * 60 * 1000;
            console.log(ts);
            $("#countdown").countdown({
                timestamp: ts,
                callback: function (days, hours, minutes, seconds) {

                    var message = "";

                    message += days + " day" + (days === 1 ? "" : "s") + ", ";
                    message += hours + " hour" + (hours === 1 ? "" : "s") + ", ";
                    message += minutes + " minute" + (minutes === 1 ? "" : "s") + " and ";
                    message += seconds + " second" + (seconds === 1 ? "" : "s") + " <br />";

                    note.html(message);
                }
            });
        }

    </script>--%>
    <!--倒數計時用的結束-->
    <!--DK類別用的-->
    <script>

        // 自動偵測長度 only use in ul and li

        // thisli = li's length. i > margin or something

        $(function () {
            for (i = 0; i <= 13; i++) {
                detectLength($("#tg" + i + " li"), 0);
            }
            $("#footermenu").css("display", "none");
        });

        function detectLength(thisli, i) {

            var licount = $(thisli).length;

            var liWidth = $(thisli).outerWidth() + i;

            var litotalWidth = licount * liWidth;

            $(thisli).parent("ul").css("width", litotalWidth);

        };
    </script>


    <script type="text/javascript">

        $(function () {
            var url = location.search;
            if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
                var v = url.split('?')[1];
                v = v.split('=')[1];
                GoId(v);
            }
        });

        function GoId(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 500);

        };
        function GoTop() {
            $("html,body").animate({ scrollTop: 0 }, 500);

        };
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');



        $(function () {
            $("footer").remove();
        });

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("The voucher code have been copied,please enter it when you get ready to pay.");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });

        function GetCoupon(e) {
            var memberID = '<%= Session["A01"] %>';
            if (memberID !== '') {
                var d = "{'d':'" + e + "'}";
                $.ajax({
                    type: "post",
                    url: "2018xmas.aspx/AddCoupon",
                    data: d,
                    contentType: "application/json;charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        alert("領取成功");
                        $("#<%= litCount.ClientID %>").text(data.d);
                        var total = data.d * 100;
                        $("#<%= litTotal.ClientID %>").text(total);
                        //alert(data.d);
                    },
                    error: function () {
                        alert('請稍後再領取一次');
                    }
                });
            }
            else {
                doLogin("2018xmas.aspx");
            }
        };


    </script>
</asp:Content>

