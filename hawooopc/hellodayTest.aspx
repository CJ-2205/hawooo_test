﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hellodaytest.aspx.cs" Inherits="helloday" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .deleteprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
        }

        .sale1 {
            width: 900px;
            /*background-color: #1E2C59;*/ /*week1*/
            background-color: #f49c98; /*week2*/
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #F61C68;
            text-align: center;
        }

        .sale2 {
            width: 900px;
            /*background-color: #FF8242;*/ /*week1*/
            background-color: #bfbfbf; /*week2*/
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale3 {
            width: 900px;
            /*background-color: #5B98C3;*/ /*week1*/
            background-color: #638c0b; /*week2*/
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 18%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=208" target="_blank">
            <asp:Image ID="gosale1" runat="server" Style="width: 100%;" />
        </a>
    </div>

    <!--第一塊-->
    <div class="am-cf sale1">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 class="pname">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p class="discountprice">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--第二塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=%E5%8F%B0%E9%85%92" target="_blank">
            <asp:Image ID="gosale2" runat="server" Style="width: 100%;" />
        </a>
    </div>
    <div class="am-cf sale2">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 class="pname">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p class="discountprice">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>

    </div>


    <!--第三塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=196" target="_blank">
            <asp:Image ID="gosale3" runat="server" Style="width: 100%;" /></a>
    </div>
    <div class="am-cf sale3">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 class="pname">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p class="discountprice">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--footer-->
    <!--下面帶活動說明-->

    <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>



    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 13">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <asp:Image ID="side1" runat="server" />
            </a>
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <asp:Image ID="side2" runat="server" />
            </a>
            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <asp:Image ID="side3" runat="server" />
            </a>
            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <asp:Image ID="side4" runat="server" />
            </a>
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <asp:Image ID="side5" runat="server" />
            </a>
        </div>
    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            //$("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 160 }, 500);
            $("html,body").animate({ scrollTop: $("#ContentPlaceHolder1_" + id + "").offset().top - 160 }, 500);

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

</asp:Content>
