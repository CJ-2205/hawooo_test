<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="hawooo2yearspart2.aspx.cs" Inherits="user_hawooo2yearspart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/hawooo2yearspart2.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">
    <%--    <style type="text/css">
        body {
            position: relative;
            /*height: 900vh;*/
        }

        .invisible {
            position: fixed;
            bottom: 0px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1180px;
            height: 1px;
        }

        .box {
            position: fixed;
            bottom: 50px;
            width: 100px;
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

        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171012/edm_07.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171012/edm_09.png)no-repeat;
            background-size: 100%;
            height: 1500px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171012/edm_11.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171012/edm_13.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171012/edm_15.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .finfo_menu {
            margin: 0 auto;
            padding: 0;
            width: 680px;
            height: 35px;
            line-height: 35px;
            color: #ffffff;
            font-weight: 600px;
            font-size: 15px;
        }
    </style>--%>
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
            width: 1180px;
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

        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171023/edm_07.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171023/edm_09.png)no-repeat;
            background-size: 100%;
            height: 1500px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171023/edm_11.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171023/edm_13.png)no-repeat;
            background-size: 100%;
            height: 1208px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171023/edm_15.png)no-repeat;
            background-size: 100%;
            height: 934px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <li style="margin: 0;"><a id="gotop"></a>
                <img alt="Hawooo兩歲了！我生日你收禮！優惠再加碼！" src="https://www.hawooo.com/images/ftp/20171023/edm_01.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="熱銷商品up to 60% off" src="https://www.hawooo.com/images/ftp/20171023/edm_02.png" style="float: left; display: block; width: 30%;" /></a></li>


            <li style="margin: 0;"><a href="https://www.hawooo.com/user/20171022lottery.aspx" target="_blank">
                <img alt="消費就抽每日限量禮 再送50折價卷" src="https://www.hawooo.com/images/ftp/20171023/edm_03.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="消費滿300就送面膜還抽台灣來回機票" src="https://www.hawooo.com/images/ftp/20171023/edm_04.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="最高現折100 結帳請選取折扣卷" src="https://www.hawooo.com/images/ftp/20171023/edm_05.png" style="float: left; display: block; width: 30%;" /></a></li>
        </ul>
    </div>



    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="gobeauty"></a>
                <img alt="Beauty 熱銷商品再加碼" src="https://www.hawooo.com/images/ftp/20171023/edm_06.png" style="float: left; display: block; width: 100%;" /></li>

        </ul>
    </div>



    <!--美妝開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="beauty am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

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
    <!--美妝商品結束-->


    <!--美妝商品結束-->
    <!--保健商品開始-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a id="gosupplement"></a>
                <img alt="Supplement 滿300再送B群" src="https://www.hawooo.com/images/ftp/20171023/edm_08.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>



    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">

        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="supplement am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

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

    <!--保健商品結束-->
    <!--生活開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="golife"></a>
                <img alt="Life 品味生活 up to 50% off" src="https://www.hawooo.com/images/ftp/20171023/edm_10.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="life am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

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
    <!--生活商品結束-->
    <!--時尚開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a id="gofashion"></a>
                <img alt="fashion 任性血拼" src="https://www.hawooo.com/images/ftp/20171023/edm_12.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="fashion am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

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
    <!--時尚商品結束-->
    <!--媽咪寶貝開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a id="gobaby"></a>
                <img alt="mom baby 寶貝健康不能省" src="https://www.hawooo.com/images/ftp/20171023/edm_14.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">

        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="mom am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

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
    <!--生活商品結束-->


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="hawooo footer" class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20171012/edm_16.png" style="float: left; display: block; width: 100%;" /></a></li>
        </ul>
    </div>




    <!-- 一個看不見的div 高度0 -->
    <div class="invisible">
        <!-- box是固定的nav -->
        <div class="box">
            <div data-id="#gotop" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171012/pc-section_01.png" style="width: 100px">
            </div>

            <div data-id="#gobeauty" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171012/pc-section_02.png" style="width: 100px">
            </div>


            <div data-id="#gosupplement" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171012/pc-section_03.png" style="width: 100px">
            </div>


            <div data-id="#golife" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171012/pc-section_04.png" style="width: 100px">
            </div>


            <div data-id="#gofashion" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171012/pc-section_05.png" style="width: 100px">
            </div>


            <div data-id="#gobaby" onclick="getThisId(this)">
                <img src="https://www.hawooo.com/images/ftp/20171012/pc-section_06.png" style="width: 100px">
            </div>

        </div>
    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171003.js"></script>
    <script type="text/javascript">

        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 120;
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

    <script>
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
    </style>
</asp:Content>
