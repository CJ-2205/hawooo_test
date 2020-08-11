<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20181111.aspx.cs" Inherits="mobile_20181111" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="assets/countdown/jquery.countdown.css?v=4" rel="stylesheet" />
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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--8大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="20181111.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">
                <a href="20181111preorder.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="48hrs sale"></a>
            </li>

            <li class="am-fl">
                <a href="20181111redenvelope.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="KOL"></a>
            </li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoId('p1')">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Top brands"></a>
            </li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoId('p2')">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">
                <%--     <a href="javascript:void(0)" onclick="GoId('p3')">--%>
                <a href="20181111brand.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="life1"></a>
            </li>

            <li class="am-fl">
                <a href="20181111rank.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="life2"></a>
            </li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoTop()">
                    <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="life3"></a>
            </li>


        </ul>
    </div>
    <!--8大類別小選單再見-->
    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;">
        <a href="20181111redenvelope.aspx">
            <img alt="週年慶" src="https://www.hawooo.com/images/ftp/20181101/mh_01.gif" id="bn" style="float: left; display: block; width: 100%;" />
        </a>
    </div>


    <!--flash sale結束-->
    <!--折價券開始-->
    <%--<div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">--%>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;" id="p1">
        <a onclick="alert('Only 2,000 quota ,1 for each order on 1/11-10/11');">
            <img src="https://www.hawooo.com/images/ftp/20181101/mh_coupon_01.png" style="float: left; display: block; width: 50%;" id="mp1" />
        </a>
        <a class="btnn " data-clipboard-text="SF30">
            <img alt="Coupon1" src="https://www.hawooo.com/images/ftp/20181101/mh_coupon_02.png" style="float: left; display: block; width: 50%;" />
        </a>
        <a class="btnn " data-clipboard-text="SF40">
            <img alt="Coupon2" src="https://www.hawooo.com/images/ftp/20181101/mh_coupon_03.png" style="float: left; display: block; width: 50%;" />
        </a>
        <a class="btnn" id="only11">
            <img alt="Coupon3" src="https://www.hawooo.com/images/ftp/20181101/mh_coupon_04.png" style="float: left; display: block; width: 50%;" id="mp11" />
        </a>

    </div>
    <!--折價券結束-->
    <!--折扣券下方兩BN-->
    <div>
        <a href="20181111rank.aspx">
            <img src="https://www.hawooo.com/images/ftp/20181101/mrk_home_bn.png" alt="RK" style="width: 100%; float: left;">
        </a>
        <a href="20181111preorder.aspx">
            <img src="https://www.hawooo.com/images/ftp/20181101/m24_home_bn.png" alt="24" style="width: 100%; float: left;">
        </a>
    </div>
    <!--DK類別Beautiful Life開始-->

    <a href="20181111sales.aspx?did=1">
        <img id="p2" src="https://www.hawooo.com/images/ftp/20181101/mb1f1_home_bn.png" alt="mb1f1_home_bn" style="width: 100%; float: left;">
    </a>
    <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
        <ul class="am-tabs-nav am-cf bar" id="tab1">
            <%--<li class="am-active"><a href="#t1">Beautiful Life</a></li>
            <li class=""><a href="#t2">Facial Care</a></li>
            <li class=""><a href="#t3">Beauty Supplement</a></li>
            <li class=""><a href="#t4">Health Supplement</a></li>
            <li class=""><a href="#t41">Health Supplement</a></li>--%>
        </ul>

        <div class="am-tabs-bd">
            <div id="t1" class="am-tab-panel am-active">
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
            </div>
        </div>
    </div>


    <!--DK類別Elegant Life開始-->
    <a href="20181111sales.aspx?did=2">
        <img src="https://www.hawooo.com/images/ftp/20181101/mup_home_bn.png" alt="mup_home_bn" style="width: 100%; float: left;">
    </a>
    <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
        <ul class="am-tabs-nav am-cf bar" id="tab2">
               <li class="am-active"><a href="#t8">Supplements</a></li>
             <li class=""><a href="#t7">Skincare</a></li>
             <li class=""><a href="#t6">Makeup</a></li>
            <li class=""><a href="#t5">Fashion&Lingeries</a></li>         
            <li class=""><a href="#t9">Home&Living</a></li>
            <li class=""><a href="#t10">Food</a></li>
        </ul>

        <div class="am-tabs-bd">

                  <div id="t8" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg8">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp9" runat="server">
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
            </div>
                        <div id="t7" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg7">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp8" runat="server">
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
            </div>
            <div id="t6" class="am-tab-panel ">

                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg6">
                        <ul class="am-cf">
                            <asp:Repeater ID="rp7" runat="server">
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
            </div>

                  <div id="t5" class="am-tab-panel am-active">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg5">
                        <ul class="am-cf">
                            <asp:Repeater ID="rp6" runat="server">
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
            </div>
            <div id="t9" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg9">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp10" runat="server">
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
            </div>
            <div id="t10" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg10">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp11" runat="server">
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
            </div>
        </div>
    </div>


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

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; background-color: #999" id="p3">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div style="position: relative; max-width: 600px; margin: 0 auto;">
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
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>


            </div>
        </div>

    </div>


    <%--    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;  background-color: #eee">
        <a href="brand1.aspx">
            <img alt="more brands" src="https://www.hawooo.com/images/ftp/20181101/morebrand_m.png" style="float: left; display: block; width: 100%;" />
        </a>

    </div>--%>




    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; background-color: #eee">
        <h4 class="edm_title">You may also like…</h4>
    </div>
    <!--也許你會喜歡-->
    <section class="am-container" id="pnews" runat="server" style="background-color: #C2BDC2; padding-bottom: 5px;">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">


            <ul class="am-cf">
                <asp:Repeater ID="rp15" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">

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
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
        </table>

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

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

        //var date1 = new Date('2018-11-11T00:00:00Z');
        //var date2 = new Date('2018-11-12T00:00:00Z');
        var date1 = new Date('2018-11-09T00:00:00Z');
        var date2 = new Date('2018-11-10T00:00:00Z');


        var today = new Date();

        $(function () {

            var a = "onclick";
            var v = "alert('Coupon available at 11/11')";

            if (date1 <= today && today < date2) {
                a = "data-clipboard-text";
                v = "SF111"
            }
            $("#only11").attr(a, v);

            if (today >= date1) {
                $("#bn").attr("src", "https://www.hawooo.com/images/ftp/20181101/mchange_01.gif");
                $("#mp1").attr("src", "https://www.hawooo.com/images/ftp/20181101/mchange_02.png");
                $("#mp11").attr("src", "https://www.hawooo.com/images/ftp/20181101/mchange_03.png");

            }


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
    </script>
</asp:Content>

