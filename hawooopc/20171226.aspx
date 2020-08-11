<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171226.aspx.cs" MasterPageFile="~/user/user.master" Inherits="_17_12_17_NewYear_20171226" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20171226.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/newyearmom.css">

    <%--    <style type="text/css">
        body {
            position: relative;
            height: 650vh;
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
            top: 18%;
            right: 9%;
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

        .hr72 {
            background: url(https://www.hawooo.com/images/ftp/20171226/edm_03.png)no-repeat;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .newsale {
            background: url(https://www.hawooo.com/images/ftp/20171226/edm_05.png)no-repeat;
            background-size: 100%;
            height: 1192px;
            margin: 0px auto;
            padding: 0px;
        }

        .yrsale {
            background: url(https://www.hawooo.com/images/ftp/20171226/edm_031.png)no-repeat;
            background-size: 100%;
            height: 1192px;
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
    </style>--%>

    <style type="text/css">
        body {
            position: relative;
            height: 650vh;
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
            top: 18%;
            right: 9%;
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

        .hr72 {
            background: url(https://www.hawooo.com/images/ftp/20180104/168/0103edm_07.png)no-repeat;
            background-size: 100%;
            height: 1860px;
            margin: 0px auto;
            padding: 0px;
        }


        .newsale {
            background: url(https://www.hawooo.com/images/ftp/20180104/168/0103edm_09.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }

        .yrsale {
            background: url(https://www.hawooo.com/images/ftp/20180104/168/0103edm_07.png)no-repeat;
            background-size: 100%;
            height: 1450px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; margin: 0 auto; float: center; display: block; width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">
            <!--開始帶商品-->

            <li style="margin: 0;"><a id="gotop"></a>
                <img alt="2018要你一直發" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_01.png" style="float: left; display: block; width: 100%;" />
            </li>

            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="滿額現折" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_02.png" style="float: left; display: block; width: 25%;" /></li>

                        <li style="margin: 0;">
                            <img alt="免運門檻" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_03.png" style="float: left; display: block; width: 25%;" /></li>

                        <li style="margin: 0;"><a href="20180104.aspx" target="_blank">
                            <img alt="星座運勢看這裡" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_04.png" style="float: left; display: block; width: 25%;" /></a></li>

                        <li style="margin: 0;"><a href="20180110.aspx">
                            <img alt="新年禮籃看這裡" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_05.png" style="float: left; display: block; width: 25%;" /></a></li>

                        <li style="margin: 0;"><a id="go72hr"></a>
                            <img alt="禮盒最熱賣" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_06.png" style="float: left; display: block; width: 100%;" /></li>

                    </ul>
                </div>
            </li>

            <!--72小時開始帶商品-->
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="yrsale am-cf" style="width: 900px;">
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
            </li>
            <!--商品結束-->


            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                         <li style="margin:0;"><a id="gonewsale"></a><img alt="保健最超值" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_08.png" style="float:left;display:block;width:100%;" /></li>
                    </ul>
                </div>
            </li>
            <li>
                <!--排行榜商品開始-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="newsale  am-cf" style="width: 900px;">
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
            </li>
            <li>
                <!--HOT 熱銷年終回饋 最高折58開始帶商品-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                       <li style="margin:0;"><a id="goyrsale"></a><img alt="美麗小心機" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_10.png" style="float:left;display:block;width:100%;" /></li>
                    </ul>
                </div>
            </li>
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="yrsale am-cf" style="width: 900px;">
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
            </li>

            <!--商品結束-->
            <!--送禮送到心坎裡開始帶商品-->
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                       <li style="margin:0;"><a id="gogift"></a><img alt="穿搭我最正" src="https://www.hawooo.com/images/ftp/20180104/168/0103edm_12.png" style="float:left;display:block;width:100%;" /></li>
                    </ul>
                </div>
            </li>
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="newsale am-cf" style="width: 900px;">
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
            </li>
            <!--商品結束-->
            <!--footer-->
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="Hawooo.com" class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" /></li>

                    </ul>
                </div>
            </li>
        </ul>
    </div>



    <!-- 一個看不見的div 高度0 -->



    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">

        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
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


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>

</asp:Content>

