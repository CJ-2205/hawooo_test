<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="productdetail2.aspx.cs" Inherits="user_productdetail2" %>

<%@ Import Namespace="hawooo" %>
<%@ Reference Page="~/mobile/product.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/product_details.css" />
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <!--  引用Hawooo的Comment Js-->
    <script src="https://review.hawooo.app/js/Review.js"></script>

    <style>
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
        }
    </style>
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
            padding-top: 10px;
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
            padding-top: 10px;
        }

        .pnote {
            font-size: 12px;
            font-weight: 600;
            color: #595959;
            float: left;
            padding: 0px 20px 10px 0px;
        }

            .pnote img {
                width: 20px;
            }

            .pnote span {
                font-size: 14px;
            }

        .autoEvent {
            padding: 5px 0px 5px 10px;
            /*color: #689b94;*/
            font-size: 14px;
            font-weight: 600;
        }
    </style>
    <link href="assets/css/coupon/coupon.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 120px; display: block;">
        <!--  product breadcrumb（商品頁麵包屑） star-->
        <section class="product-breadcrumb-section">
            <div class="am-container product-breadcrumb-wrapper">
                <ul class="am-u-sm-12 am-cf">
                    <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                </ul>
            </div>
        </section>
        <!--  products breadcrumb（商品頁麵包屑） end-->
        <asp:HiddenField ID="hf_WP01" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP06" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP28" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP29" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP31" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP32" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP43" runat="server" EnableViewState="false" />
        <%-- 1128新增 --%>
        <asp:HiddenField ID="hf_B01" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_SupName" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_BNAME" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_CNAME" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_PIMG" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_PRICE" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_SPRICE" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <asp:HiddenField ID="hf_DpaImg1" runat="server" EnableViewState="false" ClientIDMode="Static" />
        <!-- products (商品照片＆商品細節) star -->
        <section class="product-pic-gift-section">
            <div class="am-container am-cf product-pic-gift-container">
                <!-- products pic & gift(商品照片＆滿額贈禮區塊) star -->
                <div class="am-u-sm-4 am-fl product-pic-gift-wrapper">
                    <div class="am-u-sm-12 product-pic-wrapper">
                        <!-- product main pic star （商品主要大照片，ＪＱ會自動幾帶入照片）-->
                        <div class="product-pic">
                            <div class="event_note" runat="server" id="eventNote">
                                <asp:Literal ID="litEventNote" runat="server"></asp:Literal>
                            </div>
                            <asp:Literal ID="lit_img_tag" runat="server"></asp:Literal>
                        </div>
                        <!-- product main pic end -->
                        <!-- see more products pic star-->
                        <div class="more-products-pic-slider">
                            <span class="more-products-pic-control more-products-pic-left"><</span>
                            <asp:HiddenField ID="hf_WP08_1" runat="server" EnableViewState="false" />
                            <ul class="p-0 m-0 am-cf" id="more-image">
                                <asp:Literal ID="lit_WP08_LIST" runat="server"></asp:Literal>
                            </ul>

                            <span class="more-products-pic-control more-products-pic-right">></span>
                        </div>
                        <!-- see more products pic end-->
                    </div>
                    <!-- gift (滿額贈禮) star -->
                    <div class="am-u-sm-12 m-0 product-gift-wrapper" id="full_gift_event" runat="server">
                        <div class="am-u-sm-12 product-gift-title">滿額贈品 PREMIUMS</div>

                        <ul class="p-0 m-0">
                            <asp:Repeater ID="rp_gift_event" runat="server">
                                <ItemTemplate>
                                    <li class="am-u-sm-12 product-gift-item">
                                        <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_GE05" runat="server" Value='<%# Eval("GE05") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_GP01" runat="server" Value='<%# Eval("GP01") %>' EnableViewState="false" />
                                        <div class="am-u-sm-12 product-gift-item-top">
                                            <div class="am-u-sm-3 product-gift-item-tag">
                                                <%-- <span class="price-not-qualify">未符合</span>--%>
                                            </div>
                                            <div class="am-u-sm-9 product-gift-item-title">
                                                <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal>
                                            </div>
                                        </div>
                                        <div class="am-u-sm-12 p-0 product-gift-item-bottom">
                                            <div class="am-u-sm-3 p-0 product-gift-pic">
                                                <img src='<%# "../images/giftimgs/" + Eval("GP10") %>' />
                                            </div>
                                            <div class="am-u-sm-9 p-0 product-gift-text">
                                                <h4>
                                                    <span class="txtRsc" data-id="cart025">滿額金額</span>：<span><asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal></span></h4>
                                                <h5>
                                                    <span class="txtRsc" data-id="gf002">獲取條件</span>：<span><asp:Literal ID="lit_GE05" runat="server" Text='<%# Eval("GE05").ToString().Equals("0") ? "滿額贈送" : "累加贈送" %>'></asp:Literal></span></h5>
                                                <p>
                                                    <span class="txtRsc" data-id="gf003">活動內容</span>：
                                                    <span>
                                                        <asp:Literal ID="lit_GE11" runat="server" Text='<%# Eval("GE11").ToString() %>'></asp:Literal></span>
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                    <!-- gift (滿額贈禮) end -->
                    <!-- 限時團購倒數時鐘 開始 -->
                    <div class="am-u-sm-12 m-0 am-cf countdown-wrapper" style="height: auto" id="can_buy_time" runat="server">

                        <span class="purchas-agent-countdown" id="time">
                            <i class="am-icon-clock-o"></i>
                            <span class="countdown-time count-day out-of-time" id="d">0
                            </span><span class="count-day out-of-time">d</span>
                            <span class="countdown-time count-time" id="h">0</span><span class="count-time">h</span>
                            <span class="countdown-time count-min" id="m">0</span><span class="count-min">m</span>
                            <span class="countdown-time count-sec" id="s">0</span><span class="count-sec">s</span>
                        </span>

                        <!-- 限時團購倒數時鐘 結束 -->
                        <!-- 限時倒數 已賣份數 -->
                        <!--<div class="am-fr already-sold"><i class="am-icon-caret-right"></i>已售出<span>1234</span>份</div>-->
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
                </div>
                <!-- products pic & gift(商品照片＆滿額贈禮區塊) end -->
                <!-- products details(商品細節) star -->
                <div class="am-u-sm-5 am-fl product-details-wrapper">
                    <div class="product-details-content">
                        <!-- tag 標籤（新品....等等）star (如果標籤無效＋CLASS:not-active)-->
                        <div class="am-u-sm-12 product-tag-wrapper">
                            <span class="products-tag " id="tag1" runat="server">
                                <asp:Literal ID="lit_coin_icon" runat="server"></asp:Literal>
                                Ha coin<p>x<asp:Literal ID="lit_ha_coin" runat="server"></asp:Literal></p>
                                <a href="https://www.hawooo.com/user/hacoin.aspx" target="_blank"><i class="am-icon-question-circle"></i></a>
                            </span>
                            <span class="products-tag" id="tag3" runat="server">
                                <img src="<%= ConfigurationManager.AppSettings["imgUrl"].ToString() %>icon/price.svg" />
                                <span>Price Guarantee</span>
                                <a href="https://www.hawooo.com/user/qa19.aspx"><i class="am-icon-question-circle"></i></a>
                            </span>
                            <span class="products-tag" id="tag2" runat="server">
                                <img src="<%= ConfigurationManager.AppSettings["imgUrl"].ToString() %>icon/free.svg" />
                                <span>Free Shipping</span>
                            </span>
                            <span class="products-tag" id="tag4" runat="server">
                                <img src="icon/p_discount.jpg" />2件9折 3件8折<a href="#"></a>
                            </span>
                        </div>
                        <div class="am-g">
                            <asp:Literal ID="lit_west_note" runat="server"></asp:Literal>
                            <asp:Literal ID="lit_air_note" runat="server"></asp:Literal>
                            <asp:Literal ID="lit_coupon_note" runat="server"></asp:Literal>
                            <asp:Literal ID="lit_wrap_note" runat="server"></asp:Literal>
                        </div>
                        <script>
                            function hiddenSamePrice() {
                                $("#p-sameprice").css("display", "none");
                            }
                        </script>

                        <!-- tag 標籤（新品....等等）end -->
                        <!-- ptoducts title(商品標題) star -->
                        <div class="am-u-s-m-12 product-title">
                            <asp:HiddenField ID="hf_brand" runat="server" />

                            <asp:Literal ID="lit_B01" runat="server"></asp:Literal>
                            <h4>
                                <asp:Literal ID="lit_WP02" runat="server"></asp:Literal></h4>

                        </div>
                        <!-- ptoducts title(商品標題) end -->
                        <!-- product price(商品價格) star -->
                        <section class="am-g product-price-section">
                            <div class="product-price-content">
                                <div class="product-price-title">RM</div>
                                <div class="product-price">
                                    <asp:Label ID="lab_price" runat="server" Text="0" ClientIDMode="Static" EnableViewState="false"></asp:Label>
                                </div>
                                <!-- 折價部分 開始-->
                                <div class="discount" id="disnote" runat="server">
                                    <asp:Label ID="lab_discount_note" runat="server" Text="0" ClientIDMode="Static" EnableViewState="false" Style="text-decoration: none"></asp:Label>
                                    <s class="original-price">
                                        <asp:Label ID="lab_origianl_price" runat="server" Text="0" ClientIDMode="Static" EnableViewState="false"></asp:Label></s>
                                </div>
                                <!-- 折價部分 結束 -->
                            </div>
                            <div class="autoEvent" id="autoEvent" runat="server">
                                <asp:Repeater ID="rp_auto_discount" runat="server">
                                    <ItemTemplate>
                                        <a href="<%# Eval("WE16") %>">
                                            <span style="color: #689b94;">
                                                <i class="am-icon-hand-o-right"></i>
                                                <asp:Literal ID="lit_auto_link" runat="server" Text='<%#  (this.Master as user_user).LgType == LangType.en ? Eval("WE02_EN") : Eval("WE02")  %>'></asp:Literal>
                                            </span>
                                        </a>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </section>

                        <!-- product price(商品價格) end -->
                        <!-- specification & qty（商品規格和數量） star -->
                        <section class="product-spec-qty" style="min-width: 350px">
                            <div class="am-g product-spec">
                                <div class="am-u-sm-2 product-spec-qty-titile">
                                    <%-- <span class="txtRsc" data-id="pd004">選擇：</span>--%>
                                    <span class="txtRsc">Option：</span>
                                </div>
                                <div class="am-u-sm-10 product-spec-content p-0 m-0" style="padding-left: 5px;">
                                    <asp:HiddenField ID="hf_select_wpa01" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_select_count" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_select_type" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_WP36" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_WP37" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_WP38" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_min" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <asp:HiddenField ID="hf_max" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                    <ul class="m-0 p-0 am-cf" id="modal_ul">
                                        <asp:Repeater ID="rp_md_product_item" runat="server">
                                            <ItemTemplate>
                                                <li class="am-fl product-spec-item" runat="server" id="li_option" onclick='<%# "javascript:selectOption(\"" + Eval("WPA01").ToString() + "\");" %>'>
                                                    <asp:Literal ID="lit_md_productItem_name" runat="server" Text='<%# Eval("WPA02") %>'></asp:Literal>
                                                    <asp:HiddenField ID="hf_WPA04" runat="server" Value='<%# Eval("WPA04") %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_TYPE" runat="server" EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_WPA01" runat="server" Value='<%# Eval("WPA01") %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_SCOUNT" runat="server" Value='<%# Eval("SCOUNT") %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_WPA10" runat="server" Value='<%# hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_WPA06" runat="server" Value='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_WPA16" runat="server" Value='<%# Eval("WPA16").ToString().Equals("") ? "1" : Eval("WPA16").ToString()  %>' EnableViewState="false" />
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                            <div class="am-g product-qty">
                                <div class="am-u-sm-2 product-spec-qty-titile">
                                    <%--<span class="txtRsc" data-id="pd005">數量：</span>--%>
                                    <span class="txtRsc">Quantity：</span>
                                </div>
                                <div class="am-u-sm-10 p-0 product-qty-content" style="min-width: 200px; padding-left: 5px;">
                                    <ul class="p-0 m-0 am-cf qty-controler">
                                        <li class="am-fl qty-control qty-minus" onclick="qtyDown()">-</li>
                                        <li class="am-fl qty-total" id="qty-total">0</li>
                                        <li class="am-fl qty-control qty-plus" onclick="qtyUp()">+</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="am-g" style="padding-top: 5px;" id="panel_coupon" runat="server">
                                <div class="am-u-sm-2 product-spec-qty-titile">
                                    <span class="txtRsc">Coupon：</span>
                                </div>
                                <div class="am-u-sm-10 p-0 coupon-item" style="min-width: 200px; padding-left: 10px;">
                                    <asp:Repeater ID="rp_coupon" runat="server">
                                        <ItemTemplate>
                                            <div class="coupon coupon1 am-dropdown" data-am-dropdown style="cursor: pointer">
                                                <div class="am-dropdown-toggle coupon-p">
                                                    <span>
                                                        <%# Eval("PC08").ToString().Equals("0") ? Eval("PC09").ToString() + "% " : "RM" + Eval("PC09").ToString() %> OFF
                                                    </span>
                                                </div>
                                                <div class="am-dropdown-content coupon-text">
                                                    <div class="am-u-sm-8">
                                                        <h2><%# Eval("PC08").ToString().Equals("0") ? Eval("PC09").ToString() + "% " : "RM" + Eval("PC09").ToString() %> OFF</h2>
                                                        <p>
                                                            <%# Eval("PC02").ToString() %>
                                                            <br />
                                                            <%--  <span class="coupon-num-title">折扣券代碼:</span>
                                                    <span class="coupon-num">ekawekqwior[io</span><br />--%>
                                                            <span class="coupon-expiry">Min: <%# Eval("PC06").ToString().Equals("0") ? "&nbsp;Qty " + Eval("PC07").ToString().Split('.')[0] : "RM" + Eval("PC07") %>  Due day:~<%# Convert.ToDateTime(Eval("PC05").ToString()).ToString("dd/MM") %></span>
                                                        </p>
                                                    </div>
                                                    <div class="am-u-sm-4 am-center get-now-btn-wrop">
                                                        <a class="am-btn am-btn-danger  am-center am-vertical-align-middle get-now-btn" onclick="GetCoupon('<%# Eval("PC01") %>');">Get Now</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <script>
                                    function GetCoupon(cid) {
                                        $("#hf_couponid").val(cid);
                                        $("#btn_get_coupon").click();
                                    }
                                </script>
                                <asp:UpdatePanel ID="up_coupon" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:HiddenField ID="hf_couponid" runat="server" ClientIDMode="static" />
                                        <asp:Button ID="btn_get_coupon" runat="server" Text="" OnClick="btn_get_coupon_OnClick" ClientIDMode="static" Style="display: none;" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                        </section>
                        <script>
                            $(function () {
                                $('#doc-dropdown-js').dropdown({ justify: '#doc-dropdown-justify-js' });
                            });
                        </script>


                        <!-- specification & qty（商品規格和數量） end -->
                        <!-- product button(商品按鈕) star -->
                        <section class="am-g product-button-section">
                            <asp:UpdatePanel ID="up_cart" runat="server">
                                <ContentTemplate>
                                    <ul class="p-0 m-0 am-cf">
                                        <li class="am-fl">
                                            <asp:LinkButton ID="lnk_add" runat="server" OnClick="lnk_add_Click" CssClass="product-button add-to-cart-btn uppercase" Style="color: #d0011b;"><i class="am-icon-plus"></i>add to cart</asp:LinkButton>
                                        </li>
                                        <li class="am-fl">
                                            <asp:LinkButton ID="lnk_buy" runat="server" OnClick="lnk_buy_Click" CssClass="product-button buy-now-btn uppercase"><i class="am-icon-bolt"></i>buy now</asp:LinkButton>

                                        </li>
                                        <li class="am-fl">
                                            <asp:LinkButton ID="lnk_preorder" runat="server" OnClick="lnk_preorder_OnClick" CssClass="product-button buy-now-btn uppercase" Visible="false"><i class="am-icon-plus"></i>Add To WishList</asp:LinkButton>

                                        </li>
                                        <li class="am-fl">
                                            <asp:LinkButton ID="lnk_soldout" runat="server" CssClass="product-button buy-now-btn uppercase" Visible="false">
                                               <span style="text-decoration:line-through">Sold Out</span>
                                            </asp:LinkButton>

                                        </li>
                                    </ul>
                                </ContentTemplate>

                            </asp:UpdatePanel>
                        </section>
                        <!-- product button(商品按鈕) end -->
                        <!-- ptoducts content(商品內容) star -->
                        <div class="am-u-sm-12 product-description">
                            <asp:Literal ID="lit_WP21" runat="server"></asp:Literal>
                            <asp:Literal ID="lit_WP33_WP34" runat="server"></asp:Literal>
                            <!-- 商品說明 end -->
                            <!-- ptoducts content(商品內容) end -->
                        </div>
                        <!-- ptoducts content(商品內容) end -->
                    </div>
                    <!-- additional purchase(加購商品) star-->
                    <%--<div class="additional-purchase-wrapper">
                        <div class="am-u-sm-12 additional-purchase-title">
                            <i class="am-icon-plus-circle"></i>我要加購：
                        </div>
                        <div class="am-u-sm-12 additional-purchase-content">
                            <ul class="p-0 m-0 am-cf am-avg-sm-2">
                                <!-- 一筆加購品項 star -->
                                <li class="am-fl am-cf am-g">
                                    <!-- 加購checkbox -->
                                    <div class="am-u-sm-1 am-fl p-0 additional-checkbox-wrapper">
                                        <label></label>
                                        <input type="checkbox" name="" class="p-0 m-0 additional-checkbox" value="">
                                    </div>
                                    <!-- 加購圖片img -->
                                    <div class="am-u-sm-3 am-fl p-0 additional-pic">
                                        <img src="https://www.hawooo.com/images/webimgs/n20170307042036554.jpg">
                                    </div>
                                    <!-- 加購商品描述description -->
                                    <div class="am-u-sm-8 am-fl p-0 additional-text">
                                        <a href="javascript:void(0)">
                                            <h4 class="p-0 m-0">AKUMA 你濃我融 ROCKME接睫毛專用卸妝凝露 50ml</h4>
                                        </a>
                                    </div>
                                    <!-- 價格＆數量 -->
                                    <div class="am-u-sm-8 am-cf additional-price">
                                        <h5 class="p-0 m-0 am-u-sm-7 am-fl">加購價<span>1234.3</span>
                                        </h5>
                                        <span class="p-0 m-0 am-u-sm-5 am-fl">
                                            <ul class="p-0 m-0 am-cf">
                                                <li class="am-fl qty-control qty-minus">-</li>
                                                <li class="am-fl qty-total">0</li>
                                                <li class="am-fl qty-control qty-plus">+</li>
                                            </ul>
                                        </span>
                                    </div>
                                </li>
                                <!-- 一筆加購品項 end -->
                                <!-- 一筆加購品項 star -->
                                <li class="am-fl am-cf am-g">
                                    <!-- 加購checkbox -->
                                    <div class="am-u-sm-1 am-fl p-0 additional-checkbox-wrapper">
                                        <label></label>
                                        <input type="checkbox" name="" class="p-0 m-0 additional-checkbox" value="">
                                    </div>
                                    <!-- 加購圖片img -->
                                    <div class="am-u-sm-3 am-fl p-0 additional-pic">
                                        <img src="https://www.hawooo.com/images/webimgs/n20170307042036554.jpg">
                                    </div>
                                    <!-- 加購商品描述description -->
                                    <div class="am-u-sm-8 am-fl p-0 additional-text">
                                        <a href="javascript:void(0)">
                                            <h4 class="p-0 m-0">AKUMA 你濃我融 ROCKME接睫毛專用卸妝凝露 50ml</h4>
                                        </a>
                                    </div>
                                    <!-- 價格＆數量 -->
                                    <div class="am-u-sm-8 am-cf additional-price">
                                        <h5 class="p-0 m-0 am-u-sm-7 am-fl">加購價<span>1234.3</span>
                                        </h5>
                                        <span class="p-0 m-0 am-u-sm-5 am-fl">
                                            <ul class="p-0 m-0 am-cf">
                                                <li class="am-fl qty-control qty-minus">-</li>
                                                <li class="am-fl qty-total">0</li>
                                                <li class="am-fl qty-control qty-plus">+</li>
                                            </ul>
                                        </span>
                                    </div>
                                </li>
                                <!-- 一筆加購品項 end -->
                                <!-- 一筆加購品項 star -->
                                <li class="am-fl am-cf am-g">
                                    <!-- 加購checkbox -->
                                    <div class="am-u-sm-1 am-fl p-0 additional-checkbox-wrapper">
                                        <label></label>
                                        <input type="checkbox" name="" class="p-0 m-0 additional-checkbox">
                                    </div>
                                    <!-- 加購圖片img -->
                                    <div class="am-u-sm-3 am-fl p-0 additional-pic">
                                        <img src="https://www.hawooo.com/images/webimgs/n20170307042036554.jpg">
                                    </div>
                                    <!-- 加購商品描述description -->
                                    <div class="am-u-sm-8 am-fl p-0 additional-text">
                                        <a href="javascript:void(0)">
                                            <h4 class="p-0 m-0">AKUMA 你濃我融 ROCKME接睫毛專用卸妝凝露 50ml</h4>
                                        </a>
                                    </div>
                                    <!-- 價格＆數量 -->
                                    <div class="am-u-sm-8 am-cf additional-price">
                                        <h5 class="p-0 m-0 am-u-sm-7 am-fl">加購價<span>1234.3</span>
                                        </h5>
                                        <span class="p-0 m-0 am-u-sm-5 am-fl">
                                            <ul class="p-0 m-0 am-cf">
                                                <li class="am-fl qty-control qty-minus">-</li>
                                                <li class="am-fl qty-total">0</li>
                                                <li class="am-fl qty-control qty-plus">+</li>
                                            </ul>
                                        </span>
                                    </div>
                                </li>
                                <!-- 一筆加購品項 end -->
                                <!-- 一筆加購品項 star -->
                                <li class="am-fl am-cf am-g">
                                    <!-- 加購checkbox -->
                                    <div class="am-u-sm-1 am-fl p-0 additional-checkbox-wrapper">
                                        <label></label>
                                        <input type="checkbox" name="" class="p-0 m-0 additional-checkbox" value="">
                                    </div>
                                    <!-- 加購圖片img -->
                                    <div class="am-u-sm-3 am-fl p-0 additional-pic">
                                        <img src="https://www.hawooo.com/images/webimgs/n20170307042036554.jpg">
                                    </div>
                                    <!-- 加購商品描述description -->
                                    <div class="am-u-sm-8 am-fl p-0 additional-text">
                                        <a href="javascript:void(0)">
                                            <h4 class="p-0 m-0">AKUMA 你濃我融 ROCKME接睫毛專用卸妝凝露 50ml</h4>
                                        </a>
                                    </div>
                                    <!-- 價格＆數量 -->
                                    <div class="am-u-sm-8 am-cf additional-price">
                                        <h5 class="p-0 m-0 am-u-sm-7 am-fl">加購價<span>1234.30</span>
                                        </h5>
                                        <span class="p-0 m-0 am-u-sm-5 am-fl">
                                            <ul class="p-0 m-0 am-cf">
                                                <li class="am-fl qty-control qty-minus">-</li>
                                                <li class="am-fl qty-total">0</li>
                                                <li class="am-fl qty-control qty-plus">+</li>
                                            </ul>
                                        </span>
                                    </div>
                                </li>
                                <!-- 一筆加購品項 end -->
                            </ul>
                        </div>
                    </div>--%>
                    <!-- additional purchase(加購商品) end -->
                </div>
                <!-- products details(商品細節) end -->
                <!-- products comment start -->
                <div class="am-u-sm-3 ">
                    <div id="hw-review-right"></div>
                    <script>
                        function GetHwCommentRight(oid) {
                            $("#hw-review-right").load("https://review.hawooo.app/ReviewTemplate?Token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ&ProductId=" + oid + "&Type=1&PerPage=2");
                        };
                    </script>
                </div>
                <!-- products comment end -->
            </div>
        </section>
        <!-- products (商品照片＆商品細節) end -->
        <!-- products body description (商品中間說明區塊) star -->
        <section class="body-description-wrapper">
            <div class="am-container body-description">
                <div class="am-tabs body-description-tabs" data-am-tabs>
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="nav-tabs am-u-sm-3 am-active"><a href="#tab1">
                            <span class="txtRsc" data-id="pd013">商品資訊</span>
                        </a></li>
                        <li class="nav-tabs am-u-sm-3"><a href="#tab2">
                            <span class="txtRsc" data-id="pd014">運送/保固/退換貨</span>
                        </a></li>
                        <li class="nav-tabs am-u-sm-3" id="divProductSpecTitle" runat="server"><a href="#tab3">
                            <span>商品規格</span>
                        </a></li>
                        <li class="nav-tabs am-u-sm-3" id="product-comment">
                            <a href="#tab4"><span>商品評論</span></a>
                        </li>
                    </ul>
                    <div class="am-tabs-bd">
                        <!-- 商品照片或更多資訊 -->
                        <div class="am-tab-panel am-active" id="tab1">
                            <div class="am-u-sm-12" style='<%= (this.Master as user_user).LgType == LangType.zh ? "display:none;": "" %> padding-top: 20px;'>
                                <img src="https://www.hawooo.com/images/hawooo/over.png" style="width: 100%" />
                            </div>
                            <asp:Literal ID="lit_WP03" runat="server"></asp:Literal>
                        </div>

                        <!-- 商品退貨說明 -->
                        <div class="am-tab-panel" id="tab2">
                            <table class="after-sals am-u-sm-9 am-u-sm-centered" style="line-height: 50px" id="zhnote" runat="server">
                                <tr>
                                    <td class="am-u-sm-2 p-0">送貨範圍：</td>
                                    <td class="am-u-sm-10 p-0">HaWooo.com 商品只配送到馬來西亞。</td>
                                </tr>
                                <tr>
                                    <td class="am-u-sm-2 p-0">到貨天數：</td>
                                    <td class="am-u-sm-10 p-0">西馬-訂單確認後3-10個工作天送達（不含週末與公共假期）
                                        <br>
                                        東馬-訂單確認後5-15個工作天送達（不含週末與公共假期）
                                    </td>
                                </tr>
                                <tr>
                                    <td class="am-u-sm-2 p-0">退換貨說明：</td>
                                    <td class="am-u-sm-10 p-0">若您收到的商品有瑕疵、破損等問題，請於收到貨後7天內，盡快與客服聯繫，以便可以盡快協助您處理，逾期不候。退換貨標準請參照 <a href="qa17.aspx">退貨條款</a>。</td>
                                </tr>

                            </table>
                            <table class="after-sals am-u-sm-9 am-u-sm-centered" style="line-height: 50px" id="ennote" runat="server">

                                <tr>
                                    <td class="am-u-sm-2 p-0">Delivery Area：</td>
                                    <td class="am-u-sm-10 p-0">HaWooo.com deliver to Malaysia only</td>
                                </tr>
                                <tr>
                                    <td class="am-u-sm-2 p-0">Arrival Time：</td>
                                    <td class="am-u-sm-10 p-0">West Malaysia - 3-10 working days after order confirmed  (excluding weekends and public holidays)
                                     
                                        <br>
                                        East Malaysia - 5-15 working days after order confirmed   (excluding weekends and public holidays)
                                    </td>
                                </tr>
                                <tr>
                                    <td class="am-u-sm-2 p-0">Return and exchange instructions：</td>
                                    <td class="am-u-sm-10 p-0">Only available for defective or damaged items. Please contact customer service as soon as possible within 7 days after receiving the items, so that we can assist you immediately. Please refer to the return policy for return and exchange standards.[<a href="qa17.aspx">Return Policy</a>]。</td>
                                </tr>

                            </table>
                        </div>
                        <div class="am-tab-panel" id="tab3">
                            <div id="divProductSpecContent" runat="server">
                                <asp:Literal ID="lit_WP58" runat="server"></asp:Literal>
                            </div>
                        </div>

                        <!--  Hawooo Comment star-->
                        <div class="am-tab-panel" id="tab4">
                            <div id="hw-review"></div>
                        </div>
                        <script>
                            function GetHwComment(oid) {
                                $("#hw-review").load("https://review.hawooo.app/ReviewTemplate?Token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ&ProductId=" + oid + "&Type=2&PerPage=10");
                            };
                        </script>
                        <!--  Hawooo Comment end-->

                    </div>
                </div>

            </div>
        </section>
        <!-- products body description (商品中間說明區塊) end -->
        <!-- guess what you like(猜你喜歡) star -->
        <section class="guess-you-like" id="guess_you_like" runat="server">
            <div class="am-container s-guess-you-like-wrapper">
                <div class="am-u-sm-12 guess-you-like-title">
                    <h3><i class="am-icon-heart-o"></i>
                        <span class="txtRsc" data-id="pd011">猜你喜歡</span>
                    </h3>
                </div>
                <div class="am-u-sm-12 guess-you-like-content">
                    <!-- 商品slider本體 star -->
                    <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                        <ul class="am-slides">
                            <asp:Repeater ID="rp_commend1" runat="server">
                                <ItemTemplate>
                                    <asp:Literal ID="lit_rp_start" runat="server"></asp:Literal>
                                    <li>
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <div class="am-u-sm-12 more-products-slider-pic">
                                                <img src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                            </div>
                                            <div class="am-u-sm-12 more-products-slider-text" style="padding: 10px">
                                                <h4 class="am-u-sm-12"><%# Eval("WP02").ToString() %></h4>
                                                <div class="am-cf price-discount">
                                                    <h5 class="am-fl">
                                                        <p>RM  <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %><span class="price-end">up</span></p>
                                                    </h5>
                                                    <p class="discount-range"><%# PbClass.GetSave( Eval("WPA10").ToString(), Eval("WPA06").ToString(), "7.6")%></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <asp:Literal ID="lit_rp_end" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                    <!-- 商品slider本體 end -->
                </div>
            </div>
        </section>
        <!-- guess what you like end -->
        <!-- most view(最多人觀看) star -->
        <section class="s-guess-you-like" id="s_guess_you_like" runat="server">
            <div class="am-container s-guess-you-like-wrapper">
                <div class="am-u-sm-12 guess-you-like-title">
                    <h3><i class="am-icon-heart-o"></i>
                        <span class="txtRsc" data-id="pd012">最多人觀看</span> </h3>
                </div>
                <div class="am-u-sm-12 guess-you-like-content">
                    <!-- 商品slider本體 star -->
                    <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                        <ul class="am-slides">
                            <asp:Repeater ID="rp_commend2" runat="server">
                                <ItemTemplate>
                                    <asp:Literal ID="lit_rp_start" runat="server"></asp:Literal>
                                    <li>
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <div class="am-u-sm-12 more-products-slider-pic">
                                                <img src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                            </div>
                                            <div class="am-u-sm-12 more-products-slider-text" style="padding: 10px">
                                                <h4 class="am-u-sm-12"><%# Eval("WP02").ToString() %></h4>
                                                <div class="am-cf price-discount">
                                                    <h5 class="am-fl">
                                                        <p>RM  <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %><span class="price-end">up</span></p>
                                                    </h5>
                                                    <p class="discount-range"><%# PbClass.GetSave( Eval("WPA10").ToString(), Eval("WPA06").ToString(), "7.6")%></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <asp:Literal ID="lit_rp_end" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <!-- 商品slider本體 end -->
                </div>
            </div>
        </section>
        <!-- most view(最多人觀看) end -->
        <!-- footer-good-block 頁尾三大好處的icon star -->
        <%--  <section class="footer-good-block">
            <div class="am-g" style="background: white; margin: 20px 0px;">
                <div class="am-container footer-good-block-wrapper">
                    <ul class="am-avg-sm-3">
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_01.png" id="company-quality1">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>100％海外正品</h4>
                                    <p>100% Authentic</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_02.png" id="company-quality2">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>RM199 免運</h4>
                                    <p>RM199 Free Shipping</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_03.png">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>3-10天到貨</h4>
                                    <p>Fast Delivery</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>--%>
        <!-- footer-good-block 頁尾三大好處的icon end -->
    </div>

    <div id="fb-root">
    </div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.4&appId=915312548542698";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    <script language="javascript">
        function fbshareCurrentPage() { window.open("https://www.facebook.com/sharer/sharer.php?u=" + escape(window.location.href) + "&t=" + document.title, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600'); return false; };
    </script>
    <script>
        ga('ec:setAction', 'detail', { 'step': 1 });
    </script>
    <script>
        function sendProductDetail(pID, pType, pTitle, imgUrl, pUrl, pPrice, pSalePrice) {

            var appierRtItemId = pID;
            var appierDCAvail = pType;
            var appierDCItemTitle = pTitle;
            var appierDCItemPicUrl = imgUrl;
            var appierDCItemUrl = pUrl;
            var appierDCRetailPrice = pPrice;
            var appierDCCurrentPrice = pSalePrice;
            var appierDCCurrency = 'MYR';
            //========= PLEASE DO NOT CHANGE BELOW =========
            if (typeof (window.APPIER_RETARGET) == 'undefined') {
                (function (w, d, s, m) {
                    var f = d.getElementsByTagName('script')[0],
                        j = d.createElement('script'),
                        ns = 'APPIER_RETARGET';
                    w._appierSendQueue = w._appierSendQueue || [];
                    w['appierRetargetJson'] = { id: s, site: m };
                    j.async = true;
                    j.src = '//jscdn.appier.net/aa.js?id=' + m;
                    f.parentNode.insertBefore(j, f);
                    !w[ns] && (w[ns] = {});
                    (!w[ns].send) && (w[ns].send = function (j) {
                        w._appierSendQueue.push(j);
                    });
                })(window, document, "ZFfm", "hawooo.com");
            }
            window.APPIER_RETARGET.send({ 't': 'type_product', 'content': appierRtItemId });
            window.appier_tag_params = {
                "ProductID": appierRtItemId,
                "Title": appierDCItemTitle,
                "Image": appierDCItemPicUrl,
                "URL": appierDCItemUrl,
                "RetailPrice": appierDCRetailPrice,
                "CurrentPrice": appierDCCurrentPrice,
                "Currency": appierDCCurrency,
                "Availability": appierDCAvail
            };
        };
    </script>
    <script src="//d17m68fovwmgxj.cloudfront.net/js/appier-track-v1.7.js"></script>
    <script>
        function appierAddToCart(pID) {
            var appierRtCartList = pID;
            //========= PLEASE DO NOT CHANGE BELOW =========
            if (typeof (window.APPIER_RETARGET) == 'undefined') {
                (function (w, d, s, m) {
                    var f = d.getElementsByTagName('script')[0],
                        j = d.createElement('script'),
                        ns = 'APPIER_RETARGET';
                    w._appierSendQueue = w._appierSendQueue || [];
                    w['appierRetargetJson'] = { id: s, site: m };
                    j.async = true;
                    j.src = '//jscdn.appier.net/aa.js?id=' + m;
                    f.parentNode.insertBefore(j, f);
                    !w[ns] && (w[ns] = {});
                    (!w[ns].send) && (w[ns].send = function (j) {
                        w._appierSendQueue.push(j);
                    });
                })(window, document, "ZFfm", "hawooo.com");
            }
            window.APPIER_RETARGET.send({ 't': 'type_addcart', 'content': appierRtCartList });
        };

        function EmaticsEvent() {
            var _email = 'A08';
            if (_email === 'A08') {
                _email = 'derrick@cogood.tw';
            }
            if (_email === 'A08') {
                _email = "";
            }
            var ematicApikey = '10f2c6556f7811e8b2ba0242ac110002-sg2';
            console.log(_email);
            var opt = {
                email: _email,
                country_iso: "TW",
                currency_iso: "TWD",
                language_iso: "en"
            };
            ematics("create", ematicApikey, opt);
        }
        $(function () {
            EmaticsEvent();
        });

    </script>
    <script src="assets/js/products_details.js"></script>

    <script type="text/javascript">
        function saveStr(price, sprice, rate) {
            price = Number(price);
            sprice = Number(sprice);
            rate = Number(rate);
            if (price - sprice > 0) {
                return "-RM " + ((price - sprice)).toFixed(2);
            } else {
                return "";
            }
        };
        function selectOption(id) {
            $("#hf_select_wpa01").val(id);
            var maxcount = 0;
            var scount = 0;
            $(".product-spec-item").removeClass("add")
            $("#modal_ul").find('li').each(function () {
                //$(this).removeClass('modal-content-productOption-active');
                var _id = $(this).find($('[id*=hf_WPA01]')).val();

                if (_id == id) {
                    scount = $(this).find($('[id*=hf_SCOUNT]')).val();
                    maxcount = $(this).find($('[id*=hf_WPA04]')).val();
                    var price = $(this).find($('[id*=hf_WPA06]')).val();
                    var oprice = $(this).find($('[id*=hf_WPA10]')).val();
                    $("#lab_price").html(price);
                    $("#lab_origianl_price").html(oprice);
                    $("#hf_select_type").val($(this).find($('[id*=hf_TYPE]')).val());
                    if (parseFloat(oprice) > parseFloat(price)) {
                        //$("#lab_discount_note").html("<p>" + (oprice - price).toFixed(2) + "</p>");
                        $("#lab_discount_note").html("<p>" + saveStr(oprice, price, "7.6") + "</p>");
                        $("#lab_origianl_price").html("(RM " + oprice + ")");
                    }
                    else {
                        $("#lab_discount_note").html("");
                        $("#lab_origianl_price").html("");
                    }

                    $(this).addClass('add');

                    //圖片切換
                    var imgCount = parseInt($('#more-image').find("li").length);
                    if (imgCount > 0) {
                        var WPA16 = parseInt($(this).find($('[id*=hf_WPA16]')).val());

                        var src = $('#more-image').find("img")[0].currentSrc;
                        if (WPA16 <= imgCount) {
                            src = $('#more-image').find("img")[WPA16 - 1].currentSrc;
                        }
                        if ($(".product-pic").find("img")[0] != null) {
                            $(".product-pic").find("img")[0].src = src;
                        }
                    }
                }
            });
            if (scount > 0) {
                $("#hf_min").val("1");
                if (parseInt(scount) > parseInt(maxcount)) {
                    $("#hf_max").val(maxcount);
                }
                else {
                    $("#hf_max").val(scount);
                }

                $("#hf_select_count").val("1");
                $("#qty-total").html(1);
            }
            else {
                $("#hf_min").val("0");
                $("#hf_max").val("0");
                $("#hf_select_count").val("0");
                $("#qty-total").html(0);
            }
        };
        function qtyEvent() {
            var max = $("#hf_max").val();
            var min = $("#hf_min").val();
            var qtyTotle, currentqty;
            qtyTotle = $("#qty-total").html();
            if (parseInt(qtyTotal) > parseInt(max))
                qtyTotal = max;
            $("#qty-total").html(qtyTotle);
            $("#hf_select_count").val(qtyTotle);
        };

        function qtyDown() {
            var now = parseInt($("#qty-total").html()) - 1;
            var max = $("#hf_max").val();
            var min = $("#hf_min").val();
            if (parseInt(now) < parseInt(min))
                now = min;
            $("#qty-total").html(now);
            $("#hf_select_count").val(now);
        };
        function qtyUp() {
            var max = $("#hf_max").val();
            var min = $("#hf_min").val();
            var now = parseInt($("#qty-total").html()) + 1;
            if (now >= max)
                now = max;
            $("#qty-total").html(now);
            $("#hf_select_count").val(now);
        };


    </script>
    <script>
        $("#body-description-tab1 img").error(function () {
            $(this).hide();
        });
    </script>

</asp:Content>

