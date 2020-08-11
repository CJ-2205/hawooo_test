<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200803_88shopping.aspx.cs" Inherits="user_static_200803_88shopping" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="assets/css/events_style.min.css">
  <link rel="stylesheet" href="assets/css/swiper.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap" rel="stylesheet">
  <style>
      .main-contain h6{
          margin-top:0;
      }
    /* Logo border style */
    #logo a {
      overflow: hidden;
      border: 3px solid #E5E5E5;
    }

    #logo .goods-brand-group a {
      overflow: hidden;
      border: 0 !important;
    }

    .goods-brand-group .brand-logo {
      padding: 5px;
    }

    .side-bar {
      top: 40%;
      width: 120px;
    }

    /* Slider Prev & Next Btn style */
    .prev-btn,
    .next-btn {
      color: #fff;
      background: #9F9C9B;
    }


    .even-title {
      font-weight: bold;
      font-size: 30px;
      bottom: 7%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      color: #fff;
      font-family: 'Roboto';
    }

     .even-title2 {
      top: 24%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
    }

     .even-title5{
      font-weight: bold;
      font-size: 30px;
      color: #000;
      bottom: 16%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      font-family: 'Roboto';
     }

    .even-title2-txt {
      font-weight: bold;
      font-size: 31px;
      color: #000;
      bottom: 37%;
      margin-top:0;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
       font-family: 'Roboto';
    }

    .even-title2-txt-before{
   bottom: 31% !important;
    }

       .even-title4-txt {
      font-weight: bold;
      font-size: 31px;
      color: #000;
      bottom: 0;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      font-family: 'Roboto';
    }

    .even-title3 {
      font-weight: bold;
      font-size: 30px;
      color: #000;
      bottom: 6%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      font-family: 'Roboto';
    }

    .even-title4 {
      bottom: 7%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
    }

    .small-font {
      font-size: 18px;
    }

    .big-font {
      font-size: 30px;
      font-weight: bold;
      font-family: 'Roboto';
    }

    .radius {
      border-bottom-right-radius: 20px;
      border-bottom-left-radius: 20px;
    }

    .countdown-bn {
      position: relative;
    }

    .pc-slider li.swiper-slide {
      height: 390px;
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
    }

    .coupon img {
      -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
      filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
    }

    .coupon-word {
      background-color: #FFFFFF;
      font-weight: bold;
      font-family: Arial, Helvetica, sans-serif;
      width: 270px;
      text-align: center;
    }
    /* (End) Coupon */
        .activity-method ul li{
        list-style-type: inherit !important;
    }

  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain " style="background: #E6C623;">
    <%--側邊選單 (Start) ======================================================--%>
    <div class="side-bar">
      <ul>
        <li onclick="goto('top')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_00.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_00" />
        </li>
        <li onclick="goto('s1')">
          <asp:Panel ID="panelImgElevatorPeriod1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_01.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_01" />
          </asp:Panel>
          <asp:Panel ID="panelImgElevatorPeriod2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_001.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_01" />
          </asp:Panel>
        </li>
        <li onclick="goto('s2')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_02.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_02" />
        </li>
        <li onclick="goto('s3')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_03.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_03" />
        </li>
        <li onclick="goto('s4')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_04.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_04" />
        </li>
        <li onclick="goto('s5')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/ss_05.png" + "?cacheVersion=" + cacheVersion %>'  alt="ss_05" />
        </li>
      </ul>
    </div>
    <%--側邊選單 (End) =======================================================--%>

    <div class="am-margin-bottom-xl" id="top">
      <asp:Panel ID="panelImgBn01Period1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_01.png" + "?cacheVersion=" + cacheVersion %>'  alt="主banner" />
      </asp:Panel>
      <asp:Panel ID="panelImgBn01Period2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_001.png" + "?cacheVersion=" + cacheVersion %>'  alt="主banner" />
      </asp:Panel>
    </div>


    <div class="am-container">
      <%--領取折扣券 (Start)====================================================--%>
      <div class="am-margin-bottom_xl countdown-bn">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02.png" + "?cacheVersion=" + cacheVersion %>'  alt="bn_02" />
        <div class="even-title3">
          <h1>LIMITED COUPON & FREE GIFT</h1>
          <h6 class="small-font">(T&C Apply)</h6>
        </div>
      </div>
      <div class="am-margin-bottom-sm am-padding-bottom-sm">
        <ul class="am-avg-sm-3">
          <li class="am-padding-sm coupon">
            <a class="btnn" data-clipboard-text="SHOP18" href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_01.png" + "?cacheVersion=" + cacheVersion %>'  alt="coupon_01" />
              <h6 class="coupon-code"><asp:Literal ID="Coupon1" runat="server"></asp:Literal> have copied it</h6>
            </a>
          </li>
          <li class="am-padding-sm coupon">
            <a class="btnn" data-clipboard-text="SHOP38" href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_02.png" + "?cacheVersion=" + cacheVersion %>'  alt="coupon_02" />
              <h6 class="coupon-code"><asp:Literal ID="Coupon2" runat="server"></asp:Literal> have copied it</h6>
            </a>
          </li>
          <li class="am-padding-sm coupon">
            <a class="btnn" data-clipboard-text="SHOP58" href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_03.png" + "?cacheVersion=" + cacheVersion %>'  alt="coupon_03" />
              <h6 class="coupon-code"><asp:Literal ID="Coupon3" runat="server"></asp:Literal> have copied it</h6>
            </a>
          </li>
        </ul>
        <ul class="am-avg-sm-2">
          <li class="am-padding-sm coupon">
            <%-- Before 2020-08-08: show special message ; After 2020-08-08: enable the clipboard just like other coupons. --%>
            <a ID="coupon4a" runat="server" class=""  >
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_04.png" + "?cacheVersion=" + cacheVersion %>'  alt="coupon_04" />
              <h6 class="coupon-code">
                <asp:Panel ID="coupon4Text1" runat="server" Visible="false">
                  Applicable on 8/8
                </asp:Panel>
                <asp:Panel ID="coupon4Text2" runat="server" Visible="false">
                  <asp:Literal ID="Coupon4" runat="server"></asp:Literal> have copied it
                </asp:Panel>
              </h6>
            </a>
          </li>
          <li class="am-padding-sm coupon">
            <a href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/coupon_05.png" + "?cacheVersion=" + cacheVersion %>'  alt="coupon_05" />
              <h6 class="coupon-code">min spend 480, limited 150 sets</h6>
            </a>
          </li>
        </ul>
      </div>
      <%--領取折扣券 (End) ====================================================--%>

      <%--Block1 (Start) =====================================================--%>
      <section class="note-flashsale am-margin-bottom-xl am-panel-default" id="s1">
        <div class="countdown-bn">
          <a href="./200803_88shopping_flashsale.aspx" target="_blank">
            <img class="am-margin-bottom-0 " src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_03.png" + "?cacheVersion=" + cacheVersion %>' 
              alt="bn_02" />
            <asp:Panel ID="panelFlashSaleSvgPeriod1" runat="server" Visible="false" style="width: 100%;">
              <div class="even-title2">
                <!-- <h2>24H FLASH SALE</h2> -->
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510.44 93.57" style="width:50%;">

                  <defs>
                    <style>
                      .cls-1,
                      .cls-2,
                      .cls-3 {
                        text-align: center;
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

                      .cls-2,
                      .cls-3 {
                        fill: #fff;
                      }

                      .cls-2 {
                        stroke: #1fb5bf;
                        stroke-width: 9px;
                      }

                      .cls-3 {
                        stroke: #231815;
                        stroke-width: 3px;
                      }
                    </style>
                  </defs>
                  <title>88shopping</title>
                  <g id="z1"><text class="cls-1" transform="translate(9 69.22)"
                      x="0,36,72,128,164,200,236,272,328,364,400,436">24HFLASHSALE</text></g>
                  <g id="z2"><text class="cls-2" transform="translate(9 69.22)"
                      x="0,36,72,128,164,200,236,272,328,364,400,436">24HFLASHSALE</text></g>
                  <g id="z3"><text class="cls-3" transform="translate(9 69.22)"
                      x="0,36,72,128,164,200,236,272,328,364,400,436">24HFLASHSALE</text></g>
                </svg>
              </div>
                  <h6 class="even-title2-txt small-font even-title2-txt-before">LIMITED ITEMS!LIMITED ITEMS!</h6>
            </asp:Panel>
            <asp:Panel ID="panelFlashSaleSvgPeriod2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
              <div class="even-title2">
                <!-- <h2>24H FLASH SALE</h2> -->
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800.44 93.57" style="width:66%;">

                  <defs>
                    <style>
                      .cls-1,
                      .cls-2,
                      .cls-3 {
                        text-align: center;
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

                      .cls-2,
                      .cls-3 {
                        fill: #fff;
                      }

                      .cls-2 {
                        stroke: #1fb5bf;
                        stroke-width: 9px;
                      }

                      .cls-3 {
                        stroke: #231815;
                        stroke-width: 3px;
                      }
                    </style>
                  </defs>
                  <title>88shopping</title>
                  <g id="z1"><text class="cls-1" transform="translate(9 69.22)"
                      x="0,36,72,111,147,200,236,272,308,361,397,433,469,522,558,594,630,666">FlashSaleBestSellers</text></g>
                  <g id="z2"><text class="cls-2" transform="translate(9 69.22)"
                      x="0,36,72,111,147,200,236,272,308,361,397,433,469,522,558,594,630,666">FlashSaleBestSellers</text></g>
                  <g id="z3"><text class="cls-3" transform="translate(9 69.22)"
                      x="0,36,72,111,147,200,236,272,308,361,397,433,469,522,558,594,630,666">FlashSaleBestSellers</text></g>
                </svg>
              </div>
                  <h6 class="even-title2-txt small-font">LIMITED ITEMS!LIMITED ITEMS!</h6>
            </asp:Panel>
            
              
          
            <div class="even-title">
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
          </a>
        </div>
        <div class="radius" style="background: #E6E6E6;">
          <div class="am-padding pc-slider">
            <div class=" swiper-container swiper-container1 shop-block" id="block1">
              <ul class="swiper-wrapper">
                <%-- Goods template: RibbonFireTemp --%>
                <asp:Repeater ID="rpFlashSalePeriodShared" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSaleShared">
                  <ItemTemplate>
                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                    <li class="am-fl goods goods-flashsale">
                      <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                        <%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                        <div class="goods-top">
                          <div class="goods-img">
                            <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                            <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
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
                              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg" + "?cacheVersion=" + cacheVersion %>' alt="fire" style="width: 23px" />
                            </div>
                            <div class="fire-sold">
                              sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                            </div>
                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                          </div>
                          <div class="goods-block">
                            <p class="goods-name">
                              <%# Eval("WP02").ToString() %>
                            </p>
                          </div>
                          <div class="goods-block">
                            <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                            <s class="goods-original-price">
                              <span>
                                RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                              </span>
                            </s>
                            <div class="goods-block">
                              <p>SAVE
                                <span>RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                              </p>
                            </div>
                          </div>
                        </div>
                      </a>
                    </li>
                  </ItemTemplate>
                </asp:Repeater>

                <%--(Start) Useless - html version backup --%>
                <%--<li class="am-fl swiper-slide goods goods-flashsale">
                  <a href="2020momsday2flash_sale.aspx" target="_blank">
                    <div class="goods-top">
                      <div class="goods-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2020flagship_events/goods.jpg" + "?cacheVersion=" + cacheVersion %>' >
                        <div class="goods-discount">
                          <span class="ribbon">10<small>%</small> OFF
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="goods-bottom">
                      <div class="goods-block fire-progress">
                        <div class="fire-img">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/fire.svg" + "?cacheVersion=" + cacheVersion %>' 
                            style="width: 23px" />
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
                          <span>RM</span> 385.20
                        </h1>
                        <s class="goods-original-price">
                          <span>RM</span>530.56
                        </s>
                      </div>
                      <div class="goods-block">
                        <p>SAVE<span> RM500.00</span></p>
                      </div>
                    </div>
                  </a>
                </li>--%>
                <%--(End) Useless - html version backup --%>


                <li class="am-fl swiper-slide">
                  <a class="goods-more" href="./200803_88shopping_flashsale.aspx" target="_blank">
                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                      <div class="imgContain" style="width: 91%; margin: auto">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                      </div>
                    </div>
                    <div class="am-text-center goods-bottom">
                      <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
                    </div>
                  </a>
                </li>
              </ul>
              <a href="#!" class="prev-btn prev-btn1">
                <span class="am-icon-chevron-left"></span>
              </a>
              <a href="#!" class="next-btn next-btn1">
                <span class="am-icon-chevron-right"></span>
              </a>
            </div>
          </div>
          <div>
            <a href="./200803_88shopping_flashsale.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/shop.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
            </a>
          </div>
        </div>
      </section>

      <%--Block1 (end) =====================================================--%>
      <%--Block2 (Start)=====================================================--%>
      <section class="note-bundlesale am-margin-bottom-xl" id="s2">
        <div class="countdown-bn">
          <a href="./200803_88shopping_bundlesale.aspx" target="_blank">
            <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02.png" + "?cacheVersion=" + cacheVersion %>' 
              alt="bn_02" />

              <div class="even-title4">
              <!-- <h1>BUNDLE SALE</h1> -->
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510.44 93.57" style="width:44%;">
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
                      stroke-width: 3px;
                    }
                  </style>
                </defs>
                <title>BUNDLE SALE</title>
                <g id="kk1"><text class="als-1" transform="translate(13.91 69.22)"
                    x="0,45,90,135,180,225,290,335,380,425">BUNDLESALE</text></g>
                <g id="kk2"><text class="als-2" transform="translate(13.91 69.22)"
                    x="0,45,90,135,180,225,290,335,380,425">BUNDLESALE</text></g>
                <g id="kk3"><text class="als-3" transform="translate(13.91 69.22)"
                    x="0,45,90,135,180,225,290,335,380,425">BUNDLESALE</text></g>
              </svg>
            </div>
            <h6 class="even-title4-txt small-font">EXTRA 8% OFF FOR ANY 2</h6>
          </a>
        </div>
        <div class="am-padding pc-slider" style="background: #E6E6E6">
          <div class=" swiper-container swiper-container2 shop-block" id="block1">
            <ul class="swiper-wrapper">
              <%-- Goods template: RibbonTemp --%>
              <asp:Repeater ID="rpBundle" runat="server" OnItemDataBound="rp_plist_ItemDataBound_Bundle">
                <ItemTemplate>
                  <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                  <li class="am-fl goods goods-flashsale">
                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                      <%--<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
                      <div class="goods-top">
                        <div class="goods-img">
                          <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                          <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                          <div class="goods-discount goods-discount3">
                            <span class="ribbon">
                              <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small> OFF
                            </span>
                          </div>
                        </div>
                      </div>
                      <div class="goods-bottom">
                        <%--<div class="goods-block fire-progress">
            
                          <div class="fire-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg" + "?cacheVersion=" + cacheVersion %>' alt="fire" style="width: 23px" />
                          </div>
                          <div class="fire-sold">
                            sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                          </div>
                          <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                        </div>--%>
                        <div class="goods-block">
                          <p class="goods-name">
                            <%# Eval("WP02").ToString() %>
                          </p>
                        </div>
                        <div class="goods-block">
                          <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                          <s class="goods-original-price">
                            <span>
                              RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                            </span>
                          </s>
                          <div class="goods-block">
                            <p>SAVE
                              <span>RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                            </p>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ItemTemplate>
              </asp:Repeater>
              <li class="am-fl swiper-slide">
                <a class="goods-more" href="./200803_88shopping_bundlesale.aspx" target="_blank">
                  <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                    <div class="imgContain" style="width: 91%; margin: auto">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                    </div>
                  </div>
                  <div class="am-text-center goods-bottom">
                    <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
                  </div>
                </a>
              </li>
            </ul>
            <a href="#!" class="prev-btn prev-btn2">
              <span class="am-icon-chevron-left"></span>
            </a>
            <a href="#!" class="next-btn next-btn2">
              <span class="am-icon-chevron-right"></span>
            </a>
          </div>
        </div>
        <div>
          <a href="./200803_88shopping_bundlesale.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/shop.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
          </a>
        </div>
      </section>
      <%--Block2 (End)=====================================================--%>
      <%--Block3 Highlighted Brands(Start)==========================================--%>
      <div class="note-highlighted" style="position:relative;" id="s3">
        <div class="countdown-bn">
          <img class="am-margin-bottom-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02.png" + "?cacheVersion=" + cacheVersion %>' 
            alt="bn_05" />
          <div class="even-title5">
            <h1>HIGHLIGHTED BRANDS</h1>
            <h6 class="small-font">DON'T MISS IT!</h6>
          </div>
        </div>
        <section class="am-margin-bottom-xl">
          <div class="am-padding-sm shop-block highlighted-brands" id="logo">
            <ul class="am-avg-sm-4" id="inject-logo-for-brands">
              <%-- Goods template: RibbonTemp --%>
              <asp:Repeater ID="rpHighLightArea" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea">
                <ItemTemplate>
                  <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                  <li class="am-fl goods goods-flashsale">
                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                      <%--<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
                      <div class="goods-top">
                        <div class="goods-img">
                          <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                          <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                          <div class="goods-discount goods-discount3">
                            <span class="ribbon">
                              <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small> OFF
                            </span>
                          </div>
                        </div>
                      </div>
                      <div class="goods-bottom">
                        <%--<div class="goods-block fire-progress">
            
                          <div class="fire-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg" + "?cacheVersion=" + cacheVersion %>' alt="fire" style="width: 23px" />
                          </div>
                          <div class="fire-sold">
                            sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                          </div>
                          <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                        </div>--%>
                        <div class="goods-block">
                          <p class="goods-name">
                            <%# Eval("WP02").ToString() %>
                          </p>
                        </div>
                        <div class="goods-block">
                          <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                          <s class="goods-original-price">
                            <span>
                              RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                            </span>
                          </s>
                          <div class="goods-block">
                            <p>SAVE
                              <span>RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                            </p>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ItemTemplate>
              </asp:Repeater>
            </ul>
          </div>
        </section>
      </div>
      <%--Block3 Highlighted Brands(End) ======================================--%>

      <%--Block4 Shop By Category (Start) ==========================================--%>
      <div id="s4">
        <div class="am-margin-bottom-sm countdown-bn">
          <%--Category1 (Start) --%>
          <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/bn_02.png" + "?cacheVersion=" + cacheVersion %>' 
            alt="bn_06" />
          <div class="even-title5">
            <h1>SHOP BY CATEGORY</h1>
          </div>
        </div>
        <section class="category-bg am-margin-bottom-0 ">
          <%--類別錨點 (Start)--%>
          <div class="am-padding-bottom-0">
            <ul class="am-avg-sm-6">
              <li class="am-padding-xs" id="point1"><a href="#!">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_01.png" + "?cacheVersion=" + cacheVersion %>'  alt="h_01" /></a></li>
              <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a href="#!">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_02.png" + "?cacheVersion=" + cacheVersion %>'  alt="h_02" /></a></li>
              <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a href="#!">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_03.png" + "?cacheVersion=" + cacheVersion %>'  alt="h_03" /></a></li>
              <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a href="#!">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_04.png" + "?cacheVersion=" + cacheVersion %>'  alt="h_04" /></a></li>
              <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a href="#!">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_05.png" + "?cacheVersion=" + cacheVersion %>'  alt="h_05" /></a></li>
              <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a href="#!">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200803/v_06.png" + "?cacheVersion=" + cacheVersion %>'  alt="h_06" /></a></li>
            </ul>
          </div>
          <%--類別錨點 (Start)--%>
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_01.png" + "?cacheVersion=" + cacheVersion %>'  style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container3">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec1" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
                      </div>
                    </a>
                  </li>
                </ul>
                <a href="#!" class="prev-btn prev-btn3">
                  <span class="am-icon-chevron-left"></span>
                </a>
                <a href="#!" class="next-btn next-btn3">
                  <span class="am-icon-chevron-right"></span>
                </a>
              </div>
            </div>
          </div>
        </section>
        <%--Category1 (End) --%>

        <%--Category2 (Start) --%>
        <section class="category-bg am-margin-bottom-0  " id="point2">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02.png" + "?cacheVersion=" + cacheVersion %>'  style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container4">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec2" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
                      </div>
                    </a>
                  </li>
                </ul>
                <a href="#!" class="prev-btn prev-btn4">
                  <span class="am-icon-chevron-left"></span>
                </a>
                <a href="#!" class="next-btn next-btn4">
                  <span class="am-icon-chevron-right"></span>
                </a>
              </div>
            </div>
          </div>
        </section>
        <%--Category2 (End) --%>

        <%--Category3 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point3">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03.png" + "?cacheVersion=" + cacheVersion %>'  style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container5">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec3" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
                      </div>
                    </a>
                  </li>
                </ul>
                <a href="#!" class="prev-btn prev-btn5">
                  <span class="am-icon-chevron-left"></span>
                </a>
                <a href="#!" class="next-btn next-btn5">
                  <span class="am-icon-chevron-right"></span>
                </a>
              </div>
            </div>
          </div>
        </section>

        <%--Category3 (End) --%>

        <%--Category4 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point4">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04.png" + "?cacheVersion=" + cacheVersion %>'  style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container6">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec4" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
                      </div>
                    </a>
                  </li>
                </ul>
                <a href="#!" class="prev-btn prev-btn6">
                  <span class="am-icon-chevron-left"></span>
                </a>
                <a href="#!" class="next-btn next-btn6">
                  <span class="am-icon-chevron-right"></span>
                </a>
              </div>
            </div>
          </div>
        </section>
        <%--Category4 (End) --%>

        <%--Category5 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point5">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05.png" + "?cacheVersion=" + cacheVersion %>'  style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container7">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec5" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
                      </div>
                    </a>
                  </li>
                </ul>
                <a href="#!" class="prev-btn prev-btn7">
                  <span class="am-icon-chevron-left"></span>
                </a>
                <a href="#!" class="next-btn next-btn7">
                  <span class="am-icon-chevron-right"></span>
                </a>
              </div>
            </div>
          </div>
        </section>
        <%--Category5 (End) --%>

        <%--Category6 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point6">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06.png" + "?cacheVersion=" + cacheVersion %>'  style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container8">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec6" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>'  alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
                      </div>
                    </a>
                  </li>
                </ul>
                <a href="#!" class="prev-btn prev-btn8">
                  <span class="am-icon-chevron-left"></span>
                </a>
                <a href="#!" class="next-btn next-btn8">
                  <span class="am-icon-chevron-right"></span>
                </a>
              </div>
            </div>
          </div>
        </section>
      </div>
      <%--Block4 Shop By Category (End) ===========================================--%>

      <%--Block5  You May Also Like... (Start)========================================--%>
      <section class="am-padding-vertical-lg  am-margin-bottom-xl">
        <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center big-font" style="color: #000;">YOU MAY ALSO
          LIKE...
        </h1>
        <div>
          <div class="shop-block" id="block5">
            <ul class="am-avg-sm-5">
              <uc1:products runat="server" id="productYouMayAlsoLike" />
            </ul>
          </div>
        </div>
      </section>
      <%--Block5  You May Also Like... (End)=========================================--%>
    </div>

    <%--Terms & Conditions (Start) =====================================================--%>
    <div id="s5" class="am-padding-vertical-lg activity-method" style="background: #000;">
      <asp:Panel ID="panelTermsPeriod1" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <div class="am-container">
          <p>
            Terms & Conditions<br>
          </p>
          <div class="am-margin-left">
            <ul style="list-style-type: decimal!important; ">
              <li>
                <p>
                  8.8 Shoping Festival Promotion Date : 3rd August 2020 12:00 - 8th August 2020 23:59
                </p>
              </li>
              <li>
                <p>
                  24 Hour Flash Sale: 24 hours limited time discount on 8 items per day.
                </p>
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
              <li>
                <p>Sitewide Promo Code:
                <div class="am-padding-left-sm">
                  <ul>
                    <li>- RM18 OFF, use code [SHOP18] (min spend 230)</li>
                    <li>- RM38 OFF, use code [SHOP38] (min spend 400)</li>
                    <li>- RM58 OFF, use code [SHOP58] (min spend 580)</li>
                    <li>- RM88 OFF, use code [SHOP88] (min spend 688) Only able to use on 8th August 2020</li>
                  </ul>
                </div>
                </p>
              </li>
              <li>
                <p>Free Gift (minspend RM480, amount after using promo codes)
                <div class="am-padding-left-sm">
                  - Bifinity Edelweis Makeup Removing Lotion 200ml (limited 150 sets)
                </div>
                </p>
              </li>
              <li>
                <p>Promo Codes are applicable sitewide, including flash sale items and selected Flagship Stores, including Dr.
                  Morita, DV,
                  Laler, Choyer, Hsu's, ANRIEA , Paradiso Garden,
                  1838 Eurocares, Sofei, Enjoy The Life, Pandababy, Unipapa, SAHOLEA, Zephyrine, DV Tokyo, Double Doctor, HH
                </p>
              </li>
              <li>
                <p>Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 8.8 Shoping Festival
                  Promotion terms
                  from time to time, and in such manner as Hawooo deems appropriate.
                </p>
              </li>
            </ul>
          </div>
        </div>
      </asp:Panel>
      <asp:Panel ID="panelTermsPeriod2" runat="server" Visible="false" style="display:inline-block; width: 100%;">
        <div class="am-container">
          <p>
            Terms & Conditions<br>
          </p>
          <div class="am-margin-left">
            <ul style="list-style-type: decimal!important; ">
              <li>
                <p>
                  8.8 Shoping Festival After Sale : 9th August 2020 00:00 - 11st August 2020 11:59
                </p>
              </li>
              <li>
                <p>
                  Sitewide Promo Code:
                </p>
                <div class="am-padding-left-sm">
                  <ul>
                    <li>- RM18 OFF, use code [SHOP18] (min spend 230)</li>
                    <li>- RM38 OFF, use code [SHOP38] (min spend 400)</li>
                    <li>- RM58 OFF, use code [SHOP58] (min spend 580)</li>
                  </ul>
                </div>
              </li>
              <li>
                <p>Free Gift (minspend RM480, amount after using promo codes)
                <div class="am-padding-left-sm">
                  <ul>
                    <li>- Bifinity Edelweis Makeup Removing Lotion 200ml (limited 150 sets)</li>
                  </ul>
                </div>
                </p>
              </li>
              <li>
                <p>Promo Codes are applicable sitewide, including flash sale items and selected Flagship Stores, including Dr. Morita, DV, Laler, Choyer, Hsu's, ANRIEA , Paradiso Garden, 1838 Eurocares, Sofei, Enjoy The Life, Pandababy, Unipapa, SAHOLEA, Zephyrine, DV Tokyo, Double Doctor, HH, Unicat
                </p>
              </li>
              <li>
                <p>Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 8.8 Shoping Festival Promotion terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
              </li>
            </ul>
          </div>
        </div>
      </asp:Panel>
    </div>
    <%--Terms & Conditions (End) ======================================================--%>
  </div>


  <script src="assets/js/swiper.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js"
    type="text/javascript"></script>
  <script src="assets/js/events.js"></script>
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
      // for (i = 0; i < 11; i++) {
      //     duplicate('logo');
      // }
      setSwiper();
      set1Img1Brand({
        urlDate: '20200803',
        brandNos: [235, 334, 208, 287, 307, 345, 115, 309, 180, 432, 72, 131],
        indexShift: 0,
        device: 'user',
        cacheVersion: <%= cacheVersion %>
      });
      $(".shop-block li").addClass("hvr-float");

      function duplicate(id) {
        var ul = $("#" + id + " ul");
        ul.find("li:last")
          .clone(true)
          .appendTo(ul);
      }
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
      $(".swiper-container li").addClass("am-fl swiper-slide");
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
            slidesPerView: 4.25,
            slidesPerGroup: 4,
            spaceBetween: 10,
            pagination: {
              el: '.swiper-pagination',
              clickable: true,
            },
            navigation: {
              nextEl: ('.' + next_slider),
              prevEl: ('.' + prev_slider),
            },
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