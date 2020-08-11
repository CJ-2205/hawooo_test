﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191212preorder.aspx.cs" Inherits="user_20191212preorder" EnableEventValidation="false" %>

<%@ Import Namespace="hawooo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/1111.css" rel="stylesheet" />
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
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
                    <span class="am-fl sale_price" style="font-size: medium; letter-spacing: -2px">RM <span class="sprice">#PRICE#</span> </span>
                    <span class="price" style="display: none">#WPA10#</span>
                    <span class="am-fr">
                        <i class="am-icon-trash" style="font-size: 16px" onclick="DoDel('#DELID#');"></i>
                    </span>

                </div>
            </li>
        </div>
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/bbn_01.png" %>' style="width: 100%" />
        </div>

        <div class="am-container">

            <%-- 上方加入商品 --%>
            <section class="addPanel">
                <header class="am-g">
                    <span id="add-msg1"></span>
                </header>
                <hr class="am-margin-xs" />

                <div id="top_add_panel" class="am-g">

                    <div class="am-slider am-slider-carousel am-slider-b3 clean_shadow"
                        data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="top_slider">
                        <ul class="am-slides" id="add-list">
                        </ul>
                    </div>
                </div>
            </section>

            <section>
                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li class="is-active" id="tab1">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="ss_07" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="ss_08" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="ss_09" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>
            </section>

            <section>
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/fbn_01.png" %>' style="width: 100%" />
                </div>
            </section>

            <section id="s_product_list" class="preorder-items-wrapper shop-block-bg am-padding-sm">
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
                                        <span class="tag">pre<br />
                                                          order<br /> 
                                            <div class="viewed">
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal>
                                            </div>
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
                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="ss_07" /></li>
                        <li class="is-active" id="tab2">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="ss_08" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="ss_09" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>
            </section>
            <section>
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/fbn_02.png" %>' style="width: 100%" />
                </div>
            </section>
            <section id="s_product_list2" class="preorder-items-wrapper shop-block-bg am-padding-sm">
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
                                        <span class="tag">pre<br />
                                                          order<br /> 
                                            <span class="viewed">
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
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
                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="ss_07" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="ss_08" /></li>
                        <li class="is-active" id="tab3">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="ss_09" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>
            </section>
            <section>
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/fbn_03.png" %>' style="width: 100%" />
                </div>
            </section>
            <section id="s_product_list2" class="preorder-items-wrapper shop-block-bg am-padding-sm">
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
                                        <span class="tag">pre<br />
                                            order<br /> 
                                            <span class="viewed">
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
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
                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="ss_07" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="ss_08" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="ss_09" /></li>
                        <li class="is-active" id="tab4">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>
            </section>
            <section>
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/fbn_04.png" %>' style="width: 100%" />
                </div>
            </section>
            <section id="s_product_list4" class="preorder-items-wrapper shop-block-bg am-padding-sm">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp4" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                        <ItemTemplate>
                            <li class="am-fl  hvr-float">
                                <div class="resize-sm" id="item_<%# Eval("WP01") %>">
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <div class="product-img">
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                        </a>
                                        <span class="tag">pre<br />
                                            order<br />  
                                            <span class="viewed">
                                                <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
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


            <section class="addPanel">
                <header class="am-g">
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
            </section>
            <%--=====================側邊選單 Start ==========================--%>
            <div class="side-bar am-center">
                <ul>
                    <li>
                        <a href="20191212xmas.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/ss_00.png" %>' alt="ss_00" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212preorder.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/ss_01.png" %>' alt="ss_01" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212best_gifts.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/ss_02.png" %>' alt="ss_02" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212earn_ha_coin_daily.aspx">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/ss_03.png" %>' alt="ss_03" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212xmas.aspx?#s4" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/ss_04.png" %>' alt="ss_04" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212xmas.aspx?#s5" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20191202/ss_05.png" %>' alt="ss_05" />
                        </a>
                    </li>
                </ul>
            </div>
            <%--=====================側邊選單 End==========================--%>
        </div>
        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                1212 Flash Sale:<br />
                1. Promotion date : 8th December 2019 - 12th December 2019<br />
                2. Add your favourite items to wish list from 8/12/2019 to 11/12/2019, your items on wishlist will be automatically added to shopping cart on 12/12/2019, check out ASAP!<br />
                3. Promo codes and all brand promotional activities are NOT applicable to flash sale items<br />
                4. Gift with minimum spending (Beauty Box and Calendar) is APPLICABLE on flash sale items<br />
                5. All items are limited, hurry before they are gone!
            </p>
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
                    url: "20191212preorder.aspx/DoDel",
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
                doLogin("20191212preorder.aspx");
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
                    url: "20191212preorder.aspx/DoAdd",
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
                doLogin("20191212preorder.aspx");
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
                url: "20191212preorder.aspx/GetItem",
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
                url: "20191212preorder.aspx/GetAddList",
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
            var msg = "";
            if ('<%= (Master as user_user).LgType %>' === "en") {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# . Attention: Flash sale items are limited, 12/12 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 12/12 23:59！";

            } else {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# . Attention: Flash sale items are limited, 12/12 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 12/12 23:59！";
            }
            msg = msg.replace("#QTY#", tqty);
            msg = msg.replace("#SPRICE#", tsprice.toFixed(2));
            msg = msg.replace("#PRICE#", tprice.toFixed(2));
            $("#add-msg1").html(msg);
            $("#add-msg2").html(msg);
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
    </script>
</asp:Content>


