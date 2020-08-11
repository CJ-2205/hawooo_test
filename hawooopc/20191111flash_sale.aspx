<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191111flash_sale.aspx.cs" Inherits="user_static_20191111flash_sale" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
    <style>
        .pitem {
            position: relative;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="banner-box  am-text-center">
            <a href="value_package.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bbn_04.png" %>' alt="bbn_04" style="width: 100%;" />
            </a>
        </div>

        <div class="am-container">
            <%--=====================錨點連結區1  Start===============================--%>

            <section id="f1">
                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li class="is-active" id="tab1">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_07.png" %>' alt="ss_07" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_08.png" %>' alt="ss_08" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_09.png" %>' alt="ss_09" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_10.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>

                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_01.png" %>' alt="f_01" />
                </div>
                <div class="shop-block-bg am-padding-sm">
                    <div class="shop-block-bg shop-block  shop-block1">
                        <ul class="am-avg-sm-5">
                            <asp:Repeater ID="rp" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>

                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--                            <li class="am-fl">
                                <a href="#">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span class="goods-price">RM 268.90
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span>-RM70.00
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">

                                                <div class="fire-bar-block pc-fire-bar-block">
                                                    <div class="fire-img">
                                                        <img src="https://www.hawooo.com/images/ftp/20191111/bom.png" alt="bom" />
                                                    </div>
                                                    <div class="fire-bar pc-fire-bar">
                                                        已售出111件
                                                    </div>
                                                    <div class="bar-white pc-bar-white" style="width: 50%;"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>

            <%--=====================錨點連結區2  Start===============================--%>

            <section id="f2">

                <div class=" pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_07.png" %>' alt="ss_07" /></li>
                        <li class="is-active" id="tab2">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_08.png" %>' alt="ss_08" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_09.png" %>' alt="ss_09" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_10.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_02.png" %>' alt="f_02" />
                </div>
                <div class="shop-block-bg am-padding-sm">
                    <div class="shop-block-bg shop-block  shop-block1">
                        <ul class="am-avg-sm-5">
                            <asp:Repeater ID="rp2" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
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
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--=====================錨點連結區3  Start===============================--%>

            <section id="f3">
                <div class=" pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_07.png" %>' alt="ss_07" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_08.png" %>' alt="ss_08" /></li>
                        <li class="is-active" id="tab3">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_09.png" %>' alt="ss_09" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_10.png" %>' alt="ss_10" /></li>
                    </ul>
                </div>
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_03.png" %>' alt="f_03" />
                </div>
                <div class="shop-block-bg am-padding-sm">
                    <div class="shop-block-bg shop-block  shop-block1">
                        <ul class="am-avg-sm-5">
                            <asp:Repeater ID="rp3" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
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
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--=====================錨點連結區4  Start===============================--%>

            <section id="f4" class="am-margin-bottom-lg am-padding-bottom-lg">

                <div class=" pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_07.png" %>' alt="ss_07" />
                        </li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_08.png" %>' alt="ss_08" />
                        </li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_09.png" %>' alt="ss_09" />
                        </li>
                        <li class="is-active" id="tab4">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_10.png" %>' alt="ss_10" />
                        </li>
                    </ul>
                </div>
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_04.png" %>' alt="f_04" />
                </div>
                <div class="shop-block-bg am-padding-sm">
                    <div class="shop-block-bg shop-block  shop-block1" id="product-make6">
                        <ul class="am-avg-sm-5">
                            <asp:Repeater ID="rp4" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
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
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>

            <%--=====================側邊選單 Start ==========================--%>

            <div class="side-bar am-center">
                <ul>
                    <li>
                        <a href="20191111.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_01.png" %>' alt="ss_01" />
                        </a>
                    </li>
                    <li>
                        <a href="20191111pre_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02.png" %>' alt="ss_02" />
                        </a>
                    </li>
                    <li>
                        <a href="#!" id="ss03">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03.png" %>' alt="ss_03" />
                        </a>
                    </li>
                    <li>
                        <a href="20191111.aspx?#s3" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04.png" %>' alt="ss_04" />
                        </a>
                    </li>
                    <li>
                        <a href="value_package.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05.png" %>' alt="ss_05" />
                        </a>
                    </li>
                    <li><a href="20191111.aspx?#s6" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06.png" %>' alt="ss_06" />
                    </a>
                    </li>
                </ul>
            </div>
            <%--=====================側邊選單 End==========================--%>
        </div>
    </div>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">


        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }

    </script>
    <script>
        $(window).load(function () {
            setThem();
        });

        $(function hrefChange() {
            var date1 = new Date("2019-11-06T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss03').attr({
                    "href": "20191111preorder.aspx",
                    "target": "_black"
                });
            }
        });

        function setThem() {
            var i;
            var cnt = 11; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 3.5,
                        slidesPerGroup: 3,
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

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

    </script>
</asp:Content>

