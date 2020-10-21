<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="presale_product_detail.aspx.cs" Inherits="mobile_static_presale_product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets_v2/css/product.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="am-container">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP01" id="ContentPlaceHolder1_hf_WP01" value="29421">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP06" id="ContentPlaceHolder1_hf_WP06" value="1">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP28" id="ContentPlaceHolder1_hf_WP28" value="0">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP29" id="ContentPlaceHolder1_hf_WP29" value="10">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP31" id="ContentPlaceHolder1_hf_WP31" value="2020/10/7 上午 12:00:00">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP32" id="ContentPlaceHolder1_hf_WP32" value="2020/10/22 上午 12:00:00">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_select_type" id="hf_select_type" value="0">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_select_wpa01" id="hf_select_wpa01" value="432889f7-7ee5-4ee8-a6df-9b1fd376e1bd">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_select_count" id="hf_select_count" value="1">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP36" id="hf_WP36" value="1">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP37" id="hf_WP37">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP38" id="hf_WP38">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_Qty" id="hf_Qty">


        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_B01" id="hf_B01" value="319">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_SupName" id="hf_SupName" value="(Naturero植淨林)億鑫生化科技有限公司">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_brand" id="hf_brand" value="Naturero">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_CNAME" id="hf_CNAME" value="Skincare">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_PIMG" id="hf_PIMG" value="n20201006022415130.jpg">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_PRICE" id="hf_PRICE" value="235.00">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_SPRICE" id="hf_SPRICE" value="199.00">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_DpaImg1" id="hf_DpaImg1">


        <!-- 麵包屑 Start-->
        <style>
            .ul_class {
                padding: 5px;
                font-size: 14px;
                margin-bottom: 0px
            }

                .ul_class a {
                    color: #565656;
                }

            .event_note {
                position: absolute;
                bottom: 0px;
                padding: 10px;
                font-size: 14px;
                width: 100%;
                text-align: center;
                background: #000;
                opacity: 0.4;
                color: white;
                z-index: 999;
            }

            .am-footer {
                display: none !important;
            }
        </style>
        <section>
            <ul class="ul_class">
                <a href="shop.aspx">Shop &gt; </a><a href="shop2.aspx?cid=42">Skincare</a>,<a href="shop2.aspx?cid=250">Feminine Intimate Care</a>

            </ul>
        </section>
        <style>
            .tagPanel {
                position: absolute;
                top: 0px;
            }

            .tag1 {
                position: relative;
                width: 55px;
                height: 55px;
                font-size: 12px;
                line-height: 16px;
                text-align: center;
                color: white;
                background-color: #f7588c;
                padding: 10px 0px;
            }

            .tag2 {
                position: relative;
                width: 55px;
                height: 55px;
                font-size: 12px;
                line-height: 16px;
                text-align: center;
                color: white;
                background-color: #689b94;
                padding: 10px 0px;
            }
        </style>
        <section class="container-lp-product">


            <div class="am-g product-img-box" style="margin: 0%; padding: 0%; width: 100%; position: relative">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP08_1" id="hf_WP08_1" value="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20201006022415130.jpg">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP08_2" id="hf_WP08_2" value="https://p8r7m4d5.stackpathcdn.com/images//webimgs/">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP08_3" id="hf_WP08_3" value="https://p8r7m4d5.stackpathcdn.com/images//webimgs/">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP08_4" id="hf_WP08_4" value="https://p8r7m4d5.stackpathcdn.com/images//webimgs/">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP08_5" id="hf_WP08_5" value="https://p8r7m4d5.stackpathcdn.com/images//webimgs/">
                <div data-am-widget="slider" class="am-slider am-slider-a1 am-no-layout" data-am-flexslider="{directionNav:false,animationLoop:false,slideshow:false}">


                <div class="am-viewport" style="overflow: hidden; position: relative;"><ul class="am-slides" id="imgs" style="width: 200%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
                        <li class="am-active-slide" style="width: 331px; float: left; display: block;"><img src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20201006022415130.jpg" draggable="false"></li>
                    </ul></div><ol class="am-control-nav am-control-paging"></ol></div>


            </div>
             <div><a href="https://www.hawooo.com/mobile/201007_5th.aspx"><img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/frame/201007.png" style="width:100%"></a></div>
            <div class="am-g am-g-collapse wrapper-brand" style="display: inline-block">

                <div>Brand：<a style="color:#e65e5e;text-decoration:underline;" href="brand_1.aspx?bid=319">Naturero</a></div>

                <h5 class="title-lp-product" style="margin-top: 5px">
                    Naturero Intense Brightening Serum 50ml+Makeup Remover 75ml
                </h5>
                <!-- 免運、哈幣、原價標籤 開始 -->
                <div class="am-u-sm-12 product-tag-wrapper" style="background-color: white">

                    <span id="ContentPlaceHolder1_tag1" class="products-tag">

                        <img src="../images/member/icon_w.svg">
                        Ha coin x
                        <p>
                            1
                            <a href="https://www.hawooo.com/mobile/hacoin.aspx" target="_blank"><i class="am-icon-question-circle"></i></a>
                        </p>
                    </span>
                    <span id="ContentPlaceHolder1_tag3" class="products-tag">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/icon/price.svg">
                        <span>Price Guarantee<a href="https://www.hawooo.com/mobile/qa19.aspx" target="_blank"><i class="am-icon-question-circle"></i></a></span>
                    </span>



                </div>
                <!-- 免運、哈幣、原價標籤 結束 -->

                <!-- Pre Sale 商品價格 (start) -->
                <div class="am-g">
                    <div class="am-u-s-m-12 fs--1 text-1100 bg-lighter-primary p-3">
                                <div class="border-bottom border-100 pb-3">
                                <%--<div class="d-flex align-items-center mb-2">
                                        <span class="mr-2 presale-title">Original：</span><s class="fs-2 text-800 font-weight-medium">RM250</s>
                                    </div>--%>
                                    <div class="d-flex align-items-end mb-3">
                                        <span class="mr-2 presale-title">Pre-Sale：</span>
                                        <h5 class="my-0 text-dark-primary display-4 mr-2">RM<span>200.00</span></h5>
                                        <s class="fs-2 text-800 font-weight-medium">RM250</s>
                                    </div>
                                    <div class="d-flex align-items-end">
                                        <span class="mr-2 presale-title">Deposit：</span><h5 class="my-0 text-dark-red fs-3 mr-2">RM<span class=" fs-3">10.00</span></h5>
                                        <span class="badge badge-pill badge fs--2 py-1 border border-dark-red text-dark-red" style="border-color: #d0011b !important;">
                                            <img class="align-bottom" src="images/icon/icon_fire.svg" alt="fire-icon" width="8" />
                                            可折抵 RM 20.00
                                        </span>
                                    </div>
                                </div>

                                <div class="d-flex flex-between-center pt-3">
                                    <div>
                                        <span class="mr-2">Final Payment：</span>
                                        <b class="text-dark-primary fs-2">RM<span>RM180</span></b>
                                    </div>
                                    <a class="text-secondary" data-am-modal="{target: '#presale-rules-modal', closeViaDimmer: 0, width: 400, height: 225}">
                                        <i class="am-icon-question-circle"></i>
                                        活動規則
                                    </a>
                                </div>
                                <!-- Pre Sale活動規則 (start) -->
                                <div class="am-modal am-modal-no-btn" tabindex="-1" id="presale-rules-modal">
                                    <div class="am-modal-dialog">
                                        <div class="am-modal-hd">
                                           活動規則
                                          <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                                        </div>
                                        <div class="am-modal-bd">
                                            <img src="#" alt="活動規則" />
                                        </div>
                                    </div>
                                </div>
                              <!-- Pre Sale活動規則 (end) -->
                            </div>
                </div>
                <!-- Pre Sale 商品價格 (End) -->

                <%--<div class="am-g" style="background-color: #F9F3F7; padding: 0px 10px">

                    <div style="width: 100%">
                        <div class="am-cf am-inline">
                            <div class="am-fl am-vertical-align-middle" style="height: 55px;">
                                <span style="color: #FF005B; font-size: 17px; font-weight: bold;">RM</span>
                                <span style="color: #FF005B; font-size: 38px; font-weight: bold;">
                                    <span id="lab_price" enablevewstate="false">199.00</span>
                                </span>
                                <span style="font-size: 17px; color: #a2a2a2; text-decoration: line-through;">
                                    <span id="lab_origianl_price">235.00</span>
                                </span>
                            </div>
                            <div class="am-fr am-vertical-align-bottom" id="savePanel" style="display: block;">
                                <span class="am-block am-text-right" style="font-size: 14px; color: #FF005B; font-weight: bold; padding-top: 2px">SAVE
                                </span>
                                <span class="am-block" style="font-size: 14px; color: white; background-color: #FF005B; font-weight: bold; padding: 0px 2px;">
                                    <span id="lab_discount_note">RM36.00</span>
                                </span>
                            </div>
                        </div>
                        <div class="am-cf am-inline">
                            <div class="am-fl" style="color: #a2a2a2; font-size: 15px;">
                                <i class="far am-icon-eye"></i>&nbsp;viewed
                                    104
                            </div>
                            <div class="am-fr" id="time">
                                <div id="ContentPlaceHolder1_showTime">
                                    <span id="d">2</span>d:<span id="h">6</span>:<span id="m">39</span>:<span id="s">33</span>
                                </div>
                            </div>
                        </div>

                        <script>
                            function setTime(spantime) {
                                $("#time").everyTime('1s',
                                    function (i) {
                                        spantime--;
                                        var d = Math.floor(spantime / (24 * 3600));
                                        var h = Math.floor((spantime % (24 * 3600)) / 3600);
                                        var m = Math.floor((spantime % 3600) / (60));
                                        var s = Math.floor(spantime % 60);
                                        if (spantime > 0) {
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
                        </script>
                    </div>

                </div>--%>

                <script>
                    function hiddenSamePrice() {
                        $("#p-sameprice").css("display", "none");
                    }
                </script>
                <!--領券 現領現用開始-->

                <script>
                    function couponModal() {
                        $("#coupon-modal").modal('open');
                    }
                    function closeCouponModal() {
                        $("#coupon-modal").modal('close');
                    }
                </script>

                <!--領券 現領現用結束-->
                <!--領券 現領現用結束-->
                <!-- coupon -->
                <style>
                    .coupon_discount {
                        color: #FB5450;
                        font-size: 24px;
                        font-weight: bold;
                        text-align: center;
                    }

                    .coupun_row {
                        border-bottom-style: solid;
                        border-bottom-width: 1px;
                        /* border-style: solid; */
                        border-color: #eaeaea;
                        padding: 5px;
                    }
                </style>
                <div class="am-modal am-modal-no-btn coupon-modal" tabindex="-1" id="coupon-modal">
                    <div class="am-modal-dialog">
                        <div class="coupon-title">
                            <span class="txtRsc" data-id="pd006">Claim Your Coupons</span>
                            <a href="javascript: void(0)" class="am-close am-close-spin am-fr" data-am-modal-close="">×</a>
                        </div>

                        <div class="am-modal-bd">
                            <div class="coupon-table-wrapper">
                                <!-- 固定table head start-->
                                <div class="c-table-head"></div>
                                <!-- 固定table head end-->
                                <div class="c-table-body">

                                </div>
                            </div>
                            <!-- 折扣券按鈕 coupon btn start-->
                            <div class="coupon-table-btn">
                                <div id="ContentPlaceHolder1_up_get_coupon">

                                        <input type="submit" name="ctl00$ContentPlaceHolder1$btn_get" value="GET NOW" id="ContentPlaceHolder1_btn_get" class="am-btn product-pink-btn">

</div>
                            </div>
                            <!-- 折扣券按鈕 coupon btn end-->
                        </div>
                    </div>
                </div>
                <hr>
                <div class="am-u-sm-12">



                </div>

            </div>
        </section>
        <!-- product premium 滿額贈 start -->
        <section id="ContentPlaceHolder1_full_gift_event" class="am-container product-info-wrapper">
            <div class="premium-title">
                <h4>滿額贈品</h4>
            </div>
            <div class="premium-wrapper">
                <!-- 一筆滿贈品（符合贈送條件） -->
                <div class="promotion-table">

                            <table>
                                <tbody><tr>
                                    <td class="promotion-img">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl00$hf_GE01" id="ContentPlaceHolder1_rp_gift_event_hf_GE01_0" value="5c3e7f50-c648-4c2a-be3c-38e0fe78ef59">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl00$hf_GE05" id="ContentPlaceHolder1_rp_gift_event_hf_GE05_0" value="0">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl00$hf_GP01" id="ContentPlaceHolder1_rp_gift_event_hf_GP01_0" value="da0c0d0e-6ba7-49e4-bce0-b9ceb2e5e225">
                                        <img src="../images/giftimgs/n20200814035016689.jpg">
                                    </td>
                                    <td rowspan="2" class="promotion-content">
                                        <h4><span class="txtRsc" data-id="cart023">Event Title</span>：
                                                Naturero 7/10-21/10 買就送</h4>

                                        <p><span class="txtRsc" data-id="cart025">Minimum Spend</span>：1.00(<span class="txtRsc" data-id="pb017">Gift with purchase</span>)</p>
                                        <p><span class="txtRsc" data-id="cart050">DESC</span>：<br>Get a Reusable Shopping Bag with any purchase of  Naturero item(s).</p>
                                    </td>
                                </tr>

                            </tbody></table>

                            <table>
                                <tbody><tr>
                                    <td class="promotion-img">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl01$hf_GE01" id="ContentPlaceHolder1_rp_gift_event_hf_GE01_1" value="5018a088-96d3-4e79-88b7-beda915728d8">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl01$hf_GE05" id="ContentPlaceHolder1_rp_gift_event_hf_GE05_1" value="0">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl01$hf_GP01" id="ContentPlaceHolder1_rp_gift_event_hf_GP01_1" value="a58c8bc6-da5b-467d-927f-91ce253c0376">
                                        <img src="../images/giftimgs/n20201005032024631.jpg">
                                    </td>
                                    <td rowspan="2" class="promotion-content">
                                        <h4><span class="txtRsc" data-id="cart023">Event Title</span>：
                                                Naturero 7/10-21/10 Gift with min spend.</h4>

                                        <p><span class="txtRsc" data-id="cart025">Minimum Spend</span>：139.00(<span class="txtRsc" data-id="pb017">Gift with purchase</span>)</p>
                                        <p><span class="txtRsc" data-id="cart050">DESC</span>：<br>Get free gift(s) for purchase RM139／RM169／RM199 and above.<br>Please refer to Flagship Store for more details. (※ Gifts are not accumulate)</p>
                                    </td>
                                </tr>

                            </tbody></table>

                </div>
            </div>
        </section>
        <!-- product premium 滿額贈 end -->

        <section id="ContentPlaceHolder1_oversea" class="am-container product-info-wrapper" style="font-size: 12px">
            <div class="am-panel am-panel-default">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#overseas'}">
                        <i class="am-icon-plane"></i>
                        <span>Ships from Overseas</span>
                        <i class="am-icon-caret-down info-right-i"></i>
                    </h4>
                </div>
                <div id="overseas" class="am-panel-collapse am-collapse am-in">
                    <div class="am-panel-bd">
                        Products shipped by international sellers and delivered at no additional cost.
                        We do urge you to ensure that the product design,warranty,return policy, etc,
                        meet your needs and expectation.
                    </div>
                </div>
            </div>
        </section>

        <!--  Hawooo Comment star-->
        <!--  引用Hawooo的Comment Js-->
        <script src="https://review.hawooo.app/js/Review.js"></script>
        <div id="hw-review">

<div class="hw-wrapper hw-style3">
    <!-- hw-header -->
    <div class="hw-row hw-header">
        <h1 class="py-2 hw-header-title">Reviews <span class="hw-header-count">(0)</span></h1>
    <div class="hw-avg">
                <div class="hw-avg-score">
                    <p class="mr-2 my-0 hw-avg-score-num">0</p>
                    <div class="d-inline-block m-0 hw-avg-star hw-js-star">
                        <span class="hw-star-gray">
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                        </span>
                        <span class="hw-avg-starfilled hw-star-yellow" style="width: 0%;">
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                        </span>
                    </div>
                </div>
                <ul class="hw-avg-bar" style="display: none;">
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">5 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-five-star"><span style="width: 0%;"></span></div>
                    </li>
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">4 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-four-star"><span style="width: 0%;"></span></div>
                    </li>
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">3 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-three-star"><span style="width: 0%;"></span></div>
                    </li>
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">2 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-two-star"><span style="width: 0%;"></span></div>
                    </li>
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">1 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-one-star"><span style="width: 0%;"></span></div>
                    </li>
                </ul>
            </div></div>
    <!-- hw-main -->
    <div class="hw-main">
        <div id="hw-main-comment" class="hw-main-comment" style="display: none;">
            <!-- hw-main-average -->


            <!-- hw-main-toolbar -->
            <div class="mb-5 mt-4 hw-toolbar" style="display: none;">
                <h3 class="hw-toolbar-title">Filter Reviews：</h3>
                <div class="d-flex justify-content-between mb-3 hw-toolbar-filter">
                    <div class="d-flex flex-grow-1 mr-2 p-2 hw-filter-search">
                        <img class="hw-search-image" src="https://review.hawooo.app/images/search.svg">
                        <input type="text" placeholder="Search Reviews">
                    </div>
                    <select name="" class="p-2 hw-filter-sort"><option data-id="8" value="Recent">Recent</option><option data-id="10" value="Most Likes">Most Likes</option></select>
                </div>
                <div class="my-3 hw-toolbar-tags">
                    <button class="m-1 hw-tag btn-show-all hw-tag-active" data-count="0">All <span> (0)</span></button>
                <button data-id="4" name="hw-filter-1" class="m-1 hw-tag star-5" data-count="0">5 Stars<span> (0)</span></button><button data-id="8" name="hw-filter-2" class="m-1 hw-tag star-4" data-count="0">4 Stars<span> (0)</span></button><button data-id="12" name="hw-filter-3" class="m-1 hw-tag star-3" data-count="0">3 Stars<span> (0)</span></button><button data-id="16" name="hw-filter-4" class="m-1 hw-tag star-2" data-count="0">2 Stars<span> (0)</span></button><button data-id="20" name="hw-filter-5" class="m-1 hw-tag star-1" data-count="0">1 Star<span> (0)</span></button></div>
            </div>
            <!-- hw-main-comment -->
            <div id="hw-rv-comment-template" style="display:none">
                <div class="py-4 mb-4 hw-comment-item">
                    <div class="d-flex align-items-center mb-2 hw-comment-top">
                        <div class="mr-3 hw-comment-info-left">
                            <img src="#" class="d-block hw-comment-user-image">
                        </div>
                        <div class="hw-comment-info-right">
                            <div class="hw-comment-user">
                                <span class="hw-comment-star hw-star-yellow">
                                </span>
                                <span class="ml-2 hw-comment-user-name"></span>
                            </div>
                            <h4 class="mt-1 mb-0 hw-comment-product"></h4>
                        </div>
                    </div>
                    <div class="hw-comment-middle">
                        <div class="mb-2 hw-comment-text">
                        </div>
                        <div class="mb-2 hw-comment-image">
                        </div>
                    </div>
                    <div class="d-flex justify-content-between mt-2 mb-2 hw-comment-bottom">
                        <div class="hw-comment-like"><i class="fa fa-thumbs-up" aria-hidden="true"></i><span></span></div>
                        <div class="hw-comment-date"></div>
                    </div>
                </div>
            </div>
            <div id="hw-reply-template" style="display:none">
                <div class="pt-2 pb-0 hw-response">
                    <div class="pt-1">
                        <span class="hw-response-img"><img src="images/service_img.png"></span>
                        <span class="ml-1 hw-response-name"></span>
                        <span class="ml-1 hw-response-time"></span>
                    </div>
                    <p class="my-1"></p>
                </div>
            </div>
            <div class="mt-4 hw-comment">
                <!-- hw-comment-loader -->
                <div class="hw-comment-loader" style="display: none;">
                    <div class="text-center">
                        <div class="spinner-grow spinner-grow-sm text-dark" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                        <div class="spinner-grow spinner-grow-sm text-dark" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                        <div class="spinner-grow spinner-grow-sm text-dark" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                        <div class="spinner-grow spinner-grow-sm text-dark" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                        <div class="spinner-grow spinner-grow-sm text-dark" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                </div>
            <p>Sorry, no reviews match your criteria. Clear or modify your filters and try again. <button type="button" class="hw-btn hw-btn-clear">Clear All Filters</button></p></div>
        </div>
        <div id="hw-no-comment" class="py-4 hw-main-no-comment" style="display: block;">
            <p>This product has no reviews.</p>
        </div>
        <!-- hw-main-loader -->
        <div class="hw-main-loader" style="display: none;">
            <div class="text-center">
                <div class="spinner-border text-dark" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
                <p class="pt-2">Loading...</p>
            </div>
        </div>
    </div>

    <!-- hw-footer -->
    <div class="my-4 hw-footer" style="display: none;">
        <ul class="hw-page" style="display: none;">
            <li class="hw-page-item">
                <a class="hw-page-link hw-prev-page hw-submit-disable" href="#" aria-label="Previous">
                    <span aria-hidden="true">«</span>
                </a>
            </li>
            <li class="hw-page-item hw-active"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">1</a></li><li class="hw-page-item">
                <a class="hw-page-link hw-next-page hw-submit-disable" href="#" aria-label="Next">
                    <span aria-hidden="true">»</span>
                </a>
            </li>
        </ul>
        <div class="hw-view">
            <a href="#commentModal" id="btn-comment">View All <i class="fa fa-angle-right" aria-hidden="true"></i></a>
        </div>
    </div>

    <!-- hw-loader -->
<script>$('.hw-view a').attr('href', '#commentModal'); $('.hw-view a').attr('id', 'btn-comment');$("#btn-comment").animatedModal({
            animatedIn: 'bounceInRight',
            animatedOut: 'bounceOutLeft',
            modalTarget: 'commentModal',
            zIndexIn: '1088',
            color: '#fff'
        });</script></div>
<script src="https://review.hawooo.app/js/hwfgprint.min.js"></script>
<script>
    //var templateUrl = "http://192.168.2.225/";
    //var templateUrl = "https://localhost:44340/";
    //$("head").append($("<link rel='stylesheet' href='" + templateUrl + "css/bootstrap.min.css' type='text/css' media='screen' />"))
    //    .append($("<link rel='stylesheet' href='" + templateUrl + "css/reviews.min.css' type='text/css' media='screen' />"))
    //    .append($("<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' type='text/css' media='screen' />"))
    //    .append($("<link rel='stylesheet' href='" + templateUrl + "css/lightbox.css' type='text/css' media='screen' />"));

    //function getScripts(scripts) {
    //    var prArr = [];
    //    scripts.forEach(function(script) {
    //        (function(script){
    //            prArr .push(new Promise(function(resolve){
    //                $.getScript(script, function () {
    //                    resolve();
    //                });
    //            }));
    //        })(script);
    //    });
    //    return Promise.all(prArr, function(){
    //        return true;
    //    });
    //}

    //var script_arr = [
    //templateUrl + "js/lightbox.js",
    //templateUrl + "js/bootstrap.bundle.min.js",
    //templateUrl + "js/Review.js"
    //];
   // getScripts(script_arr).then(function() {
        var getModelData = {"response":null,"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ","product_id":"432889f7-7ee5-4ee8-a6df-9b1fd376e1bd","group_id":"29421","product_name":null,"type":3,"per_page":2};
        hwreview({
            model: getModelData,
            wrapper: $('.hw-wrapper')
        })
  //  });
</script>
</div>
        <script>
            function GetHwComment(gid, oid) {
                $("#hw-review").load("https://review.hawooo.app/ReviewTemplate?Token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ&GroupId=" + gid + "&ProductId=" + oid + "&Type=3&PerPage=2");
            };
        </script>
        <!--  Hawooo Comment end-->


        <!-- 產品折疊選單 product info collapse start -->
        <section class="am-container product-info-wrapper">
            <!-- collase 開始 -->
            <div class="am-panel-group">
                <div class="am-panel am-panel-default">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#product-details'}">
                            <i class="am-icon-info-circle"></i>
                            <span class="txtRsc" data-id="pd013">Product Info.</span>
                            <i class="am-icon-caret-down info-right-i"></i>
                        </h4>
                    </div>
                    <div id="product-details" class="am-panel-collapse am-collapse am-in">
                        <div class="am-panel-bd">
                            <div id="productdetail">
                                <div class="am-g am-g-collapse">

</div>
<p><img src="https://p8r7m4d5.stackpathcdn.com/images/bwarrant/319_Naturero.png" width="100%" ;=""></p>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="am-panel am-panel-default">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#after-sales'}">
                            <i class="am-icon-truck"></i>
                            <span class="txtRsc" data-id="pd014">After-sales service</span>
                            <i class="am-icon-caret-down info-right-i"></i>
                        </h4>
                    </div>
                    <div id="after-sales" class="am-panel-collapse am-collapse">
                        <div class="am-accordion-content">

                            <table id="ContentPlaceHolder1_ennote" style="line-height: 30px">
	<tbody><tr>
		<td style="font-size: 16px; font-weight: 600">Delivery Area：
                                    </td>
	</tr>
	<tr>
		<td>HaWooo.com deliver to Malaysia only</td>
	</tr>
	<tr>
		<td style="font-size: 16px; font-weight: 600">Arrival Time:
                                    </td>
	</tr>
	<tr>
		<td>West Malaysia - 3-10 working days after order confirmed  (excluding weekends and public holidays)
                                    </td>
	</tr>
	<tr>
		<td>East Malaysia - 5-15 working days after order confirmed   (excluding weekends and public holidays)
                                    </td>
	</tr>
	<tr>
		<td style="font-size: 16px; font-weight: 600">Return and exchange instructions:
                                    </td>
	</tr>
	<tr>
		<td>Only available for defective or damaged items. Please contact customer service as soon as possible within 7 days after receiving the items, so that we can assist you immediately. Please refer to the return policy for return and exchange standards.[<a href="qa17.aspx">Return Policy</a>]。
                                    </td>
	</tr>
</tbody></table>

                        </div>
                    </div>
                </div>


            </div>
        </section>

        <!---->

        <!-- copied accordion start -->


        <!-- copied accordion end -->
        <!-- 你可能會喜歡 you might like start -->
        <section id="ContentPlaceHolder1_guess_you_like" class="am-container product-info-wrapper container-suggested-slider">
            <!-- u might like title -->
            <div class="product-slider-title">
                <h4><i class="am-icon-heart-o"></i><span class="txtRsc" data-id="pd012">Best Viewed</span></h4>
            </div>
            <div class="product-slider-content product-slider-like">

                <ul class="am-cf" style="width: 2964px;">

                            <li class="am-fl">
                                <a href="product.aspx?id=20915">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207030908700.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Strengthening Shampoo for Greasy Scalp-Purify &amp; Anti-Hair Loss 300ml</h3>
                                        <h4>RM 125.00</h4>
                                        <p class="am-fr">
                                            -RM13.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=20916">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207030932206.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Strengthening Shampoo for Sensitive Scalp-Soothing &amp; Anti-Hair Loss 300ml</h3>
                                        <h4>RM 125.00</h4>
                                        <p class="am-fr">
                                            -RM13.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=20917">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207030955099.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Scalp Therapy Spray for Problem &amp; Oily Scalp 120ml</h3>
                                        <h4>RM 103.90</h4>
                                        <p class="am-fr">
                                            -RM11.10
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=22962">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207031118607.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intimate Hygiene Serum 30ml</h3>
                                        <h4>RM 95.00</h4>
                                        <p class="am-fr">
                                            -RM10.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=21417">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190927064654826.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intimate Hygiene Serum &amp; Spray 3-Pieces-Set</h3>
                                        <h4>RM 199.00</h4>
                                        <p class="am-fr">
                                            -RM66.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=20919">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207031013337.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Cuticle Rescue Serum for Dry &amp; Damaged Hair 50ml</h3>
                                        <h4>RM 79.90</h4>
                                        <p class="am-fr">
                                            -RM10.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=24775">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207031215533.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Scalp Balance Therapy Spray 75ml</h3>
                                        <h4>RM 98.00</h4>
                                        <p class="am-fr">
                                            -RM17.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=26547">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200207031234979.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero 2-in-1 Intimate Cleansing Foam - Soothing &amp; Refreshing 120ml</h3>
                                        <h4>RM 94.00</h4>
                                        <p class="am-fr">
                                            -RM11.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=27155">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200414032000345.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intimate Hygiene Cool Mousse 120ml+Intimate Hygiene Serum 30ml</h3>
                                        <h4>RM 166.00</h4>
                                        <p class="am-fr">
                                            -RM44.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=27151">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200715043722493.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero 2-in-1 Intimate Cleansing Foam-Soothing &amp; Refreshing 120ml + Intimate Hygiene Spray-Anti Imflammator 20ml</h3>
                                        <h4>RM 159.00</h4>
                                        <p class="am-fr">
                                            -RM13.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=20914">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200716091339309.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intimate Hygiene Spray Refreshing 20ml</h3>
                                        <h4>RM 78.00</h4>
                                        <p class="am-fr">
                                            -RM2.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=29032">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200715053640293.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Scalp Therapy Spray for Problem &amp; Oily Scalp 120ml+Cuticle Rescue Serum for Dry &amp; Damaged Hair 50ml</h3>
                                        <h4>RM 139.00</h4>
                                        <p class="am-fr">
                                            -RM66.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=27154">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200414031944868.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intimate Mousse Spray Serum 3-Pieces-Set</h3>
                                        <h4>RM 189.00</h4>
                                        <p class="am-fr">
                                            -RM78.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=29031">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200715051816953.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Strengthening Shampoo for Greasy Scalp-Purify &amp; Anti-Hair Loss 300ml+Scalp Therapy Spray for Problem &amp; Oily Scalp 120ml</h3>
                                        <h4>RM 206.00</h4>
                                        <p class="am-fr">
                                            -RM47.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=29420">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200901032840409.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero 暖呼呼舒緩霜 30ml</h3>
                                        <h4>RM 94.00</h4>
                                        <p class="am-fr">
                                            -RM12.50
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=29170">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200804040608749.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero 肌能黑鑽洗卸精華 75ml</h3>
                                        <h4>RM 109.00</h4>
                                        <p class="am-fr">
                                            -RM21.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=29603">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200924060717166.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intense Brightening Serum 50ml</h3>
                                        <h4>RM 126.00</h4>
                                        <p class="am-fr">
                                            -RM47.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=27800">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200716112211239.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intimate Hygiene Serum 30ml+Hygiene Spray Refreshing 20ml (optional)</h3>
                                        <h4>RM 152.00</h4>
                                        <p class="am-fr">
                                            -RM7.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                            <li class="am-fl">
                                <a href="product.aspx?id=29421">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20201006022415130.jpg" class="am-img-thumbnail">

                                    <div class="product-slider-text">
                                        <h3>Naturero Intense Brightening Serum 50ml+Makeup Remover 75ml</h3>
                                        <h4>RM 199.00</h4>
                                        <p class="am-fr">
                                            -RM36.00
                                        </p><p>
                                    </p></div>
                                </a>
                            </li>

                </ul>
            </div>
        </section>


        <!-- 最多人觀看 most views start -->
        <section id="ContentPlaceHolder1_s_guess_you_like" class="am-container product-info-wrapper container-suggested-slider">
            <!-- title -->
            <div class="product-slider-title">
                <h4><i class="am-icon-heart-o"></i><span class="txtRsc" data-id="pd011">You May Also Like</span></h4>
            </div>
            <!-- slider -->
            <div class="product-slider-content product-slider-view">
                <ul class="am-cf" id="guessyoulike" style="width: 1600px;">
        <li class="am-fl">
            <a href="product.aspx?id=29623&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200925033901077.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>週慶限定 DR.CINK 明星精華液2入組 30ml</h3>
                    <h4>RM 350.00</h4>
                    <p class="am-fr">
                    350.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=29424&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200921101315211.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>Double Doctor 熱銷面膜多盒組 5片/盒 可任選</h3>
                    <h4>RM 69.00</h4>
                    <p class="am-fr">
                    69.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=29261&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200814103831381.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>Q'her植感 花漾午茶時光禮盒組</h3>
                    <h4>RM 109.00</h4>
                    <p class="am-fr">
                    109.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=28313&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20201008030710461.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>森田藥粧 緊緻抗皺多醣體眼膜貼 28對/盒</h3>
                    <h4>RM 99.00</h4>
                    <p class="am-fr">
                    99.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=27948&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200804101402787.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>DR.CINK 瞬效奇蹟保濕組</h3>
                    <h4>RM 685.00</h4>
                    <p class="am-fr">
                    685.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=26295&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200731062537207.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>買1送3 Double Doctor 網紅推薦 雪絨花金萃精華液30ml 送熱銷面膜3片 可任選</h3>
                    <h4>RM 99.90</h4>
                    <p class="am-fr">
                    99.90
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=20099&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20201008025343677.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>森田藥粧 全淨白保濕活膚乳液 400ml</h3>
                    <h4>RM 65.00</h4>
                    <p class="am-fr">
                    65.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=19476&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20201006035041343.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>Double Doctor 雪絨花保濕活膚露100ml+金萃精華液30ml 送升級版肌光透白面膜1盒</h3>
                    <h4>RM 188.00</h4>
                    <p class="am-fr">
                    188.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=13275&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200422092004641.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>DR.CINK 升級版一滴奇肌藜麥煥膚精華 30ml/60ml</h3>
                    <h4>RM 175.00</h4>
                    <p class="am-fr">
                    175.00
                    </p><p>
                </p></div>
            </a>
        </li>

        <li class="am-fl">
            <a href="product.aspx?id=12329&amp;recommend=product">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180119031616395.jpg" class="am-img-thumbnail">

                <div class="product-slider-text">
                    <h3>美味田 紅藜麥黑芝麻糕 300g</h3>
                    <h4>RM 35.00</h4>
                    <p class="am-fr">
                    35.00
                    </p><p>
                </p></div>
            </a>
        </li>
    </ul>
            </div>
        </section>
        <div class="am-footer-fixed buy-footer" style="height: auto;">
        <style>
            .cart_num {
                right: 0px;
                position: absolute;
                background-color: #FF0068;
                border-radius: 10px;
                color: white;
                width: 15px;
                height: 15px;
                font-size: 10px;
                margin-right: 8px;
                margin-top: 2px;
                vertical-align: top;
            }
        </style>
        <div class="am-u-sm-12 am-u-sm-centered buy-footer-btn-container">
            <div style="width: 62px; float: left; cursor: pointer;">
                <a onclick="go2Cart();">
                    <div class="am-g am-g-collapse" style="border-right: 1px solid #d7d9da;">
                        <div class="am-u-sm-12 title-footer-text">
                            <span class="cart_num" id="cartnum">0</span>

                            <img src="https://www.hawooo.com/images/ftp/test/m_cart.png" alt="" class="img-footer-icon">
                        </div>
                        <div class="am-u-sm-12 title-footer-text">
                            <span class="footer-icon-text txtRsc" data-id="foot003">Cart</span><br>
                        </div>
                    </div>
                </a>
            </div>


            <div style="width: 62px; float: left; cursor: pointer;">
                <a href="http://m.me/hawooohawooo" target="_blank">
                    <div class="am-g am-g-collapse" style="border-right: 1px solid #d7d9da;">
                        <div class="am-u-sm-12 title-footer-text">
                            <img src="../images/icon/pink_contact.svg" id="soft-jumb" class="img-footer-icon">
                        </div>
                        <div class="am-u-sm-12 title-footer-text">
                            <span class="footer-icon-text txtRsc" data-id="foot004" style="color: #FF0068">Service</span><br>
                        </div>
                    </div>
                </a>
            </div>


            <div style="width: 62px; float: left; cursor: pointer;">
                <div class="am-g am-g-collapse" onclick="postTrack();">
                    <div class="am-u-sm-12 title-footer-text">
                        <img src="https://www.hawooo.com/images/icon/add_like.png" alt="" class="img-footer-icon" id="img_like">
                    </div>
                    <div class="am-u-sm-12 title-footer-text">
                        <span class="footer-icon-text txtRsc" data-id="foot005">Like</span><br>
                    </div>
                </div>

            </div>
            <!-- Pre Sale Pay Button (start) -->
            <div style="width: calc(100% - 200px); float: left">
                <a href="201022halloween_presale.aspx" class="fs-2 text-white am-fl p-3 line-height-2 bg-dark-red btn-block text-center" style="line-height:2;">
                     <img src="images/icon/icon_tag_discount.svg" alt="Pay RM10 Deposit" /> Pay RM10 Deposit
                </a>
            </div>
              <!-- Pre Sale Pay Button (End) -->
        </div>
    </div>
    </div>
</asp:Content>

