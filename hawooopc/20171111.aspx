<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171111.aspx.cs" Inherits="user_20171111" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

  <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171111part2.aspx";
                }
            }
        }
         )
    </script>

<%--    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">--%>

    <style type="text/css">
        body {
            position: relative;
            height: 900vh;
        }

        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
        }

        .box {
            position: fixed;
            top: 30%;
            width: 100px;
            height: 1530px;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 900px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edm_07.png)no-repeat;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .rm110 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edm_09.png)no-repeat;
            background-size: 100%;
            height: 620px;
            margin: 0px auto;
            padding: 0px;
        }

        .off30 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edm_11.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }

        .off20 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edm_13.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }

        .hotsale {
            background: url(https://www.hawooo.com/images/ftp/20171031/edm_15.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <li style="margin: 0;">
                <img alt="單身購物節 限時兩天折扣卷" src="https://www.hawooo.com/images/ftp/20171110/1107_I03.png" style="float: left; display: block; width: 100%;"></li>

            <li style="margin: 0;"><a id="gotop"></a>
                <img alt="單身購物節 1手拿好物 1手拿好禮" src="https://www.hawooo.com/images/ftp/20171031/edmnew_01.gif" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8350" target="_blank">
                <img alt="滿額直接送降溫香水" src="https://www.hawooo.com/images/ftp/20171031/edm_02.png" style="float: left; display: block; width: 25%;" /></a></li>


            <li style="margin: 0;">
                <img alt="RM99免運" src="https://www.hawooo.com/images/ftp/20171031/edm_03.png" style="float: left; display: block; width: 25%;" /></li>

            <li style="margin: 0;">
                <img alt="整點特賣會 錯過等明年 待開放" src="https://www.hawooo.com/images/ftp/20171031/edm_04.png" style="float: left; display: block; width: 25%;" /></li>

            <li style="margin: 0;">
                <img alt="排名搶好康 iPhoneX 待開放" src="https://www.hawooo.com/images/ftp/20171031/edm_05.png" style="float: left; display: block; width: 25%;" /></li>
        </ul>

    </div>

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="gobuy1"></a>
                <img alt="買一送一" src="https://www.hawooo.com/images/ftp/20171031/edm_06.png" style="float: left; display: block; width: 100%;" /></li>

        </ul>
    </div>



    <!--買一送一開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="buy1 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>


            </li>
        </ul>
    </div>
    <!--商品結束-->


    <!--Rm110商品開始-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="go110"></a>
                <img alt="最高現折RM110專區" src="https://www.hawooo.com/images/ftp/20171031/edm_08.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>



    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="rm110 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>


            </li>
        </ul>
    </div>

    <!--商品結束-->


    <!--30% off開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="go30"></a>
                <img alt="下殺30% off" src="https://www.hawooo.com/images/ftp/20171031/edm_10.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>




    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="off30 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>


            </li>
        </ul>
    </div>
    <!--商品結束-->


    <!--20% off開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="go20"></a>
                <img alt="fashion 血拼不內疚 新品up to 20%" src="https://www.hawooo.com/images/ftp/20171031/edm_12.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>




    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="off20 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>

            </li>
        </ul>
    </div>
    <!--商品結束-->


    <!--HotSale開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="gosale"></a>
                <img alt="Hot Sale 銷售強檔" src="https://www.hawooo.com/images/ftp/20171031/edm_14.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>




    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="hotsale am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>

            </li>
        </ul>
    </div>
    <!--商品結束-->


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="hawooo footer活動辦法與內容" class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20171031/edm_16.png" style="float: left; display: block; width: 100%;" /></a></li>
        </ul>
    </div>


    <!-- 一個看不見的div 高度0 -->
    <div class="invisible">
        <!-- box是固定的nav -->
        <div class="box">
            <div data-id="#gotop" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_01.png" style="width: 100px">
            </div>

            <div data-id="#gobuy1" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_02.png" style="width: 100px">
            </div>


            <div data-id="#go110" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_03.png" style="width: 100px">
            </div>


            <div data-id="#go30" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_04.png" style="width: 100px">
            </div>


            <div data-id="#go20" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_05.png" style="width: 100px">
            </div>


            <div data-id="#gosale" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_06.png" style="width: 100px">
            </div>


        </div>
    </div>


    <%--  <!-- 一個看不見的div 高度0 -->
    <div class="invisible">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="#gotop">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_01.png" style="width: 100px"></a>

            <a href="#gobuy1">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_02.png" style="width: 100px"></a>


            <a href="#go110">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_03.png" style="width: 100px"></a>


            <a href="#go30">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_04.png" style="width: 100px"></a>


            <a href="#go20">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_05.png" style="width: 100px"></a>


            <a href="#gosale">
                <img src="https://www.hawooo.com/images/ftp/20171031/1027_pc-section_06.png" style="width: 100px"></a>


        </div>
    </div>--%>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>
    <script type="text/javascript">

        //function getThisId(e) {
        //    var thisHref = $(e).attr("data-id").split("#")[1];
        //    var thisDivTop = $("body").find("#" + thisHref).offset().top - 120;
        //    $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        //}

        function getThisId(e) {
            var thisHref = $(e).attr("data-id");
            var thisDivTop = $("body").find(thisHref).offset().top - 120;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }



        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }

        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })
    </script>

    <%--<script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>
    <style>
        [class*=am-u-] + [class*=am-u-]:last-child {
            float: left;
        }
    </style>--%>
</asp:Content>
