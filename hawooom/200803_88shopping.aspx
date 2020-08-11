<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200803_88shopping.aspx.cs" Inherits="mobile_static_200803_88shopping" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="assets/css/events_style.min.css">
  <link rel="stylesheet" href="assets/css/swiper.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap" rel="stylesheet">
  <style>
    .mb-shop-block {
      padding: 3px;
    }
    e
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


    .event-title h6{
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
      top: 8%;
    }

    .even-title2-before{
        top:21% !important;
    }

    .event-title3 {
      bottom: 0;
    }

    .event-title4 {
      top: 22%;
    }

    @media screen and (max-width: 650px) {

      .event-title,
      .event-title1 {
        font-size: 20px;
      }
    }

    @media screen and (max-width: 320px) {

      .event-title,
      .event-title1 {
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

/*    #s1 .goods-bottom {
      height: 115px;
    }

    @media screen and (min-width: 650px) {
      #s1 .goods-bottom {
        height: 135px;
      }
    }*/


   #s1 .goods-bottom  , #s2 .goods-bottom {
      height: 105px;
    }

    @media screen and (min-width: 650px) {
      #s1 .goods-bottom, #s2 .goods-bottom {
        height: 120px;
      }
    }

    .stroke-white {
      font-size: 30px;
      font-family: 'Bebas Neue', sans-serif;
      color: #000;
      position: relative;
    }

    .stroke-white:after {
      content: ('You May Also Like...');
      font-size: 40px;
      /* -webkit-text-stroke: 4px #fff; */
      position: absolute;
      top: 0;
      left: 0;
      z-index: 11;
    }

    /* (Start) Coupon */
    .coupon {
      position: relative;
    }

    .coupon-code {
        margin-top:0;
      background: #fff;
      color: #0E0E0E;
      font-weight: bold;
      text-align: center;
      font-size: 14px;
      padding: 6px 30px;
      display: flex;
      align-items: center;
      justify-content: center;
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
  <%--MB  Contain (Start) ===================================================--%>
  <div class="am-g main-contain mb-contain" id="top" style="background:#E6C623;">
    <div>
      <asp:Panel ID="panelImgBn01Period1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
      </asp:Panel>
      <asp:Panel ID="panelImgBn01Period2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_001m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
      </asp:Panel>
    </div>

    <%--領取折扣券 (Start)====================================================--%>
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
            <a class="btnn" data-clipboard-text="SHOP18" data-clipboard-abcc="ABCC." href="#!">
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
    <%--領取折扣券 (End) ====================================================--%>

    <%--Block1 (Start) =====================================================--%>
    <section class="note-flashsale am-padding-xs" id="s1">
      <a href="./200803_88shopping_flashsale.aspx" target="_blank">
        <div class="am-margin-bottom-0 event-title-bg">
          <asp:Panel ID="panelImgBn03Period1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
          </asp:Panel>
          <asp:Panel ID="panelImgBn03Period2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_003m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
          </asp:Panel>
          <asp:Panel ID="panelFlashSaleSvgPeriod1" runat="server" Visible="false" style="width: 100%;">
            <div class="event-title event-title2 even-title2-before">
              <%-- <h2>24H FLASH SALE</h2> --%>
              <svg style="width: 68%;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510.44 93.57">
                  <defs>
                      <style>
                          .cls-1, .cls-2, .cls-3 {
                              font-size: 47px;
                              stroke-linecap: round;
                              stroke-linejoin: round;
                              font-family: 'Rubik Mono One', sans-serif;
                          }

                          .cls-1 {
                              fill: #1fb5bf;
                              stroke: #fff;
                              stroke-width: 16px;
                          }

                          .cls-2, .cls-3 {
                              fill: #fff;
                          }

                          .cls-2 {
                              stroke: #1fb5bf;
                              stroke-width: 9px;
                          }

                          .cls-3 {
                              stroke: #231815;
                              stroke-width: 2.5px;
                          }
                      </style>
                  </defs><title>BUNDLE SALE</title><g id="z3">
                      <text class="cls-1" transform="translate(14.53 51.92)"x="0,36,72,128,164,200,236,272,328,364,400,436">24HFLASHSALE</text>
                      <text class="cls-2" transform="translate(14.53 51.92)"x="0,36,72,128,164,200,236,272,328,364,400,436">24HFLASHSALE</text>
                      <text class="cls-3" transform="translate(14.53 51.92)"x="0,36,72,128,164,200,236,272,328,364,400,436">24HFLASHSALE</text>
                  </g></svg>
            </div>
          </asp:Panel>
          <asp:Panel ID="panelFlashSaleSvgPeriod2" runat="server" Visible="false" style="width: 100%;">
            <div class="event-title event-title2">
              <%-- <h2>24H FLASH SALE</h2> --%>
              <svg style="width: 70%;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510.44 110">
                  <defs>
                      <style>
                          .cls-1, .cls-2, .cls-3 {
                              font-size: 40px;
                              stroke-linecap: round;
                              stroke-linejoin: round;
                              font-family: 'Rubik Mono One', sans-serif;
                          }

                          .cls-1 {
                              fill: #1fb5bf;
                              stroke: #fff;
                              stroke-width: 16px;
                          }

                          .cls-2, .cls-3 {
                              fill: #fff;
                          }

                          .cls-2 {
                              stroke: #1fb5bf;
                              stroke-width: 9px;
                          }

                          .cls-3 {
                              stroke: #231815;
                              stroke-width: 2.5px;
                          }
                      </style>
                  </defs><title>FlashSaleBestSellers</title> <g id="z1">
                      <text class="cls-1"transform="translate(9 69.22)">
             <tspan x="0"dx="50" y="-20">FLASH SALE</tspan>
              <tspan x="0" dx="25" y="27">Best Sellers</tspan>
              </text></g>
              <g id="z2"><text class="cls-2"transform="translate(9 69.22)">
                  <tspan x="0"dx="50" y="-20">FLASH SALE</tspan>
              <tspan x="0" dx="25" y="27">Best Sellers</tspan></text></g>
              <g id="z3"><text class="cls-3"transform="translate(9 69.22)" >
                <tspan x="0" dx="50"y="-20">FLASH SALE</tspan>
                <tspan  x="0" dx="25" y="27">Best Sellers</tspan>
                </text></g></svg>
            </div>
          </asp:Panel>
          <div class="event-title event-title3">
            <h2>
              <small class="am-text-sm"> Ends in</small>
              <asp:Panel ID="panelFlashSalePeriod1To6" runat="server" Visible="false" style="display:inline-block;">
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                  <span class='ms'>00</span><small class="am-text-sm">MS</small>
                </span>
                <%-- (End) Countdown --%>
              </asp:Panel>
              <asp:Panel ID="panelFlashSalePeriod7" runat="server" Visible="false" style="display:inline-block;">
                <%-- (Start) Countdown --%>
                <span class="clock-countdown-shared">
                  <span class='d'>00</span><small class="am-text-sm">D</small>
                  <span class='h'>00</span><small class="am-text-sm">H</small>
                  <span class='m'>00</span><small class="am-text-sm">M</small>
                  <span class='s'>00</span><small class="am-text-sm">S</small>
                </span>
                <%-- (End) Countdown --%>
              </asp:Panel>
            </h2>
          </div>
        </div>
      </a>

      <div class="radius" style="background:#E6E6E6;">
        <div class="swiper-container swiper-container8 mb-shop-block">
          <ul class="am-avg-sm-2 am-avg-md-3 swiper-wrapper">

            <%-- Goods template: RibbonFireTemp --%>
            <asp:Repeater ID="rpFlashSalePeriodShared" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSaleShared">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
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
                          <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE<span> RM
                            <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
            <li class="am-fl goods goods-flashsale">
              <a href="./200803_88shopping_flashsale.aspx" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'>
                    <div class="goods-discount goods-discount3">
                    </div>
                  </div>
                </div>
                <div class="goods-bottom" style="display:flex;justify-content:center;align-items:center;">
                  <div class="goods-block">
                    <h2 class="am-text-center">
                      See More
                    </h2>
                  </div>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div>
          <a class="am-block" href="./200803_88shopping_flashsale.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/shopm.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
          </a>
        </div>
      </div>
    </section>
    <%--Block1 (End) ======================================================--%>

    <%--Block2 (Start) =====================================================--%>
    <section class="note-bundlesale am-margin-bottom am-padding-xs" id="s2">
      <div class="am-padding-bottom-0  event-title-bg">
        <a href="./200803_88shopping_bundlesale.aspx" target="_blank">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04m" />
          <div class="event-title event-title4">
            <%-- <h1>BUNDLE SALE</h1> --%>
              <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 510.44 93.57" style="width:66%;">
              <defs>
                <style>
                  .als-1,
                  .als-2,
                  .als-3 {
                    font-size: 55px;
                    stroke-linecap: round;
                    stroke-linejoin: round;
                   font-family: 'Rubik Mono One', sans-serif;
                  }

                  .als-1 {
                    fill: #1fb5bf;
                    stroke: #fff;
                    stroke-width: 16px;
                  }

                  .als-2,
                  .als-3 {
                    fill: #fff;
                  }

                  .als-2 {
                    stroke: #db9845;
                    stroke-width: 9px;
                  }

                  .als-3 {
                    stroke: #231815;
                    stroke-width: 2.5px;
                  }
                </style>
              </defs>
              <title>BUNDLE SALE</title>
              <g id="kk1"><text class="als-1" transform="translate(13.91 69.22)"x="0,45,90,135,180,225,290,335,380,425">BUNDLESALE</text></g>
              <g id="kk2"><text class="als-2" transform="translate(13.91 69.22)"x="0,45,90,135,180,225,290,335,380,425">BUNDLESALE</text></g>
              <g id="kk3"><text class="als-3" transform="translate(13.91 69.22)"x="0,45,90,135,180,225,290,335,380,425">BUNDLESALE</text></g>
            </svg>
          </div>
        </a>
      </div>
      <div class="radius" style="background:#E6E6E6">
        <div class="swiper-container swiper-container9 mb-shop-block">
          <ul class="am-avg-sm-2 am-avg-md-3 swiper-wrapper">
            <%-- Goods template: RibbonTemp --%>
            <asp:Repeater ID="rpBundle" runat="server" OnItemDataBound="rp_plist_ItemDataBound_Bundle">
              <ItemTemplate>
                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                <li class="am-fl goods goods-flashsale">
                  <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                    <%--<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                      <%--<div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                        </div>
                        <div class="fire-sold">
                          sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                        </div>
                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                      </div>--%>
                      <div class="goods-block">
                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                      </div>
                      <div class="goods-block">
                        <h1 class="goods-price">
                          <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                        <s class="goods-original-price">
                          <span>RM
                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>
                          SAVE<span> RM
                            <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                        </p>
                      </div>
                    </div>
                  </a>
                </li>
              </ItemTemplate>
            </asp:Repeater>
            <li class="am-fl goods goods-flashsale">
              <a href="./200803_88shopping_bundlesale.aspx" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'>
                    <div class="goods-discount goods-discount3">
                    </div>
                  </div>
                </div>
                <div class="goods-bottom" style="display:flex;justify-content:center;align-items:center;">
                  <div class="goods-block">
                    <h2 class="am-text-center">
                      See More
                    </h2>
                  </div>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div>
          <a class="am-block" href="./200803_88shopping_bundlesale.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/shopm.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
          </a>
        </div>
      </div>
    </section>
    <%--Block2 (End) ======================================================--%>

    <%--Block3 Highlighted Brands(Start)==========================================--%>
    <section class="note-highlighted am-margin-bottom am-padding-xs" id="s3">
      <div class="event-title-bg">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m" />
        <div class="event-title event-title1">
          <h2>HIGHLIGHTED BRANDS</h2>
          <h6 class="am-text-sm">DON'T MISS IT!</h6>
        </div>
      </div>
      <div class="mb-shop-block" id="logo">
        <ul class="am-avg-sm-2 am-avg-md-3" id="inject-logo-for-brands">
          <%-- Goods template: RibbonTemp --%>
          <asp:Repeater ID="rpHighLightArea" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea">
            <ItemTemplate>
              <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

              <li class="am-fl goods goods-flashsale">
                <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                  <%--<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                    <%--<div class="goods-block fire-progress">
                      <div class="fire-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                      </div>
                      <div class="fire-sold">
                        sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                      </div>
                      <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                    </div>--%>
                    <div class="goods-block">
                      <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                    </div>
                    <div class="goods-block">
                      <h1 class="goods-price">
                        <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                      <s class="goods-original-price">
                        <span>RM
                          <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                      </s>
                    </div>
                    <div class="goods-block">
                      <p>
                        SAVE<span> RM
                          <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
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
    <%--Block3 Highlighted Brands(End) ==========================================--%>

    <%--Block4 Shop By Category (Start) ==========================================--%>
    <div class="note-category am-padding-xs" id="s4">
      <%--Category1 (Start) --%>
      <section>
        <div class="event-title-bg">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_10m" />
          <div class="event-title event-title1">
            <h1>SHOP BY CATEGORY</h1>
          </div>
        </div>

        <div class="am-margin-vertical-xs">
          <ul class="am-avg-sm-3">
            <li class="am-padding-xs" id="point1"><a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_01.png" + "?cacheVersion=" + cacheVersion %>' alt="v_01" /></a></li>
            <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_02.png" + "?cacheVersion=" + cacheVersion %>' alt="v_02" /></a></li>
            <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_03.png" + "?cacheVersion=" + cacheVersion %>' alt="v_03" /></a></li>
            <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_04.png" + "?cacheVersion=" + cacheVersion %>' alt="v_04" /></a></li>
            <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_05.png" + "?cacheVersion=" + cacheVersion %>' alt="v_05" /></a></li>
            <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_06.png" + "?cacheVersion=" + cacheVersion %>' alt="v_06" /></a></li>
          </ul>
        </div>
        <%--Category1 (start) --%>
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ca_01m" />
          </a>
          <div class="category-slider">
            <div class="swiper-container swiper-container1 mb-shop-block">
              <ul class="swiper-wrapper">
                <uc1:products runat="server" id="productCategorySec1" />
                <li class="am-fl swiper-slide goods-more">
                  <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                    <div class="goods-top">
                      <div class="goods-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                      </div>
                    </div>
                    <div class="goods-bottom am-text-center">
                      <h4 class="am-padding-vertical-lg">See More</h4>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      <%--Category1 (End) --%>

      <%--Category2 (Start) --%>
      <section class="am-margin-top-sm" id="point2">
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
            <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02m.png" + "?cacheVersion=" + cacheVersion %>'
              alt="h_02m" />
          </a>
        </div>
        <div class="category-slider">
          <div class="swiper-container swiper-container2 mb-shop-block">
            <ul class="swiper-wrapper">
              <uc1:products runat="server" id="productCategorySec2" />
              <li class="am-fl swiper-slide goods-more">
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                  <div class="goods-top">
                    <div class="goods-img">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </div>
                  </div>
                  <div class="goods-bottom am-text-center">
                    <h4 class="am-padding-vertical-lg">See More</h4>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <%--Category2 (End) --%>

      <%--Category3 (Start) --%>
      <section class="am-margin-top-sm" id="point3">
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
            <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03m.png" + "?cacheVersion=" + cacheVersion %>'
              alt="h_03m" />
          </a>
        </div>
        <div class="category-slider">
          <div class="swiper-container swiper-container3 mb-shop-block">
            <ul class="swiper-wrapper">
              <uc1:products runat="server" id="productCategorySec3" />
              <li class="am-fl swiper-slide goods-more">
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                  <div class="goods-top">
                    <div class="goods-img">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </div>
                  </div>
                  <div class="goods-bottom am-text-center">
                    <h4 class="am-padding-vertical-lg">See More</h4>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <%--Category3 (End) --%>

      <%--Category4 (Start) --%>
      <section class="am-margin-top-sm" id="point4">
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
            <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04m.png" + "?cacheVersion=" + cacheVersion %>'
              alt="h_04m" />
          </a>
        </div>
        <div class="category-slider">
          <div class="swiper-container swiper-container4 mb-shop-block">
            <ul class="swiper-wrapper">
              <uc1:products runat="server" id="productCategorySec4" />
              <li class="am-fl swiper-slide goods-more">
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                  <div class="goods-top">
                    <div class="goods-img">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </div>
                  </div>
                  <div class="goods-bottom am-text-center">
                    <h4 class="am-padding-vertical-lg">See More</h4>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <%--Category4 (End) --%>

      <%--Category5 (Start) --%>
      <section class="am-margin-top-sm" id="point5">
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
            <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05m.png" + "?cacheVersion=" + cacheVersion %>'
              alt="h_05m" />
          </a>
        </div>
        <div class="category-slider">
          <div class="swiper-container swiper-container5 mb-shop-block">
            <ul class="swiper-wrapper">
              <uc1:products runat="server" id="productCategorySec5" />
              <li class="am-fl swiper-slide goods-more">
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                  <div class="goods-top">
                    <div class="goods-img">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </div>
                  </div>
                  <div class="goods-bottom am-text-center">
                    <h4 class="am-padding-vertical-lg">See More</h4>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <%--Category5 (End) --%>

      <%--Category6 (Start) --%>
      <section class="am-margin-top-sm" id="point6">
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
            <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06m.png" + "?cacheVersion=" + cacheVersion %>'
              alt="h_06m" />
          </a>
        </div>
        <div class="category-slider">
          <div class="swiper-container swiper-container6 mb-shop-block">
            <ul class="swiper-wrapper">
              <uc1:products runat="server" id="productCategorySec6" />
              <li class="am-fl swiper-slide goods-more">
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                  <div class="goods-top">
                    <div class="goods-img">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </div>
                  </div>
                  <div class="goods-bottom am-text-center">
                    <h4 class="am-padding-vertical-lg">See More</h4>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <%--Category6 (End) --%>
    </div>
    <%--Block4 Shop By Category (End) ==========================================--%>

    <%--Block5  You May Also Like... (Start)========================================--%>
    <section class="am-margin-vertical-sm">
      <h1 class="am-margin-bottom-0 am-padding-left am-text-center stroke-white" style="color:#000;">You May Also
        Like...
      </h1>
      <div class="mb-shop-block">
        <ul class="am-avg-sm-2 am-avg-md-3">
          <uc1:products runat="server" id="productYouMayAlsoLike" />
        </ul>
      </div>
    </section>
    <%--Block5  You May Also Like... (End)=========================================--%>
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
    <%-- flash期間顯示 6/18-6/20 23:59 (Start) --%>
    <div class="footer-bar">
      <ul class="am-avg-sm-3">
        <li onclick="goto('top',800,'swing')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
        </li>
        <li onclick="goto('s1',800,'swing')">
          <asp:Panel ID="panelImgElevatorPeriod1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
          </asp:Panel>
          <asp:Panel ID="panelImgElevatorPeriod2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_001m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
          </asp:Panel>
        </li>
        <li onclick="goto('s2',800,'swing')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
        </li>
        <li onclick="goto('s3',800,'swing')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
        </li>
        <li onclick="goto('s4',800,'swing')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
        </li>
        <li onclick="goto('s5',800,'swing')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05m" />
        </li>
      </ul>
    </div>
  </div>
  <%--MB  Contain (End) ====================================================--%>

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
      console.log('abcc:', e.abcc);
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
      setSwiper();
      set1Img1Brand({
        urlDate: '20200803',
        brandNos: [235, 334, 208, 287, 307, 345, 115, 309, 180, 432, 72, 131],
        indexShift: 0,
        device: 'mobile',
        cacheVersion: <%= cacheVersion %>
      });
      hiddenFooterMenu();
    }

    // # Set a brand image for every product images
    // # Usage example:
    // set1Img1Brand({
    //   urlDate: '20200716',
    //   brandNos: [345, 72, 455, 287, 349, 180, 309, 297],
    //   indexShift: 4,
    //   device: 'mobile',
    //   cacheVersion: <%= cacheVersion %>
    // });
    function set1Img1Brand({ urlDate = '', brandNos = [], indexShift = 0, device = 'user', cacheVersion = 1 } = {}) {
      let brandLinkPfx = `https://www.hawooo.com/${device}/brandeventpage.aspx?bid=`;
      let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

      for (i = 0; i < brandNos.length; i++) {
        let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNos[i]}" target="_blank">
          <div class="brand-logo">
            <img data-sizes="auto" src="${cdnImgPfx}ftp/${urlDate}/logo_${paddingLeft("" + (i + 1 + indexShift) + "", 2)}.png?cacheVersion=${cacheVersion}">
          </div>
        </a>`;
        // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png?cacheVersion=1":

        $('#inject-logo-for-brands li').eq(i).prepend(prependDOMStr);
        $('#inject-logo-for-brands li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
          "href": `${brandLinkPfx}${brandNos[i]}`,
          "target": "_blank"
        });
      }
    }

    /* Used by putimg() or set1Img1Brand() or set3Img1Brand */
    function paddingLeft(str, lenght) {
      if (str.length >= lenght)
        return str;
      else
        return paddingLeft("0" + str, lenght);
    }

    /* 設定Slider*/
    function setSwiper() {
      $(".swiper-container li").addClass("am-fl");
      $(".swiper-container li").addClass("swiper-slide");
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
            slidesPerView: 3.2,
            slidesPerGroup: 3,
            spaceBetween: 0,
            pagination: {
              el: '.swiper-pagination',
              clickable: true,
            },
            navigation: {
              nextEl: ('.' + next_slider),
              prevEl: ('.' + prev_slider),
            },
            breakpoints: {
              640: {
                slidesPerView: 2.2,
                spaceBetween: 0,
                slidesPerGroup: 2
              }
            }
          });
        });
      };
    };

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