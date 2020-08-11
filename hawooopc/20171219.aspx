﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171219.aspx.cs" MasterPageFile="~/user/user.master" Inherits="_17_12_17_1219BHK_user_20171219" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171219.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/newyearmom.css">

    <style type="text/css">
        body {
            position: relative;
            height: auto;
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


        .gift2 {
            background-color: #ff8600;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; margin: 0 auto; float: center; display: block; width: 1000px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">
            <!--開始帶商品-->
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="不藏私大公開" src="https://www.hawooo.com/images/ftp/20171219/bhk/bhks_pc.png" style="float: left; display: block; width: 100%;" /></li>

                        <%-- <li style="margin: 0;">
                        <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20171215/discount.png" style="float: left; display: block; width: 100%;" />
                    </li>--%>
                    </ul>
                </div>
            </li>

            <!--開始帶商品-->
            <li>
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                    <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                        <li style="margin: 0;">
                            <div class="gift2 am-cf" style="width: 1000px;">
                                <div style="padding: 10px 50px 0 50px;">
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
                <!--footer-->
                <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                    <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;">
                            <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" /></li>
                    </ul>
                </div>
            </li>


        </ul>
    </div>

</asp:Content>
