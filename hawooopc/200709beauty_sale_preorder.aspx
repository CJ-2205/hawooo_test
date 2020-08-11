<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200709beauty_sale_preorder.aspx.cs" Inherits="user_static_200709beauty_sale_preorder" %>
<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
  <style>
    /* (Start) Coupon. */
    .coupon {
      position: relative;
    }

    .coupon-code {
      position: absolute;
      bottom: 28%;
      left: 0;
      right: 0;
      text-align: center;
      font-weight: bold;
      font-size: 20px;
      padding-left: 4%;
      color: #000;
    }

    .font-style {
      text-align: center;
      background-color: #FFFFFF;
      width: 270px;
      height: 50px;
      line-height: 50px;
      color: #A63B24;
      border-style: solid;
      font-weight: bold;
      font-size: 16px;
    }
    .coupon img {
      -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
      filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
    }
    .coupon-word{
      background-color: #FFFFFF;
      font-weight: bold;
      font-family: Arial, Helvetica, sans-serif;
      width:555px;
      text-align: center;
    }
    /* (End) Coupon. */

    /* Countdown text. */
    .even-title {
      bottom: 16%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      color: #ffff;
    }
    
    /* Preorder */
    .goods-preorder .add-btn{
        background:#D22248 !important;
    }

    .addPanel ul.am-direction-nav ul {
      text-align: center;
    }
    .addPanel ul.am-direction-nav li{
      display: inline-block;
      margin-right: 3em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain" style="background: #F3D0E1;">
          <!--側邊選單 (Start) ======================================================-->
    <div class="side-bar">
      <ul>
        <li>
          <a href="200709beauty_sale.aspx" target="_blank">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_00.png" alt="ss_00" />
          </a>
        </li>
        <li>
          <a href="#!">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_01.png" alt="ss_01" />
          </a>
        </li>
        <li>
          <a href="200709beauty_sale_hotdeal.aspx" target="_blank">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_02.png" alt="ss_02" />
          </a>
        </li>
        <li>
          <a href="200709beauty_sale.aspx?#s4" target="_blank">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_03.png" alt="ss_03" />
          </a>
        </li>
        <li>
          <a onclick="goto('s5')">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_04.png" alt="ss_04" />
          </a>
        </li>
      </ul>
    </div>
    <!--側邊選單 (End) =======================================================-->
    <div class="am-container am-margin-vertical-lg" style="position: relative;">
      <img class="am-margin-bottom-xl" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bbn_01.png" + "?cacheVersion=" + cacheVersion %>'
        alt="bbn_01" />
      <div class="even-title">
        <h2 class="am-text-xl">Sale Starts in
          <span class="clock-countdown">
            <span class="d">0</span>:
            <span class="h">0</span>:
            <span class="m">0</span>:
            <span class="s">0</span>
          </span>
        </h2>
      </div>
    </div>

    <div class="am-container">
      <%--領取折扣券 (Start)====================================================--%>
      <div class="am-margin-bottom_xl">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
      </div>
      <div class="am-margin-bottom-sm am-padding-bottom-sm">
        <ul class="am-avg-sm-2">
          <li class="am-padding-sm coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
            <div class="am-padding-top-sm">
            <div class="am-padding coupon-word">
            <h3>Gift with purchase; Limited 100 sets</h3>
            </div>
           </div>
          </li>
          <li class="am-padding-sm coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Minspend RM188; Limited 80 sets</h3>
              </div>
             </div>
          </li>
          <li class="am-padding-sm coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_03.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Minspend RM288; Limited 100 sets</h3>
              </div>
             </div>
          </li>
          <li class="am-padding-sm coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_04.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Minspend RM388; Limited 200 sets</h3>
              </div>
             </div>
          </li>
        </ul>
      </div>
      <%--領取折扣券 (End) ====================================================--%>

      <%--(Start) Related "Your Wishlist", not sure the purpose, but this dependency seems required to make Wishlist works. --%>
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
      <%--(End) Related "Your Wishlist", not sure the purpose, but this dependency seems required to make Wishlist works. --%>

      <%--(Start) (Top) Your Wishlist--%>
      <section class="am-margin-vertical-lg am-padding addPanel" style="background: #fff;">
          <h3 class="am-padding-xs am-margin-bottom-xs"
              style="background: #D22248; color: #fff; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
              <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>
          <header style="line-height: 2;">
              <span id="add-msg1" style="font-weight: bold;"></span>
          </header>
          <hr class="am-margin-xs" />

          <div id="top_add_panel">
              <div class="am-slider am-slider-carousel clean_shadow"
                  data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="top_slider" style="box-shadow: none;">
                  <ul class="am-slides add-list" id="add-list">
                  </ul>
              </div>
          </div>

          <%--Useless--%>
          <%--<div class="am-u-sm-6 am-u-sm-centered check-banner close-check">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/check.png" %>' style="width: 100%" />
          </div>--%>
      </section>
      <%--(End) (Top) Your Wishlist--%>

      <%--Block2 (Start) ======================================================--%>
      <div style="background:#0E4493">
        <div class="am-margin-bottom-xl am-padding-sm shop-block">
          <ul class="am-avg-sm-4">
            <%--後端帶入商品 (Start) --%>
            <%-- (Start) Pre-order product repeater --%>
            <asp:Repeater ID="rpPreorder" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                <ItemTemplate>
                    <li class="am-fl hvr-float">
                        <div class="goods goods-preorder" id="item_<%# Eval("WP01") %>">
                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                            <div class="goods-top">
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" style="width: 100%;" />
                                </a>
                                <span class="viewed-tag">
                                    <span class="viewed" >
                                        <asp:Literal ID="lit_Info" runat="server"></asp:Literal>
                                    </span>                           
                                    Added
                                </span>
                            </div>

                            <div class="goods-bottom">
                                <div class="goods-bottom">
                                    <h3 class="goods-name">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                    </h3>
                                </div>

                                <div class="goods-block flex-between">
                                    <h4 class="goods-price">
                                        <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                    </h4>
                                    <span>
                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                    </span>
                                </div>
                                <div class="goods-block flex-between">
                                    <div class="am-fl" style="width: 72%">
                                        <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                    </div>
                                    <div class="am-fr" style="width: 25%">
                                        <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                    </div>
                                </div>
                                <%--<div class="am-btn am-btn-block add-btn">--%>
                                    <input type="button" value="Add to Wishlist" class="am-btn am-btn-block add-btn" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                <%--</div>--%>
                            </div>
                        </div>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
            <%-- (End) Pre-order product repeater --%>
            <%--後端帶入商品 (Start) --%>
          </ul>
        </div>
      </div>
      <%--Block2 (End) =======================================================--%>

      <%--(Start) (Buttom) Your Wishlist--%>
      <section class="am-margin-vertical-lg am-padding addPanel" style="background: #fff;">
          <h3 class="am-padding-xs am-margin-bottom-xs"
              style="background: #D22248; color: #fff; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
              <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>
          <header style="line-height: 2;">
              <span id="add-msg2" style="font-weight: bold;"></span>
          </header>
          <hr class="am-margin-xs" />

          <div id="bottom_add_panel">
              <div class="am-slider am-slider-carousel clean_shadow"
                  data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="bottom_slider" style="box-shadow: none;">
                  <ul class="am-slides add-list" id="add-list">
                  </ul>
              </div>
          </div>

          <%--Useless--%>
          <%--<div class="am-u-sm-6 am-u-sm-centered check-banner close-check">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/check.png" %>' style="width: 100%" />
          </div>--%>
      </section>
      <%--(End) (Buttom) Your Wishlist--%>
    </div>

    <%--Terms & Conditions (Start) =====================================================--%>
    <footer class="am-padding-vertical-lg activity-method" style="background: #D22248;">
      <div class="am-container" id="s5">
        <p class="am-margin-top-0">
        Terms & Conditions<br />
        1. Promotion Date : 9th July 2020 12:00 - 15th July 2020 23:59
        </p>
        <p class="am-margin-top-0 am-padding-left">
           - Flash Sale (Add to wishlist): 9th July 2020 12:00 - 11th July 2020 23:59<br />
           - Flash Sale (On Sale): 12th July 2020 00:00 - 15th July 2020 23:59
        </p>
        <p class="am-margin-top-0">
        2. Free Gift (NON-accumulated gifts. Applicable on ALL skin care brands & cosmetics brands)
        </p>
        <p class="am-margin-top-0 am-padding-left">
           - Naturero Tote Bag (Free gift with any purchase, Worth RM20, limited 100 sets)<br />
           - Dr.Morita Eye Cream (Min.spend RM188, Worth RM52, limited 80 sets)<br />
           - DV Hyaluronic Acid Soothing Mask 5pcs/box (Min.spend RM288, Worth RM70, limited 100 sets)<br />
           - Double Doctor Brightening Serum 30ml (Min.spend RM388, Worth RM174, limited 200 sets)
        </p>
        <p class="am-margin-top-0">
        3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Beauty Shocking Sale terms from time to time, and in such manner as Hawooo deems appropriate.
        </p>
      </div>
    </footer>
    <%--Terms & Conditions (End) ======================================================--%>
  </div>

  <script src="assets/js/events.js"></script>
  <script src="assets/js/swiper.min.js"></script>
  <script src="assets/js/clipboard.min.js"></script>
  <script>
      var clipboard = new ClipboardJS('.btnn');
      clipboard.on('success', function (e) {
      console.info('Action:', e.action);
      console.info('Text:', e.text);
      alert("Yo Leng Lui! You've copied the code liao, paste it when you get ready to pay!");
      e.clearSelection();
      });
      clipboard.on('error', function (e) {
      console.error('Action:', e.action);
      console.error('Trigger:', e.trigger);
      });
  </script>
  <script type="text/javascript">
    /*Load HTML*/
    $(document).ready(function () {
      // load 網頁共用結構
      let totalLoad = $('.include').length;
      let loadIndex = 0;
      if (totalLoad == 0) {
        initScript();
      }
      $('.include').each(function () {
        $(this).load($(this).data('file'), function () {
          $(this).children().first().unwrap(); // remove the ha-include div
          loadIndex++;
          if (loadIndex == totalLoad) {
            //共用結構載入完，開始執行頁面自己的初始化
            initScript();
          }
        });
      });
    });

    // 執行頁面的script
    function initScript() {
      $(".shop-block li").addClass("hvr-float");
      // Init logic that only related to preorder.
      SetInfo();
    }

    // (Start) Preorder logics.
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
                url: "200709beauty_sale_preorder.aspx/DoDel",
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
            doLogin("200709beauty_sale_preorder.aspx");
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
                url: "200709beauty_sale_preorder.aspx/DoAdd",
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
            // What is this? So I comment out it.
            //doLogin("200709beauty_sale_preorder.aspx");
            location.href = 'login.aspx?rurl=200709beauty_sale_preorder.aspx';
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
            url: "200709beauty_sale_preorder.aspx/GetItem",
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
            url: "200709beauty_sale_preorder.aspx/GetAddList",
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
        var msg = "You have selected #QTY# items, original price: RM #PRICE# ,price after discount: RM #SPRICE# .<br/> 12/7 00:00 the items in your wishlist will be automatically added into your shopping cart, hurry checkout before 15/7 23:59！";

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

    function setCountdown(spendtime) {
      let domD = $(".clock-countdown .d").eq(0);
      let domH = $(".clock-countdown .h").eq(0);
      let domM = $(".clock-countdown .m").eq(0);
      let domS = $(".clock-countdown .s").eq(0);
      setInterval(() => {
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
              domD.text(d);
              domH.text(h);
              domM.text(m);
              domS.text(s);
          } else { // 避免倒數變成負的
              domD.text(0);
              domH.text(0);
              domM.text(0);
              domS.text(0);
          }
      }, 1000)
    }
    function PrefixInteger(num, length) {
        return (Array(length).join('0') + num).slice(-length);
    }
    // (End) Preorder logics.

  </script>
</asp:Content>