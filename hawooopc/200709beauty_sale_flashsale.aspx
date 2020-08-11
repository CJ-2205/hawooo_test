<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200709beauty_sale_flashsale.aspx.cs" Inherits="user_static_200709beauty_sale_flashsale" %>
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
        <h2 class="am-text-xl">Sale Ends in
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

      <%--Block2 (Start) ======================================================--%>
      <div style="background:#0E4493">
        <div class="am-margin-bottom-xl am-padding-sm shop-block">
          <ul class="am-avg-sm-4">
            <%--後端帶入商品 (Start) --%>
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
                                </div>--%>
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
            <%--後端帶入商品 (Start) --%>
          </ul>
        </div>
      </div>
      <%--Block2 (End) =======================================================--%>
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
  </script>
</asp:Content>