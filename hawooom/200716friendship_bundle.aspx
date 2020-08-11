<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200716friendship_bundle.aspx.cs" Inherits="mobile_static_200716friendship_bundle" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="assets/css/events_style.min.css">
  <link rel="stylesheet" href="assets/css/swiper.min.css">

  <style>
    .mb-shop-block {
      padding: 3px;
    }

        
    /*coupon start*/
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
        margin-top: 5%;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    @media screen and (max-width: 650px) {
        .coupon-code {
            font-size: 12px;
            min-height: 49px;
            padding: 0;
        }
    }
    /*coupon end*/
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <%--MB  Contain Max-width:650px(Start) ==========================================--%>
  <div class="am-g main-contain mb-contain" id="top" style="background:#B5E4E4;">
    <div style="background:#000;">
      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_07m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
    </div>

    <%--領取折扣券 (Start)====================================================--%>
    <div class="am-padding-sm">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
    </div>

    <div class="note-coupon" style="margin-left: -0.5rem; margin-right: -0.5rem;">
        <ul class="am-avg-sm-2">
            <li class="am-padding-xs coupon">
                <a class="btnn" data-clipboard-text="FRIEND25">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                </a>
                <div class="coupon-code">
                    <h6 class="am-margin-top-xs"><asp:Literal ID="Coupon1" runat="server"></asp:Literal> have copied it</h6>
                </div>
            </li>
            <li class="am-padding-xs  coupon">
                <a class="btnn" data-clipboard-text="FRIEND35">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                </a>
                <div class="coupon-code">
                    <h6 class="am-margin-top-xs"><asp:Literal ID="Coupon2" runat="server"></asp:Literal> have copied it</h6>
                </div>
            </li>
            <li class="am-padding-xs coupon">
                <a class="btnn" data-clipboard-text="FRIEND55">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_03.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
                </a>
                <div class="coupon-code">
                    <h6 class="am-margin-top-xs"><asp:Literal ID="Coupon3" runat="server"></asp:Literal> have copied it</h6>
                </div>
            </li>
            <li class="am-padding-xs coupon">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_04.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
                <div class="coupon-code">
                    <h6 class="am-margin-top-xs">Min Spend 500, limited 250 sets</h6>
                </div>
            </li>
        </ul>
    </div>
    <%--領取折扣券 (End) ====================================================--%>

    <%--Block1 (Start) =====================================================--%>
    <section class="am-margin-bottom" id="s1">
      <div>
        <div class="mb-shop-block" id="block1">
          <ul class="am-avg-sm-2  am-avg-md-3">
              <asp:Repeater ID="rpBundle" runat="server" OnItemDataBound="rp_plist_ItemDataBound_Bundle">
                  <ItemTemplate>
                      <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                      <li class="am-fl goods goods-flashsale">
                          <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                              <div class="goods-top">
                                  <div class="goods-img">
                                      <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                      <div class="goods-discount goods-discount3">
                                          <span class="ribbon">
                                              <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                          </span>
                                      </div>
                                  </div>
                              </div>
                              <div class="goods-bottom">

                                  <div class="goods-block">
                                      <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                  </div>
                                  <div class="goods-block">
                                      <h1 class="goods-price">
                                          <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                      <s class="goods-original-price">
                                          <span>RM
                                              <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                      </s>
                                  </div>
                                  <div class="goods-block">
                                      <p>
                                          SAVE<span> RM
                                              <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                      </p>
                                  </div>
                              </div>
                          </a>
                      </li>
                  </ItemTemplate>
              </asp:Repeater>
          </ul>
        </div>
      </div>
    </section>
    <%--Block1 (End) ======================================================--%>

    <%--Terms & Conditions (Start) =============================================--%>
    <footer class="am-padding activity-method" style="background: #000;" id="s5">
      <div class="am-container">
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
          <br>
          <p class="am-margin-top-0 am-padding-left">
          - RM25 OFF, use code [FRIEND25]  (min spend 270)<br>
          - RM35 OFF, use code [FRIEDN35] (min spend 380)<br>
          - RM55 OFF, use code [FRIEND55] (min spend 600)<br>
          </p>
          4. Promo Codes are applicable on selected Flagship Stores, including Pandababy, DV, Laler, Choyer, Hsu's, DV Tokyo, Dr Morita, Paradiso Garden, Zephyrine, HH, Double Doctor, 1838 Eurocares, Enjoy The Life, Sofei, Unipapa, Anriea, Saholea
          <br>
          5. Free Gift (minspend RM500, amount after using promo codes)<br>
          - Dr Morita Pearl Enzyme Exfoliating Gel  (worth RM59, limited 250 sets)
          <br>
          6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Friendship Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
        </p>
      </div>
    </footer>
    <%--Terms & Conditions (End) ==============================================--%>
    <div class="footer-bar">
      <div>
        <ul class="am-avg-sm-3">
          <li>
            <a href="200716friendship.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
            </a>
          </li>
          <li>
            <a href="200716friendship_hotdeal.aspx" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
            </a>
          </li>
          <li>
            <a href="#!">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
            </a>
          </li>
          <li>
            <a href="200716friendship.aspx?#s3" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
            </a>
          </li>
          <li>
                <a href="200716friendship.aspx?#s4" target="_blank">
              <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" /></a>
          </li>
          <li onclick="goto('s5',800,'swing')">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05m" />
          </li>
        </ul>
      </div>
    </div>
  </div>

  <%--MB  Contain Max-width:650px(End) ==========================================--%>

  <script src="assets/js/swiper.min.js"></script>
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
      hiddenFooterMenu();
    }

  </script>
</asp:Content>