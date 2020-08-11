<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="getcoupon.aspx.cs" Inherits="user_getcoupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/coupon.css?v=20171128-1" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <script>
        $(function () {
            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/getcoupon.aspx";
                }
            }
        }
         )
    </script>
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

        .top1 {
            background: url(https://www.hawooo.com/images/ftp/20171116/edm_02.png)no-repeat;
            background-size: 100%;
            height: 740px;
            margin: 0px auto;
            padding: 0px;
        }

        .top2 {
            background: url(https://www.hawooo.com/images/ftp/20171116/edm_04.png)no-repeat;
            background-size: 100%;
            height: 740px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
    <div style="margin-top: 140px; display: block;">
        <!-- 優惠券活動主要圖片 coupon main pic start-->
        <asp:UpdatePanel ID="up_header" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="am-container coupon-b-pic">
                    <img src="https://www.hawooo.com/images/ftp/20171116/top_01.png" style="width: 100%">

                    <%--  <img src="https://www.hawooo.com/images/ftp/20171116/top_02.png" style="width: 50%; float: left;">
                        <asp:LinkButton ID="lnk_get_all" runat="server" OnClick="lnk_get_all_Click" CssClass="get-all-coupon"> </asp:LinkButton>
                    </img>
                    <img src="https://www.hawooo.com/images/ftp/20171116/top_03.png" style="width: 50%; float: left;">
                        <asp:LinkButton ID="lnk_member_counpon" runat="server" OnClick="lnk_member_counpon_Click" CssClass="coupon-check"> </asp:LinkButton>
                    </img>--%>

                    <asp:ImageButton ID="lnk_get_all" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20171116/top_02.png" CssClass="get-all-coupon" OnClick="lnk_get_all_Click1" ImageAlign="Left" Width="50%" />

                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20171116/top_03.png" CssClass="coupon-check" OnClick="ImageButton1_Click" ImageAlign="Left" Width="50%" />
                </section>
                <!-- 優惠券活動主要圖片 coupon main pic end-->
            </ContentTemplate>
        </asp:UpdatePanel>
        <section class="am-container">

            <!-- 品牌折扣券 start -->
            <asp:UpdatePanel ID="up_product_coupon" runat="server">
                <ContentTemplate>
                    <%--<div class="coupon-section brand-coupon">--%>
                    <div class="coupon-section product-coupon" style="margin: 0px; width: 100%">
                        <h4 class="coupon-catalog-title">商品折扣券</h4>
                        <ul class="am-avg-sm-2">
                            <asp:Repeater ID="rp_product_coupon_list" runat="server">
                                <ItemTemplate>
                                   <li >
                                        <asp:LinkButton ID="lnk_get_coupon" runat="server" OnClick="lnk_get_coupon_Click" ClientIDMode="AutoID">
                                            <div class="coupon-wrapper">
                                                <h5 class="coupon-title">
                                                    <asp:HiddenField ID="hf_PC01" runat="server" Value='<%# Eval("PC01") %>' />
                                                    <asp:Literal ID="lit_PC02" runat="server" Text='<%# Eval("PC02") %>'></asp:Literal></h5>
                                                <p class="coupon-price">
                                                    <asp:Literal ID="lit_PC09" runat="server" Text='<%# Eval("PC08").ToString().Equals("0") ?  Eval("PC09").ToString() + "% off" : "RM " + Eval("PC09").ToString() %>'></asp:Literal>
                                                </p>
                                                <div class="coupon-bottom">
                                                    <p class="coupon-time">
                                                        活動期間：
                                                        <asp:Literal ID="lit_PC04_PC05" runat="server" Text='<%# Convert.ToDateTime(Eval("PC04").ToString()).ToString("yyyy/MM/dd")+ "~" + Convert.ToDateTime(Eval("PC05").ToString()).ToString("yyyy/MM/dd") %>'></asp:Literal>
                                                    </p>
                                                    <asp:Literal ID="lit_PC19" runat="server" Text='<%# Eval("PC19") %>'></asp:Literal>
                                                </div>
                                                <span class="phone-take">點擊領取</span>
                                            </div>
                                        </asp:LinkButton>
                                      
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <!-- 品牌折扣券 end -->


            <!--狂銷排行榜start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"></a><img alt="狂銷排行榜" src="https://www.hawooo.com/images/ftp/20171116/edm_01.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>

            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top1 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_hotsales" runat="server">
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

            <!--彩妝start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="聚光燈 亮眼彩妝" src="https://www.hawooo.com/images/ftp/20171116/edm_03.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>

            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top2 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_cosmetics" runat="server">
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
            <!--保養start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="極女神 全身保養" src="https://www.hawooo.com/images/ftp/20171116/edm_05.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top1 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_skincare" runat="server">
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

            <!--保健start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="顏值控 內外保健" src="https://www.hawooo.com/images/ftp/20171116/edm_07.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top2 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_supplements" runat="server">
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
            <!--穿搭start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
                    <li style="margin: 0;"></a><img alt="粉性感  內著穿搭" src="https://www.hawooo.com/images/ftp/20171116/edm_09.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top1 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_lingerir" runat="server">
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

            <!--食物start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="好時光 台灣名產" src="https://www.hawooo.com/images/ftp/20171116/edm_11.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top2 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_food" runat="server">
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
            <!--生活start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
                    <li style="margin: 0;">
                        <img alt="小幫手 生活智慧" src="https://www.hawooo.com/images/ftp/20171116/edm_13.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top1 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_life" runat="server">
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

            <!--媽媽start-->
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="心肝寶 媽媽最愛" src="https://www.hawooo.com/images/ftp/20171116/edm_15.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>
            <div style="margin: 0 auto; float: center; display: block; width: 100%">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="top2 am-cf" style="width: 100%">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">
                                    <asp:Repeater ID="rp_baby" runat="server">
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
        </section>

        <!-- footer-good-block 頁尾三大好處的icon star -->
        <section class="footer-good-block">
            <div class="am-g" style="background: white; margin: 20px 0px;">
                <div class="am-container footer-good-block-wrapper">
                    <ul class="am-avg-sm-3">
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_01.png" id="company-quality1">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>100％海外正品</h4>
                                    <p>100% Authentic</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_02.png" id="company-quality2">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>RM199 免運</h4>
                                    <p>RM199 Free Shipping</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_03.png">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>3-10天到貨</h4>
                                    <p>Fast Delivery</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- footer-good-block 頁尾三大好處的icon end -->
    </div>
  <%--  <script type="text/javascript">
        function mouseoverCoupon(e) {
            $(e).find(".coupon-hover").addClass("show");
        }

        function mouseOutCoupon(e) {
            $(e).find(".coupon-hover").removeClass("show");
        }

    </script>--%>
</asp:Content>

