<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="4th_birthday.aspx.cs" Inherits="user_static_4th_birthday" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/4th_birthday.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul style="width: 130px">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/ss_00.png" %>'
                        alt="ss_00" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/ss_01.png" %>'
                        alt="ss_01" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/ss_02.png" %>'
                        alt="ss_02" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/ss_03.png" %>'
                        alt="ss_03" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/ss_04.png" %>'
                        alt="ss_04" style="width: 100%;" />
                </li>
                <li><a onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/ss_05.png" %>'
                        alt="ss_05" style="width: 100%;" />
                </a>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/bn_00.png" %>'
                alt="主banner" style="width: 100%;" />
        </div>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container pc-container">
            <%--=====================shop-block-wrap1===BEST BRANDS Start================================--%>
            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-vertical-lg"
                id="s1">
                <div class="banner-box  am-text-center">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/bn_01.png" %>' alt="bn_01" style="width: 100%;" />
                </div>

                <div>
                    <div class="shop-block-bg am-padding shop-block  mb-shop-block1" id="product-make0">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rpBrand1" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl hvr-float">
                                        <div class="best-brand-resize">
                                            <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                            </a>
                                            <div class="best-brand-info pc-best-brand-info">
                                                <strong class="best-brand"><%# Eval("BrandName")%>
                                                </strong>
                                                <div class="best-brand-block"><h6><%# Eval("WP02").ToString() %></h6></div>
                                                <div class="best-brand-block">
                                                    <del><%# Eval("WPA10").ToString() %></del> <span>下殺</span><h1 class="best-brand-price">RM <%# Eval("WPA06").ToString() %></h1>
                                                </div>
                                                <div class="best-brand-btn-group">
                                                    <a href='<%#Eval("BrandUrl").ToString() %>' class="more-btn best-brand-btn am-fl am-btn">
                                                        MORE
                                                    </a>
                                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>' class="buy-btn best-brand-btn am-fr am-btn">
                                                        BUY
                                                    </a>
                                                </div>
                                            </div>

                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </section>
            <%--======================shop-block-wrap1===BEST BRANDS  End===========================--%>
            <%--=====================領取折扣券 Start==========================--%>
            <div class="copy-coupon pc-copy-coupon">
                <ul class="am-avg-sm-3">
                    <li><a id="coupon1" data-clipboard-text="BDAY20" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/coupon_01.png" %>'
                            alt="coupon_01" style="width: 100%;" />
                    </a></li>
                    <li><a id="coupon2" data-clipboard-text="BDAY30" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/coupon_02.png" %>'
                            alt="coupon_02" style="width: 100%;" />
                    </a></li>
                    <li><a id="coupon3" data-clipboard-text="BDAY40" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/coupon_03.png" %>'
                            alt="coupon_03" style="width: 100%;" />
                    </a></li>
                </ul>
                <div class="coupon-info">
                    <h2>
                        1. *Amount AFTER using code .<br />
                        2. For order above RM500, ONE person will be selected randomly and given RM1,000.<br />
                        3. Coupon card will be delivered together with your parcel.<br />
                        4. Terms and conditions apply.
                    </h2>
                </div>
                <ul class="am-avg-sm-4">
                    <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/g_01.png" %>'
                            alt="coupon_01" style="width: 100%;" />
                    </li>
                   <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/g_02.png" %>'
                            alt="coupon_01" style="width: 100%;" />
                    </li>
                      <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/g_03.png" %>'
                            alt="coupon_01" style="width: 100%;" />
                    </li>
                      <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/g_04.png" %>'
                            alt="coupon_01" style="width: 100%;" />
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End==========================--%>
            <%--=====================shop-block-wrap2===HOT DEAL Start===============================--%>
            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-vertical-lg"
                id="s2">
                <div class="banner-box  am-text-center">
                    <a target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/bn_02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div>
                    <div class="shop-block-bg am-padding shop-block sb" id="product-make9">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" id="products1" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--=======================hop-block-wrap2===HOT DEAL  End============================--%>
            <%--=======================shop-block-wrap3===BUY 1 FREE 1 Start===============================--%>
            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-vertical-lg"
                id="s3">
                <div class="banner-box  am-text-center">
                    <a target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/bn_03.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div>
                    <div class="shop-block-bg am-padding shop-block shop-block3 sb" id="product-make3">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products2" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--============================== shop-block-wrap3===BUY 1 FREE 1  End ===============================--%>
            <%--=========================shop-block-wrap4===HIGHLIGHTED BRANDS Start===============================--%>
            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-vertical-lg"
                id="s4">
                <div class="banner-box  am-text-center">
                    <a href="tasty_beverages.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div>
                    <div class="shop-block-bg am-padding shop-block  pc-brands-block">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rpBrand2" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl hvr-float">
                                        <div class="hot-brand-item">
                                            <a href='<%#Eval("url") %>' target="_blank">
                                                <div class="brand-pic">
                                                    <img data-sizes="auto" src='<%#Eval("img") %>'>
                                                </div>
                                                <div class="brand-logo">
                                                    <img class=" am-center" data-sizes="auto" src='<%#Eval("logo") %>'>
                                                </div>
                                                <div class="brand-info">
                                                    <h5><%#Eval("name") %></h5>
                                                    <span><%#Eval("title") %></span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </section>
            <%--================================= shop-block-wrap3===BUY 1 FREE 1   End ===============================--%>
            <div id="s5">
                <div class="am-tabs mb-shop-block-wrap  float-menu  am-padding-vertical-lg" data-am-tabs="{noSwipe: 1}"
                    id="doc-tab-demo-1">
                    <ul class="am-tabs-nav am-nav am-nav-tabs am-padding-0">
                        <li class="am-active"><a href="javascript: void(0)">SKINCARE</a></li>
                        <li><a href="javascript: void(0)">HEALTHCARE</a></li>
                        <li><a href="javascript: void(0)">BABY&MOM</a></li>
                        <li><a href="javascript: void(0)">LIFESTYLE</a></li>
                        <li><a href="javascript: void(0)">LINGERIE</a></li>
                        <li><a href="javascript: void(0)">COSMETIC</a></li>
                        <li><a href="javascript: void(0)">GOURMET</a></li>
                    </ul>
                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-01.png" %>' alt="b_01m" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5" id="product-make1">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products3" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="am-tab-panel">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-02.png" %>' alt="b_02" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products4" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="am-tab-panel">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-03.png" %>' alt="b_03" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products5" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="am-tab-panel">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-04.png" %>' alt="b_04" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products6" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="am-tab-panel">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-05.png" %>' alt="b_05" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products7" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="am-tab-panel">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-06.png" %>' alt="b_06" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products8" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="am-tab-panel">
                            <section class="shop-block-bg am-g am-padding">
                                <div class="theme-banner am-fl">
                                    <a href="#" target="_blank">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191010/b-07.png" %>' alt="b_07" style="width: 100%;" />
                                    </a>
                                </div>
                                <div class="theme-shop am-fr" style="padding-left: 5px;">
                                    <div class="shop-block-bg shop-block shop-block5">
                                        <ul class="am-avg-sm-4">
                                            <uc1:products runat="server" id="products9" />
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <%--==============================活動辦法 Start =====================================--%>
        </div>
    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0 am-container">
            Terms & Conditions<br />
            Annual Mega Sale<br />
            1. Promotion date : 10th October 2019 - 24th October 2019<br />
            2. Use Code【MBDAY20】for EXTRA RM20 OFF (min spend 180)；Use Code【BDAY30】for EXTRA RM30 OFF (min spend 280)；Use Code【BDAY40】for EXTRA RM40 OFF (min spend 380)<br />
            3. For order above RM500, ONE person will be selected randomly on 28th October and given RM1,000 to your account on 29th October<br />
            4. Coupon is APPLICABLE on selected Flagship Stores , including sofei,Bao-Mommy, Anriea, LOVING FAMILY, ROOTFOCUS, Newart, MOOIMOM, LALER, CHOYER, DV, HSU’S, C'est vrai, PARADISO GARDEN, Naturero, Grandmotherapy , CACO , WAVE SHINE<br />
            5. >Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Happy Birthday 4 Hawooo Terms from time to time, and in such manner as Hawooo deems appropriate.
        </p>
    </footer>
    <%--==============================活動辦法 End=====================================--%>
    <%--    <script src="../js/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>--%>
    <script src="assets/js/swiper.min.js"></script>
    <script>

        $(window).load(function () {
            $(".sb li").attr("class", "am-fl hvr-float");
            setThem();
        });

        function setThem() {
            var i;
            var cnt = 7; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                            slidesPerView: 4,
                            //slidesPerGroup: 3,
                            spaceBetween: 10,
                            //autoplay: {
                            //    delay: 5000,
                            //},
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
                                    slidesPerView: 2,
                                    spaceBetween: 5,
                                    slidesPerGroup: 2
                                }
                            }
                        });
                });
            };
        };

    </script>
    <script type="text/javascript">

        $(function () {
            var url = location.search;
            if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
                var v = url.split('?')[1];
                v = v.split('=')[1];
                goto(v);
            }
        });

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>
