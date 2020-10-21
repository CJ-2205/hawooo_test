<%@ Page Title="" Language="C#" MasterPageFile="~/user_static/u.master" AutoEventWireup="true" CodeFile="presale_product_detail.aspx.cs" Inherits="user_static_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="assets_v2/css/shop_detail.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="product-pic-gift-section">
            <div class="am-container am-cf product-pic-gift-container">
                <!-- products pic & gift(商品照片＆滿額贈禮區塊) star -->
                <div class="am-u-sm-4 am-fl product-pic-gift-wrapper">
                    <div class="am-u-sm-12 product-pic-wrapper">
                        <!-- product main pic star （商品主要大照片，ＪＱ會自動幾帶入照片）-->
                        <div class="product-pic">


                        <img src="https://www.hawooo.com/images//webimgs/n20200901053515832.png"></div>
                        <!-- product main pic end -->
                        <!-- see more products pic star-->
                        <div class="more-products-pic-slider">
                            <span class="more-products-pic-control more-products-pic-left">&lt;</span>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP08_1" id="ContentPlaceHolder1_hf_WP08_1" value="n20200901053515832.png">
                            <ul class="p-0 m-0 am-cf" id="more-image" style="width: 220px;">
                                <li class="am-fl"><img src="https://www.hawooo.com/images//webimgs/n20200901053515832.png" class="am-img-thumbnail"></li><li class="am-fl"><img src="https://www.hawooo.com/images//webimgs/n20200901053518035.png" class="am-img-thumbnail"></li><li class="am-fl"><img src="https://www.hawooo.com/images//webimgs/n20200811042857908.jpg" class="am-img-thumbnail"></li>
                            </ul>

                            <span class="more-products-pic-control more-products-pic-right">&gt;</span>
                        </div>
                        <!-- see more products pic end-->
                    </div>

                    <!-- gift (滿額贈禮) star -->
                    <div id="ContentPlaceHolder1_full_gift_event" class="am-u-sm-12 m-0 product-gift-wrapper">
                        <div class="am-u-sm-12 product-gift-title">滿額贈品 PREMIUMS</div>

                        <ul class="p-0 m-0">

                                    <li class="am-u-sm-12 product-gift-item">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl00$hf_GE01" id="ContentPlaceHolder1_rp_gift_event_hf_GE01_0" value="268260fc-3bfd-47b2-8ed2-8d76eb2c19db">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl00$hf_GE05" id="ContentPlaceHolder1_rp_gift_event_hf_GE05_0" value="0">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl00$hf_GP01" id="ContentPlaceHolder1_rp_gift_event_hf_GP01_0" value="7eae680e-9f99-4841-ad7a-23cc43cc6e3d">
                                        <div class="am-u-sm-12 product-gift-item-top">
                                            <div class="am-u-sm-3 product-gift-item-tag">

                                            </div>
                                            <div class="am-u-sm-9 product-gift-item-title">
                                                C'est vrai 1/9-30/9 買就送
                                            </div>
                                        </div>
                                        <div class="am-u-sm-12 p-0 product-gift-item-bottom">
                                            <div class="am-u-sm-3 p-0 product-gift-pic">
                                                <img src="../images/giftimgs/n20200729030025538.jpg">
                                            </div>
                                            <div class="am-u-sm-9 p-0 product-gift-text">
                                                <h4>
                                                    <span class="txtRsc" data-id="cart025">Minimum Spend</span>：<span>1.00</span></h4>
                                                <h5>
                                                    <span class="txtRsc" data-id="gf002">Conditions</span>：<span>滿額贈送</span></h5>
                                                <p>
                                                    <span class="txtRsc" data-id="gf003">Activities</span>：
                                                    <span>
                                                        <br>購買莎菲亞任一商品就送紅玉蠟菊抗痕彈力精萃(5ml)</span>
                                                </p>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="am-u-sm-12 product-gift-item">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl01$hf_GE01" id="ContentPlaceHolder1_rp_gift_event_hf_GE01_1" value="35bf2d4a-57dc-4724-b07e-07bcea11acde">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl01$hf_GE05" id="ContentPlaceHolder1_rp_gift_event_hf_GE05_1" value="0">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_gift_event$ctl01$hf_GP01" id="ContentPlaceHolder1_rp_gift_event_hf_GP01_1" value="736e0f06-0616-402d-b91e-a2a3d04de27d">
                                        <div class="am-u-sm-12 product-gift-item-top">
                                            <div class="am-u-sm-3 product-gift-item-tag">

                                            </div>
                                            <div class="am-u-sm-9 product-gift-item-title">
                                                C'est vrai 1/9-30/9 Free gift with min spend.
                                            </div>
                                        </div>
                                        <div class="am-u-sm-12 p-0 product-gift-item-bottom">
                                            <div class="am-u-sm-3 p-0 product-gift-pic">
                                                <img src="../images/giftimgs/n20200220113225850.png">
                                            </div>
                                            <div class="am-u-sm-9 p-0 product-gift-text">
                                                <h4>
                                                    <span class="txtRsc" data-id="cart025">Minimum Spend</span>：<span>200.00</span></h4>
                                                <h5>
                                                    <span class="txtRsc" data-id="gf002">Conditions</span>：<span>滿額贈送</span></h5>
                                                <p>
                                                    <span class="txtRsc" data-id="gf003">Activities</span>：
                                                    <span>
                                                        <br>滿 RM200 送 紅玉蠟菊抗痕彈力面膜3片
