<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020momsday2.aspx.cs" Inherits="user_static_2020momsday2" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        /* Todo: Maybe move these style to sass file. */
        #s1 li, #s2 li {
            border: 1px dashed #f2f2f2;
            /*min-height: 400px;*/
        }

        .coupon {
            margin-top: 7px;
            --coupon-li-gap: 7px;
            margin-right: calc(var(--coupon-li-gap) * -1);
        }

            .coupon li {
                cursor: pointer;
                padding-right: var(--coupon-li-gap);
            }


        .block-n-more-box {
            position: relative;
            padding: 40px 0px;
        }

            .block-n-more-box .more-button {
                position: absolute;
                top: 50%;
                left: 50%;
                width: 214px;
                transform: translate(-50%, -50%);
            }


        #s3 .brand-special-message {
            /* Purplse: Horizontal and vertical align text. */
            /*========================================================*/
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f7d504;
        }

            #s3 .brand-special-message .text {
                font-size: 1em;
                margin: 0;
                color: black;
                font-weight: bold;
            }
    </style>

    <div class="am-g main-contain" style="background: #FFE6DB;">
        <!--側邊選單 (Start) ===================================================-->
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_00.png" %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_04.png" %>' alt="ss_04" />
                </li>
            </ul>
        </div>
        <!--側邊選單 (End) =====================================================-->

        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_01.png" %>' alt="主banner" />
        </div>

        <div class="am-container">
            <div class="am-margin-top-xl">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_07.png" %>' alt="折扣banner" />
            </div>
            <!--領取折扣券 (Start)====================================================-->
            <div class="am-margin-bottom-xl coupon">
                <ul class="am-avg-sm-4">
                    <li>
                        <a class="btnn " data-clipboard-text="MOM25">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="MOM35">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="MOM55">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                    <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_04.png" %>' alt="coupon_04" />
                    </li>
                </ul>
            </div>
            <!--領取折扣券 (End) ====================================================-->

            <!--Block1 (Start) =====================================================-->
            <section class="am-margin-bottom-xl" id="s1">

                <div>
                    <a href="2020momsday2_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_02.png" %>' alt="bn_02" />
                    </a>
                </div>
                <div class="am-padding-sm  category-block" style="background-color: white">
                    <div class="slider-block" style="width: 100% !important">
                        <div class="swiper-container swiper-container1" id="block1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products1" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="2020momsday2_hot_deal.aspx" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn1">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn1">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="am-padding-vertical-lg block-n-more-box" style="background: #fff;">
                    <a href="2020momsday2_hot_deal.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" class="more-button" alt="more" />
                    </a>
                </div>

            </section>
            <!--Block1 (End) ======================================================-->

            <!--Block2-1 目前 (Start) =====================================================-->
            <asp:Panel runat="server" ID="before_preorder" Visible="false">
                <section class="am-margin-bottom-xl" id="s2">
                    <div>
                        <a href="#" target="_blank">
                            <!--Todo_treegb: (bn_03.png don't exists, so I use bn_04 instead) -->
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_00.png" %>' alt="bn_04" />
                        </a>
                    </div>

                    <div id="block2">
                        <div class="am-padding-sm preorder-items-wrapper" style="background: #fff;">
                            <div class="am-padding-sm shop-block" style="background: white">
                                <ul class="am-avg-sm-4">
                                    <li class="am-fl">
                                        <a href="#!">
                                            <div class="imgContain">
                                                <img class="am-img-responsive"
                                                    src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/q.png" %>'>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="am-fl">
                                        <a href="#!">
                                            <div class="imgContain">
                                                <img class="am-img-responsive"
                                                    src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/q.png" %>'>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="am-fl">
                                        <a href="#!">
                                            <div class="imgContain">
                                                <img class="am-img-responsive"
                                                    src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/q.png" %>'>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="am-fl">
                                        <a href="#!">
                                            <div class="imgContain">
                                                <img class="am-img-responsive"
                                                    src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/q.png" %>'>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="am-text-center am-padding-bottom-xl clock">
                                <div>
                                    <span id="content"></span>
                                    <h2>5/5-9/5 : Add Items To Wishlist, 
                            <br>
                                        10/5-11/5 : Check Out Your Cart</h2>
                                    <h1 class="am-margim-top-0">
                                        <span style="font-size: 15px!important; vertical-align: super;">Sale starts in</span>
                                        <%--<span style="font-size:12px!important;vertical-align:super;">Sale Ends in</span>--%>
                                        <%--              <span id='h'>00</span>:
                        <span id='m'>00</span>:
                        <span id='s'>00</span>--%>
                                        <span class="clock-countdown">
                                            <span id='d'></span>:
                                        <span id='h'></span>:
                    <span id='m'></span>:
                    <span id='s'></span>
                                        </span>
                                    </h1>
                                </div>
                            </div>
                        </div>
                        <!--Todo_treegb: Change background-color from red to white. -->
                        <div class="am-padding-vertical-lg block-n-more-box more1" style="background: #fff;">
                            <a href="2020momsday1_hotdeal.aspx" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/more.png" %>' class="more-button" alt="more" />
                            </a>
                        </div>
                    </div>
                </section>
            </asp:Panel>
            <!--Block2-1 目前  (End) ======================================================-->

            <!--Block2-2 預購中 (Start) =====================================================-->
            <asp:Panel runat="server" ID="preorder" Visible="false">
                <section class="am-margin-bottom-xl" id="s2">
                    <!--預購中計時 (Start) =====================================================-->
                    <div class="countdown">
                        <a href="2020momsday2_preorder.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_03.png" %>' alt="bn_03" />
                            <div class="countdown-info countdown-info1">
                                <h2>5/5-9/5 : Add Items To Wishlist
                            <br>
                                    10/5-11/5:  Check Out Your Cart </h2>
                            </div>
                        </a>
                    </div>
                    <!--預購中計時 (End) =====================================================-->


                    <div id="block2">
                        <div class="am-padding-sm preorder-items-wrapper" style="background: #fff;">
                            <div class="am-padding-sm shop-block" style="background: white">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                        <ItemTemplate>
                                            <li class="am-fl  hvr-float">
                                                <a href="2020momsday2_preorder.aspx">
                                                    <div class="resize-sm" id="item_<%# Eval("WP01") %>">
                                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                        <div class="product-img">

                                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                                class="lazyload am-img-responsive" />

                                                            <span class="tag">
                                                                <span class="viewed">
                                                                    <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                                Added
                                                            </span>
                                                        </div>

                                                        <div class="product-text-box">
                                                            <div class="product-item-block">
                                                                <h3 class="product-name">
                                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                            </div>

                                                            <div class="product-price-block">
                                                                <h4>
                                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h4>
                                                                <span>
                                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                            </div>
                                                            <div class="product-price-block">
                                                                <div class="am-fl" style="width: 72%">
                                                                    <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);" Enabled="false"></asp:DropDownList>
                                                                </div>
                                                                <div class="am-fr" style="width: 25%">
                                                                    <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty" Enabled="false"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="buy-btn am-btn am-btn-block">
                                                                Add to Wishlist
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <!--Todo_treegb: Change background-color from red to white. -->
                        <div class="am-padding-vertical-lg block-n-more-box more1" style="background: #fff;">
                            <a href="2020momsday2_preorder.aspx" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/more.png" %>' class="more-button" alt="more" />
                            </a>
                        </div>
                    </div>
                </section>
            </asp:Panel>
            <!--Block2-2 預購中  (End) ======================================================-->
            <asp:Panel runat="server" ID="flash_sale" Visible="false">
                <!--Block2--3 Flash Sale (Start)=====================================================-->
                <section class="am-margin-bottom-xl" id="s2">

                    <!--計時器 (Start) =====================================================-->
                    <div class="countdown">
                        <a href="2020momsday2flash_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_04.png" %>' alt="bn_04" />
                            <div class="countdown-info countdown-info1">
                                <h1>
                                    <span style="font-size: 14px!important; vertical-align: super;">Sale Ends in</span>
                                    <span id="content"></span>
                                    <span class="clock-countdown">
                                        <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                                    </span></h1>
                            </div>
                        </a>
                    </div>
                    <!--計時器 (End) =====================================================-->
                    <div id="block2">
                        <div class="am-padding-sm preorder-items-wrapper" style="background: #fff;">
                            <div class="am-padding-sm shop-block" style="background: white">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_flash" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                                        <ItemTemplate>
                                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                            <li class="am-fl goods-item fs-item hvr-float">
                                                <a href="2020momsday2flash_sale.aspx">
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
                                                                <asp:Image ID="img_fire" runat="server" Width="23px" />
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
                                                                <%--    <span>RM</span>  385.20--%>
                                                                <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                            </h1>
                                                            <s class="goods-original-price">
                                                                <span>RM</span>
                                                                <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                            </s>
                                                        </div>
                                                        <div class="goods-item-block">
                                                            <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <!--Todo_treegb: Change background-color from red to white. -->
                        <div class="am-padding-vertical-lg block-n-more-box more1" style="background: #fff;">
                            <a href="2020momsday2flash_sale.aspx" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/more.png" %>' class="more-button" alt="more" />
                            </a>
                        </div>
                    </div>
                </section>
                <!--Block2-3 Flash Sale(End) ======================================================-->
            </asp:Panel>
            <!--Block3 Highlighted Brands(Start)==========================================-->
            <section class="am-margin-bottom-xl" id="s3">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_05.png" %>' alt="bn_05" />
                </div>
                <div class="am-padding-sm shop-block highlighted-brands" id="block3" style="background: #fff;">
                    <ul class="am-avg-sm-4 hvr-float-main brand-href">
                        <!--Todo_treegb: <a> 外面有黃色框線。-->
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
            </section>
            <!--Block2 Block3 Highlighted Brands(End) ======================================-->

            <!--Block4 Shop By Category (Start) ==========================================-->
            <!--Category1 (Start) -->
            <section class="am-margin-bottom-xl" id="s4">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_06.png" %>' alt="bn_06" />
                </div>

                <div class="am-margin-vertical pc-float-menu">
                    <ul class="am-avg-sm-6">
                        <li class="is-active" id="point1" onclick="AnchorPoint('point1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_01.png" %>' alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('point2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_02.png" %>' alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('point3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_03.png" %>' alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('point4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_04.png" %>' alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('point5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_05.png" %>' alt="h_05" /></a></li>
                        <li onclick="AnchorPoint('point6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_06.png" %>' alt="h_06" /></a></li>
                    </ul>
                </div>


                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=16">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_01.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container1" id="block4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products3" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn1">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn1">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category1 (End) -->

            <!--Category2 (Start) -->
            <section class="am-margin-bottom-xl" id="point2">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=42">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products4" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn2">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn2">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category2 (End) -->

            <!--Category3 (Start) -->
            <section class="am-margin-bottom-xl" id="point3">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=43">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products5" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn3">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn3">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </section>

            <!--Category3 (End) -->

            <!--Category4 (Start) -->
            <section class="am-margin-bottom-xl" id="point4">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=48">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products6" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn4">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn4">
                                <span class="am-icon-chevron-right"></span>
                            </span>

                        </div>
                    </div>
                </div>
            </section>
            <!--Category4 (End) -->

            <!--Category5 (Start) -->
            <section class="am-margin-bottom-xl" id="point5">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=47">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products7" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn5">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn5">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category5 (End) -->

            <!--Category6 (Start) -->
            <section class="am-margin-bottom-xl" id="point6">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=49">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products8" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn6">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn6">
                                <span class="am-icon-chevron-right"></span>
                            </span>

                        </div>
                    </div>
                </div>
            </section>
            <!--Category6 (End) -->

            <!--Block3 Shop By Category (End) ==========================================-->

            <!--Block4  You May Also Like... (Start)========================================-->
            <section class="am-padding-vertical-lg  am-margin-bottom-xl">
                <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center" style="color: black;">You May Also Like...
                </h1>
                <div>
                    <div class="shop-block" id="block5">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products9" />
                        </ul>
                    </div>
                </div>
            </section>
            <!--Block4  You May Also Like... (End)=========================================-->
        </div>
    </div>

    <!--Block5 活動辦法 (Start)================================================-->
    <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
        <div class="am-container">
            <p>
                Terms & Conditions<br />
                Mother's Day Sale 2<br />
                1. Promotion Date : 30th Apr 2020 12:00 - 11st May 2020 23:59<br />
                2. Promo Code:
            </p>
            <p class="am-padding-left-lg">
                - RM25 OFF (min spend 280), use code [ MOM25 ]<br />
                - RM35 OFF (min spend 380), use code [ MOM35 ]<br />
                - RM55 OFF (min spend 600), use code [ MOM55 ]
            </p>
            <p>* Promo Codes are NOT applicable on Flash Sale Items</p>
            <p>
                3. Free Gift with min spend (only available when the sale has started)
            </p>
            <p class="am-padding-left-lg">
                - Spend RM 500 & get Dr. Jou Six-Essence Hyaluronic Acid Moisturizing Foaming Wash 145ml (worth RM110, limited 150 sets)
            </p>
            <p>
                4. Promo Codes are applicable on selected Flagship Stores, including Dr.Cink, Dr. Morita, DV, Laler, Choyer, Dr Lady, Hsu's, Ivita, Supercut, C'est Vrai, Paradiso Garden, Naturero, 1838 Eurocares, Sofei, Enjoy The Life, Pandababy, Unipapa, Zephyrine,Dore Dore, DV Tokyo, Double Doctor, HH<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mother's Day Sale 2 terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <!--Block5 活動辦法 (End)================================================-->


    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#s1 a").attr("href", "2020momsday2_hot_deal.aspx");
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $(".hvr-float-main li").addClass("hvr-float");
            setThem();
            putimg();
            hideBanner();
            PutBrandUrl();
        });

        function PutBrandUrl() {
            var url = "";
            var index = 0;
            $(".brand-href li").each(function () {
                url = "https://www.hawooo.com/user/brands.aspx?bid=";
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
        // 設定Slider
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
                        slidesPerView: 4.25,
                        slidesPerGroup: 4,
                        spaceBetween: 10,
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },
                    });
                });
            };
        };


        // 放置logo
        function putimg() {
            for (i = 0; i < 8; i++) {
                $('#block3 li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        }

        //電梯
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別區塊錨點 
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        function hideBanner() {
            var date1 = new Date("2020-05-12T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('.clock').remove();
            }
            //if (dateNow > date3) {
            //    $('#s1').addClass('slider1');
            //}
        };
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
                    //h = parseInt(d) * 24 + parseInt(PrefixInteger(h, 2));
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
        }
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
    <%--  <script>
        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
        });
    </script>--%>
</asp:Content>

