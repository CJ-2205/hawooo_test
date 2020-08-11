<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200618mys2_hot_deal.aspx.cs" Inherits="user_static_200618mys2_hot_deal" %>
<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="assets/css/events_style.min.css">
  <link rel="stylesheet" href="assets/css/swiper.min.css">
  <style>
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


    /* Slider Prev & Next Btn style */
    .prev-btn,
    .next-btn {
      color: #fff;
      background: #9F9C9B;
    }
    .category-bg{
      background:#A63B24
    }

    .side-bar {
      top: 28%;
      width: 120px;
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain"style="background:#A63B24">
    <%--側邊選單 (Start) ======================================================--%>
    <div class="side-bar">
      <ul>
        <li>
          <a href="200618mys2.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_00.png?v=1" %>' alt="ss_00" />
          </a>
        </li>
        <li class="flash-sale-display" target="_blank">
          <a href="200618mys2_flash_sale.aspx">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_01.png?v=1" %>' alt="ss_01" />
          </a>
        </li>
        <li>
          <a href="#!" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_02.png?v=1" %>' alt="ss_02" />
          </a>
        </li>
        <li>
          <a href="200618mys2_value_buy.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_03.png?v=1" %>' alt="ss_03" />
          </a>
        </li>
        <li>
          <a href="200618mys2.aspx#s4" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_04.png?v=1" %>' alt="ss_04" />
          </a>
        </li>
        <li>
          <a href="200618mys2.aspx#s5" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_05.png?v=1" %>' alt="ss_05" />
          </a>
        </li>
        <li onclick="goto('s6')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_06.png?v=1" %>' alt="ss_05" />
        </li>
      </ul>
    </div>
    <%--側邊選單 (End) =======================================================--%>

    <div class="am-container am-margin-vertical-lg">
      <div>
        <img class="am-margin-bottom-xl" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bbn_05.png" %>'
             alt="bbn_02" />
      </div>

      <%--領取折扣券 (Start)====================================================--%>
      <div class="am-margin-bottom_xl">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_02.png" %>' alt="bn_02" />
      </div>

      <div style="position: relative;">
        <div class="am-margin-bottom-sm am-padding-bottom-sm">

          <ul class="am-avg-sm-4">
            <li class="am-padding-sm coupon">
              <a href="#!" class="btnn" data-clipboard-text="MID25">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_01.png" %>' alt="coupon_01" />
              </a>
              <h3 class="am-margin-top-sm font-style"><span><asp:Literal id="Coupon1" runat="server"></asp:Literal></span> have used it</h3>
            </li>
            <li class="am-padding-sm coupon">
              <a href="#!" class="btnn" data-clipboard-text="MID40">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_02.png" %>' alt="coupon_02" />
              </a>
              <h3 class="am-margin-top-sm font-style"><span><asp:Literal id="Coupon2" runat="server"></asp:Literal></span> have used it</h3>
            </li>
            <li class="am-padding-sm coupon">
              <a href="#!" class="btnn" data-clipboard-text="MID65">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_03.png" %>' alt="coupon_01" />
              </a>
              <h3 class="am-margin-top-sm font-style"><span><asp:Literal id="Coupon3" runat="server"></asp:Literal></span> have used it</h3>
            </li>
            <li class="am-padding-sm coupon">
              <div>
                <img class="coupon-gift" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_04.png" %>' alt="coupon_02" />
              </div>
              <h3 class="am-margin-top-sm font-style">min spend 500,limited 200 sets</h3>
            </li>
          </ul>
        </div>
      </div>
      <%--領取折扣券 (End) ====================================================--%>

      <%--Block2 (Start) ======================================================--%>
      <div style="background: #1C2834;">
        <div class="am-margin-bottom-xl am-padding-sm shop-block">
          <ul class="am-avg-sm-4">
            <%--後端帶入商品 (Start) --%>
            <uc1:products runat="server" id="productHotDeal" />
            <%--後端帶入商品 (End) --%>
          </ul>
        </div>
      </div>
      <%--Block2 (End) =======================================================--%>
    </div>
    <%--Terms & Conditions (Start) =====================================================--%>
    <div class="am-padding activity-method" id="s6" style="background: #000;">
      <div class="am-container">
        <p>
          Terms & Conditions<br>
          Mid Year Sale Round 2<br>
          1. 618 Flash Sale Promotion Date : 18th June 2020 12:00 - 20th June 2020 23:59<br>
          2. After Sale Promotion Date : 18th June 2020 12:00 - 25th June 2020 23:59<br>
          3. Sitewide Promo Code:
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - RM25 OFF, Use Code [MID25] (min spend 280)<br>
          - RM40 OFF, Use Code [MID40] (min spend 430)<br>
          - RM65 OFF, Use Code [MID65]  (min spend 650)
        </p>
        <p class="am-margin-top-0">
          4. Promo Codes are LIMITED, first come first serve<br>
          5. Promo Codes are applicable sitewide, including flash sale items, and applicable on selected Flagship Stores, including Dr Morita, Paradiso Garden, Dore Dore, Zephyrine, DV, Laler, Choyer, Hsu's, DV Tokyo, Eurocare 1838, Enjoy The Life, Sofei, Unipapa, Anriea, Cest Vrai, Pandababy, HH (except items on this page) & Double Doctor<br>
          6. Free Gift (minspend 500, amount after using voucher)
        </p>
        <p class="am-margin-top-0 am-padding-left">
          - Unicat Anti-Pore Clean Lotion 150ml (limited 200 sets, worth RM90)
        </p>
        <p class="am-margin-top-0">
          7. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mid Year Sale terms from time to time, and in such manner as Hawooo deems appropriate.
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
      alert("The voucher code have been copied,please enter it when you get ready to pay.");
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
      // Todo_treegb: Change to real time.
      ifFlashsaleDisplay('2020-06-11T00:00:00');
      couponGiftAlterImgSrc('2020-06-21T00:00:00');
      setSwiper();
      $(".shop-block li").addClass("hvr-float");
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
    }

    function ifFlashsaleDisplay (dateStr = '2020-06-01T00:00:00') {
      let dateFSEndTime = new Date(dateStr);
      let dateNow = new Date();
      let flashSaleDisplay = $('.flash-sale-display');

      // If pass the flash Sale timming, some elements will not be shown.
      if (dateNow > dateFSEndTime) {
        for (let i = 0 ; i < flashSaleDisplay.length ; i++) {
          flashSaleDisplay.eq(i).css("display", "none");
        }
      }
    }

    function couponGiftAlterImgSrc (dateStr = '2020-06-21T00:00:00') {
      let dateFSEndTime = new Date(dateStr);
      let dateNow = new Date();
            
      if (dateNow > dateFSEndTime) {
        $('.coupon-gift').eq(0).attr('src', 'https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/coupon_04fn.png');  
      }
    }
  </script>
</asp:Content>