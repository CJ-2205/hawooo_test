<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020momsday2.aspx.cs" Inherits="mobile_static_2020momsday2" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/scss/events_style.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #s1 li, #s2 li {
            border: 1px dashed #F2F2F2;
        }

        .mb-coupon li {
            padding: 2.5px;
        }

        select {
            height: 23px;
            /*-webkit-appearance: none;*/
        }
    </style>
    <div class="am-g main-contain" id="top" style="background: #FFE8E9;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_01m.png"%>' alt="main-banner" />
        </div>

        <div class="am-margin-top-lg">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_07m.png"%>' alt="main-banner" />
        </div>
        <!--領取折扣券 (Start)====================================================-->

        <div style="background: #fff; padding: 2.5px;">
            <ul class="am-avg-sm-2 mb-coupon">
                <li>
                    <a class="btnn " data-clipboard-text="MOM25">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_01.png"%>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a class="btnn " data-clipboard-text="MOM35">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_02.png"%>' alt="coupon_02" />
                    </a>
                </li>
                <li>
                    <a class="btnn " data-clipboard-text="MOM55">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_03.png"%>' alt="coupon_03" />
                    </a>
                </li>
                <li>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_04.png"%>' alt="coupon_04" />
                </li>
            </ul>
        </div>

        <!--領取折扣券 (End) ====================================================-->

        <!--Block1 (Start) =====================================================-->
        <section class="am-margin-vertical" id="s1">
            <div>
                <a href="2020momsday2_hot_deal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_02m.png"%>' alt="bn_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider" style="background: #fff;">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="2020momsday2_hot_deal.aspx" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="am-padding-vertical am-margin-bottom" style="background: #fff;">
                <a class="am-u-sm-5 am-block am-u-sm-centered" href="2020momsday2_hot_deal.aspx" target="_blank">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" alt="more" />
                </a>
            </div>
        </section>
        <!--Block1 (End) ======================================================-->

        <!--Block2 預購前 (Start) ========================================-->
        <asp:Panel runat="server" ID="before_preorder" Visible="false">
            <section class="am-margin-bottom" id="s2">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_00m.png"%>' alt="bn_00m" style="width: 100%;" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm preorder-items-wrapper" id="block2">
                    <div class="am-text-center clock">
                        <div>
                            <span id="content"></span>
                            <h2 class="am-padding-right-xs">5/5-9/5 : Add Items To Wishlist, 
                            <br>
                                10/5-11/5 : Check Out Your Cart</h2>
                            <h1 class="am-margin-top-0">
                                <span style="font-size: 12px!important; vertical-align: super;">Sale starts in</span>
                                <span class="clock-countdown">
                                    <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                                </span>
                            </h1>
                        </div>
                    </div>
                    <div class="mb-shop-block" style="background-color: white">
                        <ul class="am-avg-sm-2">
                            <li class="am-fl ">
                                <a>
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/q.png"%>' style="width: 100%;" />
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl ">
                                <a>
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/q.png"%>' style="width: 100%;" />
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </asp:Panel>
        <!--Block2 預購前 (End) ========================================-->

        <!--Block2 Preorder 預購中 (Start) ========================================-->
        <asp:Panel runat="server" ID="preorder" Visible="false">
            <section class="am-margin-bottom" id="s2">
                <div class="countdown">
                    <a href="2020momsday2_preorder.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/bn_03m.png" alt="bn_00m" style="width: 100%;" />
                        <div class="am-text-center countdown-info mb-countdown-info1">
                            <div>
                                <span id="content"></span>
                                <h2>5/5-9/5 : Add Items To Wishlist
                            <br>
                                    10/5-11/5:  Check Out Your Cart </h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="am-padding-bottom-sm preorder-items-wrapper" style="background: #fff;">

                    <ul class="am-avg-md-3 am-avg-sm-2">
                  
                        <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href="2020momsday2_preorder.aspx">
                                        <div class="resize-sm">
                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />

                                                <div class="tag" style="padding-top: 10px">
                                                    <%--       pre<br />
                                                    order<br />--%>
                                                    <span class="viewed">
                                                        <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                    <br />
                                                    Added
                                                </div>
                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);" Enabled="false"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty" Enabled="false"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>

                </div>
                <div class="am-padding-vertical am-margin-bottom-lg" style="background: #fff;">
                    <a class="am-u-sm-5 am-block am-u-sm-centered" href="2020momsday2_preorder.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" alt="more" />
                    </a>
                </div>
            </section>
        </asp:Panel>
        <!--Block2 Preorder  預購中 (End) ========================================-->


        <!--Block2 Flash Sale (Start) ========================================-->
        <asp:Panel runat="server" ID="flash_sale" Visible="false">
            <section class="am-margin-bottom" id="s2">
                <div class="countdown">
                    <a href="2020momsday2flash_sale.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/bn_04m.png" alt="bn_00m" style="width: 100%;" />
                        <div class="am-text-center countdown-info mb-countdown-info2">
                            <div>
                                <span id="content"></span>
                                <h1>
                                    <span style="font-size: 12px!important; vertical-align: super;">Sale Ends in</span>
                                    <%--<span style="font-size:12px!important;vertical-align:super;">Sale Ends in</span>--%>
                                    <span class="clock-countdown">
                                        <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                                    </span>

                                </h1>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="am-padding-bottom-sm preorder-items-wrapper" style="background: #fff;">

                    <div class="mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3">
                            <asp:Repeater ID="rp_flash" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl goods-item fs-item">
                                        <a href='2020momsday2flash_sale.aspx'>
                                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                            <div class="goods-item-top">
                                                <div class="goods-img" style="position: relative;">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                    <div class="goods-discount goods-discount3">
                                                        <span class="ribbon">
                                                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="goods-item-bottom">
                                                <div class="goods-item-block fire-bar-block">
                                                    <div class="fire-img">
                                                        <asp:Image ID="img_fire" runat="server" Width="20px" />
                                                    </div>
                                                    <div class="fire-bar">
                                                        sold 
                                                        <asp:Literal ID="lit_buy" runat="server"></asp:Literal>件
                                                    </div>
                                                    <div class="bar-white pc-bar-white" style="width: <%#FireCount(Convert.ToInt32(Eval("SPD07").ToString()) )+"%" %>;"></div>
                                                </div>
                                                <div class="goods-item-block">
                                                    <p class="goods-name">
                                                        <%# Eval("WP02").ToString() %>
                                                    </p>
                                                </div>
                                                <div class="goods-item-block">
                                                    <h1 class="goods-price">
                                                        <%--  <span>RM</span>--%>
                                                        <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                    </h1>
                                                    <s class="goods-original-price">
                                                        <span>RM</span>
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                    </s>
                                                </div>
                                                <div class="goods-item-block">
                                                    <p>
                                                        SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <div class="am-padding-vertical am-margin-bottom-lg" style="background: #fff;">
                    <a class="am-u-sm-5 am-block am-u-sm-centered" href="2020momsday2flash_sale.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" alt="more" />
                    </a>
                </div>
            </section>
        </asp:Panel>
        <!--Block2 Flash Sale (End) ========================================-->


        <!--Block3 Highlighted Brands(Start)==========================================-->

        <section class="am-margin-bottom" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_05m.png"%>' alt="bn_05m" style="width: 100%;" />
            </div>
            <div class="mb-shop-block highlighted-brands" id="logo" style="background-color: white">
                <ul class="am-avg-sm-2 am-avg-md-3 brand-href">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
        </section>

        <!--Block3 Highlighted Brands(End) ==========================================-->

        <!--Block4 Shop By Category (Start) ==========================================-->
        <!--Category1 (Start) -->

        <section class="am-margin-bottom" id="s4">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_06m.png"%>' alt="bn_06m" />
            </div>

            <div>
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs" id="point1" onclick="AnchorPoint('point1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_01.png"%>' alt="v_01" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_02.png"%>' alt="v_02" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_03.png"%>' alt="v_03" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_04.png"%>' alt="v_04" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_05.png"%>' alt="v_05" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_06.png"%>' alt="v_06" /></a></li>
                </ul>
            </div>

            <div>
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_01m.png"%>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="mb-slider-product category-slider">
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products4" />
                            <li class="am-fl swiper-slide">
                                <div class="see-more-item">
                                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                                        <div class="product_item_pic">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                        </div>
                                        <div class="product_item_text am-text-center">
                                            <h6>See More</h6>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!--Category1 (End) -->

        <!--Category2 (Start) -->

        <section class="am-margin-top-sm" id="point2">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_02m.png"%>' alt="h_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category2 (End) -->

        <!--Category3 (Start) -->

        <section class="am-margin-top-sm" id="point3">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_03m.png"%>' alt="h_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category3 (End) -->

        <!--Category4 (Start) -->

        <section class="am-margin-top-sm" id="point4">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_04m.png"%>' alt="h_04m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category4 (End) -->

        <!--Category5 (Start) -->

        <section class="am-margin-top-sm" id="point5">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_05m.png"%>' alt="h_05m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category5 (End) -->

        <!--Category6 (Start) -->

        <section class="am-margin-top-sm" id="point6">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_06m.png"%>' alt="h_06m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category6 (End) -->

        <!--Block3 Shop By Category (End) ==========================================-->

        <!--Block4  You May Also Like... (Start)========================================-->

        <section class="am-margin-vertical-sm">
            <h6 class="am-margin-bottom-0 am-padding-left am-text-center also-like">You May Also Like...</h6>
            <div class="mb-shop-block bg-none">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <uc1:products runat="server" id="products10" />
                </ul>
            </div>
        </section>
        <!--Block4  You May Also Like... (End)=========================================-->
        <!--Block5 活動辦法 (Start)================================================-->
        <footer class="am-padding-xl activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    Mother's Day Sale 2<br>
                    1. Promotion Date : 30th Apr 2020 12:00 - 11st May 2020 23:59<br>
                    2. Promo Code:<br>
                </p>
                <p class="am-padding-left-lg">
                    - RM25 OFF (min spend 280), use code [ MOM25 ]<br>
                    - RM35 OFF (min spend 380), use code [ MOM35 ]<br>
                    - RM55 OFF (min spend 600), use code [ MOM55 ]<br>
                </p>
                <p>
                    * Promo Codes are NOT applicable on Flash Sale Items<br>
                    3. Free Gift with min spend (only available when the sale has started)
   - Spend RM 500 & get Dr. Jou Six-Essence Hyaluronic Acid Moisturizing Foaming Wash 145ml (worth RM110, limited 150 sets)<br>
                    4. Promo Codes are applicable on selected Flagship Stores, including Dr.Cink, Dr. Morita, DV, Laler, Choyer, Dr Lady, Hsu's, Ivita, Supercut, C'est Vrai, Paradiso Garden, Naturero, 1838 Eurocares, Sofei, Enjoy The Life, Pandababy, Unipapa, Zephyrine,Dore Dore, DV Tokyo, Double Doctor, HH.<br>
                    <br>
                    5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mother's Day Sale 2 terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <!--Block5 活動辦法 (End)================================================-->
    </div>

    <div class="am-g am-g-collapse footer-bar">
        <div>
            <ul class="am-avg-sm-2">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_00m.png"%>' alt="ss_00m" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_01m.png"%>' alt="ss_01m" style="width: 100%;" />
                </li>
            </ul>
        </div>
        <div>
            <ul class="am-avg-sm-3">
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_02m.png"%>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_03m.png"%>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_04m.png"%>' alt="ss_04m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">


        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            setThem();
            hiddenFooterMenu();
            hideBanner();
            PutBrandUrl();
        });

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

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };


        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        });

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

        function hideBanner() {
            var date1 = new Date("2020-05-05T00:00:00");
            var date2 = new Date("2020-05-10T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('.clock').remove();
            }
            //if (dateNow > date3) {
            //    $('#s1').addClass('slider1');
            //}
        };
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
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {
            $(".clock-countdown").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    //h = parseInt(d)*24 + parseInt(PrefixInteger(h, 2));
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    if (spendtime > 0) {
                        $("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                    } else { // 避免倒數變成負的
                        $("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                    }
                });
        }
        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        };
    </script>
    <script>
        function PutBrandUrl() {
            var url = "";
            var index = 0;
            $(".brand-href li").each(function () {
                url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
                switch (index) {
                    case 0:
                        {
                            url = url + '235';
                            break;
                        }
                    case 1:
                        {
                            url = url + '345';
                            break;
                        }
                    case 2:
                        {
                            url = url + '72';
                            break;
                        }
                    case 3:
                        {
                            url = url + '450';
                            break;
                        }
                    case 4:
                        {
                            url = url + '334';
                            break;
                        }
                    case 5:
                        {
                            url = url + '180';
                            break;
                        }
                    case 6:
                        {
                            url = url + '432';
                            break;
                        }
                    case 7:
                        {
                            url = url + '316';
                            break;
                        }

                }
                $(this).find('a').attr("href", url);
                index++;
            });
        };
    </script>
</asp:Content>

