<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180104.aspx.cs" MasterPageFile="~/user/user.master" Inherits="user_20180104" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20180104.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/newyearmom.css">

    <style type="text/css">
        body {
            position: relative;
            /*height: 400vh;*/
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
            right: 5%;
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



        .firesign {
            background-color: #EC008C;
            height: auto;
        }

        .earthsign {
            background-color: #FBD000;
            height: auto;
        }

        .watersign {
            background-color: #00A7BC;
            height: auto;
        }

        .windsign {
            background-color: #044389;
            height: auto;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #ff0060;
            text-align: center;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; margin: 0 auto; float: center; display: block; width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <li style="margin: 0;"><a id="gotop"></a>
                <img alt="2018星座開運秘技" src="https://www.hawooo.com/images/ftp/20180104/edm_01.png" style="float: left; display: block; width: 100%;" /></li>


            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img src="https://www.hawooo.com/images/ftp/20180104/edm_02.png" style="float: left; display: block; width: 10%;" /></li>

                        <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gofire')">
                            <img alt="火象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_03.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('goearth')">
                            <img alt="土象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_04.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gowater')">
                            <img alt="水象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_05.png" style="float: left; display: block; width: 20%;" /></a></li>
                        <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gowind')">
                            <img alt="風象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_06.png" style="float: left; display: block; width: 20%;" /></a></li>

                        <li style="margin: 0;">
                            <img src="https://www.hawooo.com/images/ftp/20180104/edm_07.png" style="float: left; display: block; width: 10%;" /></li>

                        <li style="margin: 0;">
                            <img src="https://www.hawooo.com/images/ftp/20180104/edm_08.png" style="float: left; display: block; width: 100%;" /></li>

                        <li style="margin: 0;"><a id="gofire"></a>
                            <img src="https://www.hawooo.com/images/ftp/20180104/edm_09.png" style="float: left; display: block; width: 100%;" /></li>
                    </ul>
                </div>
            </li>


            <li>
                <!--火象星座開始帶商品-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px;">
                        <li style="margin: 0;">
                            <div class="firesign am-cf" style="width: 900px;">
                                <div style="padding: 0 50px 0 50px;">
                                    <ul class="am-avg-sm-4">

                                        <!--複製吧-->

                                        <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                    <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
                                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                        <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px;"><a style="color: #535252" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
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


            <!--土象星座商品開始-->
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a id="goearth"></a>
                            <img alt="土象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_10.png" style="float: left; display: block; width: 100%;" /></li>
                    </ul>
                </div>
            </li>

            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="earthsign am-cf" style="width: 900px;">
                                <div style="padding: 0 50px 0 50px;">
                                    <ul class="am-avg-sm-4">

                                        <!--複製吧-->

                                        <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                    <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
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
                <!--水象星座開始帶商品-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a id="gowater"></a>
                            <img alt="水象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_11.png" style="float: left; display: block; width: 100%;" /></li>
                    </ul>
                </div>
            </li>
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="watersign am-cf" style="width: 900px;">
                                <div style="padding: 0 50px 0 50px;">
                                    <ul class="am-avg-sm-4">

                                        <!--複製吧-->
                                        <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                    <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
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
                <!--風象星座開始帶商品-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a id="gowind"></a>
                            <img alt="風象星座" src="https://www.hawooo.com/images/ftp/20180104/edm_12.png" style="float: left; display: block; width: 100%;" /></li>
                    </ul>
                </div>
            </li>
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="windsign am-cf" style="width: 900px;">
                                <div style="padding: 0 50px 0 50px;">
                                    <ul class="am-avg-sm-4">
                                        <!--複製吧-->
                                        <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                    <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
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
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="hawooo footer" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" class="twoyearbottom" /></li>


                    </ul>
                </div>
            </li>
        </ul>
    </div>



    <!-- 一個看不見的div 高度0 -->
    <div class="invisible">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="https://www.hawooo.com/user/20171226.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180104/0103_pc-section_01.png" style="width: 150px; margin-bottom: -1px" alt="2018要你一直發"></a>


            <a href="https://www.hawooo.com/user/hotsale_detail.aspx?id=343" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180104/0103_pc-section_02.png" style="width: 150px; margin-bottom: -1px" alt="2018必備鞋款"></a>

            <a href="https://www.hawooo.com/user/hotsale_detail.aspx?id=340" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180104/0103_pc-section_03.png" style="width: 150px; margin-bottom: -1px" alt="叫我魔髮女神"></a>

            <a href="http://www.hawooo.com/user/hotsale_detail.aspx?id=345" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180104/0103_pc-section_04.png" style="width: 150px; margin-bottom: -1px" alt="美妝保養"></a>

            <a href="https://www.hawooo.com/user/hotsale_detail.aspx?id=321" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180104/0103_pc-section_05.png" style="width: 150px; margin-bottom: -1px" alt="寶貝我的寶貝"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180104/0103_pc-section_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
        </div>
    </div>



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

