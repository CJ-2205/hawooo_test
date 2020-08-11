<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2019womenbuy3.aspx.cs" Inherits="mobile_2019womenbuy3" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>


<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <link href="assets/countdown/jquery.countdown.css" rel="stylesheet" />
<%--    <link href="assets/css/MidYearSale.min.css" rel="stylesheet" />--%>
    <link href="assets/css/animate.min.css" rel="stylesheet" />


    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            /*padding: 3%;*/
            padding: 1%;
            margin: 5px;
            height: calc(100% - 20px);
        }

        .edm_title {
            float: left;
            font-size: medium;
            color: #424242;
            overflow: hidden;
            margin: 15px 0 10px 15px;
        }

        .product_item_text {
            padding: 0 !important;
        }

        .am-avg-sel-2 li {
            /*width: 45%;*/
        }

        .am-avg-md-4 li {
            width: 25%;
        }

        .am-tabs-nav a {
            padding: 0 !important;
        }

        .am-tabs-nav li {
            opacity: 0.5;
        }

        .am-active {
            background-color: none;
            opacity: 1 !important;
        }

        .am-nav-tabs > li.am-active > a {
            background-color: #FFFFFF !important;
        }

        .product-block li {
            padding: 1px;
        }

            /*.product-block li a {
                color: #a8a8a8 !important;
            }*/

        .am-slider-default .am-direction-nav a::before {
            color: #FF3739;
        }

        .product-block .am-u-sm-12 {
            padding-top: 0 !important;
        }

        .product_item_text h3 {
            font-size: 14px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #FF3739; position: relative">
        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/newbeauty/bbn_01m.png" %>' style="float: left; display: block; width: 100%;" />

        <ul class="am-avg-sm-2">
            <li>
                <a id="coupon1" data-clipboard-text="BEAUTY5" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190711/newbeauty/bcoupon_01m.png"%>' alt="coupon1" style="width: 100%;" />
                </a>
            </li>
            <li>
                <a id="coupon2" data-clipboard-text="BEAUTY10" onclick="Clip('coupon2');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190711/newbeauty/bcoupon_02m.png"%>' alt="coupon2" style="width: 100%;" />
                </a>
            </li>
        </ul>
    </div>

    <!--品牌區塊-->
    <div class="am-cf product-block" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #FF3739">
        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=343" target="_blank">
            <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/newbeauty/bbn_02m.png" %>' style="margin: 0 auto; width: 100%" />
        </a>
        <div class="am-slider am-slider-default am-slider-carousel"
            data-am-flexslider="{itemWidth: 200, itemMargin: 5, slideshow: false}">
            <ul class="am-slides">
                <uc1:products runat="server" id="products" />
            </ul>
        </div>

        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=199" target="_blank">
            <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/newbeauty/bbn_03m.png" %>' style="margin: 0 auto; width: 100%" />
        </a>
        <div class="am-slider am-slider-default am-slider-carousel"
            data-am-flexslider="{itemWidth: 200, itemMargin: 5, slideshow: false}">
            <ul class="am-slides">
                <uc1:products runat="server" id="products2" />
            </ul>
        </div>
    </div>
    <!--Tabs+活動選品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #FF3739">

        <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-2">
            <li id="tab1">
                <a href="2019womenbuy3.aspx?did=1">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/tab_01.png" %>' width="100%" />
                </a>

            </li>
            <li id="tab2">
                <a href="2019womenbuy3.aspx?did=2">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/tab_04.png" %>' width="100%" />
                </a>

            </li>
            <li id="tab3">
                <a href="2019womenbuy3.aspx?did=3">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/tab_02.png" %>' width="100%" />
                </a>

            </li>
            <li id="tab4">
                <a href="2019womenbuy3.aspx?did=4">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/tab_03.png" %>' width="100%" />
                </a>
            </li>
        </ul>
        <!--商品區塊-->
        <ul class="tag am-avg-sel-2 am-gallery-bordered product" style="padding: 2px">
            <asp:Repeater ID="rp1" runat="server">
                <ItemTemplate>
                    <li class="am-fl box">
                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                            <div class="product_item_pic">
                                <img data-sizes="auto"
                                    src="../noimg.png"
                                    data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            </div>
                            <div class="product_item_text">
                                <div class="product_item_block am-cf">
                                    <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                </div>
                                <div class="product_item_block am-cf">

                                    <h4 class="am-fl" style="font-size: 12px">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                    <span class="product_item_dis" style="line-height: 8px"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                </div>
                                <div class="product_item_block am-cf">
                                    <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                    <%--    <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                <%# ((mobile) this.Master).LgType.Equals(LangType.en) ? "<img src='../images/icon/" + Eval("WP30") + ".png'/>" : "<span class='product-items-tag'>" + Eval("WP30") + "</span>" %>
                                            </p>--%>
                                    <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                        <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                    </p>
                                </div>
                            </div>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <div>
        <img alt="footer" src=" <%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>
    <script type="text/javascript">
        //$(function () {
        //    $("#footermenu").remove();
        //    var tagid = $.url.param("tid");
        //    if (tagid != '') {
        //        GoID(tagid);
        //    }
        //})
        //function GoID(id) {
        //    $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        //};
        function tabActive(id) {
            var v = $("#" + id);
            v.attr("class", "am-active");
        }

        $(function () {
            var getdid = location.search;
            if (getdid != "") {
                $("html,body").animate({ scrollTop: $('.tag').offset().top - $(window).height() / 3 }, 0);
            }
        });
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

