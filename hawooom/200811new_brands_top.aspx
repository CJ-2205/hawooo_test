<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200811new_brands_top.aspx.cs" Inherits="mobile_static_200811new_brands_top" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">

    <style>
        /*coupon start*/
        .main-contain h6 {
            margin-top: 0;
        }

        .mb-shop-block {
            padding: 3px;
        }

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

        .event-title {
            font-size: 35px;
            bottom: 25%;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            color: #000;
            font-family: 'Bebas Neue', sans-serif;
        }

        .event-title-bg {
            position: relative;
        }

        .event-title-wrap {
            bottom: 15%;
            line-height: 1.25;
        }


        @media screen and (max-width: 650px) {
            .coupon-code {
                font-size: 12px;
                min-height: 49px;
                padding: 0;
            }

            .event-title {
                font-size: 22px;
            }
        }

        @media screen and (max-width: 320px) {
            .event-title {
                font-size: 14px;
            }

            .event-title-wrap {
                bottom: 6%;
            }
        }
        /*coupon ends*/
    </style>

    <title>New Brands</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #FFF3EE;">
        <div style="background: #000;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bbn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="event-title-bg">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
            <div class="event-title event-title-wrap">
                <h2>LIMITED COUPON & FREE GIFT</h2>
                <h6 class="am-text-lg">(T&C Apply)</h6>
            </div>
        </div>

        <div style="margin-left: -0.5rem; margin-right: -0.5rem;">
            <ul class="am-avg-sm-2">
                <li class="am-padding-xs coupon">
                    <a class="btnn" data-clipboard-text="BRAND25" data-clipboard-abcc="ABCC." href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                    </a>
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">
                            <asp:Literal ID="Coupon1" runat="server"></asp:Literal>
                            have copied it</h6>
                    </div>
                </li>
                <li class="am-padding-xs  coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Min spend 280, limited 300 sets</h6>
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
                        <asp:Repeater ID="topbrands_rp" runat="server" OnItemDataBound="topbrands_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                        <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em'></div>":"" %>--%>
                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <%# GoodsTagService.GetGoodsSetEventTag(Eval("WP01").ToString()) %>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <%-- <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval(" SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>--%>
                                            <div class="goods-block">
                                                <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                            </div>
                                            <div class="goods-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                    </span>
                                                </s>
                                            </div>
                                            <div class="goods-block">
                                                <p>
                                                    SAVE<span>
                                                        RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal>
                                                    </span>
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
        <div id="s5" class="note-terms am-padding-vertical-lg activity-method" style="background: #000000;">
            <div class="am-container">
                <p class="am-padding-bottom-sm">
                    Terms & Conditions<br>
                </p>
                <div class="am-margin-left">
                    <ul style="list-style-type: decimal!important;">
                        <li class="am-margin-bottom-sm">New Brands Sale Promotion Date : 11th Aug 2020 12:00 - 17th July 2020 23:59
                        </li>
                        <li class="am-margin-bottom-sm">Lucky Pick : Show Off Your Order & Win RM100
                            <div class="am-padding-left-sm">
                                <ul>
                                    <li>- STEP1 > Join [HaWooo VIP Club] on Facebook</li>
                                    <li>- STEP2 > Screenshot your order details and post it in the club</li>
                                    <li>- Order details must include at least one of [New Brands Sale Promotion] item.</li>
                                    <li>- An order details can only be participated : one time</li>
                                    <li>- 5 winners will be picked randomly , each winner will win RM100 Shopping Cash.</li>
                                    <li>- Results of the Lucky Draws will be published in HaWooo Facebook Fans Page on 2nd Sep 2020</li>
                                    <li>- Winners will need to contact our Customer service for confirmation before 9th Sep 2020 </li>
                                    <li>- Transaction of shopping cash will be done before 14th Sep 2020</li>
                                </ul>
                            </div>
                        </li>
                        <li class="am-margin-bottom-sm">Promo Code:
                            <div class="am-padding-left-sm">
                                <ul>
                                    <li>- RM25 OFF, use code [Brand25]  (min spend 250)</li>
                                </ul>
                            </div>
                        </li>
                        <li class="am-margin-bottom-sm">Promo Codes are applicable on selected stores, including Mayskin,1838 Eurocares, SAHOLEA, arin, Jadia, Puriginal Life, Snova, Contin, Unicat, NAF, 1028, CATISS,DAYLA, UNT, Paradiso Garden, TSUVIMI, C'est Vrai, FZC, WorldHops, DV, i3Fresh, Kuai Che
                        </li>
                        <li class="am-margin-bottom-sm">Free Gift (minspend RM280, amount after using promo codes)
                            <div class="am-padding-left-sm">
                                <ul>
                                    <li>- Saholea Herbal Essence Series 28ml , Worth RM30 (limited 300 sets)</li>
                                    <li>- Conditioner/ Shower Gel/ Shampoo, shipped randomly
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="am-margin-bottom-sm">
                        Hawooo reserves the sole right to alter, modify, add to or otherwise vary these  New Brands Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                    </ul>
                </div>
            </div>
        </div>
        <%--Terms & Conditions (End) ==============================================--%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-4">
                    <li>
                        <a href="200811new_brands.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
                        </a>
                    </li>
                    <li>
                        <a onclick="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
                        </a>
                    </li>
                       <li>
                        <a href="200811new_brands_best.aspx">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
                        </a>
                    </li>
                    <li>
                        <a href="200811new_brands.aspx?#s4" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
                        </a>
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
        /*Load aspx*/
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
