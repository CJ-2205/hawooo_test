<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="merdekasale.aspx.cs" Inherits="user_static_merdeka_sale_merdekasale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/merdekasale.min.css" rel="stylesheet" />
    <link href="assets/css/animate.css" rel="stylesheet" />
    <style>
        .hide {
            display: none;
        }
        .banner-box1 h1 {
            color:dodgerblue;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="am-g  main-contain">

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_01.png" %>' alt="主banner" style="width: 100%;" />

        </div>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container" id="maincId">
            <%--=====================領取折扣券 Start==========================--%>
            <section class="coupon-box wow bounceInUp">

                <div class="coupon">
                    <ul class="am-avg-sm-3">
                        <li class="am-padding-horizontal-sm   hvr-float">
                            <a id="coupon1" data-clipboard-text="MERDEKA20" onclick="Clip('coupon1');">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/coupon_01.png" %>' alt="coupon1" style="width: 100%;" />
                            </a>
                        </li>
                        <li class="am-padding-horizontal-sm   hvr-float">
                            <a id="coupon2" data-clipboard-text="MERDEKA35" onclick="Clip('coupon2');">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/coupon_02.png" %>' alt="coupon2" style="width: 100%;" />
                            </a>
                        </li>
                        <li class="am-padding-horizontal-sm   hvr-float">
                            <asp:UpdatePanel ID="up_add" runat="server">
                                <ContentTemplate>
                                    <a onclick="Insert();">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/reg_01.png" %>' alt="reg_01" style="width: 100%;" />
                                    </a>
                                    <asp:Button ID="Button1" runat="server" Text="Button" CssClass="hide" OnClick="Button1_Click" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </li>
                    </ul>

                    <div class="register am-center am-text-nowrap" style="width: 100% !important">
                        <p>
                            1. *Amount AFTER using code, complete payment within 3 days after you make the order .<br />
                            2. Limited one time register for EVERY account. For example,
                            <br />
                            &emsp; you make 2 orders with RM500 each, you will only receive 2500 Hacoin.<br />
                            3. Hacoin will receive before 6/9, terms and conditions apply.
                        </p>
                    </div>
                </div>
                <div class="balloon-left">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/balloon_01.png" %>' alt="左氣球" style="width: 100%;" />
                </div>
                <div class="balloon-right">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/balloon_02.png" %>' alt="右氣球" style="width: 100%;" />
                </div>
            </section>
            <%--=====================領取折扣券 End==========================--%>

            <%--=====================shop-block-wrap1===24Hrs Hot Deal Start===============================--%>
            <section class=" shop-block-wrap  shop-block-wrap1 am-padding-top-lg wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="#" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_02.png" %>' alt="Banner" style="width: 100%;" />
                            <h1 class="countdown-timer-box">
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>:
                                <span id='ms'></span>
                            </h1>
                        </div>
                    </a>
                </div>

                <div class="shop-block shop-block1 am-padding">
                    <ul class="am-avg-sm-3">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
            </section>


            <%--=======================shop-block-wrap1===24Hrs Hot Deal  End============================--%>

            <%--=======================shop-block-wrap2===品牌Logo Start===============================--%>

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap2 wow bounceInUp">
                <div class="banner-box  banner-box2">
                    <div class="banner-box-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_03.png" %>' alt="Selected brands" style="width: 100%;" />
                    </div>
                </div>

                <div class="shop-block shop-block2">
                    <ul class="am-padding-0 am-margin-0 am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl hvr-float">
                                    <div class="hot-brand-item">
                                        <a href='<%#Eval("_url") %>' target="_blank">
                                            <div class="brand-pic">
                                                <img data-sizes="auto" src='<%#Eval("_img") %>'>
                                            </div>
                                            <div class="brand-logo">
                                                <img class=" am-center" data-sizes="auto" src='<%#Eval("_logo") %>'>
                                            </div>
                                            <div class="brand-info">
                                                <h5>'<%#Eval("_name") %>'</h5>
                                                <span>'<%#Eval("_title") %>'</span>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li class="am-fl hvr-float">
                            <div class="hot-brand-item">
                                <a href="#">
                                    <div class="brand-pic">
                                        <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20190618/fs_07.png">
                                    </div>
                                    <div class="brand-logo">
                                        <img class=" am-center" data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20190618/logo_07.png">
                                    </div>
                                    <div class="brand-info">
                                        <h5>戀家小舖</h5>
                                        <span>涼感專區 滿1件extra10%off</span>
                                    </div>
                                </a>
                            </div>                
                        </li>--%>
                    </ul>
                </div>
            </section>
            <%--============================== shop-block-wrap2=== 品牌Logo   End ===============================--%>


            <%--=========================shop-block-wrap3====Bundle Sale  Start ===============================--%>

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap3 wow bounceInUp">
                <div class="banner-box  banner-box3">
                    <a href="bundlesale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block3 am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>

            </section>
            <%--==============================shop-block-wrap3==== Bundle Sale  End ===============================--%>


            <%--==========================shop-block-wrap4===精選區 Start====================================--%>
            <section class="shop-block-wrap shop-block-wrap4  wow bounceInUp">

                <div class="banner-box banner-box4">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <%--六小icon--%>
                <div class="featured-six am-center ">
                    <ul class="featured-six-icon-group am-avg-sm-6 am-center" id="nav-sidebar-box" style="width: 100% !important">
                        <li>
                            <a href="#featured-block1" onclick="elevator('featured-block1')">
                                <div class="featured-icon">
                                    <div class="featured-icon-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/icon_01.png" %>' alt="featured-icon1" style="width: 100%;" />
                                    </div>
                                    <%-- <span>蜂蜜檸檬</span>--%>
                                </div>
                            </a>
                        </li>
                        <li><a href="#featured-block2" onclick="elevator('featured-block2')">
                            <div class="featured-icon">
                                <div class="featured-icon-img">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/icon_02.png" %>' alt="featured-icon1" style="width: 100%;" />
                                </div>
                                <%--       <span>蜂蜜檸檬</span>--%>
                            </div>
                        </a></li>
                        <li><a href="#featured-block3" onclick="elevator('featured-block3')">
                            <div class="featured-icon">
                                <div class="featured-icon-img">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/icon_03.png" %>' alt="featured-icon1" style="width: 100%;" />
                                </div>
                                <%--<span>蜂蜜檸檬</span>--%>
                            </div>
                        </a></li>
                        <li><a href="#featured-block4" onclick="elevator('featured-block4')">
                            <div class="featured-icon">
                                <div class="featured-icon-img">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/icon_04.png" %>' alt="featured-icon1" style="width: 100%;" />
                                </div>
                                <%--    <span>蜂蜜檸檬</span>--%>
                            </div>
                        </a></li>
                        <li><a href="#featured-block5" onclick="elevator('featured-block5')">
                            <div class="featured-icon">
                                <div class="featured-icon-img">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/icon_05.png" %>' alt="featured-icon1" style="width: 100%;" />
                                </div>
                                <%--  <span>蜂蜜檸檬</span>--%>
                            </div>
                        </a></li>
                        <li><a href="#featured-block6" onclick="elevator('featured-block6')">
                            <div class="featured-icon">
                                <div class="featured-icon-img">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/icon_06.png" %>' alt="featured-icon1" style="width: 100%;" />
                                </div>
                                <%-- <span>蜂蜜檸檬</span>--%>
                            </div>
                        </a></li>
                    </ul>
                </div>
                <%--六小icon end--%>
            </section>
            <%--==========================shop-block-wrap4===精選區 End====================================--%>

            <%--==========================shop-block-wrap5===精選區 第一區 Start====================================--%>



            <div class="am-g am-g-collapse  featured-block   wow bounceInUp" id="featured-block1">
                <div class="banner-box  am-u-sm-4 am-padding-right-0">
                    <a href="https://www.hawooo.com/user/shop.aspx?cid=42" target="_blank">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_06.png" %>' alt="精選區Banner1" style="width: 100%;" />
                        </div>
                    </a>
                </div>
                <div class="am-u-sm-8 shop-block">
                    <ul class="am-avg-sm-3 am-padding-sm">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
            </div>


            <%--==========================shop-block-wrap4===精選區 第一區 End====================================--%>

            <%--==========================shop-block-wrap5===精選區 第二區 Start====================================--%>

            <div class="am-g am-g-collapse  featured-block  wow bounceInUp" id="featured-block2">
                <div class="banner-box   am-u-sm-4 am-padding-right-0">
                    <a href="https://www.hawooo.com/user/shop.aspx?cid=16" target="_blank">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_07.png" %>' alt="精選區Banner2" style="width: 100%;" />
                        </div>
                    </a>
                </div>
                <div class="am-u-sm-8 shop-block">
                    <ul class="am-avg-sm-3 am-padding-sm">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
            </div>

            <%--=============================精選區 第二區 End====================================--%>

            <%--=============================精選區 第三區 Start====================================--%>

            <div class="am-g am-g-collapse  featured-block  wow bounceInUp" id="featured-block3">
                <div class="banner-box   am-u-sm-4 am-padding-right-0">
                    <a href="https://www.hawooo.com/user/shop.aspx?cid=43" target="_blank">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_08.png" %>' alt="精選區Banner2" style="width: 100%;" />
                        </div>
                    </a>
                </div>
                <div class="am-u-sm-8 shop-block">
                    <ul class="am-avg-sm-3 am-padding-sm">
                        <uc1:products runat="server" id="products5" />
                    </ul>
                </div>
            </div>

            <%--===============================精選區 第三區 End====================================--%>
            <%--=============================精選區 第四區 Start====================================--%>

            <div class="am-g am-g-collapse  featured-block  wow bounceInUp" id="featured-block4">
                <div class="banner-box   am-u-sm-4 am-padding-right-0">
                    <a href="https://www.hawooo.com/user/shop.aspx?cid=45" target="_blank">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_09.png" %>' alt="精選區Banner2" style="width: 100%;" />
                        </div>
                    </a>
                </div>
                <div class="am-u-sm-8 shop-block" id="featured-scroll1">
                    <ul class="am-avg-sm-3 am-padding-sm">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </div>

            <%--===============================精選區 第四區 End====================================--%>
            <%--=============================精選區 第五區 Start====================================--%>

            <div class="am-g am-g-collapse  featured-block  wow bounceInUp" id="featured-block5">
                <div class="banner-box   am-u-sm-4 am-padding-right-0">
                    <a href="https://www.hawooo.com/user/shop.aspx?cid=48" target="_blank">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_10.png" %>' alt="精選區Banner2" style="width: 100%;" />
                        </div>
                    </a>
                </div>
                <div class="am-u-sm-8 shop-block" id="featured-scroll2">
                    <ul class="am-avg-sm-3 am-padding-sm">
                        <uc1:products runat="server" id="products7" />
                    </ul>
                </div>
            </div>

            <%--===============================精選區 第五區 End====================================--%>
            <%--=============================精選區 第六區 Start====================================--%>

            <div class="am-g am-g-collapse  featured-block  wow bounceInUp" id="featured-block6">
                <div class="banner-box   am-u-sm-4 am-padding-right-0">
                    <a href="https://www.hawooo.com/user/shop.aspx?cid=49" target="_blank">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/bn_11.png" %>' alt="精選區Banner2" style="width: 100%;" />
                        </div>
                    </a>
                </div>
                <div class="am-u-sm-8 shop-block">
                    <ul class="am-avg-sm-3 am-padding-sm">
                        <uc1:products runat="server" id="products8" />
                    </ul>
                </div>
            </div>

            <%--===============================精選區 第六區 End====================================--%>

            <%--==============================活動辦法 Start =====================================--%>
        </div>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions
                             <br />
                Merdeka Sale
                             <br />
                1. Promotion date : 22nd August 2019 - 31st August 2019        
                 <br />
                2. Use Code【MERDEKA20】for EXTRA RM20 OFF (min spend 180); Use Code【MERDEKA350】for EXTRA RM35 OFF (min spend 330)
     <br />
                3. Coupon is APPLICABLE on selected Flagship Stores , including MOOIMOM, LOVING FAMILY, Life 8, DR. MORITA, ZEPHYRINE, HH, DV, CHECK2CHECK, LALER, HSU’S, CHOYER, DESENO, Cestvrai, PARADISO GARDEN, NATURERO, CACO and WAVE SHINE.
     <br />
                4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Merdeka Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </footer>
        <%--==============================活動辦法 End=====================================--%>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };

        function elevator(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 500);
        };

        var wow = new WOW(
            {
                boxClass: 'wow',      // 要套用WOW.js縮需要的動畫class(預設是wow)
                animateClass: 'animated', // 要"動起來"的動畫(預設是animated, 因此如果你有其他動畫library要使用也可以在這裡調整)
                offset: 0,          // 距離顯示多遠開始顯示動畫 (預設是0, 因此捲動到顯示時才出現動畫)
                mobile: true,       // 手機上是否要套用動畫 (預設是true)
                live: true,       // 非同步產生的內容是否也要套用 (預設是true, 非常適合搭配SPA)
                callback: function (box) {
                    // 當每個要開始時, 呼叫這裡面的內容, 參數是要開始進行動畫特效的element DOM
                },
                scrollContainer: null // 可以設定成只套用在某個container中捲動才呈現, 不設定就是整個視窗
            }
        );
        wow.init();

        //$(document).ready(function () {
        //    for (i = 0; i < 3; i++) {
        //        duplicate('womens-like-products');
        //    }
        //    for (i = 0; i < 3; i++) {
        //        duplicate("product-make");
        //    }
        //    for (i = 0; i < 3; i++) {
        //        duplicate("product-item3");
        //    }

        //});
        //function duplicate(id) {
        //    var ul = $("#" + id + " ul");
        //    ul.find("li:last")
        //        .clone(true)
        //        .appendTo(ul);
        //}
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
    <script>
        $(function () {
            $("#maincId li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>

    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".countdown-timer-box").everyTime('0.1s',
                function (i) {
                    //spendtime--; //總共秒數


                    spendtime = spendtime - 0.1; //總共秒數

                    //var d = Math.floor(spendtime / (24 * 3600));
                    //d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600 * 3600)) / 3600);
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    var ms = Math.floor((spendtime * 10 % 10));
                    ms = PrefixInteger(ms, 1);


                    if (spendtime > 0) {
                        //$("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                        $("#ms").text(ms);
                    } else { // 避免倒數變成負的
                        //$("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                        $("#ms").text(ms);
                    }
                });
        }

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
    </script>


    <script>
        function Insert() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u != null)
                $("#<%= Button1.ClientID %>").click();
            else
                //location.href = "login.aspx?rurl=merdekasale.aspx";
                doLogin('merdekasale.aspx');
        }
    </script>

</asp:Content>