<br>滿 RM350 送紅玉礦物持久自然色遮瑕蜜(5ml)
<br> (※以上贈品不累贈)</span>
                                                </p>
                                            </div>
                                        </div>
                                    </li>


                        </ul>
                    </div>
                    <!-- gift (滿額贈禮) end -->
                    <!-- 限時團購倒數時鐘 開始 -->

                </div>
                <!-- products pic & gift(商品照片＆滿額贈禮區塊) end -->
                <!-- products details(商品細節) star -->
                <div class="am-u-sm-5 am-fl product-details-wrapper">
                    <div class="product-details-content">
                        <!-- tag 標籤（新品....等等）star (如果標籤無效＋CLASS:not-active)-->
                        <div class="am-u-sm-12 product-tag-wrapper">
                            <span id="ContentPlaceHolder1_tag1" class="products-tag ">
                                <img src="../images/member/icon_w.svg">
                                Ha coin<p>x1</p>
                                <a href="https://www.hawooo.com/user/hacoin.aspx" target="_blank"><i class="am-icon-question-circle"></i></a>
                            </span>
                            <span id="ContentPlaceHolder1_tag3" class="products-tag">
                                <img src="https://www.hawooo.com/images/icon/price.svg">
                                <span>Price Guarantee</span>
                                <a href="https://www.hawooo.com/user/qa19.aspx"><i class="am-icon-question-circle"></i></a>
                            </span>


                        </div>
                        <div class="am-g">
                            <p class="pnote">
                        <img src="../images/icon/ps/yes_icon_01.png">
                        <span class="am-vertical-align-middle">可寄送到東馬</span>
                    </p>

                            <p class="pnote">
                        <img src="../images/icon/ps/no_icon_02.png">
                        <span class="am-vertical-align-middle">不可使用全站折扣卷</span>
                    </p>
                            <p class="pnote">
                        <img src="../images/icon/ps/yes_icon_03.png">
                        <span class="am-vertical-align-middle">可裝進同個包裹內</span>
                    </p>
                        </div>
                        <script>
                            function hiddenSamePrice() {
                                $("#p-sameprice").css("display", "none");
                            }
                        </script>

                        <!-- tag 標籤（新品....等等）end -->
                        <!-- ptoducts title(商品標題) start -->
                        <div class="am-u-s-m-12 product-title">
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_brand" id="ContentPlaceHolder1_hf_brand" value="C'est vrai">

                            <h5>Brand：<a href="brandeventpage.aspx?bid=283">C'est vrai</a></h5>
                            <h4>
                                C'est vrai  Make-Up Primer 30ml Free Primer Sample×2</h4>

                        </div>
                        <!-- ptoducts title(商品標題) end -->

                         <!-- Pre Sale 商品價格 (start) -->

                        <section class="am-g">
                            <div class="am-u-s-m-12 fs--1 text-1100 bg-lighter-primary p-3">
                                <div class="border-bottom border-100 pb-3">
                                <%--<div class="d-flex align-items-center mb-2">
                                        <span class="mr-2 presale-title">Original：</span><s class="fs-2 text-800 font-weight-medium">RM250</s>
                                    </div>--%>
                                    <div class="d-flex align-items-end mb-3">
                                        <span class="mr-2 presale-title">Pre-Sale：</span>
                                        <h5 class="my-0 text-primary fs-3 mr-2">RM<span class="display-3"> 200.00</span></h5>
                                        <s class="fs-2 text-800 font-weight-medium">RM250</s>
                                    </div>
                                    <div class="d-flex align-items-end">
                                        <span class="mr-2 presale-title">Deposit：</span><h5 class="my-0 text-dark-red fs-3 mr-2">RM<span class=" fs-3">10.00</span></h5>
                                        <span class="badge badge-pill badge fs--2 py-1 border border-dark-red text-dark-red">
                                            <img class="align-bottom" src="images/icon_fire.svg" alt="fire-icon" width="8" />
                                            可折抵 RM 20.00
                                        </span>
                                    </div>
                                </div>

                                <div class="d-flex flex-between-center pt-3">
                                    <div>
                                        <span class="mr-2">Final Payment：</span>
                                        <b class="text-primary fs-2">RM<span>10.00</span></b>
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
                        </section>

                         <!-- Pre Sale 商品價格 (end) -->

                        <!-- product price(商品價格) start -->
                        <section class="am-g product-price-section">
                            <div class="product-price-content">
                                <div class="product-price-title">RM</div>
                                <div class="product-price">
                                    <span id="lab_price">69.90</span>
                                </div>
                                <!-- 折價部分 開始-->
                                <div id="ContentPlaceHolder1_disnote" class="discount">
                                    <span id="lab_discount_note" style="text-decoration: none"><p>-RM 33.00</p></span>
                                    <s class="original-price">
                                        <span id="lab_origianl_price">(RM 102.90)</span></s>
                                </div>
                                <!-- 折價部分 結束 -->
                            </div>
                            <!-- 【新增】商品效期 star -->
                            <p class="fs--2 mt-3 product-minimum-date">
                                <img src="images/minimum_date_icon.svg" class="mx-2">Minimum Shelf Life Available: <span>2020.10</span>, save <span>RM80.8</span>
                            </p>
                            <!-- 【新增】商品效期 end -->
                        </section>

                        <!-- product price(商品價格) end -->
                        <!-- specification & qty（商品規格和數量） star -->
                        <section class="product-spec-qty" style="min-width: 350px">
                            <div class="am-g product-spec">
                                <div class="am-u-sm-2 product-spec-qty-titile">

                                    <span class="txtRsc">Option：</span>
                                </div>
                                <div class="am-u-sm-10 product-spec-content p-0 m-0" style="padding-left: 5px;">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_select_wpa01" id="hf_select_wpa01" value="9a834e81-3802-43ee-8dc1-87c4da109021">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_select_count" id="hf_select_count" value="1">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_select_type" id="hf_select_type" value="0">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP36" id="hf_WP36" value="1">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP37" id="hf_WP37">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_WP38" id="hf_WP38">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_min" id="hf_min" value="1">
                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_max" id="hf_max" value="15">
                                    <ul class="m-0 p-0 am-cf" id="modal_ul">

                                                <li id="ContentPlaceHolder1_rp_md_product_item_li_option_0" class="am-fl product-spec-item add" onclick="javascript:selectOption(&quot;9a834e81-3802-43ee-8dc1-87c4da109021&quot;);">
                                                    控油隔離乳(送保濕試用包×2)
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA04" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA04_0" value="20">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_TYPE" id="ContentPlaceHolder1_rp_md_product_item_hf_TYPE_0" value="0">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA01" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA01_0" value="9a834e81-3802-43ee-8dc1-87c4da109021">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_SCOUNT" id="ContentPlaceHolder1_rp_md_product_item_hf_SCOUNT_0" value="15">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA10" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA10_0" value="102.90">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA06" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA06_0" value="69.90">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA16" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA16_0" value="1">
                                                </li>

                                                <li id="ContentPlaceHolder1_rp_md_product_item_li_option_1" class="am-fl product-spec-item" onclick="javascript:selectOption(&quot;e84488f4-c402-4e0f-bccc-841503b84fae&quot;);">
                                                    保濕隔離乳(送控油試用包×2)
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA04" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA04_1" value="20">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_TYPE" id="ContentPlaceHolder1_rp_md_product_item_hf_TYPE_1" value="0">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA01" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA01_1" value="e84488f4-c402-4e0f-bccc-841503b84fae">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_SCOUNT" id="ContentPlaceHolder1_rp_md_product_item_hf_SCOUNT_1" value="18">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA10" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA10_1" value="102.90">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA06" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA06_1" value="69.90">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA16" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA16_1" value="2">
                                                </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="am-g product-qty">
                                <div class="am-u-sm-2 product-spec-qty-titile">

                                    <span class="txtRsc">Quantity：</span>
                                </div>
                                <div class="am-u-sm-10 p-0 product-qty-content" style="min-width: 200px; padding-left: 5px;">
                                    <ul class="p-0 m-0 am-cf qty-controler">
                                        <li class="am-fl qty-control qty-minus" onclick="qtyDown()">-</li>
                                        <li class="am-fl qty-total" id="qty-total">1</li>
                                        <li class="am-fl qty-control qty-plus" onclick="qtyUp()">+</li>
                                    </ul>
                                </div>
                            </div>


                        </section>
                        <script>
                            $(function () {
                                $('#doc-dropdown-js').dropdown({ justify: '#doc-dropdown-justify-js' });
                            });
                        </script>

                     <!-- Pre Sale Pay Button (start) -->
                        <div class="am-g py-3">
                            <a class="btn btn-sm btn-dark-red py-3 px-5" href="#">
                                <img src="images/icon_tag_discount.svg" alt="icon_tag_discount" />
                                Pay RM10 Deposit</a>
                        </div>
                     <!-- Pre Sale Pay Button (end) -->

                        <!-- specification & qty（商品規格和數量） end -->
                        <!-- product button(商品按鈕) star -->
                        <section class="am-g product-button-section">
                            <div id="ContentPlaceHolder1_up_cart">

                                    <ul class="p-0 m-0 am-cf">
                                        <li class="am-fl">
                                            <a id="ContentPlaceHolder1_lnk_add" class="product-button add-to-cart-btn uppercase" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lnk_add','')" style="color: #d0011b;"><i class="am-icon-plus"></i>add to cart</a>
                                        </li>
                                        <li class="am-fl">
                                            <a id="ContentPlaceHolder1_lnk_buy" class="product-button buy-now-btn uppercase" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lnk_buy','')"><i class="am-icon-bolt"></i>buy now</a>

                                        </li>
                                        <li class="am-fl">


                                        </li>
                                        <li class="am-fl">


                                        </li>
                                    </ul>

