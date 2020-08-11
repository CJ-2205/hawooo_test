<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200709beauty_sale_preorder.aspx.cs" Inherits="mobile_static_200709beauty_sale_preorder" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <title>pds_value_buy</title>
    <style>
        .mb-shop-block {
            padding: 3px;
        }

        .coupon {
            position: relative;
        }

            .coupon img {
                -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.3));
                filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.3))
            }

        .coupon-code {
            background: #fff;
            color: #000;
            font-weight: bold;
            text-align: center;
            font-size: 14px;
            padding: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media screen and (max-width: 650px) {
            .coupon-code {
                font-size: 12px;
                min-height: 49px;
            }
        }

        .countdown-txt {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 7%;
            color: #fff;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 30px;
            }
        }


        /*preorder*/
        .pname {
            height: 40px !important;
            font-size: 12px;
        }


        .sale_price {
            font-size: 14px !important;
        }

        select {
            height: 23px;
        }

        .preorder-items-wrapper ul li {
            border: 1px dashed #F2F2F2;
        }

        .add-list {
            border-right: 1px dashed #F2F2F2;
        }

        .close {
            display: none;
        }

        .close-check {
            display: none;
        }

        .goods-preorder .add-btn{
            background:#D22248 !important;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--MB  Contain (Start) ===================================================-->
    <div class="am-g main-contain mb-contain" style="background: #F3D0E1;">
        <div class="am-margin-bottom-0 am-text-center" style="position: relative;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bbn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
            <h4 class="countdown-txt">Sale starts in <span class="countdown">
                <span id='d'>0</span>:
                <span id='h'>0</span>:
                <span id='m'>0</span>:
                <span id='s'>0</span>
            </span></h4>
        </div>

        <!--領取折扣券 (Start)====================================================-->
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <div>
            <ul class="am-avg-sm-2">
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Gift with purchase;
                            <br>
                            Limited 100 sets</h6>
                    </div>
                </li>
                <li class="am-padding-xs  coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Minspend RM188;
                            <br>
                            Limited 80 sets</h6>
                    </div>
                </li>
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Minspend RM288;
                            <br>
                            Limited 100 sets</h6>
                    </div>
                </li>
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Minspend RM388;
                            <br>
                            Limited 200 sets</h6>
                    </div>
                </li>
            </ul>
        </div>
        <!--領取折扣券 (End) ====================================================-->
        <div style="display: none" id="temp">
            <li style="background: #fff; padding: 5px; width: 150px; float: left; display: block;" id="li_#WPA01#">
                <div>
                    <a href="product.aspx?id=#WP01#">
                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%= ConfigurationManager.AppSettings["imgUrl"] +"webimgs/#WP08_1#"%>'
                            class="lazyload am-img-responsive" />
                    </a>
                </div>
                <span class="pname">#WPA02# * <span class="qty">#POP07#</span></span>
                <div class="am-cf">
                    <span class="am-fl sale_price" style="font-size: medium;">RM <span
                        class="sprice">#PRICE#</span> <%--<span class="price">RM #WPA10#</span>--%></span>
                    <span class="am-fr"><i class="am-icon-trash" style="font-size: 16px; display: flex; display: flex; padding-top: 2px;" onclick="DoDel('#DELID#');"></i></span>
                </div>
            </li>
        </div>
        <section class="am-margin-top-lg am-padding addPanel" style="background: #fff;">
            <h3 class="am-padding-xs am-margin-bottom-xs"
                style="background: #D22248; color: #fff; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
                <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>

            <header>
                <span id="add-msg1" style="font-size: 12px"></span>
            </header>
            <hr class="am-margin-xs" />

            <div id="top_add_panel" class="am-g">

                <div class="am-slider am-slider-a1 am-slider-carousel am-slider-b3 clean_shadow" style="margin: 0;"
                    data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false,&quot;directionNav&quot;:false}" id="top_slider">
                    <ul class="am-slides add-list" id="add-list">
                    </ul>
                </div>
            </div>
            <div class="am-u-sm-12 am-u-md-7 am-u-sm-centered check-banner close-check">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/check.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%">
            </div>
        </section>
        <!--Block1 (Start) =====================================================-->


        <section class="am-margin-top-lg" id="s1">
            <div style="background: #fff;">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200709/fs_01m.png"%>' style="width: 100%" />
                </div>
                <div class="preorder-items-wrapper">
                    <ul class="am-avg-sm-2 am-avg-md-3" id="rp1_1">
                        <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <div class="resize-sm">

                                        <div class=" goods goods-preorder" id="item_<%# Eval("WP01") %>">
                                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <div class="goods-top">
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' style="width: 100%;" />


                                                <div class="viewed-tag">
                                                    <span class="viewed">
                                                        <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                    Added
                                                </div>
                                            </div>
                                            <div class="goods-bottom">
                                                <div class="goods-block">
                                                    <h3 class="goods-name">
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                </div>
                                                <div class="goods-block flex-between">
                                                    <h4 class="goods-price">
                                                        <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                    </h4>
                                                    <span>
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                                    </a>   
                                                <div class="goods-block flex-between">
                                                    <div class="am-fl" style="width: 68%">
                                                        <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                    </div>
                                                    <div class="am-fr" style="width: 31%">
                                                        <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div>
                                                    <input type="button" value="Add to Wishlist" class="am-btn am-btn-block add-btn" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                </div>
                                            </div>
                                                                                      
                                        </div>
                                    </div>
                                   
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>

                </div>
            </div>
        </section>
        <!--Block1 (End) ======================================================-->
        <section class="am-margin-top-lg am-padding  addPanel" style="background: #fff;">
            <h3 class="am-padding-xs am-margin-bottom-xs"
                style="background: #D22248; color: #fff; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
                <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>
            <header>
                <span id="add-msg2" style="font-size: 12px"></span>
            </header>
            <hr class="am-margin-xs" />

            <div id="bottom_add_panel" class="am-g">
                <div class="am-slider am-slider-a1 am-slider-carousel am-slider-b3 clean_shadow" style="margin: 0;"
                    data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false,&quot;directionNav&quot;:false}" id="bottom_slider">
                    <ul class="am-slides add-list">
                    </ul>
                </div>
            </div>
            <div class="am-u-sm-12 am-u-md-7 am-u-sm-centered check-banner close-check">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/check.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%">
            </div>
        </section>
        <!--Terms & Conditions (Start) =============================================-->
        <footer class="am-padding activity-method" style="background: #D22248;" id="s5">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    1. Promotion Date : 9th July 2020 12:00 - 15th July 2020 23:59
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - Flash Sale (Add to wishlist): 9th July 2020 12:00 - 11th July 2020 23:59<br>
                    - Flash Sale (On Sale): 12th July 2020 00:00 - 15th July 2020 23:59
                </p>
                <p class="am-margin-top-0">
                    2. Free Gift (NON-accumulated gifts. Applicable on ALL skin care brands & cosmetics brands)
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - Naturero Tote Bag (Free gift with any purchase, Worth RM20, limited 100 sets)<br>
                    - Dr.Morita Eye Cream (Min.spend RM188, Worth RM52, limited 80 sets)<br>
                    - DV Hyaluronic Acid Soothing Mask 5pcs/box (Min.spend RM288, Worth RM70, limited 100 sets)<br>
                    - Double Doctor Brightening Serum 30ml (Min.spend RM388, Worth RM174, limited 200 sets)
                </p>
                <p class="am-margin-top-0">
                    3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Beauty Shocking Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>

            </div>
        </footer>
        <!--Terms & Conditions (End) ==============================================-->
             <div class="footer-bar">
      <div>
        <ul class="am-avg-sm-2">
          <li>
            <a href="200709beauty_sale.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
            </a>
          </li>
          <li>
            <a href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
            </a>
          </li>
        </ul>
        <ul class="am-avg-sm-3">
          <li>
            <a href="200709beauty_sale_hotdeal.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
            </a>
          </li>
          <li>
            <a href="200709beauty_sale.aspx?#s4" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
            </a>
          </li>
          <li onclick="goto('s5',800,'swing')">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
          </li>
        </ul>
      </div>
    </div>

        <!--MB  Contain Max-width:650px(End) ==========================================-->

        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> -->



        <script src="assets/js/swiper.min.js"></script>
        <script src="assets/js/events.js"></script>

        <%-- <script type="text/javascript">
        /*load html*/
        $(document).ready(function () {
            // load 網頁共用結構
            let totalload = $('.include').length;
            let loadindex = 0;
            if (totalload == 0) {
                initscript();
            }
            $('.include').each(function () {
                $(this).load($(this).data('file'), function () {
                    $(this).children().first().unwrap(); // remove the ha-include div
                    loadindex++;
                    if (loadindex == totalload) {
                        //共用結構載入完，開始執行頁面自己的初始化
                        initscript();
                    }
                });
            });
        });

        // 執行頁面的script
        function initscript() {

        }

    </script>--%>


        <script type="text/javascript">

            function goto(id) {
                $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
            };

            $("#more1").click(function () {
                $("#rp1_1").remove();
                $("#rp1_2").removeClass('close');
            });
            $("#more2").click(function () {
                $("#rp2_1").remove();
                $("#rp2_2").removeClass('close');
            });
            $("#more3").click(function () {
                $("#rp3_1").remove();
                $("#rp3_2").removeClass('close');
            });

        </script>
        <script>
            function DoDel(ItemID) {
                var memberID = '<%= Session["A01"] %>';
                if (memberID !== '') {
                    var val = JSON.stringify({
                        obj: {
                            POP02: ItemID
                        }
                    });
                    $.ajax({
                        type: "post",
                        url: "../user/200709beauty_sale_preorder.aspx/DoDel",
                        data: val,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (msg) {
                            var rs = msg.d;
                            if (rs === "TRUE") {

                                var item = GetItemNum(ItemID);
                                var sprice = $("#add-list li").eq(item).find('.sprice').text();
                                var price = $("#add-list li").eq(item).find('.price').text();
                                SubTotal(price, sprice);

                                RemoveItem(item);

                                SetInfo();
                                //ReSetInfo();
                                //$("#li_" + ItemID).remove();
                            } else if (rs === "FALSE") {
                                alert("Delete failed");
                            } else {
                                alert(rs);
                            }
                        },
                        error: function () {
                            alert("ERROR!");
                        }
                    });
                } else {
                    location.href = 'login.aspx?rurl=200709beauty_sale_preorder.aspx';

                }
            };

            function AddEvent(iid, pid, qty) {

                if (iid !== "") {
                    var val = JSON.stringify({
                        obj: {
                            POP02: iid,
                            POP03: pid,
                            POP07: qty
                        }
                    });
                    $.ajax({
                        type: "post",
                        url: "../user/200709beauty_sale_preorder.aspx/DoAdd",
                        data: val,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (msg) {
                            var rs = msg.d;
                            if (rs === "TRUE") {
                                alert("Joined successfully");
                                //GetList();
                                var num = GetItemNum(iid);
                                if (num !== -1)
                                    RemoveItem(num);
                                AddOneItem(iid);
                                SetInfo();

                                //ReSetInfo();
                            } else if (rs === "FALSE") {
                                alert("Join failed");
                            } else {
                                alert(rs);
                            } //成功執行     
                        },
                        error: function () {
                            alert("ERROR!");
                        }

                    });
                }
            };

            function BookingEvent(selectProduct) {
                var memberID = '<%= Session["A01"] %>';
                if (memberID !== '') {
                    var optionID = $("#" + selectProduct).find('select')[0].value;
                    var qty = $("#" + selectProduct).find('select')[1].value;
                    if (optionID === "")
                        alert('Please select option.');
                    else {
                        var iid = optionID.split("#")[0];
                        var pid = selectProduct.split("_")[1];

                        AddEvent(iid, pid, qty);

                    }
                } else {
                    location.href = 'login.aspx?rurl=200709beauty_sale_preorder.aspx';
                    //location.href = 'login.aspx?rurl=2019cybersalepreorder.aspx';

                }
            };

            function GetQty(selectItem) {

                var itemID = selectItem.value;
                var qty = itemID.split("#")[1];
                var ddlQty = selectItem.parentNode.parentNode.children[1].children[0];
                $(ddlQty).empty();
                for (var i = 1; i <= qty; i++) {
                    var o = new Option(i, i);
                    $(ddlQty).append(o);
                }
            };


            function AddOneItem(itemID) {
                debugger;
                var val = "{'LG':'<%= (this.Master as mobile).LgType %>','itemID': '" + itemID + "'}";
                $.ajax({
                    type: "post",
                    url: "../user/200709beauty_sale_preorder.aspx/GetItem",
                    data: val,
                    contentType: "application/json;charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var obj = jQuery.parseJSON(msg.d)[0];
                        var item = ReplaceItem(obj);
                        AddItem(item);
                    },
                    error: function () {
                        alert("ERROR!");
                    }

                });
            };


            function SetSlider() {
                $('#top_slider').flexslider({
                    itemWidth: 150,
                    itemMargin: 15,
                    slideshow: false
                });
                $('#bottom_slider').flexslider({
                    itemWidth: 150,
                    itemMargin: 15,
                    slideshow: false
                });
            };

            var _ids = '';
            function GetList() {
                var LG = "{'LG':'<%= (Master as mobile).LgType %>'}";
                $.ajax({
                    type: "post",
                    url: "../user/200709beauty_sale_preorder.aspx/GetAddList",
                    data: LG,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var obj = jQuery.parseJSON(msg.d);
                        var count = 0;
                        $.each(obj, function (i, val) {
                            count += 1;
                            _ids += val.WP01 + ',';
                            debugger;
                            var item = ReplaceItem(val);
                            AddItem(item);
                        });
                        SetInfo();


                    },
                    error: function () {
                        alert("ERROR!");
                    }

                });

            };

            function AddItem(item) {
                var slider = $('#top_slider').data('flexslider');
                if (slider !== undefined) {
                    $('#top_slider').data('flexslider').addSlide(item);
                    $('#bottom_slider').data('flexslider').addSlide(item);
                }
                else {
                    $('.am-slider ul').append(item);
                    SetSlider();
                }
            };
            function RemoveItem(item) {
                $('#top_slider').data('flexslider').removeSlide(item);
                $('#bottom_slider').data('flexslider').removeSlide(item);
            };


            function GetItemNum(itemID) {
                itemID = "li_" + itemID;
                var num = -1;
                $("#top_slider li").each(function (index) {
                    if (this.id === itemID)
                        num = index;
                });
                return num;
            };

            var tprice = 0;
            var tqty = 0;
            var tsprice = 0;
            function ReplaceItem(item) {
                var tp = $("#temp").html();
                tp = tp.replace("#WP01#", item.WP01);
                tp = tp.replace("#WPA02#", item.WPA02);
                tp = tp.replace("#POP07#", item.POP07);
                tp = tp.replace("#WPA01#", item.WPA01);
                tp = tp.replace("#DELID#", item.WPA01);
                var WPA06 = SetPrice(item.WPA06, item.POP07);
                tp = tp.replace("#PRICE#", WPA06);
                tp = tp.replace("#WP08_1#", item.WP08_1);
                var WPA10 = SetPrice(item.WPA10, item.POP07);
                //tp = tp.replace("#WPA10#", WPA10);
                AddTotal(item.POP07, WPA10, WPA06);
                return tp;
            };
            function AddTotal(pop07, price, sprice) {
                tprice = parseFloat(tprice) + parseFloat(price);
                tsprice = parseFloat(tsprice) + parseFloat(sprice);

                tqty = parseFloat(tqty) + parseFloat(pop07);
            };
            function SubTotal(price, sprice) {

                tprice = parseFloat(tprice) - parseFloat(price);
                tsprice = parseFloat(tsprice) - parseFloat(sprice);
                tqty = parseFloat(tqty) - parseFloat(1);
            };
            function SetPrice(price, qty) {
                return FormatFloat(((parseFloat(price) * parseFloat(qty)) / 7.6), 1);
            };
            function FormatFloat(num, pos) {
                var size = Math.pow(10, pos);
                return Math.round(num * size) / size;
            };
            function SetInfo() {
                var msg = "You have selected #QTY# items, original price: RM #PRICE# ,price after discount: RM #SPRICE# .<br/> 12/7 00:00 the items in your wishlist will be automatically added into your shopping cart, hurry checkout before 15/7 23:59!";
      <%--      if ('<%= (Master as mobile).LgType %>' === "en") {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# .Attention: Flash sale items are limited, 12/12 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 12/12 23:59！";
            } else {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# .Attention: Flash sale items are limited, 12/12 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 12/12 23:59！";
            }--%>
                msg = msg.replace("#QTY#", tqty);
                msg = msg.replace("#SPRICE#", tsprice.toFixed(2));
                msg = msg.replace("#PRICE#", tprice.toFixed(2));
                $("#add-msg1").html(msg);
                $("#add-msg2").html(msg);

                debugger;
                if ($('#add-list li').length > 0) {
                    $('.check-banner').removeClass("close-check");
                }
                else {
                    $('.check-banner').addClass("close-check");
                }

            };

            $(function () {
                SetInfo();
                hiddenFooterMenu();
            });

            fbq('track', 'AddToWishlist', { content_ids: _ids, currency: 'MYR', value: tsprice.toFixed(2) });


        </script>


        <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>

        <script>
            function setTime(spendtime) {

                $(".countdown").everyTime('1s',
                    function (i) {
                        spendtime--;
                        var d = Math.floor(spendtime / (24 * 3600));
                        d = PrefixInteger(d, 2);
                        var h = Math.floor((spendtime % (24 * 3600)) / 3600);
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

            };

            function PrefixInteger(num, length) {
                return (Array(length).join('0') + num).slice(-length);
            };
        </script>
</asp:Content>
