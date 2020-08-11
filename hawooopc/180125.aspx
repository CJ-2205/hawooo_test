<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180125.aspx.cs" Inherits="_180125" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>1月發新日</title>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/180125.aspx";
                }
            }
        }
         )
    </script>

    <style type="text/css">
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
            width: 1180px;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20180125/edmbg_02.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
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
    </style>

</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="margin: 0 auto; float: center; display: block; width: 1000px;" id="gotop">
        <img alt="1月發新日" src="https://www.hawooo.com/images/ftp/20180125/edm_01.png" style="float: left; display: block; width: 100%;" />
    </div>



    <!--第一排開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px;">
            <li style="margin: 0;">
                <div class="buy1 am-cf" style="width: 100%;">
                    <div style="padding: 0 10px 0 0; margin-top: 20px">
                        <ul class="am-avg-sm-5">

                            <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: -20px 20px 0px 0px;">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=131">
                                    <img src="https://www.hawooo.com/images/ftp/20180125/edm_02.png" alt="快車肉乾"></a>

                            </li>

                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(20% - 20px); background: white; padding: 10px; margin: 15px 10px 10px 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>

                        <!--第二排開始-->
                        <ul class="am-avg-sm-5">

                            <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=128">
                                    <img src="https://www.hawooo.com/images/ftp/20180125/edm_07.png" alt="Qmomo"></a>

                            </li>
                            <!--分水嶺-->
                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(20% - 20px); background: white; padding: 10px; margin: 15px 10px 10px 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal3" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>

                        <!--第三排開始-->
                        <ul class="am-avg-sm-5">

                            <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=190">
                                    <img src="https://www.hawooo.com/images/ftp/20180125/edm_12.png" alt="阿舍食堂"></a>

                            </li>
                            <!--分水嶺-->
                            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(20% - 20px); background: white; padding: 10px; margin: 15px 10px 10px 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="Literal5" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal6" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>


                        <!--第四排開始-->
                        <ul class="am-avg-sm-5">

                            <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=191">
                                    <img src="https://www.hawooo.com/images/ftp/20180125/edm_17.png" alt="Navalli Hill"></a>

                            </li>
                            <!--分水嶺-->
                            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(20% - 20px); background: white; padding: 10px; margin: 15px 10px 10px 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>


                        <!--第五排開始-->
                        <ul class="am-avg-sm-5">

                            <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=187">
                                    <img src="https://www.hawooo.com/images/ftp/20180125/edm_22.png" alt="小兒利薩兒"></a>

                            </li>
                            <!--分水嶺-->
                            <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(20% - 20px); background: white; padding: 10px; margin: 15px 10px 10px 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>

                        <!--第六排開始-->

                        <ul class="am-avg-sm-5">

                            <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=182">
                                    <img src="https://www.hawooo.com/images/ftp/20180125/edm_27.png" alt="善shan"></a>

                            </li>
                            <!--分水嶺-->
                            <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(20% - 20px); background: white; padding: 10px; margin: 15px 10px 10px 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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

    <!-- 一個看不見的div 高度0 -->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="https://www.hawooo.com/user/20180116.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="新年紅包"></a>


            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale1" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="年貨大街"></a>

            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale2" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="氣色好桃花到"></a>

            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale3" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="養髮好運旺旺"></a>

            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale4" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="除舊佈新"></a>


            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
        </div>
    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 200 }, 500);
        }
    </script>
</asp:Content>

