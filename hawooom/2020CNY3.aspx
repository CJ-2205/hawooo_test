<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020CNY3.aspx.cs" Inherits="mobile_static_2020CNY3" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY3.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .maybe-like-block h3 {
            color: #565656 !important;
            font-size: 12px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/coupon_01m.png" %>' alt="coupon_01" />
                </li>
                <li>
                    <a id="coupon1" data-clipboard-text="CNY8" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/coupon_02m.png" %>' alt="coupon_02" />
                    </a>
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>

        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
        </div>

        <%--======================= Slider1 Top30 Start =========================--%>

        <section class="am-margin-top-sm" id="s1">
            <div class="banner-box1">
                <a href="2020CNY3_top30.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>

            </div>
            <div class="mb-slider-product slider-block1">
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020CNY3_top30.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider1 Top30  End============================--%>

        <%--======================= Slider2 HW_recommendation Start ================--%>

        <section class="am-margin-top-sm" id="s2">
            <div class="banner-box1">
                <a href="2020CNY3_HW_recommendation.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_04m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>

            </div>
            <div class="mb-slider-product slider-block2">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020CNY3_HW_recommendation.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider2 HW_recommendation End ====================--%>

        <%--====================Highlighted Brands Start ==========================--%>

        <section>
            <div class="banner-box am-margin-top-sm" id="s3">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_05m.png" %>' alt="bn_05m" style="width: 100%;" />
                </a>
            </div>

            <div class="goods-3items-mb" id="logo">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='https://www.hawooo.com/mobile/brand_1.aspx?bid=<%# Eval("B01").ToString() %>' target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis">-<%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("-","") %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands  End=========================--%>




        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

        <section class="am-margin-top-sm" id="s4">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_06m.png" %>' alt="bn_07m" />
            </div>

            <div class="float-menu">
                <ul class="am-nav">
                    <li class="is-active" id="tab1"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_01m.png" %>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4" id="product-make4">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />

                    </ul>
                </div>
            </div>

        </section>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


        <%--=====================錨點連結區2   Start  ==============================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                    <li class="is-active" id="tab2"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_02m.png" %>' alt="c_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />

                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區2  End ============================--%>

        <%--=====================錨點連結區3  Start============================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                    <li class="is-active" id="tab3"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_03m.png" %>' alt="c_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />

                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                    <li class="is-active" id="tab4"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_04m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Star t==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                    <li class="is-active" id="tab5"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_05m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區5  End ==========================--%>

        <%--=====================錨點連結區7  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                    <li class="is-active" id="tab7"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_07m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區7  End ==========================--%>

        <%--=====================錨點連結區8  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                    <li class="is-active" id="tab8"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_08m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區8  End ==========================--%>
        <%--===================== You May Also Like...  Start====================--%>

        <section class="am-margin-vertical-sm am-padding-bottom-lg maybe-like-block">
            <h3 class="am-margin-bottom-0 am-padding-left-xs" style="color:#ffffff">You May Also Like...</h3>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products10" />

                    </ul>

                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method">
            <div class="am-padding-xl">
                <div class="am-container">
                    <p>
                        Terms & Conditions<br />
                        Happy CNY Sale<br />
                        1.Promotion date : 21st January 2020 - 28th January 2020<br />
                        2.Promotion Coupon:<br />
                    </p>

                    <div class="indent">
                        <ul>
                            <li>Spend 300 & Above, get extra 8% OFF , use code [ CNY8 ]</li>
                        </ul>
                    </div>
                    <p>
                        3.Gift with purchase
                    </p>

                    <div class="indent">
                        <ul>
                            <li>Free New year card with every purchase</li>
                            <li>Free hand-painted Calendar with min spend RM380 (limited 200 pcs)</li>
                            <li>Free Paphiopedilum Revitalizing Serum 8ml + Mask 1 pc with min spend RM480 (limited 100 pcs)</li>
                        </ul>
                    </div>
                    <p>
                        4.Coupon is APPLICABLE on selected Flagship Stores , including <b class="brands-txt">DV, DV Tokyo ,Enjoy The Life, Dr. Morita, Paradiso Garden, Grandmotherapy, I.vita, Cest V'rai, Hsu's, Laler, Choyer. 
                        </b>
                    </p>
                    <p>
                        5.Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Happy CNY Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
                    </p>
                </div>
            </div>

        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar am-g am-g-collapse">

        <ul class="am-avg-sm-3">
            <li onclick="goto('top')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
            </li>
            <li onclick="goto('s1')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
            </li>
            <li onclick="goto('s2')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
            </li>
            <li onclick="goto('top')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
            </li>
            <li onclick="goto('s3')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
            </li>
            <li onclick="goto('s4')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
            </li>
        </ul>
    </div>

    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");
            $(".category-bn-group li,.also-like-block li").attr("class", "am-fl hvr-float");

            ChangeHref();
            setThem();
            hiddenFooterMenu();
            putimg();
        });

        function ChangeHref() {
            $('#s1 a').attr({
                "href": "2020CNY3_top30.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "2020CNY3_HW_recommendation.aspx",
                "target": "_blank"
            });

        }

        function setThem() {
            var i;
            var cnt = 11; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
                        //autoplay: {
                        //    delay: 5000,
                        //},
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },
                        breakpoints: {
                            640: {
                                slidesPerView: 2.2,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };

        var brandNo = [208, 307, 373, 407, 235, 345, 283, 72, 222, 450];
        function putimg() {
            for (i = 0; i < 10; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200121/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }
        };

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };




        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>

