<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2018xmas.aspx.cs" Inherits="user_2018xmas" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">--%>
    <!-- 倒數計時用 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <%--    <link rel="stylesheet" href="countdown/jquery.countdown.css" />--%>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css">
    <!-- 引用 jQuery 1.4 -->
    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>
    <!-- 類別滑動 -->
    <%--<link rel="stylesheet" href="assets/css/index.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">


    <style type="text/css">
        .am-slider-b3 {
            margin: 10px 30px;
            box-shadow: none;
        }


        .deletepricem {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
            float: right;
            margin-top: -8px;
        }


        .index-more-products-content .index-more-products-list {
            width: calc(100% - 250px);
        }

        .am-slider-b3 .am-direction-nav a.am-next {
            right: 5px;
        }

        .am-slider-b3 .am-direction-nav a.am-prev {
            left: -5px;
        }

        .am-slider-carousel li {
            margin-right: 0px;
        }

        .p-style {
            padding: 5px;
            border: none;
            border-right: 1px solid #d9dad9;
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


        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }



        /*基本設定*/

        body {
            background-color: #eee;
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
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


        .product_5_space {
            padding: 0 10px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: #071050;
        }

        .product_5_box {
            width: 18.5%;
            background: white;
            padding: 5px;
            margin: 15px 3px 0 3px;
            z-index: 50;
            margin-left: 10px;
        }

        .product_5_img {
            width: 90%;
            margin-left: 8px;
        }




        .gift2 {
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        /*類別區塊開始*/
        .tab_box {
            width: 100%;
            margin: 0 auto;
            display: block;
            width: 1000px;
            position: relative;
            z-index: 2;
            list-style-type: none;
        }

        .tab_box_space {
            display: inline;
            position: absolute;
            z-index: 2;
            top: -3px;
            bottom: 0;
            left: 118px;
            right: 0;
        }

        .tab_box_box {
            width: 28.5%;
            background: grey;
            padding: 10px;
            margin: 10px 5px;
            z-index: 50;
        }

        /*品牌館開始*/
        .brand_logo {
            position: absolute;
            top: 54%;
            margin: auto;
            width: 40%;
            left: 55%;
            outline: 4px solid white;
        }

        .brand_logo_text {
            margin-top: 19px;
            font-size: 16px;
            line-height: 11px;
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 8px;
        }

        .brand_logo_slogan {
            margin: 10px 5px 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 18px;
            color: #979697;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
        }

        .big_brand_4_space {
            padding: 20px 50px 0 50px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: #071050;
        }

        .big_brand_box {
            width: 23%;
            background: white;
            padding: 10px;
            margin: 10px 10px;
            z-index: 50;
        }

        .big_brand_logo {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 66%;
            top: -5%;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .big_brand_download {
            display: inline;
            position: absolute;
            z-index: 3;
            width: 120%;
            top: 75%;
            bottom: 0;
            left: -40%;
            right: 0;
        }

        .brand_download {
            position: absolute;
            top: 61%;
            margin: auto;
            width: 46%;
            left: 52%;
        }

        /*DK三大類別tab用*/


        [data-am-widget=tabs] {
            margin: 0px;
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



        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
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

        /*時間軸用*/
        .timeline16 {
            position: absolute;
            top: 69%;
            margin: auto;
            width: 16%;
        }

        .timelineup {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 100%;
        }

        .timeline17 {
            position: absolute;
            top: 69%;
            margin: auto;
            width: 17%;
        }

        .timeline {
            position: absolute;
            top: 69%;
            margin: auto;
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
            z-index: 2;
            animation-name: cloud_two;
            animation-duration: 5s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
        }

        @keyframes cloud_two {
            from {
                right: 50px;
            }

            to {
                right: 100px;
            }
        }

        .cloud_three {
            position: absolute;
            top: 0px;
            right: -150px;
            z-index: 50;
            animation-name: cloud_three;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
        }

        @keyframes cloud_three {
            from {
                right: 10px;
            }

            to {
                right: 100px;
            }
        }

        .cloud_four {
            position: absolute;
            z-index: 2;
            animation-name: cloud_four;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
        }

        @keyframes cloud_four {
            from {
                left: 50px;
            }

            to {
                left: 140px;
            }
        }




        .evenpage_outer {
            display: block;
            width: 1100px;
            position: relative;
            margin: 0 auto;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Literal ID="litMsg" runat="server"></asp:Literal>



    <!-- 小選單開始-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="2018xmas.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page"></a>


            <a href="2018xmasfs.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="flash sale"></a>

            <a href="2018xmasbuy.aspx?did=1">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="value package"></a>

            <a href="2018xmasbuy.aspx?did=2">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="beauty"></a>

            <a href="2018xmasbuy.aspx?did=3">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="supplement"></a>

            <a href="2018xmasbuy.aspx?did=4">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="home"></a>

            <a href="2018xmasbuy.aspx?did=5">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="fashion"></a>


        </div>
    </div>
    <!-- 小選單掰掰-->


    <div style="width: 1100px; margin: 0 auto; background-color: #071050;">

        <!--主視覺-->
        <!--神奇主視覺開始-->
        <!--Howard更改開始-->
        <div style="width: 100%; width: 1100px; position: relative; z-index: 1; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20181129/edm_01.png" alt="xmasparty" style="width: 100%">


            <div class="timelineup" style="top: 12%;">


                <a onclick="GetCoupon('2018xmas1');">
                    <img class="go_bt cloud_one" src="https://www.hawooo.com/images/ftp/20181129/santa2.png" alt="Santa2" style="position: absolute; top: 69%; margin: auto; width: 8%; left: 16%;" />
                </a>

            </div>

            <div class="timelineup" style="top: 26.5%;">


                <a onclick="GetCoupon('2018xmas2');">
                    <img class="go_bt" src="https://www.hawooo.com/images/ftp/20181129/santa1.png" alt="Santa2" style="position: absolute; top: 69%; margin: auto; width: 21%; right: 20%;" />
                </a>

            </div>

            <div class="timelineup" style="top: 40%;">


                <b style="position: absolute; right: 162px; color: white; text-align: center">
                    <asp:Label ID="litCount" runat="server" Text="0"></asp:Label>
                    Santa</b>

            </div>

            <div class="timelineup" style="top: 49%;">


                <b style="position: absolute; right: 140px; color: white; text-align: center"><span style="color: yellow">
                    <asp:Label ID="litTotal" runat="server" Text="0"></asp:Label></span> Ha Coin</b>

            </div>

            <img src="https://www.hawooo.com/images/ftp/20181129/edm_02.png" alt="xmasparty" style="width: 100%">

            <div class="timelineup" style="top: 78%;">


                <a href="2018xmaspreorder.aspx">
                    <img class="timeline16" src="https://www.hawooo.com/images/ftp/20181129/time1.png" alt="11/29開始" style="left: 17%;" /></a>

                <a href="2018xmasfs.aspx">
                    <img class="timeline16" src="https://www.hawooo.com/images/ftp/20181129/time2no.png" alt="12/12開始" style="left: 34%;" /></a>

                <a href="#">
                    <img class="timeline16" src="https://www.hawooo.com/images/ftp/20181129/time3no.png" alt="12/12開始" style="left: 50%;" /></a>

                <a href="#">
                    <img class="timeline16" src="https://www.hawooo.com/images/ftp/20181129/time4no.png" alt="12/26開始" style="left: 67%;" /></a>

            </div>


        </div>
        <!--Howard更改結束-->




        <!--神奇折價券開始-->
        <div style="width: 100%; position: relative; z-index: 1; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20181129/edm_03.png" alt="free gift" style="width: 100%">


            <div class="timelineup" style="top: 8%;">


                <a onclick="GetCoupon('2018xmas3');">
                    <img class="go_bt cloud_three" src="https://www.hawooo.com/images/ftp/20181129/santa22.png" alt="Santa2" style="position: absolute; margin: auto; width: 13%; right: 9%" />
                </a>

            </div>

            <div class="timelineup" style="top: 49%;">


                <a href="#">
                    <img class=" timeline17" src="https://www.hawooo.com/images/ftp/20181129/freemask.png" alt="滿額贈" style="left: 17%; width: 30%" /></a>

                <a class="btnn" data-clipboard-text="18XMAS30">
                    <img class=" timeline17" src="https://www.hawooo.com/images/ftp/20181129/coupon1.png" alt="折價券30" style="left: 49%;" /></a>

                <a class="btnn" data-clipboard-text="18XMAS60">
                    <img class=" timeline17" src="https://www.hawooo.com/images/ftp/20181129/coupon2.png" alt="折價券60" style="left: 67%;" /></a>

            </div>


        </div>
        <!--神奇活動開始-->
        <div style="width: 100%; position: relative; z-index: 1; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20181129/edm_04.png" alt="free gift" style="width: 100%">


            <div class="timelineup" style="top: 4%;">


                <a href="2018xmasfs.aspx">
                    <img class="go_bt timeline" style="right: 25%; width: 52%" alt="flashsale" src="https://www.hawooo.com/images/ftp/20181129/ad1.png" /></a>

                <a onclick="GetCoupon('2018xmas4');">
                    <img class="go_bt timeline" style="left: 1%; width: 14%" alt="santa" src="https://www.hawooo.com/images/ftp/20181129/santa3.png" /></a>


            </div>

            <div class="timelineup" style="top: 52%;">


                <a href="2018xmasbuy.aspx?did=1">
                    <img class="go_bt timeline" style="right: 25%; width: 52%" alt="flashsale" src="https://www.hawooo.com/images/ftp/20181129/ad2.png" /></a>

                <a onclick="GetCoupon('2018xmas5');">
                    <img class="go_bt timeline cloud_two" style="right: 15%; width: 8%" alt="santa" src="https://www.hawooo.com/images/ftp/20181129/santa2.png" /></a>


            </div>
        </div>
        <!--神奇圖層區掰掰-->



        <!--三個區塊-->

        <div style="width: 1000px; margin: 0 auto">

            <!-- 商品開始 -->
            <section class="index-products-section body-care section-1" style="padding: 0px; margin-bottom: 20px">
                <div class="am-container am-cf index-more-products-content body-care-content" style="height: 270px; width: 1000px; padding: 0;">

                    <div class=" am-fr index-more-products-list" style="height: 259px;">
                        <div class=" am-slider-carousel am-slider-b3" data-am-flexslider="{itemWidth: 170, itemMargin: 6, slideshow: false}">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp1" runat="server">
                                    <ItemTemplate>
                                        <%--      <li style="border: none; margin: 10px">--%>
                                        <li class="p-style">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </div>
                                                <h4 class="pname">
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p class="discountprice">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString() %></span></p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class=" am-fl index-more-products-pic" style="width: 225px; height: 269px; float: left; padding: 10px; background-color: white">

                        <a href="2018xmasbuy.aspx?did=2" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20181129/s1.png"></a>

                    </div>

                </div>
            </section>


            <section class="index-products-section body-care section-1" style="padding: 0px; margin-bottom: 20px">
                <div class="am-container am-cf index-more-products-content body-care-content" style="height: 270px; width: 1000px; padding: 0;">

                    <div class=" am-fr index-more-products-list" style="height: 259px;">
                        <div class="  am-slider-carousel am-slider-b3" data-am-flexslider="{itemWidth: 170, itemMargin: 6, slideshow: false}">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp2" runat="server">
                                    <ItemTemplate>
                                        <%--      <li style="border: none; margin: 10px">--%>
                                        <li class="p-style">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </div>
                                                <h4 class="pname">
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p class="discountprice">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString() %></span></p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class=" am-fl index-more-products-pic" style="width: 225px; height: 269px; float: left; padding: 10px; background-color: white">

                        <a href="2018xmasbuy.aspx?did=3" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20181129/s2.png"></a>

                    </div>

                </div>
            </section>


            <section class="index-products-section body-care section-1" style="padding: 0px; margin-bottom: 20px">
                <div class="am-container am-cf index-more-products-content body-care-content" style="height: 270px; width: 1000px; padding: 0;">

                    <div class=" am-fr index-more-products-list" style="height: 259px;">
                        <div class="  am-slider-carousel am-slider-b3" data-am-flexslider="{itemWidth: 170, itemMargin: 6, slideshow: false}">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp3" runat="server">
                                    <ItemTemplate>
                                        <%--      <li style="border: none; margin: 10px">--%>
                                        <li class="p-style">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </div>
                                                <h4 class="pname">
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p class="discountprice">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString() %></span></p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class=" am-fl index-more-products-pic" style="width: 225px; height: 269px; float: left; padding: 10px; background-color: white">

                        <a href="2018xmasbuy.aspx?did=4" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20181129/s3.png"></a>

                    </div>

                </div>
            </section>

            <section class="index-products-section body-care section-1" style="padding: 0px; margin-bottom: 20px">
                <div class="am-container am-cf index-more-products-content body-care-content" style="height: 270px; width: 1000px; padding: 0;">

                    <div class=" am-fr index-more-products-list" style="height: 259px;">
                        <div class="  am-slider-carousel am-slider-b3" data-am-flexslider="{itemWidth: 170, itemMargin: 6, slideshow: false}">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp4" runat="server">
                                    <ItemTemplate>
                                        <%--      <li style="border: none; margin: 10px">--%>
                                        <li class="p-style">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </div>
                                                <h4 class="pname">
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p class="discountprice">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString() %></span></p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class=" am-fl index-more-products-pic" style="width: 225px; height: 269px; float: left; padding: 10px; background-color: white">

                        <a href="2018xmasbuy.aspx?did=5" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20181129/s4.png"></a>

                    </div>

                </div>
            </section>
            <!-- 商品結束-->
            <%--     </div>
            </div>--%>
        </div>
        <!--第二類別區塊：Elegant Life-->

        <!--品牌館開始-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 5; list-style-type: none;">
            <div class="gift2 am-cf">
                <div class="big_brand_3_space">
                    <ul>
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl hvr-float big_brand_box">
                                    <a href='<%#"https://www.hawooo.com/user/brands.aspx?bid="+ Eval("BID") %>' target="_blank">
                                        <img src='<%#"https://www.hawooo.com/images/ftp/20181129/"+Eval("IMG")+".png" %>' style="width: 100%;">
                                        <h4 class="brand_logo_text"><%#Eval("NAME") %></h4>
                                        <h4 class="brand_logo_slogan"><%#Eval("NOTE") %></h4>
                                        <div class="big_brand_logo">
                                            <img class="go_bt brand_logo" src='<%#"https://www.hawooo.com/images/ftp/20181129/"+Eval("LOGO")+".png" %>' alt='<%#Eval("NAME") %>' />
                                        </div>
                                        <div class="big_brand_download">
                                            <img class="brand_download" src="https://www.hawooo.com/images/ftp/20181129/download.png" alt="Dr. Cink" />
                                        </div>
                                    </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
        <!--品牌館結束-->
        <!--也許你會喜歡開始-->
        <%--    <h4 class="edm_title">You may also like…</h4>--%>
        <div style="width: 100%; width: 1100px; position: relative; z-index: 1; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20181129/edm_05.png" alt="也許你會喜歡" style="width: 100%">


            <div class="timelineup" style="top: 10%;">


                <a onclick="GetCoupon('2018xmas6');">
                    <img class="go_bt" src="https://www.hawooo.com/images/ftp/20181129/santa3.png" alt="Santa" style="position: absolute; top: 65%; margin: auto; width: 23%; right: 6%;">
                </a>

                <a onclick="GetCoupon('2018xmas7');">
                    <img class="go_bt cloud_four" src="https://www.hawooo.com/images/ftp/20181129/santa2.png" alt="Santa" style="position: absolute; top: 65%; margin: auto; width: 7%; left: 6%;">
                </a>

            </div>
        </div>


        <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; list-style-type: none;">
            <div class="gift2 am-cf" style="width: 1000px;">
                <div id="div6" class="product_5_space">
                    <ul class="">

                        <asp:Repeater ID="rp8" runat="server">
                            <ItemTemplate>
                                <%--    <li class="am-fl hvr-float fire_product_4_box">--%>
                                <li class="am-fl hvr-float product_5_box"><a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                            class="lazyload am-img-responsive" />
                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                    </div>
                                    <h4 class="pname">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountprice">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span
                                            class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString() %></span>
                                    </p>
                                </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
        <!--也許你會喜歡結束-->
    </div>
    <!--活動辦法開始吧-->
    <div style="width: 100%; position: relative; width: 1100px; margin: 0 auto">
        <%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td bgcolor="#000000" class="note_title" style="padding-left: 100px; color: #f8d1dd">HaWooo 1111 Shopping Festival:<br />
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
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png"
            alt="hawooo.com" style="width: 100%;">
    </div>

    <input type="text" style="display:none" id="hd"/>


    <!--DK 三大類別tab用-->
    <%--  <script>
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
    </script>--%>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/bday.js"></script>
    <script type="text/javascript">


        $(function () {
            GetData();
            var url = location.search;
            if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
                var v = url.split('?')[1];
                v = v.split('=')[1];
                GoId(v);
            }
        });
        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };
        function GoId(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 500);

        };

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
                
                        $("#<%= litCount.ClientID %>").text(data.d);
                        var total = data.d * 100;
                        $("#<%= litTotal.ClientID %>").text(total);
                        //alert(data.d);
                        alert("'"+$("#hd").val()+"'");
                        //alert("Congrats! You found a Santa. 100 HaCoins Get!");
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

        function GetData() {
            var memberID = '<%= Session["A01"] %>';
           if (memberID !== '') {
               var d = "{'m':'" + memberID + "'}";
               $.ajax({
                   type: "post",
                   url: "2018xmas.aspx/GetCoinDt",
                   data: d,
                   contentType: "application/json;charset=utf-8",
                   dataType: "json",
                   success: function (data) {
                       $("#hd").val(data.d);
                   },
                   error: function () {
                      
                   }
               });
           }
           else {
               doLogin("2018xmas.aspx");
           }
       };

    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            //alert("The coupon code have been copied,please enter it when you get ready to pay.");
            alert("Successfully copied coupon code! Enter at check out.");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>

</asp:Content>
