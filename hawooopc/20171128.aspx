<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171128.aspx.cs" Inherits="user_20171128" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20171128M.aspx";
                }
            }
        }
        )
    </script>

    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">


    <style type="text/css">
        body {
            position: relative;
            height: 900vh;
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

        .gift1 {
            background-color: #4aa940;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-color: #767892;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift3 {
            background-color: #dc4d3f;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift4 {
            background-color: #4aa940;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift5 {
            background-color: #767892;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .finfo_menu {
            width: 680px;
            height: 35px;
            line-height: 35px;
            color: rgb(255, 255, 255);
            font-size: 15px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="max-width: 900px; margin: auto;">
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

                <li style="margin: 0;">
                    <img alt="Hawooo推薦商品 再搶好康 聖誕第一波" src="https://www.hawooo.com/images/ftp/20171201/edm_01.png" style="float: left; display: block; width: 100%;" /></li>
                <li style="margin: 0;">
                    <img alt="Xmas狂送Gift" src="https://www.hawooo.com/images/ftp/20171201/edm_02.png" style="float: left; display: block; width: 80%;" /></li>


                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift2')">
                    <img alt="送Q10+C錠" src="https://www.hawooo.com/images/ftp/20171201/edm_03.png" style="float: left; display: block; width: 20%;" /></a></li>

                <li style="margin: 0;">
                    <img alt="Xmas狂送Gift" src="https://www.hawooo.com/images/ftp/20171201/edm_04.png" style="float: left; display: block; width: 60%;" /></li>

                <li style="margin: 0"><a href="javascript:void(0)" onclick="GoID('gift4')">
                    <img alt="送軟糖+敏立清" src="https://www.hawooo.com/images/ftp/20171201/edm_05.png" style="float: left; display: block; width: 20%;" /></a></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift1')">
                    <img alt="送透白泥膜" src="https://www.hawooo.com/images/ftp/20171201/edm_06.png" style="float: left; display: block; width: 20%;" /></a></li>

                <li style="margin: 0;">
                    <img alt="Xmas狂送Gift" src="https://www.hawooo.com/images/ftp/20171201/edm_07.png" style="float: left; display: block; width: 60%;" /></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift5')">
                    <img alt="送迪士尼包" src="https://www.hawooo.com/images/ftp/20171201/edm_08.png" style="float: left; display: block; width: 20%;" /></a></li>

                <li style="margin: 0;">
                    <a href="javascript:void(0)" onclick="GoID('gift3')">
                        <img alt="送黑糖桂圓" src="https://www.hawooo.com/images/ftp/20171201/edm_09.png" style="float: left; display: block; width: 20%;" /></a></li>

                <li style="margin: 0;">
                    <img src="https://www.hawooo.com/images/ftp/20171201/edm_10.png" style="float: left; display: block; width: 20%;" /></li>


                <li style="margin: 0;">
                    <img alt="限時滿額禮" src="https://www.hawooo.com/images/ftp/20171201/edm_11.gif" style="float: left; display: block; width: 40%;" /></li>

                <li style="margin: 0;">
                    <img src="https://www.hawooo.com/images/ftp/20171201/edm_12.png" style="float: left; display: block; width: 40%;" /></li>

            </ul>

        </div>

        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gift1"></a>
                    <img alt="彩妝保養：跑趴我最正" src="https://www.hawooo.com/images/ftp/20171201/edm_13.png" style="float: left; display: block; width: 100%;" /></li>

            </ul>
        </div>


        <!--Gift 1開始帶商品-->
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                <li style="margin: 0;">
                    <div class="gift1 am-cf" style="width: 900px;">
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


        <!--Gift 2開始帶商品-->
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go110"></a>
                    <li style="margin: 0;"><a id="gift2"></a>
                        <img alt="保健：越吃越美麗" src="https://www.hawooo.com/images/ftp/20171201/edm_15.png" style="float: left; display: block; width: 100%;" /></li>
            </ul>
        </div>



        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                <li style="margin: 0;">
                    <div class="gift2 am-cf" style="width: 900px;">
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

        <!--Gift 3開始帶商品-->

        <a id="dk1" style="padding-top: 50px; float: left"></a>
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">

            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;"><a id="gift3"></a>
                    <img alt="生活、美食：吃貨最挑嘴" src="https://www.hawooo.com/images/ftp/20171201/edm_17.png" style="float: left; display: block; width: 100%;" /></li>
            </ul>
        </div>

        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                <li style="margin: 0;">
                    <div class="gift3 am-cf" style="width: 900px;">
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


        <!--Gift 4開始帶商品-->
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gift4"></a>
                    <img alt="媽咪寶貝：心肝寶最愛" src="https://www.hawooo.com/images/ftp/20171201/edm_19.png" style="float: left; display: block; width: 100%;" /></li>
            </ul>
        </div>


        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                <li style="margin: 0;">
                    <div class="gift4 am-cf" style="width: 900px;">
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


        <!--Gift 5開始帶商品-->
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gift5"></a>
                    <img alt="鞋子包包內衣：伸展台穿搭" src="https://www.hawooo.com/images/ftp/20171201/edm_21.png" style="float: left; display: block; width: 100%;" /></li>
            </ul>
        </div>


        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                <li style="margin: 0;">
                    <div class="gift5 am-cf" style="width: 900px;">
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

        <!--footer-->
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 900px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="#" target="_blank">
                    <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171201/edm_23.png" style="float: left; display: block; width: 100%;" /></li>
            </ul>
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
    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


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
