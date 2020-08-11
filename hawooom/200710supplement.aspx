<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200710supplement.aspx.cs" Inherits="mobile_static_200710supplement" %>

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
            <div>
                <ul class="am-avg-sm-4">
                    <li onclick="goto('top',800,'swing')">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_00m.png" alt="ss_00m" />
                    </li>
                    <li onclick="goto('s1',800,'swing')">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_01m.png" alt="ss_01m" />
                    </li>
                    <li onclick="goto('s2',800,'swing')">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_02m.png" alt="ss_02m" />
                    </li>
                    <li onclick="goto('s3',800,'swing')">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200710/ss_03m.png" alt="ss_03m" />
                    </li>
                </ul>
            </div>
        </div>

        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>

        <div class="am-padding-horizontal-xs am-margin-bottom">
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

        <%--Block1  (Start) ======================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" data-redirect="200710supplement_buy1free1.aspx" id="s1">
            <a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
            </a>
            <div class="am-padding-top-sm" style="background: #FFD6D9;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <%--Buy1Free1商品塊 --%>

                        <asp:Repeater ID="rp_buy1free1" runat="server" OnItemDataBound="rp_buy1free1_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

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
                <div class="am-padding-vertical-sm">
                    <a class="am-u-sm-5 am-u-md-4 am-u-sm-centered am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block1  (End) ======================================================--%>

        <%--Block2 (Start) =====================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" data-redirect="200710supplement_top_sellers.aspx" id="s2">
            <div class="am-padding-bottom-0">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/bn_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04m" />
                </a>
            </div>
            <div class="am-padding-top-sm" style="background: #FFD6D9;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <asp:Repeater ID="rp_topseller" runat="server" OnItemDataBound="rp_topseller_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

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
                <div class="am-padding-vertical-sm">
                    <a class="am-u-sm-5 am-u-md-4 am-u-sm-centered am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block2 (End) ======================================================--%>

        <%--<div class="am-margin-bottom-lg ">
            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/supplement_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
            </a>
        </div>--%>

        <%--<div class="am-margin-bottom-lg">

            <a href="https://www.hawooo.com/mobile/200709beauty_sale.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/beauty_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="beauty_01m" class="beautysale-bn" />
            </a>

        </div>

        <div class="am-margin-bottom-lg ">
            <a href="https://www.hawooo.com/mobile/200713lifestyle.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/lifestyle_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" class="lifestyle-bn" />
            </a>
        </div>--%>
        
         <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%; ">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" style="width: 100%;" />
         </div>
        
        <div class="am-margin-bottom-lg" id="comming-event-beauty">
            <a href="" target="_blank">
                <img src="" alt="comming-event-beauty" />
            </a>
        </div>
        <div class="am-margin-bottom-lg" id="comming-event-lifestyle">
            <a href="" target="_blank">
                <img src="" alt="comming-event-lifestyle" />
            </a>
        </div>



        <%--Terms & Conditions (Start) =============================================--%>
        <div id="s3">
            <%--<div class="include" data-file="conditions.html"></div>--%>
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
            allAnchorHrefRedirect();
            displaycommingEvents();
            //beautyBanner('2020-07-09T12:00:00');
            //lifestyleBanner('2020-07-13T12:00:00');
        }

        //function beautyBanner(dateStr = '2020-07-09T12:00:00') {
        //    let dateBeauty = new Date(dateStr);
        //    let dateNow = new Date();
        //    if (dateNow < dateBeauty) {
        //        $('.beautysale-bn').eq(i).css("display", "none");
        //    }
        //}
        //function lifestyleBanner(dateStr = '2020-07-13T12:00:00') {
        //    let dateLifestyle = new Date(dateStr);
        //    let dateNow = new Date();
        //    if (dateNow < dateLifestyle) {
        //        $('.lifestyle-bn').eq(i).css("display", "none");
        //    }
        //}

        function displaycommingEvents(cacheVersion = 2) {
            let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>';
            let events = [
                {
                  id: "#comming-event-beauty",
                  href: "https://www.hawooo.com/mobile/200709beauty_sale.aspx",
                  // Wrong date (should be "20200710"), but let's keep it wrong.
                  eventName: "20200710",
                  imgUrl: "beauty_01m.png",
                  dateStart: '2020-07-09T12:00:00',
                  dateEnd: '2020-12-31T23:59:59',
                },
                //{
                //    id: "#comming-event-supplement",
                //    href: "https://www.hawooo.com/mobile/200710supplement.aspx",
                //    eventName: "20200710",
                //    imgUrl: "supplement_01.png",
                //    dateStart: '2020-07-10T12:00:00',
                //    dateEnd: '2020-12-31T23:59:59',
                //},
                {
                    id: "#comming-event-lifestyle",
                    href: "https://www.hawooo.com/mobile/200713lifestyle.aspx",
                    imgUrl: "lifestyle_01m.png",
                    eventName: "20200713",
                    dateStart: '2020-07-13T12:00:00',
                    dateEnd: '2020-12-31T23:59:59',
                },
            ];

            events.forEach((item, idx) => {
                let dateStart = new Date(item.dateStart);
                let dateEnd = new Date(item.dateEnd)
                var dateNow = new Date();
                if (dateNow > dateStart && dateNow < dateEnd) {
                    $(item.id).eq(0).css("display", "block");
                    $(item.id + " img").eq(0).attr("src", `${cdnImgPfx}ftp/${item.eventName}/${item.imgUrl}?cacheVersion=${cacheVersion}`);
                    $(item.id + " img").eq(0).css("display", "inline-block");
                    $(item.id + " a").eq(0).attr("href", item.href);
                } else {
                    $(item.id).eq(0).css("display", "none");
                }
            });
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
