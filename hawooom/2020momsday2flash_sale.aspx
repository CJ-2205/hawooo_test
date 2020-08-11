<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020momsday2flash_sale.aspx.cs" Inherits="mobile_static_2020momsday2flash_sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/scss/events_style.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .fs-item {
            border: 1px dashed #f2f2f2;
        }

        .close {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" style="background: #FFE8E9;" id="top">
        <div class="countdown">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/bbn_02m.png" alt="bbn_02m" style="width: 100%;" />
            <div class="am-text-center countdown-info fs-countdown-info">
                <div>
                    <span id="content"></span>
                    <h1>
                        <span style="font-size: 12px!important; vertical-align: text-top;">Sale Ends in</span>
                        <span class="clock-countdown">
                            <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                        </span>
                    </h1>
                </div>
            </div>
        </div>

        <div class="mb-shop-block">
            <!--Block1 Super Brands (Start) ========================================-->
            <div class="am-margin-bottom-lg am-margin-top-lg preorder-items-wrapper" style="background: #fff;" id="s1">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fs_01m.png">
                </div>
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3" id="ul_rp1">
                        <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl goods-item fs-item">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
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
                                                    <asp:Image ID="img_fire" runat="server" Width="20px" />
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
                                                    <%--  <span>RM</span>--%>
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
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
                    <ul class="am-avg-sm-2 am-avg-md-3 close" id="ul_rp1_1">
                        <asp:Repeater ID="rp1_1" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl goods-item fs-item">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
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
                                                    <asp:Image ID="img_fire" runat="server" Width="20px" />
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
                                                    <%--  <span>RM</span>--%>
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
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
                <div class="am-padding-vertical am-margin-bottom-lg fs-more" style="background: #fff;" id="more1">
                    <a class="am-u-sm-5 am-block am-u-sm-centered" href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" alt="more" />
                    </a>
                </div>
            </div>
            <!--Block1 Super Brands (End) ========================================-->

            <!--Block2 Cheap Deals (Start) ========================================-->
            <div class="am-margin-bottom-lg am-margin-top-lg preorder-items-wrapper" style="background: #fff;" id="s2">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fs_02m.png">
                </div>
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3" id="ul_rp2">
                        <asp:Repeater ID="rp2" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl goods-item fs-item">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
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
                                                    <asp:Image ID="img_fire" runat="server" Width="20px" />
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
                                                    <%--  <span>RM</span>--%>
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
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
                    <ul class="am-avg-sm-2 am-avg-md-3 close" id="ul_rp2_1">
                        <asp:Repeater ID="rp2_1" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl goods-item fs-item">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
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
                                                    <asp:Image ID="img_fire" runat="server" Width="20px" />
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
                                                    <%--  <span>RM</span>--%>
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
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
                <div class="am-padding-vertical am-margin-bottom-lg fs-more" style="background: #fff;" id="more2">
                    <a class="am-u-sm-5 am-block am-u-sm-centered" href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" alt="more" />
                    </a>
                </div>
            </div>
            <!--Block2 Cheap Deals (End) ========================================-->

            <!--Block3 Life Style (Start) ==========================================-->
            <div class="am-margin-bottom-lg am-margin-top-lg preorder-items-wrapper" style="background: #fff;" id="s3">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fs_03m.png">
                </div>
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3" id="ul_rp3">
                        <asp:Repeater ID="rp3" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl goods-item fs-item">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
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
                                                    <asp:Image ID="img_fire" runat="server" Width="20px" />
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
                                                    <%--  <span>RM</span>--%>
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
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
                    <ul class="am-avg-sm-2 am-avg-md-3 close" id="ul_rp3_1">
                        <asp:Repeater ID="rp3_1" runat="server" OnItemDataBound="rp_flash_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl goods-item fs-item">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
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
                                                    <asp:Image ID="img_fire" runat="server" Width="20px" />
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
                                                    <%--  <span>RM</span>--%>
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>

                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>
                                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                </s>
                                            </div>
                                            <div class="goods-item-block">
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
                <div class="am-padding-vertical am-margin-bottom-lg fs-more" style="background: #fff;" id="more3">
                    <a class="am-u-sm-5 am-block am-u-sm-centered" href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/more.png" alt="more" />
                    </a>
                </div>
            </div>
            <!--Block3 Life Style (End) ========================================-->
        </div>
        <!--Block5 活動辦法 (Start)================================================-->

        <footer class="am-padding activity-method" style="background: #000;">
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

    <div class="am-g am-g-collapse footer-bar">

        <div>
            <ul class="am-avg-sm-4">
                <li>
                    <a href="2020momsday2.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_00m.png" alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li onclick="goto('s1')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_01m.png" alt="fss_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_02m.png" alt="fss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_03m.png" alt="fss_03m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>

    <script src="../../js/swiper.min.js"></script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script type="text/javascript">

        $(function () {
            hiddenFooterMenu();
        });


        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        };



        function setTime(spendtime) {
            $(".clock-countdown").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    //h = parseInt(d)*24 + parseInt(PrefixInteger(h, 2));
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
        };
        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        };


        $("#more1").click(function () {
            $("#ul_rp1").remove();
            $("#ul_rp1_1").removeClass('close');
        });
        $("#more2").click(function () {
            $("#ul_rp2").remove();
            $("#ul_rp2_1").removeClass('close');
        });
        $("#more3").click(function () {
            $("#ul_rp3").remove();
            $("#ul_rp3_1").removeClass('close');
        });
    </script>
</asp:Content>

