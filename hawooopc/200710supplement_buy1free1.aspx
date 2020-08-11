<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200710supplement_buy1free1.aspx.cs" Inherits="user_static_200710supplement_buy1free1" %>
<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
<style>
    .prev-btn,
    .next-btn {
        color: #EFEFEF;
        background: #547A56;
    }

    .coupon img {
        -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
        filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
    }

    /* Fix Terms bullet problem. */
    .activity-method ul li {
        list-style: inherit;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain " style="background: #EFEFEF;">
        <%--側邊選單 (Start) ======================================================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="200710supplement.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/ss_00.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/ss_01.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="200710supplement_top_sellers.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/ss_02.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a onclick="goto('s5')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/ss_03.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--側邊選單 (End) =======================================================--%>

        <div class="am-margin-bottom-xl" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_01.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" />
        </div>


        <div class="am-container">
            <div style="position: relative;">
                <%--領取折扣券 (Start)====================================================--%>
                <div class="am-margin-bottom-sm am-padding-bottom-sm">
                    <div class="am-margin-bottom_xl">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
                    </div>
                    <div style="margin-right :-1rem;margin-left :-1rem;">
                        <ul class="am-avg-sm-3">
                            <li class="am-padding-sm coupon">
                                <a href="#!" class="btnn" data-clipboard-text="SUP15">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                                </a>
                            </li>
                            <li class="am-padding-sm coupon">
                                <a href="#!" class="btnn" data-clipboard-text="SUP30">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                                </a>
                            </li>
                            <li class="am-padding-sm coupon">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/coupon_03.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
                            </li>
                        </ul>
                    </div>
                </div>
                <%--領取折扣券 (End) ====================================================--%>

                <%--Block1 (Start) =====================================================--%>
                <section class="am-margin-bottom-xl" id="s1">
                    <div style="background: #FFD6D9;">
                        <div class="am-padding">
                            <div class="shop-block">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rpBuy1free1" runat="server" OnItemDataBound="rp_plist_ItemDataBound_Buy1free1">
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
                    </div>
                </section>
                <%--Block1 (End) =====================================================--%>

            </div>
        </div>

        <%--Terms & Conditions (Start) =====================================================--%>
        <div id="s5" class="am-padding-vertical-lg activity-method" style="background: #000;">
          <div class="am-container">
            <p>
              Terms & Conditions<br>
              Supplement Mid Year Sale
            </p>
            <div class="am-margin-left">
              <ul style="list-style-type: decimal!important; ">
                <li>
                  <p>
                    Promotion Date : 10th July 2020 12:00 - 15th July 2020 23:59<br>
                  </p>
                </li>
                <li>
                  <p>
                    Promo Code:
                  </p>
                  <div class="am-padding-left-sm">
                    <ul>
                      <li>- RM15 OFF, use code 「SUP15」（minspend 250)</li>
                      <li>- RM30 OFF, use code 「SUP30」（minspend 450)</li>
                    </ul>
                  </div>
                </li>
                <li>
                  <p>Free Gift (minspend 350, *amount after using promo code)
                  </p>
                  <p class="am-padding-left-sm">- DV 醇養妍青春錠 (worth RM42, LIMITED 100 sets)</p>
                </li>
                <li>
                  <p>Promo Code & Free Gift can ONLY be applied on selected supplement brands, including DV, Laler, Choyer,
                    Hsu's, Pandababy,
                    Angel lala, Beezin, Miss Seesaw, UDR, Realwoman, Yohopower & Bertie Biotech
                  </p>
                </li>
                <li>
                  <p>Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Supplement Mid Year
                    Sale terms from time
                    to time, and in such manner as Hawooo deems appropriate.
                  </p>
                </li>
              </ul>
            </div>
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
            $(".shop-block li").addClass("hvr-float");
            $(".swiper-container li").addClass("am-fl swiper-slide");
        }
    </script>
</asp:Content>
