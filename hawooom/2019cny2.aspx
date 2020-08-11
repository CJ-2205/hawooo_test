<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="2019cny2.aspx.cs" Inherits="mobile_2019cny2" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        img {
            width: 100%;
        }

        .cny-header {
            position: relative;
            background-color: #f9cfa7;
        }

        .cny-coupon {
            position: absolute;
            margin: auto;
            /*bottom: 2%;*/
            width: 70%;
            left: 0;
            right: 0;
            top: 50%;
        }


        .cny-container {
            position: relative;
            background-color: #f9cfa7;
        }

        .cny-product-group {
            position: relative;
            background-color: #f9cfa7;
        }

            .cny-product-group .product-info-wrapper {
                background-color: #AE160A;
                z-index: 2;
                position: relative;
            }

            .cny-product-group .color-bar {
                background-color: #AE160A;
                height: 40%;
                width: 100%;
                position: absolute;
                top: 15%;
            }

            .cny-product-group ul {
                background-color: #AE160A;
            }

                .cny-product-group ul li {
                    margin-right: 5px;
                    background-color: #ffffff;
                }

        .cny-event {
            position: relative;
        }

            .cny-event div {
                padding: 5px 10px;
            }

        .cny-brand {
            position: relative;
            width: 100%;
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
            position: relative; /*padding: 0px 30px;*/
            z-index: 2;
            float: none !important;
        }

            .brand-list li {
                position: relative;
                padding: 5px;
                margin: auto;
                left: 0;
                right: 0;
                text-align: center;
                width: 50% !important;
                border: none !important;
            }

            .brand-list .brand {
                padding: 5px;
                background-color: white;
            }

        .brand-img img {
            width: 100%;
        }

        .brand-logo img {
            width: 30% !important;
            position: absolute;
            margin: 0 auto !important;
            left: 0;
            right: 0; /*top: 245px;*/ /*top: 43%;*/ /*top: 50%;*/
            top: 45%;
            border: 2px solid #ffff;
            z-index: 5;
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
                /*font-size: 14px;*/
                font-size: 12px;
                line-height: 18px;
                color: #979697;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            }

        .like-list li {
            width: calc(50% - 10px) !important; /*height: 465px;*/
        }

        .product-slider-content img {
            max-width: 150px;
        }

        .product-slider-content {
            background: white;
            max-height: 270px;
            overflow: auto;
        }

            .product-slider-content img {
                max-width: 150px;
                padding-top: 5px;
            }

        .product-slider-text {
            max-width: 150px;
            padding: 5px 0 0 0;
            margin: 0;
        }

        .product-slider-content li {
            position: relative;
            padding: 0 5px; /*margin: 10px 0;*/
            margin: 5px 0;
            border-right: 1px solid #eaeaea;
        }


        .note_white {
            color: white;
        }

        .product-slider-content img {
            padding-top: 0px;
        }

        .product-items-tag {
            padding: 3px 4px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: middle;
            border-radius: 12px;
        }


        [data-am-widget=tabs] {
            margin: 0px;
        }



        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
                padding: 0 15px;
                background-color: #C9C5C9 !important;
            }



            /*.am-tabs-d2 .am-tabs-nav > .am-active {
                background-color: #C9C5C9 !important;
            }*/



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
            background-color: #AE160A;
        }



        .bar::-webkit-scrollbar {
            display: none;
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

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
            text-decoration: line-through;
        }

        /*基本設定*/




        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252 !important;
        }

        .discountprice {
            color: #EE5984;
            /*font-size: 18px;*/
            font-size: 15px;
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

        /*.am-tabs-nav {
            background-color: #C9C5C9 !important;
        }*/

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
    <div style="width: 100%">
        <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 120px; padding: 0;">
            <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
                <li class="am-fl"><a href="2019cny.aspx">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_01.png"
                        style="width: 100%; max-height: 100px;" alt="main page"></a> </li>
                <li class="am-fl"><a href="2019cny_flashsale.aspx">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_02.png"
                        style="width: 100%; max-height: 100px;" alt="Flash sale"></a> </li>
                <li class="am-fl"><a href="2019cnybuy2.aspx?did=1">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_03.png"
                        style="width: 100%; max-height: 100px;" alt="beauty"></a> </li>
                <li class="am-fl"><a href="2019cnybuy2.aspx?did=2">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_04.png"
                        style="width: 100%; max-height: 100px;" alt="beauty"></a> </li>
                <li class="am-fl"><a href="2019cnybuy2.aspx?did=3">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_05.png"
                        style="width: 100%; max-height: 100px;" alt="beauty"></a> </li>
                <li class="am-fl"><a href="2019cnybuy2.aspx?did=4">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_06.png"
                        style="width: 100%; max-height: 100px;" alt="beauty"></a> </li>
                <li class="am-fl"><a href="2019cnybuy2.aspx?did=5">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_07.png"
                        style="width: 100%; max-height: 100px;" alt="beauty"></a> </li>
                <li class="am-fl"><a href="2019cnybuy2.aspx?did=6">
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/sidebarM_08.png"
                        style="width: 100%; max-height: 100px;" alt="beauty"></a> </li>
            </ul>
        </div>
        <div class="cny-header">
            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_01.png" />
            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_02.png" />
            <div class="cny-coupon">
                <ul class="am-avg-sm-2">
                    <li><a class="btnn " data-clipboard-text="19CNY20">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/coupon_1.png" />
                    </a></li>
                    <li><a class="btnn " data-clipboard-text="19CNY30">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/coupon_2.png" />
                    </a></li>
                    <li><a class="btnn " data-clipboard-text="19CNY50">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/coupon_3.png" />
                    </a></li>
                    <li><a class="btnn " data-clipboard-text="19CNY100">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/coupon_4.png" />
                    </a></li>
                </ul>
            </div>
        </div>
        <div class="cny-container">
            <section class="cny-product">
                <div class="cny-product-group">
                    <section>
                        <a href="2019cny_flashsale.aspx">
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_03.png" style="position: relative; z-index: 2" />
                        </a>
                    </section>
                    <section class="color-bar">
                    </section>


                    <section class="am-container product-info-wrapper container-suggested-slider">
                        <div class="product-slider-content" id="tg0">
                            <ul class="am-cf" style="">
                                <asp:Repeater ID="rp1" runat="server">
                                    <ItemTemplate>

                                        <li class="am-fl">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:2px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                <div class="product-slider-text">
                                                    <h3 class="pname">
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    <%-- <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>--%>
                                                    <div class="discountprice">
                                                        <span class="am-fl" style="letter-spacing: -2px;">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                        <span class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                 <%--   <p class="am-fr">
                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    </p>--%>
                                                    <%--     <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                        </p>
                                                    </div>--%>
                                                    <div style="width: 100%; position: relative; z-index: 51; margin: 10px auto">
                                                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/test/orangebar.png" %>'
                                                            style="width: 100%">
                                                        <div class="barstyle">
                                                            <div class="w3-container bar-white w3-round-xlarge" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>; height: 100%; float: right; height: 30px; margin-top: 20px">
                                                            </div>
                                                            <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())) >= 40 ? "" : " <img class=\"go_bt\" src=\"https://www.hawooo.com/images/ftp/20180918/burn2.png\" style=\"position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;\">" %>
                                                            <span class="burn-text">Sold
                                                    <%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()) + Convert.ToInt32(Eval("SCOUNT").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ? Convert.ToInt32(Eval("SPD06").ToString()) : Convert.ToInt32(Eval("SPD07").ToString()) + Convert.ToInt32(Eval("SCOUNT").ToString())%>
                                                            </span>

                                                        </div>
                                                    </div>
                                            </a>
                                        </li>


                                        <%--                                        <li>
                                            <div class="pitem">
                                      

                                            <a href='<%# "productdetail.aspx?id="+Eval("WP01")%>'>

                                                <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                    <img src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:2px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </div>
                                                <h4 class="pname">
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <div class="discountprice">
                                                    <span class="am-fl" style="letter-spacing: -2px;">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    </span>
                                                    <span class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span>
                                                </div>
                                                <div style="width: 100%; position: relative; z-index: 51; margin: 10px auto">
                                                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/test/orangebar.png" %>'
                                                        style="width: 100%">
                                                    <div class="barstyle">
                                                        <div class="w3-container bar-white w3-round-xlarge" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>; height: 100%; float: right; height: 30px; margin-top: 20px">
                                                        </div>
                                                        <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())) >= 40 ? "" : " <img class=\"go_bt\" src=\"https://www.hawooo.com/images/ftp/20180918/burn2.png\" style=\"position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;\">" %>
                                                        <span class="burn-text">Sold
                                                    <%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()) + Convert.ToInt32(Eval("SCOUNT").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ? Convert.ToInt32(Eval("SPD06").ToString()) : Convert.ToInt32(Eval("SPD07").ToString()) + Convert.ToInt32(Eval("SCOUNT").ToString())%>
                                                        </span>


                                                    </div>
                                                </div>

                                            </a>
                                              </div>
                                        </li>--%>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </section>
                </div>

                <div class="cny-product-group">

                    <section class="color-bar">
                    </section>
                    <section class="am-container product-info-wrapper container-suggested-slider">

                        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                            <ul class="am-tabs-nav am-cf bar" id="tab1">
                                <li class="am-active"><a href="#t1">CNY Deal</a></li>
                                <li class=""><a href="#t2">Skin care</a></li>
                                <li class=""><a href="#t3">Cosmetic</a></li>
                                <li class=""><a href="#t4">Nail Art</a></li>
                            </ul>
                            <%--  <section>--%>
                            <div class="am-g">
                                <a href="2019cnybuy2.aspx?did=1">
                                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_04.png" style="position: relative; z-index: 2" />
                                </a>
                            </div>
                            <%--   </section>--%>
                            <%--  <div class="am-g">
                                <a href="life1.aspx">
                                    <img src="https://www.hawooo.com/images/ftp/20180918/life1sm.png" width="100%" /></a>
                            </div>--%>


                            <div class="am-tabs-bd">
                                <div id="t1" class="am-tab-panel am-active">
                                    <section class="am-container product-info-wrapper container-suggested-slider">
                                        <div class="product-slider-content" id="tg1">
                                            <ul class="am-cf">

                                                <asp:Repeater ID="rp2_1" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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
                                        <div class="product-slider-content" id="tg2">
                                            <ul class="am-cf">

                                                <asp:Repeater ID="rp2_2" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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
                                        <div class="product-slider-content" id="tg3">
                                            <ul class="am-cf">

                                                <asp:Repeater ID="rp2_3" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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
                                        <div class="product-slider-content" id="tg4">
                                            <ul class="am-cf">

                                                <asp:Repeater ID="rp2_4" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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

                    </section>
                </div>

                <div class="cny-product-group">
                    <%--  <section>
                        <a href="2019cnybuy2.aspx?did=2">
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_05.png" style="position: relative; z-index: 2" />
                        </a>
                    </section>--%>
                    <section class="color-bar">
                    </section>
                    <section class="am-container product-info-wrapper container-suggested-slider">

                        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                            <ul class="am-tabs-nav am-cf bar" id="tab2">
                                <li class="am-active"><a href="#t5">For Beauty</a></li>
                                <li class=""><a href="#t6">For Slimming</a></li>
                                <li class=""><a href="#t7">For Body</a></li>
                                <li class=""><a href="#t8">For Health</a></li>
                            </ul>
                            <%--   <section>--%>
                            <div class="am-g">
                                <a href="2019cnybuy2.aspx?did=2">
                                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_05.png" style="position: relative; z-index: 2" />
                                </a>
                            </div>
                            <%-- </section>--%>


                            <div class="am-tabs-bd">
                                <div id="t5" class="am-tab-panel am-active">
                                    <section class="am-container product-info-wrapper container-suggested-slider">
                                        <div class="product-slider-content" id="tg5">
                                            <ul class="am-cf">

                                                <asp:Repeater ID="rp3_1" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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

                                                <asp:Repeater ID="rp3_2" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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

                                                <asp:Repeater ID="rp3_3" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
                                                                    </div>
                                                            </a>
                                                        </li>


                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </section>
                                </div>
                                <div id="t8" class="am-tab-panel ">

                                    <section class="am-container product-info-wrapper container-suggested-slider">
                                        <div class="product-slider-content" id="tg8">
                                            <ul class="am-cf">

                                                <asp:Repeater ID="rp3_4" runat="server">
                                                    <ItemTemplate>

                                                        <li class="am-fl">
                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                <div class="product-slider-text">
                                                                    <h3>
                                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                                    <p class="am-fr">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </p>
                                                                    <div class="product_item_block am-cf">
                                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                                        </p>
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

                    </section>
                </div>
            </section>
            <section class="cny-event">
                <div>
                    <a href="2019cnybuy2.aspx?did=3">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/section_4small.png" />
                    </a>
                </div>
                <div>
                    <a href="2019cnybuy2.aspx?did=4">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/section_5small.png" />
                    </a>
                </div>
                <div>
                    <a href="2019cnybuy2.aspx?did=5">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/section_6small.png" />
                    </a>
                </div>
                <div>
                    <a href="2019cnybuy2.aspx?did=6">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/section_7small.png" />
                    </a>
                </div>
            </section>
            <%--        <section class="cny-brand">
                <div>
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_06.png" />
                </div>
            </section>--%>
            <section class="cny-brand">
                <div>
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_06.png" />
                </div>
                <div class="cny-brand-header-bar">
                    <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=208">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/brand_1small.png" />
                    </a>
                    <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=235">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/brand_2small.png" />
                    </a>
                </div>

                <div class="cny-brand-container">
                    <ul class="am-avg-sm-2 brand-list">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="brand">
                                        <a href='<%#"https://www.hawooo.com/mobile/brand_1.aspx?bid="+ Eval("BID") %>' target="_blank">
                                            <div class="brand-img">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"]+ "ftp/20190115/"+Eval("IMG")+".png" %>' />
                                            </div>
                                            <div class="brand-logo">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"]+ "ftp/20190115/"+Eval("LOGO")+".png" %>' />
                                            </div>
                                            <div class="brand-note">
                                                <p class="name">
                                                    <%# Eval("NAME") %>
                                                </p>
                                                <p class="note">
                                                    <%# Eval("NOTE") %>
                                                </p>
                                            </div>

                                        </a>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>



                <div class="cny-product-group">
                    <section>
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190115/edmm_07.png" style="position: relative; z-index: 2" />
                    </section>
                    <%--     <section class="color-bar">
                    </section>--%>
                    <section>
                        <div>
                            <%--          <ul class="am-cf am-avg-sm-2  brand-list" style="background-color: #f9cfa7">--%>
                            <ul class="am-cf box  like-list" style="background-color: #f9cfa7; padding: 0">
                                <asp:Repeater ID="rpLike" runat="server">
                                    <ItemTemplate>

                                        <li class="am-fl" style="margin: 5px; padding: 2px">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <div class="product-slider-text" style="max-width: 100%; text-align: left">
                                                    <h3>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    <h4 style="font-size: 12px">RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                    <p class="am-fr" style="line-height: 25px">
                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    <p>
                                                        <div class="product_item_block am-cf">
                                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                            <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                <%--          <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>--%>
                                                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WPT06") %></span>
                                                            </p>
                                                        </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </section>
                </div>


            </section>
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#000000"></td>
                            <%--     <td width="90%" bgcolor="#000000" class="note_title">HaWooo CNY Sale:<br>--%>
                            <td width="90%" bgcolor="#000000" class="note_white" style="padding: 15px">HaWooo CNY Sale:<br>
                                1.Promotion Date：<br>
                                <span class="note_white">•Chapter I ： 3 Jan- 14 Jan, 2019
                                    <br>
                                    •Chapter II ：15 Jan- 25 Jan, 2019
                                    <br>
                                    •Chapter III： 26 Jan- 7 Feb, 2019
                                    <br>
                                </span>
                                <br>
                                <%--   <br>--%>
                                2.Promotion Description<br>
                                <span class="note_white">•FLASH SALE<br>
                                    Limited time - valid for 72 hours only<br>
                                    Limited quantity - ends when all products are sold out<br>
                                    •Coupon (Chapter I &amp;II)<br>
                                    Spend RM188 and get RM20 off - use promo code "19CNY20"
                                    <br>
                                    Spend RM288 and get RM30 off - use promo code "19CNY30"
                                    <br>
                                    Spend RM388 and get RM50 off - use promo code "19CNY50"
                                    <br>
                                    Spend RM688 and get RM100 off - use promo code "19CNY100"
                                    <br>
                                </span>
                                <br>
                                <%--   <br>--%>
                                3.Notice：<br>
                                <span class="note_white">※ Promo codes are not applicable to the following brands/products:
                                    DV, ANRIEA, BHK's, DR.CINK, Dr.Lady, UNIQMAN,H&amp;J and FLASH SALE products.
                                    <br>
                                    ※ All brand &amp; category promotion activities are not applicable to FLASH SALE
                                    products. </span>
                                <br>
                            </td>
                            <td width="5%" bgcolor="#000000"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <img alt="footer" src=" <%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20171219/bhk/footerM.png"
                style="float: left; display: block; width: 100%;" />
        </div>
    </div>

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
    <script>

        // 自動偵測長度 only use in ul and li

        // thisli = li's length. i > margin or something

        $(function () {
            for (i = 0; i <= 8; i++) {
                detectLength($("#tg" + i + " li"), 5);
            };
            $("#footermenu").remove();
            //$("#footermenu").css("display", "none");
        });

        function detectLength(thisli, i) {

            var licount = $(thisli).length;

            var liWidth = $(thisli).outerWidth() + i;

            var litotalWidth = licount * liWidth;

            $(thisli).parent("ul").css("width", litotalWidth);

        };
    </script>
</asp:Content>
