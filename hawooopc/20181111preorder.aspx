<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20181111preorder.aspx.cs" Inherits="user_20181111preorder" EnableEventValidation="false" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/1111.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="display: none" id="temp">
        <li style="padding: 5px; width: 150px; float: left; display: block;" id="li_#WPA01#">
            <div>
                <a href="productdetail.aspx?id=#WP01#">
                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src="https://www.hawooo.com/images/webimgs/#WP08_1#"
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
        <img src="../images/ftp/20181111/flashsale/f_01.png" style="width: 100%" />
    </div>

    <div class="am-container" style="background-color: #452E89; padding: 15px;">

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

        <section id="s_product_list" class="am-g proudctListPanel">


            <ul class="am-avg-sm-5">
                <asp:Repeater ID="rpPreProducts" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                    <ItemTemplate>
                        <li>
                            <div class="pitem" id="item_<%# Eval("WP01") %>">
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                <div style="position: relative">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />

                                    <span class="pitem_note">已300人預定</span>
                                </div>
                                <div>
                                    <span class="note">限量300組</span>
                                </div>
                                <div class="pname">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                </div>
                                <div class="am-cf">
                                    <span class="am-fl sale_price" style="font-size: medium; letter-spacing: -2px"><%# "RM" + PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                    <span class="am-fr price" style="font-size: medium; letter-spacing: -2px"><%# "RM" + PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span>

                                </div>
                                <div class="option am-cf">
                                    <div class="am-fl" style="width: 75%">
                                        <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                    </div>
                                    <div class="am-fr" style="width: 25%; padding-left: 5px">
                                        <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                    </div>
                                </div>
                                <div style="padding-top: 5px">
                                    <input type="button" value="Pre Order" class="button1" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />


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



    </div>




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
                    url: "20181111preorder.aspx/DoDel",
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
                doLogin("20181111preorder.aspx");
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
                    url: "20181111preorder.aspx/DoAdd",
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

                            if (num === -1) {
                                AddOneItem(iid);
                                SetInfo();
                            }


                            //ReSetInfo();
                        } else if (rs === "FALSE") {
                            alert("Join failed");
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
                doLogin("20181111preorder.aspx");
            }
        }

        function GetQty(selectItem) {

            var itemID = selectItem.value;
            var qty = itemID.split("#")[1];
            var ddlQty = selectItem.parentNode.parentNode.children[1].children[0];
            for (var i = 1; i < qty + 1; i++) {
                var o = new Option(i, i);
                ddlQty.append(o);
            }
        }


        function AddOneItem(itemID) {
            var val = "{'LG':'<%= (this.Master as user_user).LgType %>','itemID': '" + itemID + "'}";
            $.ajax({
                type: "post",
                url: "20181111preorder.aspx/GetItem",
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
                url: "20181111preorder.aspx/GetAddList",
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
            if (<%= (Master as user_user).LgType %> === "en") {
                msg =
                    "#QTY# items have been purchased, the original price is RM#PRICE# , and the offer price is RM #SPRICE# .Attention! The items are limited, remember to checkout at 11/11 00:00 ";
            } else {
                msg = "已选购 #QTY# 件，原价 RM #PRICE#，折扣价 RM #SPRICE#，注意! 货量有限，记得在11/11 00:00开始抢先结帐";
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