</div>
                        </section>
                        <!-- product button(商品按鈕) end -->
                        <!-- ptoducts content(商品內容) star -->
                        <div class="am-u-sm-12 product-description">


                            <!-- 商品說明 end -->
                            <!-- ptoducts content(商品內容) end -->
                        </div>
                        <!-- ptoducts content(商品內容) end -->
                    </div>
                    <!-- additional purchase(加購商品) star-->

                    <!-- additional purchase(加購商品) end -->
                </div>
                <!-- products details(商品細節) end -->
                <!-- products comment start -->
                <div class="am-u-sm-3 ">
                    <div id="hw-review-right">

<div class="hw-wrapper hw-style1">
    <!-- hw-header -->
    <div class="hw-row hw-header">
        <h1 class="py-2 hw-header-title">Reviews <span class="hw-header-count">(35)</span></h1>
    </div>
    <!-- hw-main -->
    <div class="hw-main">
        <div id="hw-main-comment" class="hw-main-comment" style="display: block;">
            <!-- hw-main-average -->
            <div class="my-3 hw-avg">
                <div class="hw-avg-score">
                    <p class="mr-2 my-0 hw-avg-score-num">4.5</p>
                    <div class="d-inline-block m-0 hw-avg-star hw-js-star">
                        <span class="hw-star-gray">
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                        </span>
                        <span class="hw-avg-starfilled hw-star-yellow" style="width: 90%;">
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                            <span class="d-inline-block text-center"><i class="fa fa-star"></i></span>
                        </span>
                    </div>
                </div>
                <ul class="hw-avg-bar">
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">5 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-five-star"><span style="width: 60%;"></span></div>
                    </li>
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">4 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-four-star"><span style="width: 31.4286%;"></span></div>
                    </li>
                    <li class="d-flex align-items-center">
                        <span class="mr-2 hw-avg-bar-title">3 <i class="fa fa-star hw-star-yellow" aria-hidden="true"></i></span>
                        <div class="flex-grow-1 my-0 hw-avg-bar-line hw-js-bar hw-rv-three-star"><span style="width: 8.57143%;"></span></div>
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
            </div>

            <!-- hw-main-toolbar -->
            <div class="mb-5 mt-4 hw-toolbar" style="display: none;">
                <h3 class="hw-toolbar-title">Filter Reviews：</h3>
                <div class="d-flex justify-content-between mb-3 hw-toolbar-filter">
                    <div class="d-flex flex-grow-1 mr-2 p-2 hw-filter-search">
                        <img class="hw-search-image" src="https://review.hawooo.app/images/search.svg">
                        <input type="text" placeholder="Search Reviews">
                    </div>
                    <select name="" class="p-2 hw-filter-sort"><option data-id="7" value="Recent">Recent</option><option data-id="9" value="Most Likes">Most Likes</option></select>
                </div>
                <div class="my-3 hw-toolbar-tags">
                    <button class="m-1 hw-tag btn-show-all hw-tag-active" data-count="35">All <span> (35)</span></button>
                <button data-id="3" name="hw-filter-1" class="m-1 hw-tag star-5" data-count="21">5 Stars<span> (21)</span></button><button data-id="7" name="hw-filter-2" class="m-1 hw-tag star-4" data-count="11">4 Stars<span> (11)</span></button><button data-id="11" name="hw-filter-3" class="m-1 hw-tag star-3" data-count="3">3 Stars<span> (3)</span></button><button data-id="15" name="hw-filter-4" class="m-1 hw-tag star-2" data-count="0">2 Stars<span> (0)</span></button><button data-id="19" name="hw-filter-5" class="m-1 hw-tag star-1" data-count="0">1 Star<span> (0)</span></button></div>
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
                        <div class="mb-2 hw-comment-text hw-text-ellipsis">
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
            <div id="comment-index-0">
                <div class="py-4 mb-4 hw-comment-item">
                    <div class="d-flex align-items-center mb-2 hw-comment-top">
                        <div class="mr-3 hw-comment-info-left">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/member/icon_b.svg" class="d-block hw-comment-user-image">
                        </div>
                        <div class="hw-comment-info-right">
                            <div class="hw-comment-user">
                                <span class="hw-comment-star hw-star-yellow">
                                <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></span>
                                <span class="ml-2 hw-comment-user-name">Jessg*********l.com</span>
                            </div>
                            <h4 class="mt-1 mb-0 hw-comment-product">限時買就送 C'est vrai 妝前隔離乳系列 30ml 送隔離乳試用包×2-控油隔離乳(送保濕試用包×2)</h4>
                        </div>
                    </div>
                    <div class="hw-comment-middle">
                        <div class="mb-2 hw-comment-text hw-text-ellipsis">ok</div>
                        <div class="mb-2 hw-comment-image">
                        </div>
                    </div>
                    <div class="d-flex justify-content-between mt-2 mb-2 hw-comment-bottom">
                        <div class="hw-comment-like" data-id="1563cedb-99f6-4539-9681-8bd4b2111f49"><i class="fa fa-thumbs-up" aria-hidden="true"></i><span>(0)</span></div>
                        <div class="hw-comment-date">2020-09-21</div>
                    </div>
                </div>
            </div><div id="comment-index-1">
                <div class="py-4 mb-4 hw-comment-item">
                    <div class="d-flex align-items-center mb-2 hw-comment-top">
                        <div class="mr-3 hw-comment-info-left">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/member/icon_b.svg" class="d-block hw-comment-user-image">
                        </div>
                        <div class="hw-comment-info-right">
                            <div class="hw-comment-user">
                                <span class="hw-comment-star hw-star-yellow">
                                <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></span>
                                <span class="ml-2 hw-comment-user-name">Jessg*********l.com</span>
                            </div>
                            <h4 class="mt-1 mb-0 hw-comment-product">限時買就送 C'est vrai 妝前隔離乳系列 30ml 送隔離乳試用包×2-保濕隔離乳(送控油試用包×2)</h4>
                        </div>
                    </div>
                    <div class="hw-comment-middle">
                        <div class="mb-2 hw-comment-text hw-text-ellipsis">Good</div>
                        <div class="mb-2 hw-comment-image">
                        </div>
                    </div>
                    <div class="d-flex justify-content-between mt-2 mb-2 hw-comment-bottom">
                        <div class="hw-comment-like" data-id="ee4a1a51-2858-4866-84ff-12e095886ecd"><i class="fa fa-thumbs-up" aria-hidden="true"></i><span>(0)</span></div>
                        <div class="hw-comment-date">2020-09-19</div>
                    </div>
                </div>
            </div></div>
        </div>
        <div id="hw-no-comment" class="py-4 hw-main-no-comment" style="display: none;">
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
    <div class="my-4 hw-footer" style="display: block;">
        <ul class="hw-page" style="display: none;">
            <li class="hw-page-item">
                <a class="hw-page-link hw-prev-page hw-submit-disable" href="#" aria-label="Previous">
                    <span aria-hidden="true">«</span>
                </a>
            </li>
            <li class="hw-page-item hw-active"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">1</a></li><li class="hw-page-item"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">2</a></li><li class="hw-page-item"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">3</a></li><li class="hw-page-item"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">4</a></li><li class="hw-page-item"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">5</a></li><li class="hw-page-item"><a class="hw-page-link hw-js-page hw-submit-disable" href="javascript:void(0)">...</a></li><li class="hw-page-item"><a class="hw-page-link hw-js-page current-page" href="javascript:void(0)">18</a></li><li class="hw-page-item">
                <a class="hw-page-link hw-next-page" href="#" aria-label="Next">
                    <span aria-hidden="true">»</span>
                </a>
            </li>
        </ul>
        <div class="hw-view">
            <a href="#">View All <i class="fa fa-angle-right" aria-hidden="true"></i></a>
        </div>
    </div>

    <!-- hw-loader -->
<script>$(document).on('click', '.hw-view a', function (e) { e.preventDefault(); $('#product-comment a').focus(); $('#product-comment a').click(); });</script></div>
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
        var getModelData = {"response":null,"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ","product_id":"9a834e81-3802-43ee-8dc1-87c4da109021","group_id":"22105","product_name":null,"type":1,"per_page":2};
        hwreview({
            model: getModelData,
            wrapper: $('.hw-wrapper')
        })
  //  });
</script>
</div>
                    <script>
                        function GetHwCommentRight(gid, oid) {
                            $("#hw-review-right").load("https://review.hawooo.app/ReviewTemplate?Token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ&GroupId=" + gid + "&ProductId=" + oid + "&Type=1&PerPage=2");
                        };
                    </script>
                </div>
                <!-- products comment end -->
            </div>
        </section>
</asp:Content>

