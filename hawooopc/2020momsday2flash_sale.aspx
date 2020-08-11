<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020momsday2flash_sale.aspx.cs" Inherits="user_static_2020momsday2flash_sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .fs-item {
            border: 1px dashed #f2f2f2;
        }
    </style>
    <div class="am-g main-contain" id="top" style="background: #FFE6DB;">
        <!--側邊選單 (Start) ===================================================-->
        <div class="side-bar">
            <ul>
                <li>
                    <a href="2020momsday2.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_00.png" alt="fss_00" />
                    </a>
                </li>
                <li onclick="goto('s1')">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_01.png" alt="fss_01" />
                    </a>
                </li>
                <li onclick="goto('s2')">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_02.png" alt="fss_02" />
                    </a>
                </li>
                <li onclick="goto('s3')">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_03.png" alt="fss_03" />
                    </a>
                </li>
            </ul>
        </div>
        <!--側邊選單 (End) =====================================================-->
        <div class="countdown">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/bbn_02.png" alt="bbn_01" style="width: 100%;" />
            <div class="countdown-info countdown-info2">
                <span id="content"></span>
    <%--            <h2>5/5-9/5 : Add Items To Wishlist
                            <br>
                    10/5-11/5:  Check Out Your Cart </h2>--%>
                <h1>
                    <span style="font-size: 15px!important; vertical-align: super;">Sale Ends in</span>
                    <span class="clock-countdown">
                        <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span></span></h1>
            </div>
        </div>

        <div class="am-container">
            <!--Block1 (Start) =====================================================-->
            <div class="am-margin-top-lg am-margin-bottom-lg" id="s1">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fs_01.png" alt="fs_01" style="width: 100%;" />
                </div>
                <div class="am-margin-bottom-xl am-padding-sm shop-block" style="background: white" id="fs-block">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                <li class="am-fl goods-item fs-item hvr-float">
                                    <a href='<%# "productdetail.aspx?id="+Eval("WP01")%>'>
                                        <div class="goods-item-top">
                                            <div class="goods-img" style="position: relative;">
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-item-bottom">
                                            <div class="goods-item-block fire-bar-block">
                                                <div class="fire-img">
                                                    <asp:Image ID="img_fire" runat="server" Width="23px" />
                                                </div>
                                                <div class="fire-bar">
                                                    sold
                                                                <asp:Literal ID="lit_buy" runat="server"></asp:Literal>件
                                                </div>
                                                <div class="bar-white pc-bar-white" style="width: <%#FireCount(Convert.ToInt32(Eval("SPD07").ToString()) )+"%" %>;"></div>
                                            </div>
                                            <div class="goods-item-block">
                                                <p class="goods-name">
                                                    <%# Eval("WP02").ToString() %>
                                                </p>
                                            </div>
                                            <div class="goods-item-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
                                                <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <!--Block1 (End) ======================================================-->

            <!--Block2 (Start) =====================================================-->
            <div class="am-margin-bottom-lg" id="s2">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fs_02.png" alt="fs_02" style="width: 100%;" />
                </div>
                <div class="am-margin-bottom-xl am-padding-sm shop-block" style="background: white" id="fs-block2">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp2" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                <li class="am-fl goods-item fs-item hvr-float">
                                    <a href='<%# "productdetail.aspx?id="+Eval("WP01")%>'>
                                        <div class="goods-item-top">
                                            <div class="goods-img" style="position: relative;">
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-item-bottom">
                                            <div class="goods-item-block fire-bar-block">
                                                <div class="fire-img">
                                                    <asp:Image ID="img_fire" runat="server" Width="23px" />
                                                </div>
                                                <div class="fire-bar">
                                                    sold
                                                                <asp:Literal ID="lit_buy" runat="server"></asp:Literal>件
                                                </div>
                                                <div class="bar-white pc-bar-white" style="width: <%#FireCount(Convert.ToInt32(Eval("SPD07").ToString()) )+"%" %>;"></div>
                                            </div>
                                            <div class="goods-item-block">
                                                <p class="goods-name">
                                                    <%# Eval("WP02").ToString() %>
                                                </p>
                                            </div>
                                            <div class="goods-item-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
                                                <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <!--Block2 (End) ======================================================-->

            <!--Block3 (Start) =====================================================-->
            <div class="am-margin-top-lg am-margin-bottom-lg" id="s3">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fs_03.png" alt="fs_03" style="width: 100%;" />
                </div>
                <div class="am-margin-bottom-xl am-padding-sm shop-block" style="background: white" id="fs-block3">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp3" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                <li class="am-fl goods-item fs-item hvr-float">
                                    <a href='<%# "productdetail.aspx?id="+Eval("WP01")%>'>
                                        <div class="goods-item-top">
                                            <div class="goods-img" style="position: relative;">
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-item-bottom">
                                            <div class="goods-item-block fire-bar-block">
                                                <div class="fire-img">
                                                    <asp:Image ID="img_fire" runat="server" Width="23px" />
                                                </div>
                                                <div class="fire-bar">
                                                    sold
                                                                <asp:Literal ID="lit_buy" runat="server"></asp:Literal>件
                                                </div>
                                                <div class="bar-white pc-bar-white" style="width: <%#FireCount(Convert.ToInt32(Eval("SPD07").ToString()) )+"%" %>;"></div>
                                            </div>
                                            <div class="goods-item-block">
                                                <p class="goods-name">
                                                    <%# Eval("WP02").ToString() %>
                                                </p>
                                            </div>
                                            <div class="goods-item-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
                                                <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <!--Block3 (End) ======================================================-->
        </div>

        <!--Block5 活動辦法 (Start)================================================-->
        <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br />
                    1. Flash Sale :
                    <br />
                    Add to wishlist: 5/5/2020 00:00 -  9/5/2020 23:59<br />
                    Check out Shopping Cart: 10/5/2020 00:00 - 11/5/2020 23:59<br />
                </p>
                <p>2. Flash sale items are at their lowest prices, promo code are NOT applicable on falsh sale items</p>
                <p>
                    3. Flash sale items are limited, add to wishlist and check out ASAP when the sale starts.
                </p>
            </div>
        </footer>
        <!--Block5 活動辦法 (End)================================================-->
    </div>

    <script src="../js/swiper.min.js"></script>
    <script type="text/javascript">

        $(function () {
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
                        slidesPerView: 4,
                        slidesPerGroup: 4,
                        spaceBetween: 10,
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


        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

 
        //電梯
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {
            $(".clock-countdown").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    //h = parseInt(d) * 24 + parseInt(PrefixInteger(h, 2));
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    if (spendtime > 0) {
                        $("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                    } else { // 避免倒數變成負的
                        $("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                    }
                });
        }
        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
    </script>
</asp:Content>

