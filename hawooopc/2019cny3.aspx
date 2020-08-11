<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2019cny3.aspx.cs" Inherits="user_2019cny3" %>

<%@ Import Namespace="hawooo" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/amazeui.min.css" rel="stylesheet" />
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <link href="assets/css/app.css" rel="stylesheet" />
    <style>
        img {
            width: 100%;
            display: block;
            vertical-align: bottom;
        }

        .cny-header {
            position: relative;
            width: 100%;
            margin: auto;
            text-align: center;
            /*backgroun/*color: #fc594d;*/
        }

        .cny-coupon {
            position: absolute;
            display: block;
            /*bottom: 18%;*/
            top: 34%;
            width: 50%;
            margin: auto;
            left: 0;
            right: 0;
        }


        .cny-container {
            position: absolute;
            width: 100%;
            /*top: 90%;*/
            /*background-color: #f9cfa7;*/
        }

        .am-container {
            max-width: 1030px;
        }

        .product-group {
            position: relative;
            width: 1030px;
            left: 0;
            right: 0;
            margin: auto;
            z-index: 9;
        }

            .product-group .product-list {
                position: relative;
                z-index: 2;
                width: 940px;
                top: -10px;
                left: 0;
                right: 0;
                margin: auto;
                /*background-color: #AE160A;*/
                /*border-left: 8px solid #FAD98A;
                border-right: 8px solid #FAD98A;
                border-bottom: 8px solid #FAD98A;*/
            }

            .product-group .color-bar {
                position: absolute;
                margin: auto;
                background-color: #AE160A;
                height: 40%;
                width: 95%;
                top: 15%;
                left: 0;
                right: 0;
            }

            .product-group .color-bar2 {
                background-color: #AE160A;
                height: 50%;
                width: 95.8%;
                position: absolute;
                top: 50%;
                left: 0;
                right: 0;
                margin: auto;
            }

            .product-group .title-img {
                position: relative;
                z-index: 1;
            }

            .product-group ul {
                width: 100%;
                /*background-color: #AE160A;*/
                /*position: relative;*/
                margin: auto;
                top: 60%;
                left: 0;
                right: 0;
            }

        .am-direction-nav li a {
            margin: 0px 40px 0px 40px !important;
        }

        .product-group .more-btn {
            width: 60px;
            background-color: #ED1C24;
            display: block;
            margin: auto;
            left: 0;
            right: 0;
            text-align: center;
            height: 300px;
            line-height: 300px;
        }

            .product-group .more-btn img {
                width: auto;
                vertical-align: middle;
                margin: auto;
                padding-top: 20px;
            }

        a {
            color: #a8a8a8;
        }

        .product-items-tag {
            padding: 2px 6px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: bottom;
            border-radius: 12px;
            display: inline-block;
        }

            .product-items-tag img {
                display: inline;
            }

        .padding-0 {
            padding: 0px;
        }

        .cny-event {
            position: relative;
            width: 1030px;
            z-index: 2;
        }

            .cny-event ul {
                padding: 0px 40px;
            }

            .cny-event li {
                padding: 5px;
            }

        .cny-brand {
            position: relative;
            width: 1030px;
            z-index: 2;
        }

            .cny-brand .cny-brand-header-bar {
                padding: 0 30px;
            }

                .cny-brand .cny-brand-header-bar img {
                    padding-top: 10px;
                }

                .cny-brand .cny-brand-header-bar a {
                    padding-top: 10px;
                }

            .cny-brand .cny-brand-container {
                padding-top: 10px;
            }

        .brand-list {
            position: relative;
            padding: 0px 30px;
            z-index: 2;
        }

            .brand-list li {
                position: relative;
                padding: 5px;
                margin: auto;
                left: 0;
                right: 0;
                text-align: center;
            }

            .brand-list .brand {
                padding: 5px;
                background-color: white;
            }

        .brand-img img {
            width: 100%;
        }

        .brand-logo img {
            width: 30%;
            position: absolute;
            margin: auto;
            left: 0;
            right: 0;
            top: 180px;
            border: 2px solid #ffff;
        }

        .brand-note {
            position: relative;
            padding: 30px 0px 10px;
        }

            .brand-note .name {
                color: black;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                font-size: 16px;
                padding-bottom: 3px;
            }

            .brand-note .note {
                font-size: 14px;
                line-height: 18px;
                color: #979697;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            }
        /*旁邊小選單*/
        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        .pitem {
            padding: 0;
            border: 0;
            float: left;
            margin-bottom: 0;
            min-height: 300px;
            background-color: #FFF;
        }
    </style>
    <style type="text/css">
        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
            text-decoration: line-through;
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


        body {
            background-color: #e40600;
        }


        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }


        /*基本設定*/




        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
            text-align: left;
        }

        .discountprice {
            color: #EE5984;
            font-size: 18px;
            font-weight: bold;
            padding-left: 5px;
        }

        .saveprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
            float: right;
            margin-top: -3px;
        }

        .redprice {
            font-size: 20px;
            letter-spacing: -2px;
        }



        .fire_product_4_space {
            padding: 0 10px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: white;
        }

        .fire_product_4_box {
            width: 23%;
            background: white;
            padding: 10px;
            margin: 10px 5px;
            z-index: 50;
            margin-left: 13px;
        }

        .fire_product_4_img {
            width: 90%;
            margin-left: 11px;
        }


        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
            }


        .gift2 {
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
        /*loading bar開始*/


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
            border-radius: initial;
        }

        .w3-container, .w3-panel {
            /*padding: 0.01em 16px;*/
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
            top: 60%;
            left: 0;
            right: 0;
            font-size: 13px;
        }

        .barstyle {
            display: inline;
            position: absolute;
            z-index: 52;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .burn-text2 {
            color: white;
            text-align: center;
            position: absolute;
            top: 10%;
            right: 70px;
            font-size: 13px;
        }

        /*旁邊小選單*/
        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        ul .tabs {
            width: 100%;
            height: 32px;
            border-bottom: 0px solid #999;
            border-left: 0px solid #999; /*此處加上背景色語法不會影響到標簽內容的背景*/
        }


        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
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

        .slider-img {
            width: 265px;
            margin-right: 2px;
            padding: 10px;
        }

        .slider-list {
            width: 715px;
        }

        .am-slider-b3 {
            box-shadow: none;
        }
    </style>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="invisible" style="z-index: 9999;">
            <!-- box是固定的nav-->
            <div class="box">
                <a href="2019cny3.aspx">
                    <%--    <img src="https://www.hawooo.com/images/ftp/20190126/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page">--%>
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_01.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="main page" />
                </a>
                <a href="2019cny3.aspx">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_02.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="flash sale" />
                </a>
                <a href="2019cnybuy3.aspx?did=1">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_03.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="value package" />
                </a>
                <a href="2019cnybuy3.aspx?did=6">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_09.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="fashion" />
                </a>
                <a href="2019cnybuy3.aspx?did=2">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_04.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="beauty" />
                </a>
                <a href="2019cnybuy3.aspx?did=3">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_05.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="supplement" />
                </a>
                <a href="2019cnybuy3.aspx?did=4">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_06.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="home" />
                </a>
                <a href="2019cnybuy3.aspx?did=5">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_07.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="fashion" />
                </a>


                <a onclick="goTop()">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/sidebar_08.png" %>'
                        style="width: 150px; margin-bottom: -1px" alt="fashion" />
                </a>



            </div>
        </div>
        <div style="min-width: 1180px;">
            <section class="cny-header">
                <a class="btnn" data-clipboard-text="HW2019CNY">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190126/edmnew_01.png" %>" />
                </a>


                <div style="position: relative; height: 460px">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190126/edmnew_02.png" %>" style="height: 100%" />
                    <div class="product-group" style="top: 0%; position: absolute; padding-left: 25px">

                        <a href="2019cnybuy3.aspx?did=1">
                            <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/section_1small.png" %>' style="margin: 0 auto; width: 100%" />
                            <%--        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20190126/section_1small.png" style="margin: 0 auto; width: 100%" />--%>
                        </a>
                        <div class="am-u-sm-12 am-fr index-more-products-list slider-list" style="width: 100%; background-color: white; border: 5px solid #fad988">
                            <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                <ul class="am-slides">
                                    <!-- 一頁商品頁 star -->
                                    <asp:Repeater ID="rp1" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <div class="am-panel am-panel-default pitem">
                                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                            <div id="<%#"imgdivHot"+ Container.ItemIndex  %>" style="position: relative">
                                                                <%-- <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />--%>
                                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />
                                                            </div>

                                                        </div>
                                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                        <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr">
                                                                    <span style="vertical-align: middle;">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="font-size: 13px;">
                                                                        <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                    <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>

                                <!-- 一頁商品頁 end -->
                                <!-- 一頁商品頁 star -->
                            </div>
                            <!-- 商品slider本體 star -->
                        </div>

                    </div>
                </div>

                <div style="position: relative; height: 460px">

                    <div class="product-group" style="top: 0%; position: absolute; padding-left: 25px">

                        <a href="2019cnybuy3.aspx?did=6">
                            <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/section_6small.png" %>' style="margin: 0 auto; width: 100%" />
                            <%--        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20190126/section_1small.png" style="margin: 0 auto; width: 100%" />--%>
                        </a>
                        <div class="am-u-sm-12 am-fr index-more-products-list slider-list" style="width: 100%; background-color: white; border: 5px solid #fad988">
                            <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                <ul class="am-slides">
                                    <!-- 一頁商品頁 star -->
                                    <asp:Repeater ID="rp1_1" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <div class="am-panel am-panel-default pitem">
                                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                            <div id="<%#"imgdivHot"+ Container.ItemIndex  %>" style="position: relative">
                                                                <%-- <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />--%>
                                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />
                                                            </div>

                                                        </div>
                                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                        <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr">
                                                                    <span style="vertical-align: middle;">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="font-size: 13px;">
                                                                        <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                    <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>

                                <!-- 一頁商品頁 end -->
                                <!-- 一頁商品頁 star -->
                            </div>
                            <!-- 商品slider本體 star -->
                        </div>

                    </div>
                </div>






            </section>



            <%--  <div>
                <a href="2019cnybuy3.aspx?did=6">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190126/section_6small.png" %>" style="width: 1005px; margin: 0 auto" />
                </a>
            </div>--%>
            <div class="cny-container ">
                <div class="am-container">

                    <div class="product-group">

                        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                            <div class="am-tabs-bd">
                                <div class="am-tab-panel am-active">
                                    <!-- 商品開始 -->
                                    <section class="index-products-section body-care section-1">
                                        <!-- title end-->
                                        <div style="padding: 0;">
                                            <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                                    data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                                    <ul class="am-slides">
                                                        <!-- 一頁商品頁 star -->
                                                        <asp:Repeater ID="rpType1" runat="server">
                                                            <ItemTemplate>
                                                                <li>
                                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                        <div class="am-panel am-panel-default pitem">
                                                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                            </div>
                                                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                            <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr">
                                                                                        <span style="vertical-align: middle;">
                                                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="font-size: 13px;">
                                                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                        <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </ul>

                                                    <!-- 一頁商品頁 end -->
                                                    <!-- 一頁商品頁 star -->
                                                </div>
                                                <!-- 商品slider本體 star -->
                                            </div>

                                            <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                <a href="2019cnybuy3.aspx?did=2" target="_blank">
                                                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/001.png" %>' /></a>
                                            </div>

                                        </div>

                                    </section>
                                    <!-- 商品結束-->
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="product-group">

                        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                            <div class="am-tabs-bd">
                                <div class="am-tab-panel am-active">
                                    <!-- 商品開始 -->
                                    <section class="index-products-section body-care section-1">
                                        <!-- title end-->
                                        <div style="padding: 0;">
                                            <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                                    data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                                    <ul class="am-slides">
                                                        <!-- 一頁商品頁 star -->
                                                        <asp:Repeater ID="rpType2" runat="server">
                                                            <ItemTemplate>
                                                                <li>
                                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                        <div class="am-panel am-panel-default pitem">
                                                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                            </div>
                                                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                            <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr">
                                                                                        <span style="vertical-align: middle;">
                                                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="font-size: 13px;">
                                                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                        <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </ul>

                                                    <!-- 一頁商品頁 end -->
                                                    <!-- 一頁商品頁 star -->
                                                </div>
                                                <!-- 商品slider本體 star -->
                                            </div>

                                            <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                <a href="2019cnybuy3.aspx?did=3" target="_blank">
                                                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/002.png" %>' /></a>
                                            </div>

                                        </div>

                                    </section>
                                    <!-- 商品結束-->
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="product-group">

                        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                            <div class="am-tabs-bd">
                                <div class="am-tab-panel am-active">
                                    <!-- 商品開始 -->
                                    <section class="index-products-section body-care section-1">
                                        <!-- title end-->
                                        <div style="padding: 0;">
                                            <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                                    data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                                    <ul class="am-slides">
                                                        <!-- 一頁商品頁 star -->
                                                        <asp:Repeater ID="rpType3" runat="server">
                                                            <ItemTemplate>
                                                                <li>
                                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                        <div class="am-panel am-panel-default pitem">
                                                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                            </div>
                                                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                            <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr">
                                                                                        <span style="vertical-align: middle;">
                                                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="font-size: 13px;">
                                                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                        <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </ul>

                                                    <!-- 一頁商品頁 end -->
                                                    <!-- 一頁商品頁 star -->
                                                </div>
                                                <!-- 商品slider本體 star -->
                                            </div>

                                            <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                <a href="2019cnybuy3.aspx?did=4" target="_blank">
                                                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/003.png" %>' /></a>
                                            </div>

                                        </div>

                                    </section>
                                    <!-- 商品結束-->
                                </div>

                            </div>
                        </div>
                    </div>






                    <div class="product-group">

                        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                            <div class="am-tabs-bd">
                                <div class="am-tab-panel am-active">
                                    <!-- 商品開始 -->
                                    <section class="index-products-section body-care section-1">
                                        <!-- title end-->
                                        <div style="padding: 0;">
                                            <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                                    data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                                    <ul class="am-slides">
                                                        <!-- 一頁商品頁 star -->
                                                        <asp:Repeater ID="rpType4" runat="server">
                                                            <ItemTemplate>
                                                                <li>
                                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                        <div class="am-panel am-panel-default pitem">
                                                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                            </div>
                                                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                            <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr">
                                                                                        <span style="vertical-align: middle;">
                                                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                    <div class="am-fl">
                                                                                        <span style="font-size: 13px;">
                                                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                        <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </ul>

                                                    <!-- 一頁商品頁 end -->
                                                    <!-- 一頁商品頁 star -->
                                                </div>
                                                <!-- 商品slider本體 star -->
                                            </div>

                                            <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                <a href="2019cnybuy3.aspx?did=5" target="_blank">
                                                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/004.png" %>' /></a>
                                            </div>

                                        </div>

                                    </section>
                                    <!-- 商品結束-->
                                </div>

                            </div>
                        </div>
                    </div>




                    <section class="cny-brand">
                        <div class="cny-brand-header-bar">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20190126/edm_03.png" />
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=273" target="_blank">
                                <img src="<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190126/brand1.png" %>" />
                            </a>
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=115" target="_blank">
                                <img src="<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190126/brand2.png" %>" />
                            </a>
                        </div>

                    </section>




                    <section class="product-group-list">


                        <div class="product-group">

                            <div data-am-widget="tabs" class="am-tabs am-tabs-d2" id="p1">
                                <ul class="am-tabs-nav am-cf" id="tab1">
                                    <li class="am-active"><a href="#t1">FreshO2</a></li>
                                    <li class=""><a href="#t2">Dr Cink</a></li>
                                    <li class=""><a href="#t3">Beauty小舖</a></li>
                                    <li class=""><a href="#t4">DV笛絲薇夢 </a></li>
                                </ul>
                                <div class="am-tabs-bd">
                                    <div id="t1" class="am-tab-panel am-active">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">
                                            <!-- title end-->
                                            <div style="padding: 0;">
                                                <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp2_1" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>

                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->
                                                    </div>
                                                    <!-- 商品slider本體 star -->
                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=229" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand3.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                    <div id="t2" class="am-tab-panel">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">
                                            <!-- title end-->
                                            <div style="height: 270px; padding: 0;">

                                                <div class="am-u-sm-10 am-fr index-more-products-list  slider-list">
                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3"
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 6, slideshow: false}">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp2_2" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>
                                                        <%--    </li>--%>
                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->

                                                    </div>

                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=208" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand4.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                    <div id="t3" class="am-tab-panel ">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">
                                            <!-- title end-->
                                            <div style="height: 270px; padding: 0;">
                                                <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3"
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 6, slideshow: false}">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp2_3" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">

                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>
                                                        <%--    </li>--%>
                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->

                                                    </div>

                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=51" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand5.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                    <div id="t4" class="am-tab-panel">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">

                                            <!-- title end-->

                                            <div style="height: 270px; padding: 0;">

                                                <div class="am-u-sm-10 am-fr index-more-products-list slider-list">


                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3"
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 6, slideshow: false}">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp2_4" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">

                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>
                                                        <%--    </li>--%>
                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->

                                                    </div>

                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=235" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand6.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                </div>
                            </div>



                        </div>

                        <div class="product-group">

                            <div data-am-widget="tabs" class="am-tabs am-tabs-d2" id="p2">
                                <ul class="am-tabs-nav am-cf" id="tab2">
                                    <li class="am-active"><a href="#t5">BC</a></li>
                                    <li class=""><a href="#t6">LaQueen</a></li>
                                    <li class=""><a href="#t7">午茶夫人</a></li>
                                    <li class=""><a href="#t8">暖暖純手作</a></li>
                                </ul>
                                <div class="am-tabs-bd">
                                    <div id="t5" class="am-tab-panel am-active">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">
                                            <!-- title end-->
                                            <div style="padding: 0;">
                                                <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 10, slideshow: false}" style="margin-top: 10px">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp3_1" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>

                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->
                                                    </div>
                                                    <!-- 商品slider本體 star -->
                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=186" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand7.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                    <div id="t6" class="am-tab-panel">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">
                                            <!-- title end-->
                                            <div style="height: 270px; padding: 0;">

                                                <div class="am-u-sm-10 am-fr index-more-products-list  slider-list">
                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3"
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 6, slideshow: false}">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp3_2" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>
                                                        <%--    </li>--%>
                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->

                                                    </div>

                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=108" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand8.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                    <div id="t7" class="am-tab-panel ">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">
                                            <!-- title end-->
                                            <div style="height: 270px; padding: 0;">
                                                <div class="am-u-sm-10 am-fr index-more-products-list slider-list">
                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3"
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 6, slideshow: false}">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp3_3" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">

                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>
                                                        <%--    </li>--%>
                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->

                                                    </div>

                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=151" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand9.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                    <div id="t8" class="am-tab-panel">
                                        <!-- 商品開始 -->
                                        <section class="index-products-section body-care section-1">

                                            <!-- title end-->

                                            <div style="height: 270px; padding: 0;">

                                                <div class="am-u-sm-10 am-fr index-more-products-list slider-list">


                                                    <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3"
                                                        data-am-flexslider="{itemWidth: 200, itemMargin: 6, slideshow: false}">
                                                        <ul class="am-slides">
                                                            <!-- 一頁商品頁 star -->
                                                            <asp:Repeater ID="rp3_4" runat="server">
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                            <div class="am-panel am-panel-default pitem">
                                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                                </div>
                                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">

                                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr">
                                                                                            <span style="vertical-align: middle;">
                                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                                        <div class="am-fl">
                                                                                            <span style="font-size: 13px;">
                                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                                            </span>
                                                                                        </div>
                                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>
                                                        <%--    </li>--%>
                                                        <!-- 一頁商品頁 end -->
                                                        <!-- 一頁商品頁 star -->

                                                    </div>

                                                </div>

                                                <div class="am-u-sm-2 am-fl index-more-products-pic slider-img">
                                                    <a href="https://www.hawooo.com/user/search.aspx?stxt=WarmGingerTea" target="_blank">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190126/brand10.png" %>' /></a>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- 商品結束-->
                                    </div>
                                </div>
                            </div>
                        </div>

                    </section>

                    <div class="product-group">


                        <div>
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190126/edm_04.png" %>" class="title-img" />
                        </div>
                        <div class="product-list">
                            <div class="am-g">
                                <div class="am-u-sm-12 padding-0">
                                    <ul class="am-avg-md-4 am-gallery-bordered product">
                                        <asp:Repeater ID="rpLike" runat="server">
                                            <ItemTemplate>
                                                <li style="height: 320px"><a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                            <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'
                                                                EnableViewState="false" />
                                                        </div>
                                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                            <%--  <div class="gallery_title_top">
                                                <asp:Literal ID="lit_WP24" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal>
                                            </div>--%>
                                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>
                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                        <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr">
                                                                    <span style="vertical-align: middle;">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="font-size: 13px;"><i class="far am-icon-eye"></i>Viewed
                                                                    <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                    <%--       <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>--%>
                                                                    <span class="product-items-tag">
                                                                        <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WPT06") %></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>




                    </div>
                </div>
                <%--     <div style="background-color: #f9cfa7; z-index: 0; width: 100%; position: absolute; top: 90px;">
                </div>--%>
                <div style="width: 100%; position: relative; margin: 0 auto; /* width: 1080px; */z-index: 1;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody style="color: white">
                            <tr>

                                <td bgcolor="#000000" class="note_title " style="padding: 15px;">
                                    <br />
                                    HaWooo CNY Sale:<br />
                                    1.Promotion Date：<br />
                                    <span class="note_white">•Chapter III： 26 Jan- 7 Feb, 2019
                                    <br />
                                        •Free Shipping ( WM RM99; EM RM199)
                                    </span>
                                    <br />
                                    2.Coupon<br />
                                    <span class="note_white">•Spend RM150 and get 10% off - use promo code “HW2019CNY”
                                    </span>
                                    <br />
                                    3.Notice：<br />
                                    <span class="note_white">※Promo codes are not applicable to the following brands/products: DV, ANRIEA, BHK’s, DR.CINK, Dr.Lady, UNIQMAN,H&J,Qmomo and FLASH SALE products. </span>

                                </td>

                            </tr>
                        </tbody>
                    </table>
                    <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
                </div>
            </div>
        </div>
        <script>
            $(function () {
                for (var i = 1; i <= 3; i++) {
                    $("#tab" + i + " > li").mouseover(function () {

                        if ($(this).hasClass("am-active"))

                            return;

                        else {

                            $(this).find('a').tabs('open');

                        }

                    });
                };




            });




        </script>
        <script>
            function top30() {
                for (var i = 1; i <= 30; i++) {
                    var j = i - 1;
                    //$('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20190126/top' + i + '.png" style="position: absolute; top: 0; margin: auto; width: 25%; right: 5px;z-index:9" />')
                    $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20190126/hotsale.png" style="position: absolute; top: 0; margin: auto; width: 25%; right: 5px;z-index:9" />')
                }
            };

            $(function () {
                top30();
            });
        </script>
        <script src="assets/js/clipboard.min.js"></script>
        <script>
            var clipboard = new ClipboardJS('.btnn');

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


        </script>
        <script src="assets/js/jquery.countdown.js"></script>
        <script>
            function goTop() {
                $('html, body').animate({ scrollTop: 0 }, 'fast');
            }
        </script>
        <%-- <script>
            function timeEvent(stime) {

                var note = $('#note'),
                        ts = new Date(stime).getTime() + 3 * 24 * 60 * 60 * 1000;
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
    </form>
</body>
</html>
