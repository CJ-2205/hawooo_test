<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200630pds_hot_deal.aspx.cs" Inherits="user_static_200630pds_hot_deal" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
  <style>
    .side-bar {
      top: 28%;
      width: 120px;
    }

    /* Coupon */
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
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain" style="background: #F1E3CE;">
    <%--側邊選單 (Start) ======================================================--%>
    <div class="side-bar">
      <ul>
        <li>
          <a href="200630pds.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_00.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00" />
          </a>
        </li>
        <li>
          <a href="#!">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_01.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
          </a>
        </li>
        <li>
          <a href="200630pds_value_buy.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_02.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02" />
          </a>
        </li>
        <li>
          <a href="200630pds.aspx?#s3" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_03.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03" />
          </a>
        </li>
        <li>
          <a href="200630pds.aspx?#s4" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_04.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04" />
          </a>
        </li>
        <li onclick="goto('s5')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_05.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05" />
        </li>
      </ul>
    </div>
    <%--側邊選單 (End) =======================================================--%>

    <div class="am-container am-margin-vertical-lg">
      <div>
        <img class="am-margin-bottom-xl" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bbn_01.png" + "?cacheVersion=" + cacheVersion %>'
          alt="bbn_02" />
      </div>

      <%--領取折扣券 (Start)====================================================--%>
      <div class="am-margin-bottom_xl">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
      </div>
      <div style="position:relative;">
        <div class="am-margin-bottom-sm am-padding-bottom-sm">
          <ul class="am-avg-sm-3">
            <li class="am-padding-sm coupon">
              <a href="#!" class="btnn" data-clipboard-text="PAY17">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="點我複製 PAY17"/>
              </a>
            </li>
            <li class="am-padding-sm coupon">
              <a href="#!" class="btnn" data-clipboard-text="PAY37">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="點我複製 PAY37" />
              </a>
            </li>
            <li class="am-padding-sm coupon">
              <a href="#!" class="btnn" data-clipboard-text="PAY57">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_03.png" + "?cacheVersion=" + cacheVersion %>' alt="點我複製 PAY57" />
              </a>
            </li>
          </ul>
          <ul class="am-avg-sm-2">
            <li class="am-padding-sm coupon">
               <img class="coupon-gift-date-change" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_04.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
            </li>
            <li class="am-padding-sm coupon">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_05.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
            </li>
          </ul>
        </div>
      </div>
      <%--領取折扣券 (End) ====================================================--%>

      <%--Block2 (Start) ======================================================--%>
      <div style="background:#A4C3D2">
        <div class="am-margin-bottom-xl am-padding-sm shop-block">
          <ul class="am-avg-sm-4">
            <%--後端帶入商品 (Start) --%>
            <%--<uc1:products runat="server" id="productHotDeal" />--%>
            <asp:Repeater ID="rpHotDeal" runat="server" OnItemDataBound="rp_plist_ItemDataBoundHotDeal">
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
                              <%--<div class="goods-block fire-progress">
                                  <div class="fire-img">
                                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 23px" />
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
    <div class="am-padding-vertical-lg activity-method" id="s5" style="background: #000;">
      <div class="am-container">
        <p>
          Terms & Conditions<br>
          1. Promotion Date : 30th June 2020 12:00 - 9th July 2020 23:59<br>
          2. Sitewide Promo Code:
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - RM17 OFF (min.spend 220), use code [ PAY17 ]<br>
          - RM37 OFF (min.spend 420), use code [ PAY37 ]<br>
          - RM57 OFF (min.spend 600), use code [ PAY57 ]
        </p>
        <p class="am-margin-top-0">
          3. Promo Codes are applicable on selected flaghip stores, including Double Doctor, Zephyrine, HH, Paradiso Garden, Dr.Morita, Pandababy, DV, Laler, Choyer, Hsu's, DV Tokyo, Eurocares 1838, Enjoy The Life, Sofei, Unipapa, & Anriea
          <br>
          4. Free Gift (min.spend RM500, amount after using promo code)
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - Alkmene Antibacterial Toothpaste (Worth RM45, limited 200 sets)
        </p>
        <p class="am-margin-top-0">
          5. Free Order:
        </p>
        <p class="am-margin-top-0 am-padding-left">
         - 3 lucky winners who purchased by using promo code will be selected randomly, the winners will be rewarded by the amount spent (amount after using promo code) in shopping cash, the shopping cash can be used on her/his next order<br>
         - The winners will be announced on 20th July 2020 on Hawooo 好物飛行 Facebook Page, the shopping cash will be transferred to the account before 24th July 2020
        </p>
        <p class="am-margin-top-0">
          6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Pay Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
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
      couponGiftAlterImgSrc();
      $(".shop-block li").addClass("hvr-float");
    }
    function couponGiftAlterImgSrc(dateStr = '2020-07-05T12:00:00') {
      let dateChangeImg = new Date(dateStr);
      let dateNow = new Date();
      let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
      let imgSrc = '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_06.png" + "?cacheVersion=" + cacheVersion %>';
      if (dateNow > dateChangeImg) {
        $('.coupon-gift-date-change').eq(0).attr('src', imgSrc);
      }
    }
  </script>
</asp:Content>