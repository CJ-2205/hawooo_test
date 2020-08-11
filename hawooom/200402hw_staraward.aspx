<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200402hw_staraward.aspx.cs" Inherits="mobile_static_200402hw_staraward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200402hw_staraward.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bn_01m.png"%>' alt="main-banner" />
        </div>

        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bn_02m.png"%>' alt="bn_02m" style="width: 100%;" />
        </div>

        <%--===================== Super Brands Start =====================--%>
        <section class="block1 am-margin-vertical-lg" id="s3">
            <a href="200402super_brands.aspx" target="_blank">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bn_03m.png"%>' alt="bn_03m" />
                </div>
                <div class="brands-slider" id="copy-div1">
                    <div class="swiper-container swiper-container1 award-container-mb" id="brands-ranking">
                        <ul class="swiper-wrapper">
                            <li class="am-fl  swiper-slide vote-box" >
                                <div class="brand-name">
                                    <h5>Best Skin Care</h5>
                                </div>
                                <div class="super-brand">
                                    <div style="background:#FFFFFF">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_01.png"%>' alt="" />
                                    </div>
                                </div>
                            </li>
                            <li class="am-fl  swiper-slide vote-box">
                                <div class="brand-name">
                                    <h5>Best Home&<br />
                                        Living&Mum</h5>
                                </div>
                                <div class="super-brand">
                                    <div style="background:#FFFFFF">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_02.png"%>' alt="" />
                                    </div>
                                </div>
                            </li>
                            <li class="am-fl  swiper-slide vote-box">
                                <div class="brand-name">
                                    <h5>Best Supplement</h5>
                                </div>

                                <div class="super-brand">
                                    <div style="background:#FFFFFF">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_03.png"%>' alt="" />
                                    </div>
                                </div>
                            </li>
                            <li class="am-fl  swiper-slide vote-box">
                                <div class="brand-name">
                                    <h5>Best Cosmetic</h5>
                                </div>
                                <div class="super-brand">
                                    <div style="background:#FFFFFF">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_04.png"%>' alt="" />
                                    </div>
                                </div>
                            </li>
                            <li class="am-fl  swiper-slide vote-box">
                                <div class="brand-name">
                                    <h5>Best Food</h5>
                                </div>
                                <div class="super-brand">
                                    <div style="background:#FFFFFF">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_05.png"%>' alt="" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </a>
        </section>
        <%--===================== Super Brands End =====================--%>

        <%--===================== Super Items Start =====================--%>
        <section class="block1 am-margin-vertical-lg" id="s4">
            <a href="200402super_items.aspx" target="_blank">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bn_04m.png"%>' alt="bn_04" />
                </div>
                <div class="brands-slider" id="copy-div2">
                    <div class="swiper-container swiper-container2 award-container-mb" id="items-ranking">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rpBrand" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide">
                                        <div class="brand-name">
                                            <h5><%#Eval("_title") %></h5>
                                        </div>
                                        <div class="super-item">
                                            <div>
                                                <img class="swiper-lazy" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" data-src='<%#Eval("_image") %>' alt="" /><div class="swiper-lazy-preloader"></div>
                                            </div>
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("_name") %></h6>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </a>
        </section>

        <%--===================== Super Items End ===================--%>

        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method">
            <div class="am-padding-xl">
                <div class="am-container">
                    <p>
                        Terms & Conditions<br />
                        HaWooo Star Award<br />
                        1. Voting period: 1st April 2020 12:00 - 8th April 2020 23:59<br />
                        2. Member must login to vote. Each member can submit their vote once per day<br />
                        3. Two members who vote  will be selected randomly, each will be given RM500 Shopping Coins. The lucky winners will be annouced on Hawooo Facebook Page on 13/4/2020<br />
                        4. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
                    </p>
                </div>
            </div>

        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        setThem();

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
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
                        loop: false, //循環
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

