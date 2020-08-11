<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200409super_brands.aspx.cs" Inherits="mobile_static_200409super_brands" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/js/swiper.min.js"></script>
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200409hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bbn_01m.png" %>' alt="main-banner" />
        </div>

       <%-- <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bb_00m.png" %>' alt="bb_01m" style="width: 100%;" />
        </div>--%>


        <%--======================= Slider1  Start =========================--%>
        <section class="am-margin-top-sm">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bb_01m.png" %>' alt="bb_02m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper super-brand-slider">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="super-brand">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("_info") %></h6>
                                            </div>
                                            <div class="brand-img">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                                </div>
                                                <img class="swiper-lazy swiper-lazy-loaded" src='<%# Eval("_image") %>' alt="">
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

        <%--==================== Slider1   End============================--%>


        <%--==================== Slider2  Start ===========================--%>
        <section class="am-margin-top-sm">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bb_02m.png" %>' alt="bb_03m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container2">
                    <ul class="swiper-wrapper super-brand-slider">
                        <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="super-brand">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("_info") %></h6>
                                            </div>
                                            <div class="brand-img">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                                </div>
                                                <img class="swiper-lazy swiper-lazy-loaded" src='<%# Eval("_image") %>' alt="">
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

        <%--==================== Slider2   End============================--%>

        <%--==================== Slider3  Start ===========================--%>
        <section class="am-margin-top-sm">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bb_03m.png" %>' alt="bb_04m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper super-brand-slider">
                        <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="super-brand">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("_info") %></h6>
                                            </div>
                                            <div class="brand-img">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                                </div>
                                                <img class="swiper-lazy swiper-lazy-loaded" src='<%# Eval("_image") %>' alt="">
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

        <%--==================== Slider3   End============================--%>

        <%--==================== Slider4  Start ===========================--%>
        <section class="am-margin-top-sm">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bb_04m.png" %>' alt="bb_05m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container4">
                    <ul class="swiper-wrapper super-brand-slider">
                        <asp:Repeater ID="rp4" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="super-brand">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("_info") %></h6>
                                            </div>
                                            <div class="brand-img">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                                </div>
                                                <img class="swiper-lazy swiper-lazy-loaded" src='<%# Eval("_image") %>' alt="">
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

        <%--==================== Slider4   End============================--%>

        <%--==================== Slider5  Start ===========================--%>
        <section class="am-margin-top-sm">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bb_05m.png" %>' alt="bb_06m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper super-brand-slider">
                        <asp:Repeater ID="rp5" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="super-brand">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("_info") %></h6>
                                            </div>
                                            <div class="brand-img">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                                </div>
                                                <img class="swiper-lazy swiper-lazy-loaded" src='<%# Eval("_image") %>' alt="">
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
        <%--==================== Slider5   End============================--%>


        <%--======================= Footer=== Start ========================--%>
        <footer class="am-padding-xl activity-method">
            <div class="am-container">
                <p>
                    Terms & Conditions<br />
                    HaWooo Star Award<br />
                    1. Sales period: 9th April 2020 12:00 - 21st April 2020 23:59<br />
                    2. Super brands & Super Items : Top 5 Brands & Items voted by HA fans from 1st April 2020 - 8th April 2020<br />
                    3. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>
    <script type="text/javascript">

        $(function () {
            setThem();
        });

        function setThem() {
            var i;
            var cnt = 13; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
                        lazy: true,
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
                                slidesPerView: 2.2,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };

    </script>
</asp:Content>

