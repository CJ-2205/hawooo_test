<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200716friendship_hotdeal.aspx.cs" Inherits="user_static_200716friendship_hotdeal" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />

  <style>
    .side-bar {
      top: 40%;
      width: 120px;
    }

    /* (Start) countdown */
    .countdown-bn {
      position: relative;
    }

    .even-title,
    .even-title2 {
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

    .gray-block {
      background: rgba(0, 0, 0, .88);
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
    }
    /* (End) countdown */

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
  <div class="am-g main-contain" style="background: #141126">
    <%--側邊選單 (Start) ======================================================--%>
    <div class="side-bar">
      <ul>
        <li>
          <a href="200716friendship.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_00.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00" />
          </a>
        </li>
        <li>
          <a href="#!">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_01.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
          </a>
        </li>
        <li>
          <a href="200716friendship_bundle.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_02.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02" />
          </a>
        </li>
        <li>
          <a href="200716friendship.aspx?#s3" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_03.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03" />
          </a>
        </li>
        <li>
          <a href="200716friendship.aspx?#s4" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_04.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04" />
          </a>
        </li>
        <li onclick="goto('s5')">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_05.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05" />
        </li>
      </ul>
    </div>
    <%--側邊選單 (End) =======================================================--%>

    <%-- (Start) .am-container --%>
    <div class="am-container am-margin-vertical-lg">
      <div>
        <img class="am-margin-bottom-0 " src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_03.png" + "?cacheVersion=" + cacheVersion %>'
          alt="bbn_02" />
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
                <span style="font-size: 1.4em; color: white;">Comming Soon</span>
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
      </div>


        
      <div class="am-margin-bottom-sm am-margin-top-lg" style="background: #FFEFBB">
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

        <%--Block2 (Start) ======================================================--%>
        <div class="am-margin-bottom-xl am-padding-sm shop-block">
          <ul class="am-avg-sm-4">
            <%--後端帶入商品 (Start) --%>
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
            <%--後端帶入商品 (End) --%>
          </ul>
        </div>
        <%--Block2 (End) =======================================================--%>
      </div>
    </div>
    <%-- (End) .am-container --%>

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
            initScript(

            );
          }
        });
      });
    });

    // 執行頁面的script
    function initScript() {
      // Todo_treegb.
      //hideBlock();
      $(".shop-block li").addClass("hvr-float");
    }

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