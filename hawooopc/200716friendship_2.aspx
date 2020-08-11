<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200716friendship_2.aspx.cs" Inherits="user_static_200716friendship_2" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
  <style>
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

    .category-bg {
      background: #141126
    }

    .even-title /*,
    .even-title2*/ {
      font-weight: bold;
      font-size: 20px;
      bottom: 19%;
      text-align: center;
      position: absolute;
      left: 0;
      right: 0;
      color: #0A0A0A;
      font-family: 'Heebo', sans-serif;
    }

    .radius {
      border-bottom-right-radius: 20px;
      border-bottom-left-radius: 20px;
    }

    .countdown-bn {
      position: relative;
    }

    .b {
      padding: 0 !important;
    }

    .gray-block {
      background: rgba(0, 0, 0, .88);
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
    }

    /* (Start) Coupon */
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
    .coupon-word {
      background-color: #FFFFFF;
      font-weight: bold;
      font-family: Arial, Helvetica, sans-serif;
      width:270px;
      text-align: center;
    }
    /* (End) Coupon */
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain " style="background: #141126;">
    <%--側邊選單 (Start) ======================================================--%>
    <div class="side-bar">
      <ul>
        <li onclick="goto('top')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_00.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00" />
        </li>
        <li onclick="goto('s1')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_01.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
        </li>
        <li onclick="goto('s2')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_02.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02" />
        </li>
        <li onclick="goto('s3')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_03.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03" />
        </li>
        <li onclick="goto('s4')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_04.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04" />
        </li>
        <li onclick="goto('s5')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_05.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05" />
        </li>
      </ul>
    </div>
    <%--側邊選單 (End) =======================================================--%>

    <div class="am-margin-bottom-xl" id="top">
      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_01.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" />
    </div>


    <div class="am-container">
      <%--領取折扣券 (Start)====================================================--%>
      <div class="am-margin-bottom_xl">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
      </div>
      <div class="am-margin-bottom-sm am-padding-bottom-sm">
        <ul class="am-avg-sm-4">
          <li class="am-padding-sm coupon">
            <a href="#!" class="btnn" data-clipboard-text="FRIEND25">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
            </a>
            <div class="am-padding-top-sm">
            <div class="am-padding coupon-word">
            <h3><asp:Literal ID="Coupon1" runat="server"></asp:Literal> have copied it</h3>
            </div>
           </div>
          </li>
          <li class="am-padding-sm coupon">
            <a href="#!" class="btnn" data-clipboard-text="FRIEND35">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
            </a>
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3><asp:Literal ID="Coupon2" runat="server"></asp:Literal> have copied it</h3>
              </div>
             </div>
          </li>
          <li class="am-padding-sm coupon">
            <a href="#!" class="btnn" data-clipboard-text="FRIEND55">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_03.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
            </a>
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3><asp:Literal ID="Coupon3" runat="server"></asp:Literal> have copied it</h3>
              </div>
             </div>
          </li>
          <li class="am-padding-sm coupon">
            <a href="https://www.hawooo.com/user/productdetail.aspx?&id=28510&bid=307&lg=zh">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_04.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
            </a>
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Min Spend 500, limited 250 sets</h3>
              </div>
             </div>
          </li>
        </ul>
      </div>
      <%--領取折扣券 (End) ====================================================--%>

      <%--Block1 (Start) =====================================================--%>
      <section class="note-hotdeal am-margin-bottom-xl all-anchor-href-redirect  am-panel-default"
        data-redirect="200716friendship_hotdeal.aspx" id="s1">
        <div>
          <a>
            <img class="am-margin-bottom-0 " src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_03.png" + "?cacheVersion=" + cacheVersion %>'
              alt="bn_02" />
            <ul class="am-avg-sm-2">
              <li class="countdown-bn countdown-bn1">
                <asp:Panel ID="Countdown1Mask" runat="server" Visible="false">
                  <div class="gray-block"></div>
                </asp:Panel>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_04.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04" />
                <%--計時器1 --%>
                <div class="even-title">
                  <h2><%-- Sale Starts in --%>
                    <span class="clock-countdown clock-countdown1">
                      <span class="d">00</span>:
                      <span class="h">00</span>:
                      <span class="m">00</span>:
                      <span class="s">00</span>
                    </span></h2>
                </div>
              </li>
              <li class="countdown-bn countdown-bn2">
                <asp:Panel ID="Countdown2Mask" runat="server" Visible="false">
                  <div class="gray-block" style="display: flex; justify-content: center; align-items: center;">
                    <span style="font-size: 1.4em; color: white;">Coming Soon</span>
                  </div>
                </asp:Panel>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_05.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_05" />
                <%--計時器2 --%>
                <div class="even-title">
                  <h2><%-- Sale Starts in --%>
                    <span class="clock-countdown clock-countdown2">
                      <span class="d">00</span>:
                      <span class="h">00</span>:
                      <span class="m">00</span>:
                      <span class="s">00</span>
                    </span></h2>
                </div>
              </li>
            </ul>
          </a>
        </div>
        <div class="radius" style="background: #F9DB7D;">
          <div class="am-padding pc-slider">
            <div class=" swiper-container swiper-container1 shop-block" id="block1">
              <ul class="swiper-wrapper">
                <%--<li class="am-fl swiper-slide goods goods-flashsale"></li>--%>
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

                <li class="am-fl swiper-slide">
                  <a class="goods-more">
                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                      <div class="imgContain" style="width: 91%; margin: auto">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                      </div>
                    </div>
                    <div class="am-text-center goods-bottom">
                      <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
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
            <div>
              <a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_06.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
              </a>
            </div>
          </div>
        </div>
      </section>

      <%--Block1 (end) =====================================================--%>
      <%--Block2 (Start)=====================================================--%>
      <section class="note-bundle am-margin-bottom-xl all-anchor-href-redirect" id="s2"
        data-redirect="200716friendship_bundle.aspx">
        <div>
          <a href="#">
            <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_07.png" + "?cacheVersion=" + cacheVersion %>'
              alt="bn_02" />
          </a>
        </div>
        <div class="am-padding pc-slider radius" style="background: #86D2D2;">
          <div class=" swiper-container swiper-container1 shop-block" id="block1">
            <ul class="swiper-wrapper">
              <asp:Repeater ID="rpBundle" runat="server" OnItemDataBound="rp_plist_ItemDataBound_Bundle">
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

              <li class="am-fl swiper-slide">
                <a class="goods-more">
                  <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                    <div class="imgContain" style="width: 91%; margin: auto">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </div>
                  </div>
                  <div class="am-text-center goods-bottom">
                    <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
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
          <div>
            <a href="#">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_08.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
            </a>
          </div>
        </div>
      </section>
      <%--Block2 (End)=====================================================--%>
      <%--Block3 Highlighted Brands(Start)==========================================--%>
      <div id="logo" class="note-highlighted">
        <div id="s3">
          <img class="am-margin-bottom-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_09.png" + "?cacheVersion=" + cacheVersion %>'
            alt="bn_05" />
        </div>
        <div class="am-padding-horizontal-sm">
          <ul class="am-avg-sm-2">
            <li class="am-margin-bottom-sm">
              <%-- 品牌帶3小塊商品組合-1 (Start)--%>
              <div class="brand goods-brand-group">
                <div class="mb-shop-block">
                  <div id="inject-logo-for-brand-1"></div>
                  <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rpHighLightArea1" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea1">
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
              <%-- 品牌帶3小塊商品組合-1 (End)--%>
            </li>
            <li class="am-margin-bottom-sm">
              <%-- 品牌帶3小塊商品組合-2 (Start)--%>
              <div class="brand goods-brand-group">
                <div class="mb-shop-block">
                  <div id="inject-logo-for-brand-2"></div>
                  <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rpHighLightArea2" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea2">
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
              <%-- 品牌帶3小塊商品組合-2 (End)--%>
            </li>
            <li class="am-margin-bottom-sm">
              <%-- 品牌帶3小塊商品組合-3 (Start)--%>
              <div class="brand goods-brand-group">
                <div class="mb-shop-block">
                  <div id="inject-logo-for-brand-3"></div>
                  <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rpHighLightArea3" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea3">
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
              <%-- 品牌帶3小塊商品組合-3 (End)--%>
            </li>
            <li class="am-margin-bottom-sm">
              <%-- 品牌帶3小塊商品組合-4 (Start)--%>
              <div class="brand goods-brand-group">
                <div class="mb-shop-block">
                  <div id="inject-logo-for-brand-4"></div>
                  <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rpHighLightArea4" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea4">
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
              <%-- 品牌帶3小塊商品組合-4 (End)--%>
            </li>
          </ul>
        </div>
        <section class="am-margin-bottom-xl">
          <div class="am-padding-sm shop-block highlighted-brands">
            <ul class="am-avg-sm-4" id="inject-logo-for-brands">
              <asp:Repeater ID="rpHighLightArea5" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea5">
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
        </section>
      </div>
      <%--Block3 Highlighted Brands(End) ======================================--%>

      <%--Block4 Shop By Category (Start) ==========================================--%>
      <div id="s4" class="note-category">
        <div class="am-margin-bottom-sm">
          <%--Category1 (Start) --%>
          <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_10.png" + "?cacheVersion=" + cacheVersion %>'
            alt="bn_06" />
        </div>
        <section class="category-bg am-margin-bottom-0 ">
          <%--類別錨點 (Start)--%>
          <div class="am-padding-bottom-0">
            <ul class="am-avg-sm-6">
              <li class="am-padding-xs" id="point1"><a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_01.png" + "?cacheVersion=" + cacheVersion %>' alt="h_01" /></a></li>
              <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_02.png" + "?cacheVersion=" + cacheVersion %>' alt="h_02" /></a></li>
              <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_03.png" + "?cacheVersion=" + cacheVersion %>' alt="h_03" /></a></li>
              <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_04.png" + "?cacheVersion=" + cacheVersion %>' alt="h_04" /></a></li>
              <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_05.png" + "?cacheVersion=" + cacheVersion %>' alt="h_05" /></a></li>
              <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_06.png" + "?cacheVersion=" + cacheVersion %>' alt="h_06" /></a></li>
            </ul>
          </div>
          <%--類別錨點 (Start)--%>
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_01.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container1">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec1" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
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
          </div>
        </section>
        <%--Category1 (End) --%>

        <%--Category2 (Start) --%>
        <section class="category-bg am-margin-bottom-0  " id="point2">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container1">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec2" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                        </div>
                      </div>
                      <div class="goods-bottom am-text-center">
                        <h3 class="am-padding-top-xl">See More</h3>
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
          </div>
        </section>
        <%--Category2 (End) --%>

        <%--Category3 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point3">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container3">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec3" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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

        <%--Category3 (End) --%>

        <%--Category4 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point4">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container4">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec4" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
        <%--Category4 (End) --%>

        <%--Category5 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point5">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container5">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec5" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
        <%--Category5 (End) --%>

        <%--Category6 (Start) --%>
        <section class="category-bg am-margin-bottom-0" id="point6">
          <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
              <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
              </a>
            </div>
            <div class="category-slider">
              <div class="swiper-container swiper-container6">
                <ul class="swiper-wrapper">
                  <uc1:products runat="server" id="productCategorySec6" />
                  <li class="am-fl swiper-slide goods-more">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                      <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
      </div>
      <%--Block4 Shop By Category (End) ===========================================--%>

      <%--Block5  You May Also Like... (Start)========================================--%>
      <section class="am-padding-vertical-lg  am-margin-bottom-xl">
        <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center" style="color: #FFFFFF;">YOU MAY ALSO
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
    <div class="am-padding-vertical-lg activity-method" style="background: #000;">
      <div class="am-container"id="s5">
        <p>
          Terms & Conditions<br>
          Friendship Day Sale<br>
          1. Friendship Day Promotion Date : 16th July 2020 12:00 - 31st July 2020 23:59<br>
          2. Hot Deal Promotion Date:
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - Round 1 : 16th July 2020 12:00 - 24th July 2020 11:59<br>
          - Round 2 : 24th July 2020 12:00 - 31st July 2020 23:59<br>
        </p>
        <p class="am-margin-top-0">
          3. Sitewide Promo Code:
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - RM25 OFF, use code [FRIEND25]  (min spend 270)<br>
          - RM35 OFF, use code [FRIEDN35] (min spend 380)<br>
          - RM55 OFF, use code [FRIEND55] (min spend 600)
        </p>
        <p class="am-margin-top-0">
          4. Promo Codes are applicable on selected Flagship Stores, including Pandababy, DV, Laler, Choyer, Hsu's, DV Tokyo, Dr Morita, Paradiso Garden, Zephyrine, HH, Double Doctor, 1838 Eurocares, Enjoy The Life, Sofei, Unipapa, Anriea, Saholea
        </p>
        <p class="am-margin-top-0">
          5. Free Gift (minspend RM500, amount after using promo codes)
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - Dr Morita Pearl Enzyme Exfoliating Gel  (worth RM59, limited 250 sets)
        </p>
        <p class="am-margin-top-0">
          6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Friendship Day Sale terms from time to time, and in such manner as Hawooo deems appropriate
        </p>
      </div>
    </div>
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
      setSwiper();
      set3Img1Brand(
        '20200716',
        [208, 307, 235, 334],
        ["#inject-logo-for-brand-1", "#inject-logo-for-brand-2", "#inject-logo-for-brand-3", "#inject-logo-for-brand-4"],
        1
      );
      set1Img1Brand('20200716', [345, 72, 457, 287, 349, 180, 309, 297], 4, 1);

      allAnchorHrefRedirect();
      
      //hideBlock();
      $(".shop-block li").addClass("hvr-float");

      function duplicate(id) {
        var ul = $("#" + id + " ul");
        ul.find("li:last")
          .clone(true)
          .appendTo(ul);
      }
    }

    // Set a brand image for every product images
    // Usage example:
    // set1Img1Brand('20200630', [72, 180, 345, 450, 407, 307, 349, 29], 4, 1);
    function set1Img1Brand(eventName = '', brandNo = [], indexShift = 0, cacheVersion = 1) {
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
    // Set 1 brand image for every 3 (n) product images
    // Usage example:
    // set3Img1Brand(
    //   '20200630',
    //   [309, 235, 334, 283],
    //   ["#inject-logo-for-brand-1", "#inject-logo-for-brand-2", "#inject-logo-for-brand-3", "#inject-logo-for-brand-4"],
    //   1
    // );
    // Put <div id="inject-logo-for-brand-1"></div> before the target ul, not inside!
    function set3Img1Brand(eventName = '', brandNo = [], cssIds = [], cacheVersion = 1) {
      let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
      let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

      for (i = 0; i < brandNo.length; i++) {
        let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
          <div class="brand-logo">
            <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1) + "", 2)}.png?cacheVersion=${cacheVersion}">
          </div>
        </a>`;

        $(cssIds[i]).prepend(prependDOMStr);
        $(cssIds[i] + ' a:not(.brand-logo-wrapping-anchor)').attr({
          "href": `${brandLinkPfx}${brandNo[i]}`,
          "target": "_blank"
        });
      }
    }
    /* Used by putimg() or set1Img1Brand() or set3Img1Brand */
    function paddingLeft(str, lenght) {
      debugger;
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

    // Todo_treegb: setCountdown Logic not set yet.
    function hideBlock() {
      var date1 = new Date("2020-07-24T00:00:00");
      var dateNow = new Date();
      if (dateNow > date1) {
        $('.countdown-bn1').prepend('<div class="gray-block"></div>');

      }
      if (dateNow < date1) {
        $('.countdown-bn2').prepend('<div class="gray-block"></div>');
        $('.countdown-bn1').remove('<div class="gray-block"></div>');
      }
    };

    // Todo_treegb: setCountdown Logic not set yet.
    function setCountdown (spendtime, classOrId = ".clock-countdown") {
      let domD = $(`${classOrId} .d`).eq(0);
      let domH = $(`${classOrId} .h`).eq(0);
      let domM = $(`${classOrId} .m`).eq(0);
      let domS = $(`${classOrId} .s`).eq(0);
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
    function PrefixInteger (num, length) {
        return (Array(length).join('0') + num).slice(-length);
    }
  </script>
</asp:Content>
