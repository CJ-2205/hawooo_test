<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200709beauty_sale.aspx.cs" Inherits="user_static_200709beauty_sale" %>
<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<%@ Register Src="200709beauty_sale_user-control-testing.ascx" TagPrefix="uc2" TagName="products" %>


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

    .even-title {
      bottom: 36%;
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
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain " style="background: #F3D0E1;">

    <div class="am-margin-bottom-xl" id="top">
      <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_01.png" alt="主banner" />
    </div>


    <div class="am-container">
      <!--領取折扣券 (Start)====================================================-->
      <div class="am-margin-bottom_xl">
        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_02.png" alt="bn_02" />
      </div>
      <div class="am-margin-bottom-sm am-padding-bottom-sm">
        <ul class="am-avg-sm-2">
          <li class="am-padding-sm coupon">
            <a href="#!">
              <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/coupon_01.png" alt="coupon_01" />
            </a>
            <div class="am-padding-top-sm">
            <div class="am-padding coupon-word">
            <h3>Gift with purchase; 100 sets</h3>
            </div>
           </div>
          </li>
          <li class="am-padding-sm coupon">
            <a href="#!">
              <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/coupon_02.png" alt="coupon_02" />
            </a>
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Minspend RM188; 80 sets</h3>
              </div>
             </div>
          </li>
          <li class="am-padding-sm coupon">
            <a href="#!">
              <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/coupon_03.png" alt="coupon_01" />
            </a>
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Minspend RM288;  100 sets</h3>
              </div>
             </div>
          </li>
          <li class="am-padding-sm coupon">
            <a href="#!">
              <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/coupon_04.png" alt="coupon_04" />
            </a>
            <div class="am-padding-top-sm">
              <div class="am-padding coupon-word">
              <h3>Minspend RM388;  200 sets</h3>
              </div>
             </div>
          </li>
        </ul>
      </div>
      <!--領取折扣券 (End) ===========================================================-->

      <!--預購頁 7/12 換開賣頁Block1 (Start) ================================================-->
      <section class="am-margin-bottom-xl all-anchor-href-redirect" data-redirect="200709beauty_sale_flashsale.html"
        id="s1">
        <div style="position:relative;">
          <a>
            <img class="am-margin-bottom-0" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_03.png"
              alt="bn_02" />
          </a>
          <div class="even-title">
            <h2 class="am-text-xl">Sale starts in
              <span class="countdown">
                <span id='d'>0</span>:
                <span id='h'>0</span>:
                <span id='m'>0</span>:
                <span id='s'>0</span>
              </span></h2>
          </div>
        </div>
        <div style="background: #E84364;">
          <div class="am-padding-top-0">
            <div class="shop-block">
              <ul class="am-avg-sm-4">
                <!-- 一般商品塊(後端帶入) -->
                <li class="am-fl hvr-float">
                  <div class="goods goods-preorder">
                    <a href="2020momsday2_preorder.html">
                      <div class="goods-top">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190107105349748.jpg"
                          style="width: 100%;" />
                        <div class="viewed-tag">
                          <span class="viewed">304
                          </span>
                          Added
                        </div>
                      </div>
                    </a>
                    <div class="goods-bottom">
                      <div class="goods-block">
                        <h3 class="goods-name">【FreshO2】Stay with me 為妳停留霧面唇蜜with me 為妳停留霧面唇蜜with me 為妳停留霧面唇蜜</h3>
                      </div>
                      <div class="goods-block flex-between">
                        <h4 class="goods-price">RM 49.90</h4>
                        <span>-RM 100</span>
                      </div>
                      <div class="goods-block flex-between">
                        <select style="width: 68%;" onclick="return false;">
                          <option value="">日用3包+夜用3包+草本暖宮貼2入</option>
                          <option value="">日用1包+夜用1包+草本暖宮貼2入</option>
                        </select>
                        <select style="width: 31%;" onclick="return false;">
                          <option value="">1</option>
                          <option value="">2</option>
                        </select>
                      </div>
                      <div class="am-btn am-btn-block add-btn">
                        Add to Wishlist
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>

            <div class="am-padding-vertical-lg am-u-sm-3 am-u-sm-centered">
              <a>
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/more.png" alt="more" />
              </a>
            </div>
          </div>

        </div>
      </section>
      <!--預購頁 7/12 換開賣頁Block1 (end) =================================================-->

      <!--7/12換開賣頁 Block1 (Start) =====================================================-->
      <section class="am-margin-bottom-xl all-anchor-href-redirect" data-redirect="200709beauty_sale_flashsale.html"
        id="s2">
        <div style="position:relative;">
          <a>
            <img class="am-margin-bottom-0" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_04.png"
              alt="bn_02" />
          </a>
          <!-- 時間 -->
          <div class="even-title">
            <h2 class="am-text-xl">Sale Ends in <span class="countdown">
                <span id='d'>0</span>:
                <span id='h'>0</span>:
                <span id='m'>0</span>:
                <span id='s'>0</span>
              </span></h2>
          </div>
        </div>
        <div style="background: #E84364;">
          <div class="am-padding-top-0">
            <div class="am-margin-vertical-0">
              <div class="shop-block">
                <ul class="am-avg-sm-4">
                  <!-- 一般商品塊(後端帶入) -->
                  <li class="am-fl goods goods-flashsale hvr-float">
                    <a href="2020momsday2flash_sale.html" target="_blank">
                      <div class="goods-top">
                        <div class="goods-img">
                          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg">
                          <div class="goods-discount">
                            <span class="ribbon">10<small>%</small> OFF
                            </span>
                          </div>
                        </div>
                      </div>
                      <div class="goods-bottom">
                        <div class="goods-block fire-progress">
                          <div class="fire-img">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/fire.svg"
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
                  </li>
              </div>
            </div>
            <div class="am-padding-vertical-lg am-u-sm-3 am-u-sm-centered">
              <a>
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/more.png" alt="more" />
              </a>
            </div>
          </div>
        </div>
      </section>
      <!--7/12換開賣頁 Block1 (end) =====================================================-->


      <!--Block2 (Start)=====================================================-->
      <section class="am-margin-bottom-xl all-anchor-href-redirect" id="s3"
        data-redirect="200709beauty_sale_hotdeal.html">
        <div>
          <a>
            <img class="am-margin-bottom-0" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_05.png"
              alt="bn_02" />
          </a>
        </div>
        <div style="background: #0E4493;">
          <div class="am-padding-top-0">
            <div class="am-margin-vertical-0">
              <div class="shop-block">
                <ul class="am-avg-sm-4">
                  <!-- 一般商品塊(後端帶入) -->
                  <asp:Repeater ID="rpHotDeal" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HotDeal">
                      <ItemTemplate>
                          <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                          <li class="am-fl goods goods-flashsale">
                              <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
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
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/more.png" alt="more" />
              </a>
            </div>
          </div>
        </div>
      </section>
      <!--Block2 (End)=====================================================-->
      <!--Block3 Highlighted Brands(Start)==========================================-->
      <div>
        <div id="s3">
          <img class="am-margin-bottom-sm" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_06.png"
            alt="bn_05" />
        </div>
        <section class="am-margin-bottom-xl">
          <div class="am-padding-sm shop-block highlighted-brands" id="logo">
            <ul class="am-avg-sm-4">
              <li class="am-fl brand">
              </li>
              <li class="am-fl brand">
              </li>
              <li class="am-fl brand">
              </li>
              <li class="am-fl brand">
              </li>
            </ul>
          </div>
        </section>
      </div>
      <div class="am-margin-bottom-lg">
        <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/bn_07.png" alt="bn_07" />
        </a>
      </div>
    </div>

    <!--Block3 Highlighted Brands(End) ======================================-->

    <!--Terms & Conditions (Start) =====================================================-->
    <footer class="am-padding-vertical-lg activity-method" style="background: #D22248;">
      <div class="am-container" id="s5">
        <p class="am-margin-top-0">
          Terms & Conditions<br>
          Beauty Shocking Sale<br>
        </p>
        <p class="am-margin-top-0">
          1. Promotion Date : 30th June 2020 12:00 - 9th July 2020 23:59<br>
          2. Promo Codes are applicable on selected flaghip stores, including<br>
          3. Free Gift:
          4. Free Order:
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - ONE lucky winner who purchased by using promo code will be selected randomly, the winner will be rewarded by the amount spent (amount after using promo code) in shopping cash, the shopping cash can be used on her/his next order<br />
          - The winner will be announced on 20th July 2020 on Hawooo 好物飛行 Facebook Page, the shopping cash will be transferred to the account before 24th July 2020
        </p>
        <p class="am-margin-top-0">
          5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Pay Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
        </p>
      </div>
    </footer>
    <!--Terms & Conditions (End) ======================================================-->
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
      set1Img1Brand('20200630', [72, 180, 345, 450, 407, 307, 349, 29], 4, 1);
      hideBlock();
      allAnchorHrefRedirect();
      $(".shop-block li").addClass("hvr-float");
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
    };

    /*設定時間隱藏區塊*/
    function hideBlock() {
      var date1 = new Date("2020-07-12T00:00:00");
      var dateNow = new Date();
      if (dateNow > date1) {
        $('#s1').hide();
      }
      if (dateNow < date1) {
        $('#s2').hide();
      }
    };

  </script>
</asp:Content>