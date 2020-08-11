<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200709beauty_sale_debugging.aspx.cs" Inherits="user_static_200709beauty_sale_debugging" %>
<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
  <style>
    /* Logo border style */
    #logo a {
      overflow: hidden;
      border: 3px solid #fff;
    }

    #logo .goods-brand-group a {
      overflow: hidden;
      border: 0 !important;
    }

    .goods-brand-group .brand-logo {
      padding: 5px;
    }

    /* Countdown text. */
    .even-title {
      bottom: 10%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      color: #ffff;
    }


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

    /* Preorder */
    .goods-preorder .add-btn{
        background:#D22248 !important;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain" style="background: #F3D0E1;">
      <!--側邊選單 (Start) ======================================================-->
    <div class="side-bar">
      <ul>
        <li onclick="goto('top')">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_00.png" alt="ss_00" />
        </li>
        <li onclick="goto('s1')">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_01.png" alt="ss_01" />
        </li>
        <li onclick="goto('s3')">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_02.png" alt="ss_02" />
        </li>
        <li onclick="goto('s4')">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_03.png" alt="ss_03" />
        </li>
        <li onclick="goto('s5')">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/ss_04.png" alt="ss_04" />
        </li>
      </ul>
    </div>
    <!--側邊選單 (End) =======================================================-->

    <div class="am-margin-bottom-xl" id="top">
      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_01.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" />
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
      <%--領取折扣券 (End) ===========================================================--%>

      <%--預購頁 7/12 換開賣頁Block1 (Start) ================================================--%>
      <asp:Panel ID="PanelPreorder" runat="server" visible="false">
        <section class="note-pre-order am-margin-bottom-xl all-anchor-href-redirect" data-redirect="200709beauty_sale_preorder.aspx"
          id="s1">
          <div style="position:relative;">
            <a>
              <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_03.png" + "?cacheVersion=" + cacheVersion %>'
                alt="bn_03" />
            </a>
            <div class="even-title">
              <h2 class="am-text-xl">Sale Starts in
                <span class="clock-countdown">
                  <span class="d">0</span>:
                  <span class="h">0</span>:
                  <span class="m">0</span>:
                  <span class="s">0</span>
                </span></h2>
            </div>
          </div>
          <div style="background: #E84364;">
            <div class="am-padding-top-0">
              <div class="shop-block">
                <ul class="am-avg-sm-4">
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
                                      <a href="200709beauty_sale_preorder.aspx" target="_blank">
                                          <div class="goods-block flex-between">
                                              <div class="am-fl" style="width: 72%">
                                                  <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                              </div>
                                              <div class="am-fr" style="width: 25%">
                                                  <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                              </div>
                                          </div>
                                          <%--<div class="am-btn am-btn-block add-btn">--%>
                                              <%-- Original version, not used: --%>
                                              <%--<input type="button" value="Add to Wishlist" class="am-btn am-btn-block add-btn" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />--%>
                                              <%--Dummy button version: --%>
                                              <input type="button" value="Add to Wishlist" class="am-btn am-btn-block add-btn" />
                                          <%--</div>--%>
                                      </a>
                                  </div>
                              </div>
                              
                          </li>
                      </ItemTemplate>
                  </asp:Repeater>
                  <%-- (End) Pre-order product repeater --%>
                </ul>
              </div>

              <div class="am-padding-vertical-lg am-u-sm-3 am-u-sm-centered">
                <a>
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                </a>
              </div>
            </div>

          </div>
        </section>
      </asp:Panel>
      <%--預購頁 7/12 換開賣頁Block1 (end) =================================================--%>

      <%--7/12換開賣頁 Block1 (Start) =====================================================--%>
      <asp:Panel ID="PanelFlashsale" runat="server" visible="false">
        <section class="note-flash-sale am-margin-bottom-xl all-anchor-href-redirect" data-redirect="200709beauty_sale_flashsale.aspx"
          id="s2">
          <div style="position:relative;">
            <a>
              <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_03.png" + "?cacheVersion=" + cacheVersion %>'
                alt="bn_03" />
            </a>
            <%-- 時間 --%>
            <div class="even-title">
              <h2 class="am-text-xl">Sale Ends in <span class="clock-countdown">
                  <span class="d">0</span>:
                  <span class="h">0</span>:
                  <span class="m">0</span>:
                  <span class="s">0</span>
                </span></h2>
            </div>
          </div>
          <div style="background: #E84364;">
            <div class="am-padding-top-0">
              <div class="am-margin-vertical-0">
                <div class="shop-block">
                  <ul class="am-avg-sm-4">
                    <%-- 一般商品塊(後端帶入) --%>
                    <asp:Repeater ID="rpFlashSale" runat="server" OnItemDataBound="rp_plist_ItemDataBound_FlashSale">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                            <li class="am-fl goods goods-flashsale">
                                <%--<a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
                                <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                            <div class="goods-discount goods-discount3">
                                                <span class="ribbon">
                                                    <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                    <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goods-bottom">
                                        <%-- Fire-sold bar is commented because 1. In PC, in testing server have data shown, but in real server the data is not shown. 2. The data in mobile is not correct (too much).--%>
                                        <%--<div class="goods-block fire-progress">
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
                                        </div>--%>
                                        <div class="goods-block">
                                            <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                            <s class="goods-original-price">
                                                <span>RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </span>
                                            </s>
                                            <div class="goods-block">
                                                <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                  </ul>
                </div>
              </div>
              <div class="am-padding-vertical-lg am-u-sm-3 am-u-sm-centered">
                <a>
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                </a>
              </div>
            </div>
          </div>
        </section>
      </asp:Panel>
      <%--7/12換開賣頁 Block1 (end) =====================================================--%>


      <%--Block2 (Start)=====================================================--%>
      <section class="note-hotdeal am-margin-bottom-xl all-anchor-href-redirect" id="s3"
        data-redirect="200709beauty_sale_hotdeal.aspx">
        <div>
          <a>
            <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_05.png" + "?cacheVersion=" + cacheVersion %>'
              alt="bn_05" />
          </a>
        </div>
        <div style="background: #0E4493;">
          <div class="am-padding-top-0">
            <div class="am-margin-vertical-0">
              <div class="shop-block">
                <ul class="am-avg-sm-4">
                  <%-- 一般商品塊(後端帶入) --%>
                  <asp:Repeater ID="rpHotDeal" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HotDeal">
                      <ItemTemplate>
                          <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                          <li class="am-fl goods goods-flashsale">
                              <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                        <div class="goods-discount goods-discount3">
                                            <span class="ribbon">
                                                <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <div class="goods-block">
                                        <p class="goods-name">
                                            <%# Eval("WP02").ToString() %>
                                        </p>
                                    </div>
                                    <div class="goods-block">
                                        <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                        <s class="goods-original-price">
                                            <span>RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                            </span>
                                        </s>
                                        <div class="goods-block">
                                            <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                        </div>
                                    </div>
                                </div>
                              </a>
                          </li>
                      </ItemTemplate>
                  </asp:Repeater>
                </ul>
              </div>
            </div>
            <div class="am-padding-vertical-lg am-u-sm-3 am-u-sm-centered">
              <a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
              </a>
            </div>
          </div>
        </div>
      </section>
      <%--Block2 (End)=====================================================--%>
      <%--Block3 Highlighted Brands(Start)==========================================--%>
      <div class="note-highlighted-brands">
        <div id="s4">
          <img class="am-margin-bottom-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_06.png" + "?cacheVersion=" + cacheVersion %>'
            alt="bn_05" />
        </div>
        <section class="am-margin-bottom-xl">
          <div class="am-padding-sm shop-block highlighted-brands" id="logo">
            <ul class="am-avg-sm-4" id="inject-logo-for-brands">
              <%-- Useless: --%>
              <%--<uc1:products runat="server" id="productHighlightedBrands" />--%>

              <%-- Useless: --%>
              <%--<li class="am-fl brand">
              </li>
              <li class="am-fl brand">
              </li>
              <li class="am-fl brand">
              </li>
              <li class="am-fl brand">
              </li>--%>

              <%-- Use this: --%>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=287" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_01.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=450" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=307" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_03.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=208" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_04.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=429" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_05.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=309" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src="" alt="bn_07" id="logo-6-swap-img-at-time-point" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=72" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_07.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=283" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_08.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=297" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_09.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=432" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_10.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=319" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_11.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
              <li class="hvr-float">
                <a class="brand-logo-wrapping-anchor" href="https://www.hawooo.com/user/brandeventpage.aspx?bid=199" target="_blank">
                  <div class="brand-logo">
                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_12.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </section>
      </div>
      <%--Block3 Highlighted Brands(End) ======================================--%>

      <%--More Sale banner--%>
      <div class="banner-box am-margin-vertical-sm am-padding-vertical-sm" style="background: transparent;">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_03.png" + "?cacheVersion=" + cacheVersion %>' alt="More Sale banner" style="width: 100%;" />
      </div>

      <%-- Realated cagegory banner --%>
      <div class="am-margin-bottom-lg">
        <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_07.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
        </a>
      </div>

      <%-- Comming events --%>
      <div class="am-margin-bottom-lg" id="comming-event-supplement">
          <a href="" target="_blank">
              <img src="" alt="comming-event-supplement" />
          </a>
      </div>
      <div class="am-margin-bottom-lg" id="comming-event-lifestyle">
          <a href="" target="_blank">
              <img src="" alt="comming-event-lifestyle" />
          </a>
      </div>
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
      // for (i = 0; i < 11; i++) {
      //     duplicate('logo');
      // }
      //set1Img1Brand('20200709', [287, 450, 307, 208, 429, 309, 72, 283, 297, 432, 319, 199], 0, 2);
      // Not used, because backend will do same logic.
      //toggleSaleBlockDisplay();
      
      allAnchorHrefRedirect();
      $(".shop-block li").addClass("hvr-float");
      logo_6_swap_img_at_time_point(<%= cacheVersion %>);
      displaycommingEvents(<%= cacheVersion %>);
      
    }


    // Set a brand image for every product images
    // Usage example:
    // set1Img1Brand('20200630', [72, 180, 345, 450, 407, 307, 349, 29], 4, 1);
    function set1Img1Brand (eventName = '', brandNo = [], indexShift = 0, cacheVersion = 1) {
      // For testing purpose only:
      //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
      // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
      let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
      let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

      for (i = 0; i < brandNo.length; i++) {
        let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
          <div class="brand-logo">
            <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1 + indexShift) + "", 2)}.png?cacheVersion=${cacheVersion}">
          </div>
        </a>`;
        // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png":

        $('#inject-logo-for-brands li').eq(i).prepend(prependDOMStr);
        $('#inject-logo-for-brands li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
          "href": `${brandLinkPfx}${brandNo[i]}`,
          "target": "_blank"
        });
      }
    }
    /* Used by putimg() */
    function paddingLeft(str, lenght) {
      debugger;
      if (str.length >= lenght)
        return str;
      else
        return paddingLeft("0" + str, lenght);
    }

    /* 設定時間隱藏區塊 */
    function toggleSaleBlockDisplay() {
      var date1 = new Date("2020-07-12T00:00:00");
      var dateNow = new Date();
      if (dateNow > date1) {
        $('#s1').hide();
      }
      if (dateNow < date1) {
        $('#s2').hide();
      }
    }

    // Dislay events only when current date (time) is within the event's valid date rage.
    function displaycommingEvents (cacheVersion = 1) {
      let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>';
      let events = [
        //{
        //  id: "#comming-event-beauty",
        //  href: "https://www.hawooo.com/user/200709beauty_sale.aspx",
        //  // Wrong date (should be "20200710"), but let's keep it wrong.
        //  eventName: "20200710",
        //  imgUrl: "beauty_01.png",
        //  dateStart: '2020-07-09T12:00:00',
        //  dateEnd: '2020-12-31T23:59:59',
        //},
        {
          id: "#comming-event-supplement",
          href: "https://www.hawooo.com/user/200710supplement.aspx",
          eventName: "20200710",
          imgUrl: "supplement_01.png",
          dateStart: '2020-07-10T12:00:00',
          dateEnd: '2020-12-31T23:59:59',
        },
        {
          id: "#comming-event-lifestyle",
          href: "https://www.hawooo.com/user/200713lifestyle.aspx",
          imgUrl: "lifestyle_01.png",
          eventName: "20200713",
          dateStart: '2020-07-13T12:00:00',
          dateEnd: '2020-12-31T23:59:59',
        },
      ];

      events.forEach((item, idx) => {
        let dateStart = new Date(item.dateStart);
        let dateEnd = new Date(item.dateEnd)
        var dateNow = new Date();
        if ( dateNow > dateStart && dateNow < dateEnd ) {
          $(item.id).eq(0).css("display", "block");
          $(item.id + " img").eq(0).attr("src", `${cdnImgPfx}ftp/${item.eventName}/${item.imgUrl}?cacheVersion=${cacheVersion}`);
          $(item.id + " img").eq(0).css("display", "inline-block");
          $(item.id + " a").eq(0).attr("href", item.href);
        } else {
          $(item.id).eq(0).css("display", "none");
        }
      });
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
        var msg = "You have selected #QTY# items, original price: RM #PRICE# ,price after discount: RM #SPRICE# .<br/> 12/7 00:00 the items in your wishlist will be automatically added into your shopping cart, hurry checkout before 15/7 23:59！<br/> Attention: Coupon is NOT applicable on flash sale items, all items are limited, check out ASAP!";

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

    function logo_6_swap_img_at_time_point (cacheVersion = 1) {
      let logo = $("#logo-6-swap-img-at-time-point").eq(0)
      let dateSwap = new Date("2020-07-09T23:00:00");
      let dateNow = new Date();
      if (dateNow < dateSwap) {
        logo.css("display", "unset");
        logo.attr("src", '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_06.png" + "?cacheVersion=" + cacheVersion %>');
      } else {
        logo.css("display", "unset");
        logo.attr("src", '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/logo_13.png" + "?cacheVersion=" + cacheVersion %>');
      }
    }
    
    
  </script>
</asp:Content>