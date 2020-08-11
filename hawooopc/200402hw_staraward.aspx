<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200402hw_staraward.aspx.cs" Inherits="user_static_200402hw_staraward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200402hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div id="top">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/bn_01.png" alt="主banner" />
        </div>

        <div class="am-container">
            <div class="am-margin-vertical-lg">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/bn_02.png" alt="" />
            </div>


            <%--===================== Super Brands Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="s3">
                <a href="200402super_brands.aspx" target="_blank">
                    <div>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/bn_03.png" alt="bn_03" />
                    </div>
                    <div>
                        <ul class="am-avg-sm-5">
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Skin Care</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Home&<br />
                                        Living&Mum</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Supplement</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Cosmetic</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Food</h5>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="am-padding-xs" id="logo">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl am-padding-xs">
                                <%--                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_01.png"%>' alt="" />--%>
                            </li>
                            <li class="am-fl am-padding-xs">
                                <%--                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_02.png"%>' alt="" />--%>

                            </li>
                            <li class="am-fl am-padding-xs">
                                <%--                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_03.png"%>' alt="" />--%>

                            </li>
                            <li class="am-fl am-padding-xs">
                                <%--                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_04.png"%>' alt="" />--%>

                            </li>
                            <li class="am-fl am-padding-xs">
                                <%--                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/Logo_05.png"%>' alt="" />--%>

                            </li>
                        </ul>
                    </div>
                </a>
            </section>
            <%--===================== Super Brands End =====================--%>

            <%--===================== Super Items Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="s4">
                <a href="200402super_items.aspx" target="_blank">
                    <div>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/bn_04.png" alt="bn_03" />
                    </div>
                    <div>
                        <ul class="am-avg-sm-5">
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Toner</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Home&<br />
                                        Living&Mum</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Beauty Care</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Foundation</h5>
                                </div>
                            </li>
                            <li class="am-fl">
                                <div class="brand-name">
                                    <h5>Best Food</h5>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="am-padding-xs" id="goods-item">
                        <ul class="am-avg-sm-5">
                            <asp:Repeater ID="rpBrand" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl am-padding-xs">
                                        <img data-sizes="auto" src='<%#Eval("_image") %>'><div class="item-text am-padding">
                                            <h6><%#Eval("_name") %></h6>
                                        </div>
                                        <div class="goods-item-img"></div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </a>
            </section>
            <%--===================== Super Items End ===================--%>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
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
    </footer>
    <%--=======================活動辦法 End============================--%>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">


        $(window).load(function () {
            setThem();
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

        $(function putinfo() {
            for (i = 0; i < 5; i++) {
                $('#logo li').eq(i).prepend(
                    '<div style="background:#FFFFFF">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }

            //for (i = 0; i < 5; i++) {
            //    $('#goods-item li').eq(i).prepend(
            //        '<img data-sizes="auto"' + ' src="' + (i + 1) + '.png">' +
            //        '</div>' + '<div class="item-text am-padding">' + '<h6>' + '系統帶字' + ' </h6>' + '</div>' +
            //        '<div class="goods-item-img">');
            //}
        });



    </script>
</asp:Content>

