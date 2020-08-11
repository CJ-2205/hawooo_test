<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200803_88shopping_flashsale.aspx.cs" Inherits="mobile_static_200803_88shopping_flashsale" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="assets/css/events_style.min.css">
  <link rel="stylesheet" href="assets/css/swiper.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
  <style>
    .mb-shop-block {
      padding: 3px;
    }

        .am-footer #company{
        display:none;
    }

        @media screen and (min-width: 650px) {
    .activity-method{
        margin-bottom:120px;
    }
    }

    /* Logo border style */
    #logo a {
      padding-bottom: 0;
    }

    .radius {
      border-bottom-right-radius: 20px;
      border-bottom-left-radius: 20px;
    }

    .event-title-bg {
      position: relative;
    }

    .event-title {
      font-weight: bold;
      font-size: 40px;
      letter-spacing: 1px;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      color: #0A0A0A;
      font-family: 'Bebas Neue', sans-serif;
    }

    @media screen and (max-width: 650px) {
      .event-title {
        font-size: 30px;
      }
    }

      .event-title  h6{
          margin-top:0;
      }

    .event-title1 {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      bottom: 0;
      top: 0;
    }

    .event-title2 {
      top: 10%;
      color: #fff;
    }

    .event-title3 {
      bottom: 3%;
    }

    .event-title4 {
      top: 13%;
    }

    @media screen and (max-width: 650px) {

      .event-title,
      .event-title1,
      .event-title2 {
        font-size: 20px;
      }
    }

    @media screen and (max-width: 320px) {

      .event-title,
      .event-title1,
      .event-title2 {
        font-size: 14px;
      }

      .event-title1 {
        font-size: 12px;
        bottom: 6%;
      }
    }

    .gray-block {
      background: rgba(0, 0, 0, .88);
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
    }

    .big-font {
      font-size: 30px;
      font-weight: bold;
      font-family: 'Roboto';
    }

    .countdown {
      font-weight: 300;
    }

    #s1 .goods-bottom {
      height: 115px;
    }

    @media screen and (min-width: 650px) {
      #s1 .goods-bottom {
        height: 135px;
      }
    }


    #s2 .goods-bottom {
      height: 105px;
    }

    @media screen and (min-width: 650px) {
      #s2 .goods-bottom {
        height: 120px;
      }
    }

    .stroke-white {
      font-size: 30px;
      font-family: 'Bebas Neue', sans-serif;
    }

    .fs-clack {
      font-size: 30px;
      line-height: 1;
    }

    @media screen and (max-width: 650px) {
      .fs-clack {
        font-size: 20px;
      }
    }

    .fs-clack-title {
      font-size: 22px;
      line-height: 1;
    }
    
    @media screen and (max-width: 650px) {
      .fs-clack-title {
        font-size: 18px;
      }
    }

    /* (Start) Coupon */
    .coupon {
      position: relative;
    }

    .coupon-code {
      background: #fff;
      color: #0E0E0E;
      font-weight: bold;
      text-align: center;
      font-size: 14px;
      padding: 6px 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-top:0;
    }

    @media screen and (max-width: 650px) {
      .coupon-code {
        font-size: 12px;
        min-height: 30px;
        padding: 0;
      }
          .coupon-code2 {
        min-height: 40px;
      }
    }
    /* (End) Coupon */
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <!--MB  Contain Max-width:650px(Start) ==========================================-->
  <div class="am-g main-contain mb-contain" id="top" style="background:#E6C623;">
    <div class="event-title-bg">
      <asp:Panel ID="panelImgBbn01Period1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bbn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
      </asp:Panel>
      <asp:Panel ID="panelImgBbn01Period2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bbn_001m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
      </asp:Panel>
    </div>
    <!--領取折扣券 (Start)====================================================-->
    <div>
      <div class="am-padding-xs event-title-bg">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m" />
        <div class="event-title event-title1">
          <h2>LIMITED COUPON & FREE GIFT</h2>
          <h6 class="am-text-sm">(T&C Apply)</h6>
        </div>
      </div>
      <div>
        <ul class="am-avg-sm-3">
          <li class="am-padding-xs coupon">
            <a class="btnn" data-clipboard-text="SHOP18" href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
            </a>
            <h6 class="coupon-code"><asp:Literal ID="Coupon1" runat="server"></asp:Literal> have copied it</h6>
          </li>
          <li class="am-padding-xs  coupon">
            <a class="btnn" data-clipboard-text="SHOP38" href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
            </a>
            <h6 class="coupon-code"><asp:Literal ID="Coupon2" runat="server"></asp:Literal> have copied it</h6>
          </li>
          <li class="am-padding-xs coupon">
            <a class="btnn" data-clipboard-text="SHOP58" href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
            </a>
            <h6 class="coupon-code"><asp:Literal ID="Coupon3" runat="server"></asp:Literal> have copied it</h6>
          </li>
        </ul>
        <ul class="am-avg-sm-2">
          <li class="am-padding-xs coupon">
            <%-- Before 2020-08-08: show special message ; After 2020-08-08: enable the clipboard just like other coupons. --%>
            <a ID="coupon4a" runat="server" class=""  >
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
            </a>
            <h6 class="coupon-code coupon-code2">
              <asp:Panel ID="coupon4Text1" runat="server" Visible="false">
                Applicable on 8/8
              </asp:Panel>
              <asp:Panel ID="coupon4Text2" runat="server" Visible="false">
                <asp:Literal ID="Coupon4" runat="server"></asp:Literal> have copied it
              </asp:Panel>
            </h6>
          </li>
          <li class="am-padding-xs coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_05" />
            <h6 class="coupon-code coupon-code2">min spend 480, limited 150 sets</h6>
          </li>
        </ul>
      </div>
    </div>
    <!--領取折扣券 (End) ====================================================-->

    <!--Block1 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod1" runat="server" Visible="false">
      <section class="note-round-1 am-margin-bottom">
        <!-- 3/8 12:00 ON SALE  (Start) -->
        <div class="am-padding-horizontal-xs event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m">
          <div class="event-title event-title1">
            <h6 class="am-text-danger fs-clack-title">3/8 12:00  ON SALE</h6>
            <asp:Panel ID="panelFlashSaleCountPeriod1" runat="server" Visible="false">
              <h6 class="fs-clack">
                <small class="am-text-default"> Ends in</small>
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </h6>
            </asp:Panel>
          </div>
        </div>
        <!-- 3/8 12:00 ON SALE  (End) -->
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod1" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod1">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
            <%-- html version from Sarala (treegb havn't red it yet?) --%>
            <%--<li class="am-fl goods goods-flashsale">
              <a href="#" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2020flagship_events/goods.jpg" + "?cacheVersion=" + cacheVersion %>'>
                    <div class="goods-discount  goods-discount3">
                      <span class="ribbon">10<small>%</small> OFF
                      </span>
                    </div>
                  </div>
                </div>
                <div class="goods-bottom">
                  <div class="goods-block fire-progress">
                    <div class="fire-img">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/fire.svg" + "?cacheVersion=" + cacheVersion %>' style="width: 23px" />
                    </div>
                    <div class="fire-sold">
                      sold111件
                      <span class="bar-white" style="width: 50%;"></span>
                    </div>
                  </div>
                  <div class="goods-block">
                    <p class="goods-name">
                      DR.CINK All-Round 4D Super Moisturizing Revitalizing &amp; Luxurios Caviar Serum Set
                    </p>
                  </div>
                  <div class="goods-block">
                    <h1 class="goods-price">
                      <span>RM</span> XX.XX
                    </h1>
                    <s class="goods-original-price">
                      <span>RM</span>XX.XX
                    </s>
                  </div>
                  <div class="goods-block">
                    <p>SAVE<span> RM XX.XX</span></p>
                  </div>
                </div>
              </a>
            </li>--%>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block1 (End) ======================================================-->

    <!--Block2 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod2" runat="server" Visible="false">
      <section class="note-round-2 am-margin-bottom">
        <!-- 4/8 00:00 ON SALE  (Start) -->
        <div class="am-padding-horizontal-xs event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m">
          <div class="event-title event-title1">
            <h6 class="am-text-danger  fs-clack-title">4/8 00:00  ON SALE</h6>
            <asp:Panel ID="panelFlashSaleCountPeriod2" runat="server" Visible="false">
              <h6 class="fs-clack">
                <small class="am-text-default"> Ends in</small>
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </h6>
            </asp:Panel>
          </div>
        </div>
        <!-- 4/8 00:00 ON SALE  (End) -->
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod2" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod2">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small> OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block2 (End) ======================================================-->

    <!--Block3 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod3" runat="server" Visible="false">
      <section class="note-round-3 am-margin-bottom">
        <!-- 5/8 00:00 ON SALE  (Start) -->
        <div class="am-padding-horizontal-xs event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m">
          <div class="event-title event-title1">
            <h6 class="am-text-danger fs-clack-title">5/8 00:00  ON SALE</h6>
            <asp:Panel ID="panelFlashSaleCountPeriod3" runat="server" Visible="false">
              <h6 class="fs-clack">
                <small class="am-text-default"> Ends in</small>
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </h6>
            </asp:Panel>
          </div>
        </div>
        <!-- 5/8 00:00 ON SALE  (End) -->
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod3" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod3">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block3 (End) ======================================================-->

    <!--Block4 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod4" runat="server" Visible="false">
      <section class="note-round-4 am-margin-bottom">
        <!-- 6/8 00:00 ON SALE  (Start) -->
        <div class="am-padding-horizontal-xs event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m">
          <div class="event-title event-title1">
            <h6 class="am-text-danger fs-clack-title">6/8 00:00  ON SALE</h6>
            <asp:Panel ID="panelFlashSaleCountPeriod4" runat="server" Visible="false">
              <h6 class="fs-clack">
                <small class="am-text-default"> Ends in</small>
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </h6>
            </asp:Panel>
          </div>
        </div>
        <!-- 6/8 00:00 ON SALE  (End) -->
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod4" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod4">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block4 (End) ======================================================-->

    <!--Block5 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod5" runat="server" Visible="false">
      <section class="note-round-5 am-margin-bottom">
        <!-- 7/8 00:00 ON SALE  (Start) -->
        <div class="am-padding-horizontal-xs event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m">
          <div class="event-title event-title1">
            <h6 class="am-text-danger fs-clack-title">7/8 00:00  ON SALE</h6>
            <asp:Panel ID="panelFlashSaleCountPeriod5" runat="server" Visible="false">
              <h6 class="fs-clack">
                <small class="am-text-default"> Ends in</small>
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </h6>
            </asp:Panel>
          </div>
        </div>
        <!-- 7/8 00:00 ON SALE  (End) -->
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod5" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod5">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block5 (End) ======================================================-->

    <!--Block6 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod6" runat="server" Visible="false">
      <section class="note-round-6 am-margin-bottom">
        <!-- 8/8 00:00 ON SALE  (Start) -->
        <div class="am-padding-xs event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m">
          <div class="event-title event-title1">
            <h6 class="am-text-danger fs-clack-title">8/8 00:00  ON SALE</h6>
            <asp:Panel ID="panelFlashSaleCountPeriod6" runat="server" Visible="false">
              <h6 class="fs-clack">
                <small class="am-text-default"> Ends in</small>
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </h6>
            </asp:Panel>
          </div>
        </div>
        <!-- 8/8 00:00 ON SALE  (End) -->
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod6" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod6">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block6 (End) ======================================================-->

    <!--Block7 (Start) =====================================================-->
    <asp:Panel ID="panelFlashSalePeriod7" runat="server" Visible="false">
      <section class="note-round-7 am-margin-bottom">
        <asp:Panel ID="panelFlashSaleCountPeriod7" runat="server" Visible="false"><%-- Dummy panal, the purpose is just keep the for loop don't break. --%></asp:Panel>
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriod7" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSalePeriod7">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                  <a href='<%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) == true ? "brandeventpage.aspx?bid="+Eval("B01") : "product.aspx?id="+Eval("WP01")%>'>
                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                    <div class="goods-top">
                      <div class="goods-img">
                        <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                        <div class="goods-discount goods-discount3">
                          <span class="ribbon">
                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
                          <asp:Literal ID="lit_WPA06" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "RM XX.XX" : "" %>
                        </h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                            <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                          </span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE RM
                          <asp:Literal ID="lit_save" runat="server" Visible='<%# ! Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) %>'></asp:Literal>
                          <%# Convert.ToBoolean(Eval("ifProductHrefRedirect").ToString()) ? "XX.XX" : "" %>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
      </section>
    </asp:Panel>
    <!--Block7 (End) ======================================================-->

    <%--Terms & Conditions (Start) =============================================--%>
    <div id="s5" class="note-terms am-padding-vertical-lg activity-method" style="background: #224A64;">
      <asp:Panel ID="panelTermsPeriod1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <div class="am-container">
          <p  class="am-padding-bottom-sm">
            Terms & Conditions<br>
          </p>
          <div class="am-margin-left">
            <ul style="list-style-type: decimal!important; ">
              <li class="am-margin-bottom-sm">
                  8.8 Shoping Festival Promotion Date : 3rd August 2020 12:00 - 8th August 2020 23:59
              </li>
              <li class="am-margin-bottom-sm">
                  24 Hour Flash Sale: 24 hours limited time discount on 8 items per day.
                <div class="am-padding-left-sm">
                  <ul>
                    <li>- Round 1: 3/8 12:00- 3/8 23:59</li>
                    <li>- Round 2: 4/8 00:00- 4/8 23:59</li>
                    <li>- Round 3: 5/8 00:00- 5/8 23:59</li>
                    <li>- Round 4: 6/8 00:00- 6/8 23:59</li>
                    <li>- Round 5: 7/8 00:00- 7/8 23:59</li>
                    <li>- Round 6: 8/8 00:00- 8/8 23:59</li>
                  </ul>
                </div>
              </li>
              <li class="am-margin-bottom-sm">
               Sitewide Promo Code:
                <div class="am-padding-left-sm"> 
                  <ul>
                    <li>- RM18 OFF, use code [SHOP18] (min spend 230)</li>
                    <li>- RM38 OFF, use code [SHOP38] (min spend 400)</li>
                    <li>- RM58 OFF, use code [SHOP58] (min spend 580)</li>
                    <li>- RM88 OFF, use code [SHOP88] (min spend 688) Only able to use on 8th August 2020</li>
                  </ul>
                </div>
              </li>
              <li class="am-margin-bottom-sm">
                Free Gift (minspend RM480, amount after using promo codes)
                <div class="am-padding-left-sm">
                  - Bifinity Edelweis Makeup Removing Lotion 200ml (limited 150 sets)
                </div>
              </li>
              <li class="am-margin-bottom-sm">
                  Promo Codes are applicable sitewide, including flash sale items and selected Flagship Stores, including Dr.
                  Morita, DV,
                  Laler, Choyer, Hsu's, ANRIEA , Paradiso Garden,
                  1838 Eurocares, Sofei, Enjoy The Life, Pandababy, Unipapa, SAHOLEA, Zephyrine, DV Tokyo, Double Doctor, HH
              </li>
              <li class="am-margin-bottom-sm">
               Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 8.8 Shoping Festival
                  Promotion terms
                  from time to time, and in such manner as Hawooo deems appropriate.
              </li>
            </ul>
          </div>
        </div>
      </asp:Panel>
      <asp:Panel ID="panelTermsPeriod2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <div class="am-container">
          <p  class="am-padding-bottom-sm">
            Terms & Conditions<br>
          </p>
          <div class="am-margin-left">
            <ul style="list-style-type: decimal!important; ">
              <li class="am-margin-bottom-sm">
                  8.8 Shoping Festival After Sale : 9th August 2020 00:00 - 11st August 2020 11:59
              </li>
              <li class="am-margin-bottom-sm">
                  Sitewide Promo Code:
                <div class="am-padding-left-sm">
                  <ul>
                    <li>- RM18 OFF, use code [SHOP18] (min spend 230)</li>
                    <li>- RM38 OFF, use code [SHOP38] (min spend 400)</li>
                    <li>- RM58 OFF, use code [SHOP58] (min spend 580)</li>
                  </ul>
                </div>
              </li>
              <li class="am-margin-bottom-sm">
               Free Gift (minspend RM480, amount after using promo codes)
                <div class="am-padding-left-sm"> 
                  <ul>
                    <li>- Bifinity Edelweis Makeup Removing Lotion 200ml (limited 150 sets)</li>
                  </ul>
                </div>
              </li>
              <li class="am-margin-bottom-sm">
                Promo Codes are applicable sitewide, including flash sale items and selected Flagship Stores, including Dr. Morita, DV, Laler, Choyer, Hsu's, ANRIEA , Paradiso Garden, 1838 Eurocares, Sofei, Enjoy The Life, Pandababy, Unipapa, SAHOLEA, Zephyrine, DV Tokyo, Double Doctor, HH, Unicat
              </li>
              <li class="am-margin-bottom-sm">
                  Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 8.8 Shoping Festival Promotion terms from time to time, and in such manner as Hawooo deems appropriate.
              </li>
            </ul>
          </div>
        </div>
      </asp:Panel>
    </div>
    <%--Terms & Conditions (End) ==============================================--%>
    <div class="footer-bar">
      <div>
        <ul class="am-avg-sm-3">
          <li>
            <a href="200803_88shopping.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
            </a>
          </li>
          <li>
            <a href="#!">
              <asp:Panel ID="panelImgElevatorPeriod1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
              </asp:Panel>
              <asp:Panel ID="panelImgElevatorPeriod2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_001m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
              </asp:Panel>
            </a>
          </li>
          <li>
            <a href="200803_88shopping_bundlesale.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
            </a>
          </li>
          <li>
            <a href="200803_88shopping.aspx?#s3" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
            </a>
          </li>
          <li>
            <a href="200803_88shopping.aspx?#s4" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
            </a>
          </li>
          <li onclick="goto('s5',800,'swing')">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05m" />
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!--MB  Contain Max-width:650px(End) ==========================================-->

  <script src="assets/js/swiper.min.js"></script>
  <script src="assets/js/events.js"></script>
  <script src="assets/js/clipboard.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js"
    type="text/javascript"></script>
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
      hiddenFooterMenu();
    }

    // - Argument: spendtimeSec: Total seconds need to coundown ; mode: "d" for display "day" unit, "ms" for display "millisecond" unit.
    // - HTML:
    // <span class="clock-countdown-shared">
    //   <span class='d'>00</span><small class="am-text-sm">H</small><!-- For mode === "d" -->
    //   <span class='h'>00</span><small class="am-text-sm">H</small>
    //   <span class='m'>00</span><small class="am-text-sm">M</small>
    //   <span class='s'>00</span><small class="am-text-sm">S</small>
    //   <span class='ms'>00</span><small class="am-text-sm">MS</small><!-- For mode === "ms" -->
    // </span>
    function setCountdown(spendtimeSec, mode = "d", wrapperClassOrId = ".clock-countdown") {
        let spendtimeMs = spendtimeSec * 1000
        // Don't set this too low! Any random integer is fine. 150 ~ 40 is a resonable value.
        let msInterval = 100
        let domUpdateInterval = mode === "d" ? 1000 : msInterval;
        let domD = $(`${wrapperClassOrId} .d`).eq(0);
        let domH = $(`${wrapperClassOrId} .h`).eq(0);
        let domM = $(`${wrapperClassOrId} .m`).eq(0);
        let domS = $(`${wrapperClassOrId} .s`).eq(0);
        let domMS = $(`${wrapperClassOrId} .ms`).eq(0);
        let d, h, m, s, ms;
        setInterval(() => {
            spendtimeMs = spendtimeMs - domUpdateInterval;
            d = mode === "d" ? Math.floor( (spendtimeMs / 1000) / (24 * 3600)) : 0;
            d = PrefixInteger(d, 2);
            h = Math.floor(( (spendtimeMs / 1000) % (24 * 3600)) / 3600);
            //h = parseInt(d) * 24 + parseInt(PrefixInteger(h, 2));
            h = PrefixInteger(h, 2);
            m = Math.floor(( (spendtimeMs / 1000) % 3600) / (60));
            m = PrefixInteger(m, 2);
            s = Math.floor( (spendtimeMs / 1000) % 60);
            s = PrefixInteger(s, 2);
            ms = mode === "ms" ? Math.floor(( (spendtimeMs / 1000) * 10 % 10)) : 0;
            ms = PrefixInteger(ms, 1);
            if (spendtimeMs > 0) {
                if (mode === "d") domD.text(d);
                domH.text(h);
                domM.text(m);
                domS.text(s);
                if (mode === "ms") domMS.text(ms);
            } else { // 避免倒數變成負的
                if (mode === "d") domD.text(0);
                domH.text(0);
                domM.text(0);
                domS.text(0);
                if (mode === "ms") domMS.text(0);
            }
        }, domUpdateInterval )
    }
    function PrefixInteger (num, length) {
        return (Array(length).join('0') + num).slice(-length);
    }

    //Coupon訊息. Before 2020-08-08: show special message ; After 2020-08-08: enable the clipboard just like other coupons.
    $(document).on('click', '.couponMsg', function (e) {
      swal({
        html: 'SHOP88 Only Applicable</br> On 8/8/2020 00:00 Comeback on 8/8 ya!',
      })
    });

    function printDebugMessage (argg) {
        console.log(`${argg}`);
    }
  </script>
</asp:Content>