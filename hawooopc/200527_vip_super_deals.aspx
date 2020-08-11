<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200527_vip_super_deals.aspx.cs" Inherits="user_static_200527_vip_super_deals" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link rel="stylesheet" href="./assets/css/events_style.min.css">
     <link rel="stylesheet" href="./assets/css/swiper.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  <div class="am-g main-contain" style="background: #FFB740;">
    <div>
      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/bn_02.png" %>' alt="bbn_02" />
    </div>

    <div class="am-container">

      <!--領取折扣券 (Start)====================================================-->
      <div style="position:relative;">
              <div class="am-margin-bottom-xl am-padding-bottom-sm">
                <ul class="am-avg-sm-2">
                  <li class="am-padding-sm coupon">
                    <a href="#!">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/coupon_01.png" %>' alt="coupon_01" />
                      <span class="coupon-code"> CODE</span>
                    </a>
                  </li>
                  <li class="am-padding-sm coupon">
                    <a href="#!">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/coupon_02.png" %>' alt="coupon_02" />
                      <span class="coupon-code"> CODE</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
      <!--領取折扣券 (End) ====================================================-->

      <!--Block2 (Start) ======================================================-->
      <div class="am-margin-bottom-xl am-padding-sm shop-block">
        <ul class="am-avg-sm-4">
          <!--後端帶入商品 (Start) -->
          <uc1:products runat="server" id="products" />
          <!--後端帶入商品 (Start) -->
        </ul>
      </div>
      <!--Block2 (End) =======================================================-->

      <!--Block3 Shop By Category (Start) ==========================================-->
      <div class="am-margin-bottom-lg">
              <!--Category1 (Start) -->
              <div>
                <div class="banner banner3">
                  <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/bn_05.png" %>' alt="bn_05" />
                </div>
                <section class="am-margin-bottom-0 am-padding" id="s4" style="background:#DC7A11;">
                  <!--類別錨點 (Start)-->
                  <div class="am-padding-bottom-0">
                    <ul class="am-avg-sm-6">
                      <li class="am-padding-xs" id="point1"><a>
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_01.png" %>' alt="h_01" /></a></li>
                      <li class="am-padding-xs" onclick="goto('point2')"><a>
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_02.png" %>' alt="h_02" /></a></li>
                      <li class="am-padding-xs" onclick="goto('point3')"><a>
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_03.png" %>' alt="h_03" /></a></li>
                      <li class="am-padding-xs" onclick="goto('point4')"><a>
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_04.png" %>' alt="h_04" /></a></li>
                      <li class="am-padding-xs" onclick="goto('point5')"><a>
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_05.png" %>' alt="h_05" /></a></li>
                      <li class="am-padding-xs" onclick="goto('point6')"><a>
                          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/v_06.png" %>' alt="h_06" /></a></li>
                    </ul>
                  </div>
                  <!--類別錨點 (Start)-->
                  <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                    <div class="am-margin-right-sm category-bn">
                      <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/h_01.png" %>' style="width: 100%;">
                      </a>
                    </div>
                    <div class="category-slider">
                      <div class="swiper-container swiper-container1">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products2" />
                          <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                              <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                  <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
              </div>
              <!--Category1 (End) -->

              <!--Category2 (Start) -->
              <section class="am-margin-bottom-0" id="point2" style="background:#DC7A11;">
                <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                  <div class="am-margin-right-sm category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/h_02.png" %>' style="width: 100%;">
                    </a>
                  </div>
                  <div class="category-slider">
                    <div class="swiper-container swiper-container2">
                      <ul class="swiper-wrapper">
                          <uc1:products runat="server" id="products3" />
                        <li class="am-fl swiper-slide goods-more">
                          <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                              <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                              </div>
                            </div>
                            <div class="goods-bottom am-text-center">
                              <h3 class="am-padding-top-xl">See More</h3>
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
                </div>
              </section>
              <!--Category2 (End) -->

              <!--Category3 (Start) -->
              <section class="am-margin-bottom-0" id="point3" style="background:#DC7A11;">
                <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                  <div class="am-margin-right-sm category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/h_03.png" %>' style="width: 100%;">
                    </a>
                  </div>
                  <div class="category-slider">
                    <div class="swiper-container swiper-container3">
                      <ul class="swiper-wrapper">
                          <uc1:products runat="server" id="products4" />
                        <li class="am-fl swiper-slide goods-more">
                          <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                              <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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

              <!--Category3 (End) -->

              <!--Category4 (Start) -->
              <section class="am-margin-bottom-0" id="point4" style="background:#DC7A11;">
                <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                  <div class="am-margin-right-sm category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/h_04.png" %>' style="width: 100%;">
                    </a>
                  </div>
                  <div class="category-slider">
                    <div class="swiper-container swiper-container4">
                      <ul class="swiper-wrapper">
                          <uc1:products runat="server" id="products5" />
                        <li class="am-fl swiper-slide goods-more">
                          <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                              <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
              <!--Category4 (End) -->

              <!--Category5 (Start) -->
              <section class="am-margin-bottom-0" id="point5" style="background:#DC7A11;">
                <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                  <div class="am-margin-right-sm category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/h_05.png" %>' style="width: 100%;">
                    </a>
                  </div>
                  <div class="category-slider">
                    <div class="swiper-container swiper-container5">
                      <ul class="swiper-wrapper">
                          <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide goods-more">
                          <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                              <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
              <!--Category5 (End) -->

              <!--Category6 (Start) -->
              <section class="am-margin-bottom-0" id="point6" style="background:#DC7A11;">
                <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                  <div class="am-margin-right-sm category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200527/h_06.png" %>' style="width: 100%;">
                    </a>
                  </div>
                  <div class="category-slider">
                    <div class="swiper-container swiper-container6">
                      <ul class="swiper-wrapper">
                          <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide goods-more">
                          <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                              <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
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
              <!--Category6 (End) -->
            </div>
      <!--Block3 Shop By Category (End) ===========================================-->
    </div>
    <!--Terms & Conditions (Start) =====================================================-->
    <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
          <div class="am-container">
            <p>
              Terms & Conditions<br />
              VIP Secret Sale<br />
              1. Promotion Date : 27th May 2020 12:00 - 29th May 2020 23:59<br>
              2. Promo Code:<br>
            </p>
            <p class="am-padding-left-lg">
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
    <!--Terms & Conditions (End) ======================================================-->
  </div>


    <script src="./assets/js/events.js"></script>
    <script src="./assets/js/swiper.min.js"></script>
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
      setThem();
      putimg();
      $("#s5 li,#s3 li").addClass("hvr-float");
    }


    /*放置logo*/
    function putimg() {
      for (i = 0; i < 12; i++) {
        $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
          '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/logo_0' + (i + 1) + '.png">' +
          '</div>');
      }
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

  </script>
</asp:Content>