<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200710supplement_top_sellers.aspx.cs" Inherits="mobile_static_200710supplement_top_sellers" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <style>
        .mb-shop-block {
            padding: 3px;
        }

        .goods-preorder a {
            padding: 0;
        }

        .countdown-txt {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 35%;
            color: #fff;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 25px;
            }

            .coupon {
                position: relative;
            }

                .coupon img {
                    -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.3));
                    filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.3))
                }

            @media screen and (max-width: 650px) {
                .coupon-code {
                    font-size: 12px;
                    min-height: 49px;
                }
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain (Start) ===================================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #EFEFEF;">

        <div class="footer-bar">
            <ul class="am-avg-sm-4">
                <li>
                    <a href="200710supplement.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_00m.png" alt="ss_00m" />
                    </a>
                </li>
                <li>
                    <a href="200710supplement_buy1free1.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_01m.png" alt="ss_01m" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_02m.png" alt="ss_02m" />
                    </a>
                </li>
                <li onclick="goto('s3',800,'swing')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_03m.png" alt="ss_03m" />
                </li>
            </ul>
        </div>
        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-padding-horizontal-xs">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bbn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m" />
        </div>
        <div class="am-padding-horizontal-xs am-margin-bottom am-padding-top-sm">
            <div class="am-margin-top">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m" />
            </div>
            <ul class="am-avg-sm-3">
                <li class="am-padding-xs coupon">
                    <a class="btnn " data-clipboard-text="SUP15">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                    </a>
                </li>
                <li class="am-padding-xs  coupon">
                    <a class="btnn " data-clipboard-text="SUP30">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    </a>
                </li>
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/coupon_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
                </li>
            </ul>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <section class="am-margin-bottom">
            <%--<div>
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04m" />
      </div>--%>
            <div class="am-padding-top-sm" style="background: #FFD6D9;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <%--商品塊 --%>
                        <asp:Repeater ID="rp_topseller" runat="server" OnItemDataBound="rp_topseller_ItemDataBound">
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

        <%--Terms & Conditions (Start) =============================================--%>
        <div id="s3">
            <%-- <div class="include" data-file="conditions.html"></div>--%>
            <div class="am-padding-vertical-lg activity-method" style="background: #000;">
                <div class="am-container">
                    <p>
                        Terms & Conditions<br>
                        Supplement Mid Year Sale
                    </p>
                    <div class="am-margin-left">
                        <ul style="list-style-type: decimal!important;">
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
                                <p>
                                    Free Gift (minspend 350, *amount after using promo code)
                                </p>
                                <div class="am-padding-left-sm">
                                    <ul>
                                        <li>- DV 醇養妍青春錠 (worth RM42, LIMITED 100 sets)</li>
                                    </ul>

                                </div>
                            </li>
                            <li>
                                <p>
                                    Promo Code & Free Gift can ONLY be applied on selected supplement brands, including DV, Laler, Choyer,
            Hsu's, Pandababy,
            Angel lala, Beezin, Miss Seesaw, UDR, Realwoman, Yohopower & Bertie Biotech
                                </p>
                            </li>
                            <li>
                                <p>
                                    Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Supplement Mid Year
            Sale terms from time
            to time, and in such manner as Hawooo deems appropriate.
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%--Terms & Conditions (End) ==============================================--%>
    </div>
    <%--MB  Contain (End) ====================================================--%>

    <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
    <script src="../../assets/js/swiper.min.js"></script>
    <script src="../../assets/js/events.js"></script>
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
