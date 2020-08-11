<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200527_vip_secret_sale.aspx.cs" Inherits="mobile_static_200527_vip_secret_sale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<%-- Todo_treegb: test uc2. --%>
<%-- <%@ Register Src="./200527_vip_secret_sale_coupon.ascx" TagPrefix="uc2" TagName="vipcoupon" %> --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="./assets/css/swiper.min.css">
  <link rel="stylesheet" href="./assets/css/events_style.min.css">

  <style>
    /* Logo border style */
    #logo a {
      overflow: hidden;
      border: 2.5px solid #D8D8D8;
    }

    .mb-shop-block {
      padding: 3px;
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <%--MB  Contain Max-width:650px(Start) ==========================================--%>
  <div class="am-g main-contain mb-contain" id="top" style="background:#FFB740;">
    <div>
      <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/bn_01m.png" alt="main-banner" />
    </div>

    <%--領取折扣券 (Start)====================================================--%>
    <div class="am-margin-bottom">
      <div class="am-padding-bottom-sm am-padding-horizontal-xs">
        <ul class="am-avg-sm-2">
          <li class="am-padding-xs coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/coupon_01.png" %>' alt="coupon_01" />
            <h6 class="coupon-code" id="user-code-1">Please login</h6>
          </li>
          <li class="am-padding-xs  coupon">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/coupon_02.png" %>' alt="coupon_02" />
            <h6 class="coupon-code" id="user-code-2">Please login</h6>
          </li>
        </ul>
      </div>
    </div>
    <%--領取折扣券 (End) ====================================================--%>

    <%--Block1 (Start) =====================================================--%>
    <section class="am-margin-bottom" id="s1">
      <div>
        <a href="200527_super_deals.html" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/bn_02m.png" alt="bn_03m" />
        </a>
      </div>
      <div style="background:#EA6400;">
        <div class="mb-shop-block">
          <ul class="am-avg-sm-2 am-avg-md-3">
            <uc1:products runat="server" id="products1" />
          </ul>
        </div>
        <div>
          <a href="./200527_vip_super_deals.aspx" target="_blank">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/bn_03.png" alt="more" />
          </a>
        </div>
      </div>
    </section>
    <%--Block1 (End) ======================================================--%>

    <%--Block2 (Start) ======================================================--%>
      <%-- Todo_treegb: test uc2. --%>
      <%-- <uc2:vipcoupon runat="server" id="vipcoupon1"/> --%>

    <%--Block2 (End) =======================================================--%>

    <%--Block3 Highlighted Brands(Start)==========================================--%>
    <section class="am-margin-bottom" id="s3" style="position:relative;">
      <div>
        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/bn_04m.png" alt="bn_05m" />
      </div>
      <div class="mb-shop-block" id="logo">
        <ul class="am-avg-sm-2 am-avg-md-3">
          <uc1:products runat="server" id="brands" />
        </ul>
      </div>
    </section>
    <%--Block3 Highlighted Brands(End) ==========================================--%>

    <%--Block4 Shop By Category (Start) ==========================================--%>
    <section class="am-margin-bottom" id="s4" style="position:relative;">
      <div>
        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/bn_05m.png" alt="bn_06m" />
      </div>

      <div style="background:#DC7A11;">
        <ul class="am-avg-sm-3">
          <li class="am-padding-xs" id="point1"><a>
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_01.png" %>' alt="v_01" /></a></li>
          <li class="am-padding-xs" onclick="goto('point2')"><a>
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_02.png" %>' alt="v_01" /></a></li>
          <li class="am-padding-xs" onclick="goto('point3')"><a>
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_03.png" %>' alt="v_01" /></a></li>
          <li class="am-padding-xs" onclick="goto('point4')"><a>
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_04.png" %>' alt="v_01" /></a></li>
          <li class="am-padding-xs" onclick="goto('point5')"><a>
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_05.png" %>' alt="v_01" /></a></li>
          <li class="am-padding-xs" onclick="goto('point6')"><a>
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_06.png" %>' alt="v_01" /></a></li>
        </ul>
      </div>

      <div>
        <div>
          <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_01m.png" alt="ca_01m" />
          </a>
        </div>
        <div class="category-slider" style="background:#DC7A11">
          <div class="swiper-container swiper-container1 mb-shop-block">
            <ul class="swiper-wrapper">
              <uc1:products runat="server" id="products3" />
              <li class="am-fl swiper-slide goods-more">
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                  <div class="goods-top">
                    <div class="goods-img">
                      <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
    <section class="am-margin-top-0" id="point2">
      <div>
        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_02m.png" alt="h_02m" />
        </a>
      </div>
      <div class="category-slider">
        <div class="swiper-container swiper-container2 mb-shop-block">
          <ul class="swiper-wrapper">
            <uc1:products runat="server" id="products4" />
            <li class="am-fl swiper-slide goods-more">
              <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
    <section class="am-margin-top-0" id="point3">
      <div>
        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_03m.png" alt="h_03m" />
        </a>
      </div>
      <div class="category-slider">
        <div class="swiper-container swiper-container3 mb-shop-block">
          <ul class="swiper-wrapper">
            <uc1:products runat="server" id="products5" />
            <li class="am-fl swiper-slide goods-more">
              <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
    <section class="am-margin-top-0" id="point4">
      <div>
        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_04m.png" alt="h_04m" />
        </a>
      </div>
      <div class="category-slider">
        <div class="swiper-container swiper-container4 mb-shop-block">
          <ul class="swiper-wrapper">
            <uc1:products runat="server" id="products6" />
            <li class="am-fl swiper-slide goods-more">
              <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
    <section class="am-margin-top-0" id="point5">
      <div>
        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_05m.png" alt="h_05m" />
        </a>
      </div>
      <div class="category-slider">
        <div class="swiper-container swiper-container5 mb-shop-block">
          <ul class="swiper-wrapper">
            <uc1:products runat="server" id="products7" />
            <li class="am-fl swiper-slide goods-more">
              <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
    <section class="am-margin-top-0" id="point6">
      <div>
        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
          <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_06m.png" alt="h_06m" />
        </a>
      </div>
      <div class="category-slider">
        <div class="swiper-container swiper-container6 mb-shop-block">
          <ul class="swiper-wrapper">
            <uc1:products runat="server" id="products8" />
            <li class="am-fl swiper-slide goods-more">
              <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                <div class="goods-top">
                  <div class="goods-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
    <%--Block4 Shop By Category (End) ==========================================--%>

    <%--Block5  You May Also Like... (Start)========================================--%>
    <section class="am-margin-vertical-sm">
      <h6 class="am-margin-bottom-0 am-padding-left am-text-center" style="color:#ffff;">You May Also Like...</h6>
      <div class="mb-shop-block">
        <ul class="am-avg-sm-2  am-avg-md-3">
          <li class="am-fl ">
            <%-- Todo_treegb: what is best_offer for? --%>
            <a href="best_offer.aspx">
              <div class="product_item_pic">
                <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
              </div>
              <div class="product_item_text">
                <div class="product_item_block am-cf">
                  <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                </div>
                <div class="product_item_block am-cf">

                  <h4 class="am-fl">RM 31.840</h4>
                  <span class="product_item_dis">-RM20.040</span>
                </div>
                <div class="product_item_block am-cf">
                  <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                  <p class="am-fr">
                    <span class="product-items-tag">
                      <img src="./assets/img/免運.svg" style="width:20px!important">免運
                    </span>
                  </p>
                </div>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </section>
    <%--Block5  You May Also Like... (End)=========================================--%>

    <%--Terms & Conditions (Start) =============================================--%>
    <footer class="am-padding activity-method" style="background: #000;">
      <div class="am-container">
        <p>
          Terms & Conditions<br />
          VIP Secret Sale<br />
          1. Promotion Date : 27th May 2020 12:00 - 29th May 2020 23:59<br>
          2. Promo Code:<br>
        </p>
        <p class="am-padding-left">
          - RM35 OFF (minspend 280)<br>
          - RM65 OFF (minspend 500)<br>
          - each member has their exclusive code, it's saved in you account, select it when you are checking out
          your shopping
          cart<br>
          - the code are applicable SITEWIDE, each code can only be used ONCE<br>
        </p>
        <p>
          3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these VIP Secret Sale terms
          from time to
          time, and in such manner as Hawooo deems appropriate.
        </p>
      </div>
    </footer>
    <%--Terms & Conditions (End) ==============================================--%>

  </div>

  <%--MB  Contain Max-width:650px(End) ==========================================--%>

  <script src="./assets/js/swiper.min.js"></script>
  <script src="./assets/js/events.js"></script>
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
      // duplicateLogo();
      console.log('Inside InitScript');
      setThem();
      putimg(12);
      vipLogic();
      hiddenFooterMenu();
      $("#s5 li,#s3 li").addClass("hvr-float");

      function duplicateLogo() {
        for (i = 0; i < 11; i++) {
          duplicate('logo');
        }
      };
      function duplicate(id) {
        var ul = $("#" + id + " ul");
        ul.find("li:last")
          .clone(true)
          .appendTo(ul);
      }
    }

    /* (Start) Vip 活動頁相關: 1. 檢查是否登入 2. 檢查是否是 vip 3. 修改 Coupon 內容。 ==================================== */
    function vipLogic() {
      console.log('Inside VipLogic');
      var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

      if (u == null) {
        console.log('null');
        $(".main-contain a").attr("href", "#!")
        $(".main-contain").click(function () {
          location.href = 'login.aspx?rurl=200527_vip_secret_sale.aspx.aspx';
        });
      } else {
        console.log('not null');
        var val = "{'userID':'" + u + "'}";

        $.ajax({
          type: "POST",
          url: "200527_vip_secret_sale.aspx/GetUserInfo",
          data: val,
          contentType: "application/json; charset=utf-8",
          dataType: "json",
          async: false,
          success: function (msg) {
            PutUrl();
            var rmsg = JSON.parse(msg.d)[0].rmsg;
            var code1 = JSON.parse(msg.d)[0].code1;
            var code2 = JSON.parse(msg.d)[0].code2;

            if (rmsg === "VIP") {
              $("#user-code-1").text(code1);
              $("#user-code-2").text(code2);
            }
            else {
              alert2url('Oops, the is the secret sale for Top500 VIPs!', 'index.aspx');
              //alert('Oops, the is the secret sale for Top500 VIPs!');
              //location.href = 'index.aspx';
            }
          },
          error: function () {
            alert('Ajax ERROR');
          }
        });

      };
    }
    /* (End) Vip 活動頁相關: 1. 檢查是否登入 2. 檢查是否是 vip 3. 修改 Coupon 內容。 ==================================== */

    /*放置logo*/
    function putimg (count) {
      for (i = 1; i <= count; i++) {
        $('#logo li a').eq(i - 1).prepend('<div class="brand-logo">' +
          '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/logo_' + paddingLeft("" + i + "", 2) + '.png">' +
          '</div>');
      }
    };
    /* Used by putimg() */
    function paddingLeft(str, lenght) {
        debugger;
        if (str.length >= lenght)
            return str;
        else
            return paddingLeft("0" + str, lenght);
    };


    /*隱藏手機FotterBar*/
    function hiddenFooterMenu() {
      $("#footermenu").css('display', 'none');
    }

    /* 設定Slider*/
    function setThem() {
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
  </script>
</asp:Content>