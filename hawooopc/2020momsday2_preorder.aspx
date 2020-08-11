<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020momsday2_preorder.aspx.cs" Inherits="user_2020momsday2_preorder" EnableEventValidation="false" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .preorder-items-wrapper li {
            border: 1px dashed #f2f2f2;
        }

        .add-list li {
            border-right: 1px dashed #f2f2f2;
        }

        .close-check {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" style="background: #FFE8E9;">
        <div style="display: none" id="temp">
            <li style="padding: 5px; width: 150px; float: left; display: block;" id="li_#WPA01#">
                <div>
                    <a href="productdetail.aspx?id=#WP01#">
                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%= ConfigurationManager.AppSettings["imgUrl"] +"webimgs/#WP08_1#"%>'
                            class="lazyload am-img-responsive" />
                    </a>
                </div>
                <span class="pname">#WPA02# * <span class="qty">#POP07#</span></span>

                <div class="am-cf">
                    <span class="am-fl sale_price" style="font-size: medium;">RM <span class="sprice">#PRICE#</span> </span>
                    <span class="price" style="display: none">#WPA10#</span>
                    <span class="am-fr">
                        <i class="am-icon-trash" style="font-size: 16px" onclick="DoDel('#DELID#');"></i>
                    </span>

                </div>
            </li>
        </div>
        <div class="countdown">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/bbn_02.png" %>' style="width: 100%" />
            <div class="countdown-info countdown-info3">
                <span id="content"></span>
                <h2>5/5-9/5 : Add Items To Wishlist
                            <br>
                    10/5-11/5:  Check Out Your Cart </h2>
            </div>
        </div>

        <div class="am-container">

            <%-- 上方加入商品 --%>
            <section class="am-margin-vertical-lg am-padding addPanel" style="background: #fff;">
                <h3 class="am-padding-xs am-margin-bottom-xs"
                    style="background: #FFA700; color: #000; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
                    <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>
                <header>
                    <span id="add-msg1" style="font-weight: bold;"></span>
                </header>
                <hr class="am-margin-xs" />

                <div id="top_add_panel">
                    <div class="am-slider am-slider-b3 am-slider-carousel clean_shadow"
                        data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="top_slider" style="box-shadow: none;">
                        <ul class="am-slides add-list" id="add-list">
                        </ul>
                    </div>
                </div>

                <div class="am-u-sm-6 am-u-sm-centered check-banner close-check">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/check.png" %>' style="width: 100%" />
                </div>
            </section>

            <section>
                <div id="s1">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/fs_01.png" %>' style="width: 100%" />
                </div>
            </section>

            <section id="s_product_list" class="preorder-items-wrapper  am-padding-sm" style="background: #fff;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                        <ItemTemplate>
                            <li class="am-fl  hvr-float">
                                <div class="resize-sm" id="item_<%# Eval("WP01") %>">
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <div class="product-img">
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                        </a>
                                        <span class="tag">
                                            <span class="viewed" >
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal>
                                            </span>                           
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
                                                <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                            </div>
                                            <div class="am-fr" style="width: 25%">
                                                <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div>
                                            <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>



            <section>
                <div id="s2">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/fs_02.png" %>' style="width: 100%" />
                </div>
            </section>
            <section id="s_product_list2" class="preorder-items-wrapper am-padding-sm" style="background: #fff;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp2" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                        <ItemTemplate>
                            <li class="am-fl  hvr-float">
                                <div class="resize-sm" id="item_<%# Eval("WP01") %>">
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <div class="product-img">
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                        </a>
                                        <span class="tag">
                                            <span class="viewed" >
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                            Added
                                        </span>
                                    </div>
                                    <%-- <div>
                                        <span class="note">
<asp:Literal ID="lit_limit" runat="server" Text='<%# "LIMIT:" + Eval("SPD06") %>'></asp:Literal>
                                        </span>
                                    </div>--%>
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
                                                <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                            </div>
                                            <div class="am-fr" style="width: 25%">
                                                <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div>
                                            <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>


            <section>
                <div id="s3">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/fs_03.png" %>' style="width: 100%" />
                </div>
            </section>
            <section id="s_product_list2" class="preorder-items-wrapper am-padding-sm" style="background: #fff;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp3" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                        <ItemTemplate>
                            <li class="am-fl  hvr-float">
                                <div class="resize-sm" id="item_<%# Eval("WP01") %>">
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <div class="product-img">
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                        </a>
                                        <span class="tag">
                                            <span class="viewed" >
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                            Added
                                        </span>
                                    </div>
                                    <%-- <div>
                                        <span class="note">
                                                                                    <asp:Literal ID="lit_limit" runat="server" Text='<%# "LIMIT:" + Eval("SPD06") %>'></asp:Literal>
                                        </span>
                                    </div>--%>
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
                                                <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                            </div>
                                            <div class="am-fr" style="width: 25%">
                                                <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div>
                                            <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>


            <section class="am-margin-vertical-lg am-padding addPanel" style="background: #fff;">
                <h3 class="am-padding-xs am-margin-bottom-xs" style="background: #FFA700; color: #000; width: 30%; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
                    <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>
                <header>
                    <span id="add-msg2" style="font-weight: bold;"></span>
                </header>
                <hr class="am-margin-xs" />

                <div id="bottom_add_panel">

                    <div class="am-slider am-slider-b3 am-slider-carousel clean_shadow"
                        data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="bottom_slider" style="box-shadow: none;">
                        <ul class="am-slides add-list">
                        </ul>
                    </div>
                </div>
                <div class="am-u-sm-6 am-u-sm-centered check-banner close-check">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/check.png" style="width: 100%">
                </div>
            </section>

            <%--<section class="addPanel am-margin-top-lg" style="background:#fff; font-weight:700;">
                <header>
                    <span id="add-msg2"></span>
                </header>
                <hr class="am-margin-xs" />

                <div id="bottom_add_panel" class="am-g">

                    <div class="am-slider am-slider-carousel am-slider-b3 clean_shadow"
                        data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="bottom_slider">
                        <ul class="am-slides">
                        </ul>
                    </div>
                </div>
            </section>--%>

            <!--側邊選單 (Start) ===================================================-->
            <div class="side-bar">
                <ul>
                    <li>
                        <a href="2020momsday2.aspx" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_00.png" alt="fss_00" />
                        </a>
                    </li>
                    <li onclick="goto('s1')">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_01.png" alt="fss_01" />
                        </a>
                    </li>
                    <li onclick="goto('s2')">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_02.png" alt="fss_02" />
                        </a>
                    </li>
                    <li onclick="goto('s3')">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_03.png" alt="fss_03" />
                        </a>
                    </li>
                </ul>
            </div>
            <!--側邊選單 (End) =====================================================-->
        </div>
        <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br />
                    1. Flash Sale :
                    <br />
                    Add to wishlist: 5/5/2020 00:00 -  9/5/2020 23:59<br />
                    Check out Shopping Cart: 10/5/2020 00:00 - 11/5/2020 23:59<br />
                </p>
                <p>2. Flash sale items are at their lowest prices, promo code are NOT applicable on falsh sale items</p>
                <p>
                    3. Flash sale items are limited, add to wishlist and check out ASAP when the sale starts.
                </p>
            </div>
        </footer>
    </div>
    <script>
        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };


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
                    url: "2020momsday2_preorder.aspx/DoDel",
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
                doLogin("2020momsday2_preorder.aspx");
            }
        }

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
                    url: "2020momsday2_preorder.aspx/DoAdd",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var rs = msg.d;
                        if (rs === "TRUE") {
                            alert("Added successfully");
                            //GetList();
                            var num = GetItemNum(iid);
                            if (num !== -1)
                                RemoveItem(num);
                            AddOneItem(iid);
                            SetInfo();

                            //ReSetInfo();
                        } else if (rs === "FALSE") {
                            alert("Added failed");
                        } else {
                            alert(rs);
                        }//成功執行     
                    },
                    error: function () {
                        alert("ERROR!");
                    }

                });
            }
        }

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
                doLogin("2020momsday2_preorder.aspx");
            }
        }

        function GetQty(selectItem) {

            var itemID = selectItem.value;
            var qty = itemID.split("#")[1];
            var ddlQty = selectItem.parentNode.parentNode.children[1].children[0];
            $(ddlQty).empty();
            for (var i = 1; i <= qty; i++) {
                var o = new Option(i, i);
                $(ddlQty).append(o);
            }
        }


        function AddOneItem(itemID) {
            var val = "{'LG':'<%= (this.Master as user_user).LgType %>','itemID': '" + itemID + "'}";
            $.ajax({
                type: "post",
                url: "2020momsday2_preorder.aspx/GetItem",
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
        }


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
        }
        function GetList() {

            var LG = "{'LG':'<%= (Master as user_user).LgType %>'}";
            $.ajax({
                type: "post",
                url: "2020momsday2_preorder.aspx/GetAddList",
                data: LG,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (msg) {
                    var obj = jQuery.parseJSON(msg.d);
                    var count = 0;
                    $.each(obj, function (i, val) {
                        count += 1;
                        var item = ReplaceItem(val);
                        AddItem(item);
                    });
                    SetInfo();
                },
                error: function () {
                    alert("ERROR!");
                }

            });

        }

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
        }
        function RemoveItem(item) {

            $('#top_slider').data('flexslider').removeSlide(item);
            $('#bottom_slider').data('flexslider').removeSlide(item);
        }

        function GetItemNum(itemID) {
            itemID = "li_" + itemID;
            var num = -1;
            $("#top_slider li").each(function (index) {
                if (this.id === itemID)
                    num = index;
            });
            return num;
        }

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
            tp = tp.replace("#WPA10#", WPA10);
            AddTotal(item.POP07, WPA10, WPA06);
            return tp;
        }
        function AddTotal(pop07, price, sprice) {
            tprice = parseFloat(tprice) + parseFloat(price);
            tsprice = parseFloat(tsprice) + parseFloat(sprice);
            debugger;
            tqty = parseFloat(tqty) + parseFloat(pop07);
        }
        function SubTotal(price, sprice) {

            tprice = parseFloat(tprice) - parseFloat(price);
            tsprice = parseFloat(tsprice) - parseFloat(sprice);
            tqty = parseFloat(tqty) - parseFloat(1);
        }
        function SetPrice(price, qty) {
            return ((parseFloat(price) * parseFloat(qty)) / 7.6).toFixed(2);
        }
        function SetInfo() {
            var msg = "You have selected #QTY# items, original price: RM #PRICE# ,price after discount: RM #SPRICE# .<br/> 10/5 00:00 the items in your wishlist will be automatically added into your shopping cart, hurry checkout before 11/5 23:59！<br/> Attention: Coupon is NOT applicable on flash sale items, all items are limited, check out ASAP!";

      <%--      if ('<%= (Master as user_user).LgType %>' === "en") {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# . Attention: Flash sale items are limited, 10/5/2020 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 11/5/2020 23:59！";

            } else {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# . Attention: Flash sale items are limited, 10/5/2020 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 11/5/2020 23:59！";
            }--%>
            msg = msg.replace("#QTY#", tqty);
            msg = msg.replace("#SPRICE#", tsprice.toFixed(2));
            msg = msg.replace("#PRICE#", tprice.toFixed(2));
            $("#add-msg1").html(msg);
            $("#add-msg2").html(msg);

            if ($('#add-list li').length > 0) {
                $('.check-banner').removeClass("close-check");
            }
            else {
                $('.check-banner').addClass("close-check");
            }
        }

        $(function () {
            SetInfo();
        });
        //function ReSetInfo() {
        //    $("#add-list li").each(function (i, val) {
        //        tsprice = parseFloat(tsprice) + parseFloat($(val).find(".sprice").html());

        //        debugger;
        //    });
        //    SetInfo();
        //}


        //電梯
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };
    </script>
</asp:Content>


