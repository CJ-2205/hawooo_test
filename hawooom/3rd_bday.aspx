<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="3rd_bday.aspx.cs" Inherits="mobile_3rd_bday" %>

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
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_bday.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_flashsale.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="48hrs sale"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/kol.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="KOL"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/brand1.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Top brands"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_bday.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life1.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="life1"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life2.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="life2"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life3.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="life3"></a>
            </li>





        </ul>
    </div>
    <!--8大類別小選單再見-->
    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <img alt="週年慶" src="https://www.hawooo.com/images/ftp/20180918/edmm_01.png" style="float: left; display: block; width: 100%;" />

    </div>

    <!--flash sale開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <div class="am-fl">
            <h4 class="edm_title">
                <a href="3rd_flashsale.aspx">Flash Sale</a>
            </h4>
        </div>
        <div class="am-fr">
            <div id="countdown" style="height: 20px; padding-right: 10px"></div>

        </div>

    </div>

    <!--flash sale商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #C2BDC2">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">


            <div id="div1" style="max-width: 600px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">




                    <asp:Repeater ID="rp1" runat="server">
                        <ItemTemplate>


                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>" style="width: 100%;">
                                    <h4 class="pnamem"><%# Eval("WP02").ToString() %></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem" style="text-decoration: line-through">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span></p>

                                    <div style="width: 100%; position: relative; z-index: 51; margin: 0 auto">

                                        <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-tw/assets/bdabfee47e1a5950b144f1b3d14687b9.png" style="width: 100%">


                                        <div class="barstyle1">
                                            <div class="w3-container bar-white w3-round-xlarge" style="width: <%# FireCount(Convert.ToInt32(Eval("WP01").ToString()), Convert.ToInt32(Eval("SCOUNT").ToString()))+"%" %>; height: 26px; float: right;"></div>


                                            <%# FireCount(Convert.ToInt32(Eval("WP01").ToString()), Convert.ToInt32(Eval("SCOUNT").ToString())) >= 40 ? "" : " <img class=\"go_bt\" src=\"https://www.hawooo.com/images/ftp/20180918/burn2.png\" style=\"position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;\">" %>
                                            <span class="burn-text">已售出<%#  Convert.ToInt32(Eval("SCOUNT").ToString()) %>件</span>

                                        </div>
                                    </div>

                                </a>


                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>


            </div>
        </div>

    </div>

    <!--flash sale結束-->
    <!--折價券開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <a class="btnn " data-clipboard-text="bday20">
            <img alt="點我複製bday20" src="https://www.hawooo.com/images/ftp/20180918/voucher_m_01.png" style="float: left; display: block; width: 33.3%;" />
        </a>

        <a class="btnn " data-clipboard-text="bday30">
            <img alt="點我複製bday30" src="https://www.hawooo.com/images/ftp/20180918/voucher_m_02.png" style="float: left; display: block; width: 33.3%;" />
        </a>

        <a class="btnn " data-clipboard-text="bday50">
            <img alt="點我複製bday50" src="https://www.hawooo.com/images/ftp/20180918/voucher_m_03.png" style="float: left; display: block; width: 33.3%;" />
        </a>

    </div>
    <!--折價券結束-->
    <!--DK類別Beautiful Life開始-->

    <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
        <ul class="am-tabs-nav am-cf bar" id="tab1">
            <li class="am-active"><a href="#t1">Beautiful Life</a></li>
            <li class=""><a href="#t2">Facial Care</a></li>
            <li class=""><a href="#t3">Beauty Supplement</a></li>
            <li class=""><a href="#t4">Health Supplement</a></li>
        </ul>
        <div class="am-g">
            <a href="life1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/life1sm.png" width="100%" /></a>
        </div>
        <div class="am-tabs-bd">
            <div id="t1" class="am-tab-panel am-active">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_03m.png" %>' alt="Banner" style="width: 100%;" />
                    <div class="product-slider-content" id="tg1">

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

            </div>
            <div id="t2" class="am-tab-panel ">

                <section class="am-container product-info-wrapper container-suggested-slider">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_04m.png" %>' alt="Banner" style="width: 100%;" />
                    <div class="product-slider-content" id="tg2">

                        <ul class="am-cf">

                            <asp:Repeater ID="rp3" runat="server">
                                <ItemTemplate>
                                    <%--    <li class="am-fl hvr-float fire_product_4_box">--%>

                                    <%--       <li class="more-products-slider-page p-style" style="border: none">--%>



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


                                    <%--          <li style="border: none; margin: 10px">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                            class="lazyload am-img-responsive" />
                                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                    </div>
                                                    <h4 class="pname">
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>

                                                    <p class="discountprice">
                                                        RM
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>

                                                </a>
                                            </li>--%>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </section>
            </div>
            <div id="t3" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg3">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp4" runat="server">
                                <ItemTemplate>
                                    <%--    <li class="am-fl hvr-float fire_product_4_box">--%>

                                    <%--       <li class="more-products-slider-page p-style" style="border: none">--%>



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


                                    <%--          <li style="border: none; margin: 10px">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                            class="lazyload am-img-responsive" />
                                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                    </div>
                                                    <h4 class="pname">
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>

                                                    <p class="discountprice">
                                                        RM
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>

                                                </a>
                                            </li>--%>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </section>
            </div>
            <div id="t4" class="am-tab-panel ">

                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg4">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp5" runat="server">
                                <ItemTemplate>
                                    <%--    <li class="am-fl hvr-float fire_product_4_box">--%>

                                    <%--       <li class="more-products-slider-page p-style" style="border: none">--%>



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


                                    <%--          <li style="border: none; margin: 10px">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                            class="lazyload am-img-responsive" />
                                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                    </div>
                                                    <h4 class="pname">
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>

                                                    <p class="discountprice">
                                                        RM
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>

                                                </a>
                                            </li>--%>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </div>


    <!--DK類別Elegant Life開始-->

    <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
        <ul class="am-tabs-nav am-cf bar" id="tab1">

            <li class="am-active"><a href="#t1">Elegant Life</a></li>
            <li class=""><a href="#t2">Lingeires</a></li>
            <li class=""><a href="#t3">Bags & Shoes</a></li>
            <li class=""><a href="#t4">Hair style</a></li>

        </ul>
        <div class="am-g">
            <a href="life2.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/life2sm.png" width="100%" /></a>
        </div>
        <div class="am-tabs-bd">
            <div id="t1" class="am-tab-panel am-active">

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
            <div id="t2" class="am-tab-panel ">

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
            <div id="t3" class="am-tab-panel ">
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

            <div id="t4" class="am-tab-panel ">
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
        </div>
    </div>


    <!--DK類別Easy Life開始-->

    <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
        <ul class="am-tabs-nav am-cf bar" id="tab1">

            <li class="am-active"><a href="#t1">Easy Life</a></li>
            <li class=""><a href="#t2">Personal Care</a></li>
            <li class=""><a href="#t3">Bath & Body</a></li>
            <li class=""><a href="#t4">Mom & Baby</a></li>
            <li class=""><a href="#t5">Food</a></li>

        </ul>
        <div class="am-g">
            <a href="life3.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/life3sm.png" width="100%" /></a>
        </div>
        <div class="am-tabs-bd">
            <div id="t1" class="am-tab-panel am-active">

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
            <div id="t2" class="am-tab-panel ">

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
            <div id="t3" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg11">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp12" runat="server">
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

            <div id="t4" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg12">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp13" runat="server">
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

            <div id="t5" class="am-tab-panel ">
                <section class="am-container product-info-wrapper container-suggested-slider">
                    <div class="product-slider-content" id="tg13">
                        <ul class="am-cf">

                            <asp:Repeater ID="rp14" runat="server">
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


    <!--celebrities' choice開始-->

    <style>
        .shopmore {
            padding: 5px;
            padding-top: 15px;
            display: flex;
            font-size: 14px;
        }
    </style>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">

        <a href="kol.aspx">
            <div class="am-g">
                <div class="am-fl">
                    <h4 class="edm_title">Celebrities' choice</h4>
                </div>
                <dic class="am-fr">
                    <span class="shopmore">Shop more</span>
                </dic>
            </div>


            <img alt="KOL" src="https://www.hawooo.com/images/ftp/20180918/KOL_m.png" style="float: left; display: block; width: 100%;" />
        </a>

    </div>


    <!--Brands開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <a href="brand1.aspx">

            <div class="am-g">
                <div class="am-fl">
                    <h4 class="edm_title">Highlighted Brands</h4>
                </div>
                <dic class="am-fr">
                    <span class="shopmore">Shop more</span>
                </dic>
            </div>
        </a>

    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #999">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div style="position: relative; max-width: 600px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">



                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=208" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_01.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Dr. Cink</h4>
                            <h4 class="brand_logo_slogan">Up to 67% off<br>
                                + Free Gift（RM400）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_01.png" alt="Dr.cink" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=115" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_35.png" style="width: 100%;">
                            <h4 class="brand_logo_text">ANRIEA艾黎亞</h4>
                            <h4 class="brand_logo_slogan">Up to 45% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_35.png" alt="ANRIEA艾黎亞" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=239" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_02.png" style="width: 100%;">
                            <h4 class="brand_logo_text">userISM</h4>
                            <h4 class="brand_logo_slogan">Up to 55% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_02.png" alt="userISM" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=235" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_16.png" style="width: 100%;">
                            <h4 class="brand_logo_text">DV 笛絲薇夢</h4>
                            <h4 class="brand_logo_slogan">10% off Storewide</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_16.png" alt="DV 笛絲薇夢" />
                            </div>
                        </a>

                    </li>


                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=51" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_15.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Beauty Shop</h4>
                            <h4 class="brand_logo_slogan">Up to 52% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_15.png" alt="Beauty Shop" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=263" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_23.png" style="width: 100%;">
                            <h4 class="brand_logo_text">TOKICHOI</h4>
                            <h4 class="brand_logo_slogan">Up to 30% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_23.png" alt="TOKICHOI 東京著衣" />
                            </div>
                        </a>

                    </li>


                </ul>


            </div>
        </div>

    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <a href="brand1.aspx">
            <img alt="more brands" src="https://www.hawooo.com/images/ftp/20180918/morebrand_m.png" style="float: left; display: block; width: 100%;" />
        </a>

    </div>




    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">You May Like..</h4>
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

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" class="note_title">HaWooo 3rd Birthday Sale:<br>
                        1. Promotion Date：<br>
                        <span class="note_white">•  Round 1: Now - September 30, 2018<br>
                            •  Round 2: October 1-18, 2018
                        </span>
                        <br>
                        <br>
                        2. Promotion Description<br>
                        <span class="note_white">•  FLASH SALE<br>
                            Limited time - valid for 48 hours only, according to checkout time<br>
                            Limited quantity - ends when all products are sold out<br>
                            •  Coupon<br>
                            Spend RM190 and get RM20 off - use promo code "bday20"<br>
                            Spend RM250 and get RM30 off - use promo code "bday30"<br>
                            Spend RM390 and get RM50 off - use promo code "bday50"<br>
                        </span>

                        3.  Notice：<br>
                        <span class="note_white">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN and FLASH SALE products.<br>
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                        <br>
                    </td>

                    <td width="5%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>
    <!--頁面END-!>



     <!--倒數計時用的-->
    <!-- JavaScript includes -->

    <script src="assets/countdown/jquery.countdown.js"></script>
    <script>
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

    </script>
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


        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
    <script src="../user/assets/js/bday.js"></script>
</asp:Content>

