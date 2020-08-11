<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200811new_brands_best.aspx.cs" Inherits="user_static_200811new_brands_best" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <title>New Brands Sale</title>

    <style>
        /*coupon start*/
        .main-contain h6 {
            margin-top: 0;
        }

        .side-bar {
            top: 40%;
            width: 120px;
        }

        .coupon-txt {
            background-color: #FFFFFF;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            font-size: large;
        }

        .event-title-bg {
            position: relative;
        }

        .event-title {
            font-size: 65px;
            letter-spacing: 1px;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            color: #0A0A0A;
            font-family: 'Bebas Neue', sans-serif;
            bottom: 25%;
        }

        .event-title-wrap {
            font-size: 40px;
            bottom: 10%;
            font-family: 'Bebas Neue', sans-serif;
        }
        /*coupon ends*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain" style="background: #FFF3EE">

        <%--側邊選單 (Start) ======================================================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="200811new_brands.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_00.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="200811new_brands_top.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_02.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_03.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="200811new_brands.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_04.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="200811new_brands_best.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_01.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
                    </a>
                </li>
            </ul>
        </div>
        <%--側邊選單 (End) =======================================================--%>
        <div class="am-container am-margin-vertical-lg">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bbn_02.png" + "?cacheVersion=" + cacheVersion %>'>
            </div>
            <%--領取折扣券 (Start)====================================================--%>
            <div class="am-margin-bottom_xl">
                <div class="event-title-bg">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
                    <div class="event-title event-title-wrap">
                        <h1>LIMITED COUPON & FREE GIFT</h1>
                        <h6 class="am-text-xxl">(T&C Apply)</h6>
                    </div>
                </div>
                <div class="am-margin-bottom-sm am-padding-bottom-sm">
                    <ul class="am-avg-sm-2">
                        <li class="am-padding-sm">
                            <a class="btnn" data-clipboard-text="BRAND25" data-clipboard-abcc="ABCC." href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                            </a>
                            <div class="am-padding-top-sm">
                                <div class="am-padding coupon-txt">
                                    <h3><asp:Literal ID="Coupon1" runat="server"></asp:Literal> have copied it</h3>
                                </div>
                            </div>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                            </a>
                            <div class="am-padding-top-sm">
                                <div class="am-padding coupon-txt">
                                    <h3>Min spend 280, limited 300 sets</h3>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <%--領取折扣券 (End) ====================================================--%>
            <%--Block1 (Start) ======================================================--%>

            <div class="am-margin-bottom-xl am-padding-top-xs shop-block">
                <ul class="am-avg-sm-4">
                    <%--後端帶入商品 (Start) --%>
                    <asp:Repeater ID="bestseller_rp" runat="server" OnItemDataBound="bestseller_ItemDataBound">
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
                    <%--後端帶入商品 (Start) --%>
                </ul>
            </div>
        </div>
    </div>
    <%--Block1 (End) =======================================================--%>
    <%--Terms & Conditions (Start) =====================================================--%>
    <div id="s5" class="note-terms am-padding-vertical-lg activity-method" style="background: #000000;">
  <div class="am-container">
    <p class="am-padding-bottom-sm">
      Terms & Conditions<br>
    </p>
    <div class="am-margin-left">
      <ul style="list-style-type: decimal!important;">
        <li class="am-margin-bottom-sm">
          New Brands Sale Promotion Date : 11th Aug 2020 12:00 - 17th July 2020 23:59
        </li>
        <li class="am-margin-bottom-sm">
          Lucky Pick : Show Off Your Order & Win RM100
          <div class="am-padding-left-sm">
            <ul>
              <li>- STEP1 > Join [HaWooo VIP Club] on Facebook</li>
              <li>- STEP2 > Screenshot your order details and post it in the club</li>
              <li>- Order details must include at least one of [New Brands Sale Promotion] item.</li>
              <li>- An order details can only be participated : one time</li>
              <li>- 5 winners will be picked randomly , each winner will win RM100 Shopping Cash.</li>
              <li>- Results of the Lucky Draws will be published in HaWooo Facebook Fans Page on 2nd Sep 2020</li>
              <li>- Winners will need to contact our Customer service for confirmation before 9th Sep 2020</li>
              <li>- Transaction of shopping cash will be done before 14th Sep 2020
              </li>
            </ul>
          </div>
        </li>
        <li class="am-margin-bottom-sm">
          Promo Code:
          <div class="am-padding-left-sm">
            - RM25 OFF, use code [Brand25] (min spend 250)
          </div>
        </li>
        <li class="am-margin-bottom-sm">
          Promo Codes are applicable on selected stores, including Mayskin,1838 Eurocares, SAHOLEA, arin, Jadia,
          Puriginal Life,
          Snova, Contin, Unicat, NAF, 1028, CATISS,
          DAYLA, UNT, Paradiso Garden, TSUVIMI, C'est Vrai, FZC, WorldHops, DV, i3Fresh, Kuai Che
        </li>
        <li class="am-margin-bottom-sm">
          Free Gift (minspend RM280, amount after using promo codes)
          <div class="am-padding-left-sm">
            <ul>
              <li>- Saholea Herbal Essence Series 28ml , Worth RM30 (limited 300 sets)</li>
              <li>- Conditioner/ Shower Gel/ Shampoo, shipped randomly
              </li>
            </ul>
          </div>
        </li>
        <li class="am-margin-bottom-sm">Hawooo reserves the sole right to alter, modify, add to or otherwise vary these
          New Brands Sale terms from time to time,
          and in such manner as Hawooo deems appropriate.
      </ul>
    </div>
  </div>
</div>
    <%--Terms & Conditions (End) ======================================================--%>

    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>--%>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js"
    type="text/javascript"></script>
    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>
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
            $(".shop-block li").addClass("hvr-float");
        }
    </script>
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
</asp:Content>
