<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180301womenday.aspx.cs" Inherits="_180301womenday" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        body {
            position: relative;
            height: auto;
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
            top: 15%;
            right: 6%;
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

        .gift1 {
            background-size: 100%;
            height: 900px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_03.png);
        }

        .gift2 {
            background-size: 100%;
            height: 900px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_04.png);
        }

        .gift3 {
            background-size: 100%;
            height: 900px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_05.png);
        }

        .gift4 {
            background-size: 100%;
            height: 900px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_06.png);
        }

        .gift5 {
            background-size: 100%;
            height: 900px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_07.png);
        }

        .gift6 {
            background-size: 100%;
            height: 900px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_08.png);
        }

        .gift7 {
            background-size: 100%;
            height: 850px;
            margin: 0px auto;
            padding: 0px;
            background-image: url(https://www.hawooo.com/images/ftp/20180302/edm_09.png);
        }
        /*心跳跳*/
        .heartbeat-play2 {
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-name: heartbeat-play2;
            animation-name: heartbeat-play2;
            -webkit-animation-iteration-count: infinite;
            animation-iteration-count: infinite; /* -webkit-animation-direction: alternate;animation-direction: alternate;*/
        }

        @-webkit-keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }
        /*@keyframes heartbeat-play2 { 
		0%   { -webkit-transform: scale(1); transform: scale(1); filter:brightness(100%);} 
		40%  { -webkit-transform: scale(0.99); transform: scale(0.99); filter:brightness(100%);} 
		60%  { -webkit-transform: scale(1); transform: scale(1); filter:brightness(120%);} 
		80%  { -webkit-transform: scale(0.99); transform: scale(0.99); filter:brightness(100%);}
		100% { -webkit-transform: scale(1); transform: scale(1); filter:brightness(100%);} 
}*/
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180302/edm_01.png" alt="一鍵全領底圖" style="width: 100%">
        <a id="gotop"></a>


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <div class="heartbeat-play2">
                <img src="https://www.hawooo.com/images/ftp/20180302/logo.png" alt="寵愛女人日" style="position: absolute; margin: auto; width: 40%; left: 7%; top: 55px;" />

            </div>
        </div>

    </div>
    <!--神奇圖層區掰掰-->

    <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">

        <img src="https://www.hawooo.com/images/ftp/20180302/edm_02.png" alt="全站折扣" style="width: 100%;">
        <img src="https://www.hawooo.com/images/ftp/20180302/7people.png" alt="全站折扣" style="width: 100%;">
    </div>

    <!--sale 1區塊開始-->

    <!--開始帶商品-->
    <div class="gift1 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale1"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->


    <!--sale 2區塊開始-->

    <!--開始帶商品-->
    <div class="gift2 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale2"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->

    <!--sale 3區塊開始-->

    <!--開始帶商品-->
    <div class="gift3 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale3"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->



    <!--sale 4區塊開始-->

    <!--開始帶商品-->
    <div class="gift4 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale4"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->


    <!--sale 5區塊開始-->

    <!--開始帶商品-->
    <div class="gift5 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale5"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->


    <!--sale 6區塊開始-->

    <!--開始帶商品-->
    <div class="gift6 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale6"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->

    <!--sale 7區塊開始-->

    <!--開始帶商品-->
    <div class="gift7 am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; height: 850px; list-style-type: none; padding: 0 50px 0 50px;">
        <a id="gosale7"></a>
        <ul class="am-avg-sm-5" style="position: absolute; width: 95%; margin: 0 auto; left: 30px; top: 20px;">
            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>

            <li class="am-fl" style="width: 19%; padding: 10px; margin: 0px 3px; z-index: 10;"></li>


            <asp:Repeater ID="rp_product_list_7" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 19%; background: white; padding: 10px; margin: 5px 3px; z-index: 10;">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 37px; color: dimgrey; font-size: small; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->



    <!--footer-->
    <div style="margin: 0 auto; display: block; width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li>
                <img class="twoyearbottom" alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" /></li>

        </ul>
    </div>

    <!-- 一個看不見的div 高度0 -->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保健"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="內衣"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="保養"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale5')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="生活"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale6')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="食品"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale7')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="母嬰"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180302/sidebar_09.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>


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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        function GoUrlID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 187 }, 500);
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
