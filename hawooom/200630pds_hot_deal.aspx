<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200630pds_hot_deal.aspx.cs" Inherits="mobile_static_200630pds_hot_deal" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <title>pds_hot_deal</title>
    <style>
        .mb-shop-block {
            padding: 3px;
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #F1E3CE;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bbn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>
        <%-- <div class="include" data-file="coupon.html"></div>--%>
        <div class="am-margin-bottom">
            <div class="am-padding-horizontal-xs">
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="PAY17">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="PAY37">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="PAY57">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                        </a>
                    </li>
                </ul>
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" class="coupon-gift" />
                    </li>
                    <li class="am-padding-xs">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    </li>
                </ul>
            </div>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 (Start) =====================================================--%>
        <section class="am-margin-bottom" id="s1">
            <div>
                <div class="mb-shop-block" id="block1">
                    <ul class="am-avg-sm-2  am-avg-md-3">
                        <%--<uc1:products runat="server" id="products1" />--%>
                        <asp:Repeater ID="rp_plist" runat="server" OnItemDataBound="rp_plist_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'>" +
                "<img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
        <div id="s5">
            <footer class="am-padding activity-method" style="background: #000;">
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

                    5. Free Order:<br>

                    <p class="am-margin-top-0 am-padding-left">
                        - 3 lucky winners who purchased by using promo code will be selected randomly, the winners will be rewarded by the amount spent (amount after using promo code) in shopping cash, the shopping cash can be used on her/his next order
                        <br>
                        - The winners will be announced on 20th July 2020 on Hawooo 好物飛行 Facebook Page, the shopping cash will be transferred to the account before 24th July 2020
                    </p>

                    6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Pay Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                    
                </div>
            </footer>
        </div>
        <%--Terms & Conditions (End) ==============================================--%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-3">
                    <li>
                        <a href="200630pds.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
                        </a>
                    </li>
                    <li>
                        <a href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
                        </a>
                    </li>
                    <li>
                        <a href="200630pds_value_buy.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
                        </a>
                    </li>
                    <li>
                        <a href="200630pds.aspx?#s3" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
                        </a>
                    </li>
                    <li>
                        <a href="200630pds.aspx?#s4" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
                        </a>
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05m" />
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <%--MB  Contain Max-width:650px(End) ==========================================--%>

    <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
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
            couponGiftAlterImgSrc('2020-07-05T12:00:00');
        }

        function couponGiftAlterImgSrc(dateStr = '2020-07-05T12:00:00') {
            let dateFSEndTime = new Date(dateStr);
            let dateNow = new Date();
            if (dateNow > dateFSEndTime) {
                $('.coupon-gift').eq(0).attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_06m.png" + "?cacheVersion=" + cacheVersion %>');

            }
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
