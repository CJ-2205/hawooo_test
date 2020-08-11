<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="getcoupon.aspx.cs" Inherits="mobile_getcoupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/coupon.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--  <style type="text/css">
        .topm1 {
            background: url(https://www.hawooo.com/images/ftp/20171116/edmm_02.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .topm2 {
            background: url(https://www.hawooo.com/images/ftp/20171116/edmm_04.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>--%>
    <style>
        .input-auto-image{
            border-radius:0px;
        }
    </style>
    <section class="am-container">
        <main class="page-main" style="margin: 0px 0px 0px 0px">
            <!-- 折扣券 coupon-main-wrapper start -->
            <div class="am-g">

                <!-- 大圖 -->
                <asp:UpdatePanel ID="up_header" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="coupon-main-pic">
                            <%--     <img src="images/20171030/1024_一件神領bN手機長_01.gif" />
                            <asp:LinkButton ID="lnk_get_all" runat="server" OnClick="lnk_get_all_Click">
                                  <img src="images/20171030/1024_一件神領bN手機長_02.gif">
                            </asp:LinkButton>
                            <img src="images/20171030/1024_一件神領bN手機長_03.gif">--%>
                            <img src="https://www.hawooo.com/images/ftp/20171116/topM_01.png" style="width: 100%">
                            <asp:ImageButton ID="lnk_get_all" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20171116/topM_02.png" CssClass="get-all-coupon input-auto-image" OnClick="lnk_get_all_Click" ImageAlign="Left" Width="50%"  />

                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20171116/topM_03.png" CssClass="coupon-check input-auto-image" OnClick="ImageButton1_Click" ImageAlign="Left" Width="50%" />
                            <img src="https://www.hawooo.com/images/ftp/20171116/topm350.png">
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <!-- 按鈕 -->
                <div class="coupon-btn-wrapper">
                </div>


                <%--  <!-- 折扣券 商品折扣券 start-->
                <section class="am-container ">
                    <div class="coupon-section product-coupon am-cf">
                        <h4 class="coupon-catalog-title">商品折扣卷</h4>
                        <ul class="am-avg-sm-1 am-avg-md-2">
                            <li>
                                <a href="#">
                                    <div class="am-u-sm-12 coupon-wrapper">
                                        <h5 class="coupon-title">全館滿 RM 200.00折抵</h5>
                                        <p class="coupon-price">RM 20</p>
                                        <div class="coupon-bottom">
                                            <p class="coupon-time">有效期間：2017/09/23~2017/9/26</p>
                                            不管買什麼都可以只有老闆不能買！買什麼折什麼！不管買什麼都可以只有老闆不能買！買什麼折什麼！
                                        </div>
                                        <span class="phone-take">領取</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="am-u-sm-12 coupon-wrapper">
                                        <h5 class="coupon-title">全館滿 RM 200.00折抵</h5>
                                        <p class="coupon-price">RM 20</p>
                                        <div class="coupon-bottom">
                                            <p class="coupon-time">有效期間：2017/09/23~2017/9/26</p>
                                            不管買什麼都可以只有老闆不能買！買什麼折什麼！不管買什麼都可以只有老闆不能買！買什麼折什麼！
                                        </div>
                                        <span class="phone-take">領取</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="am-u-sm-12 coupon-wrapper">
                                        <h5 class="coupon-title">全館滿 RM 200.00折抵</h5>
                                        <p class="coupon-price">RM 20</p>
                                        <div class="coupon-bottom">
                                            <p class="coupon-time">有效期間：2017/09/23~2017/9/26</p>
                                            不管買什麼都可以只有老闆不能買！買什麼折什麼！不管買什麼都可以只有老闆不能買！買什麼折什麼！
                                        </div>
                                        <span class="phone-take">領取</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </section>
                <!-- 折扣券 商品折扣券 end-->
                <!-- 折扣券 類別折扣券 start-->
                <section class="am-container">
                    <div class="coupon-section catalog-coupon">
                        <h4 class="coupon-catalog-title">類別折扣卷</h4>
                        <ul class="am-avg-sm-1 am-avg-md-2">
                            <li>
                                <a href="#">
                                    <div class="am-u-sm-12 coupon-wrapper">
                                        <h5 class="coupon-title">全館滿 RM 200.00折抵</h5>
                                        <p class="coupon-price">RM 20</p>
                                        <div class="coupon-bottom">
                                            <p class="coupon-time">有效期間：2017/09/23~2017/9/26</p>
                                            不管買什麼都可以只有老闆不能買！買什麼折什麼！不管買什麼都可以只有老闆不能買！買什麼折什麼！
                                        </div>
                                        <span class="phone-take">領取</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="am-u-sm-12 coupon-wrapper">
                                        <h5 class="coupon-title">全館滿 RM 200.00折抵</h5>
                                        <p class="coupon-price">RM 20</p>
                                        <div class="coupon-bottom">
                                            <p class="coupon-time">有效期間：2017/09/23~2017/9/26</p>
                                            不管買什麼都可以只有老闆不能買！買什麼折什麼！不管買什麼都可以只有老闆不能買！買什麼折什麼！
                                        </div>
                                        <span class="phone-take">領取</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </section>
                <!-- 折扣券 類別折扣券 end-->--%>
                <!-- 折扣券 品牌折扣券 start-->
                <asp:UpdatePanel ID="up_product_coupon" runat="server">
                    <ContentTemplate>
                        <section class="am-container ">
                            <div class="coupon-section brand-coupon">
                                <h4 class="coupon-catalog-title">商品折扣券</h4>
                                <ul class="am-avg-sm-1 am-avg-md-2">
                                    <asp:Repeater ID="rp_product_coupon_list" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <asp:LinkButton ID="lnk_get_coupon" runat="server" OnClick="lnk_get_coupon_Click" ClientIDMode="AutoID">
                                                    <div class="am-u-sm-12 coupon-wrapper">
                                                        <h5 class="coupon-title">
                                                            <asp:HiddenField ID="hf_PC01" runat="server" Value='<%# Eval("PC01") %>' />
                                                            <asp:Literal ID="lit_PC02" runat="server" Text='<%# Eval("PC02") %>'></asp:Literal></h5>
                                                        <p class="coupon-price">
                                                            <asp:Literal ID="lit_PC09" runat="server" Text='<%# Eval("PC08").ToString().Equals("0") ?  Eval("PC09").ToString() + "% off" : "RM " + Eval("PC09").ToString() %>'></asp:Literal>
                                                        </p>
                                                        <div class="coupon-bottom">
                                                        <%--    <p class="coupon-time">
                                                                活動期間：
                                                        <asp:Literal ID="lit_PC04_PC05" runat="server" Text='<%# Convert.ToDateTime(Eval("PC04").ToString()).ToString("yyyy/MM/dd")+ "~" + Convert.ToDateTime(Eval("PC05").ToString()).ToString("yyyy/MM/dd") %>'></asp:Literal>
                                                            </p>--%>
                                                            <asp:Literal ID="lit_PC19" runat="server" Text='<%# Eval("PC19") %>'></asp:Literal>
                                                        </div>
                                                        <span class="phone-take">領取</span>
                                                    </div>
                                                </asp:LinkButton>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </section>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <!-- 折扣券 品牌折扣券 end-->
                <!--排行榜start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;">
                            <a href="getcoupon1.aspx">
                                <img alt="排行榜" src="https://www.hawooo.com/images/ftp/20171116/edmm_01.png" style="float: left; display: block; width: 100%;" />
                            </a>
                        </li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_02.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_hotsales" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--排行榜end-->

                <!--彩妝start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon2.aspx">
                            <img alt="彩妝" src="https://www.hawooo.com/images/ftp/20171116/edmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_04.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_cosmetics" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--彩妝end-->


                <!--保養start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon3.aspx">
                            <img alt="保養" src="https://www.hawooo.com/images/ftp/20171116/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_02.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_skincare" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--保養end-->


                <!--保健start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon4.aspx">
                            <img alt="保健" src="https://www.hawooo.com/images/ftp/20171116/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_04.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_supplements" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--保健end-->

                <!--穿搭start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon5.aspx">
                            <img alt="穿搭" src="https://www.hawooo.com/images/ftp/20171116/edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_02.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_lingerir" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--穿搭end-->

                <!--食物start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon6.aspx">
                            <img alt="食物" src="https://www.hawooo.com/images/ftp/20171116/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_04.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_food" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--食物end-->

                <!--生活start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon7.aspx">
                            <img alt="生活" src="https://www.hawooo.com/images/ftp/20171116/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_02.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_life" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--生活end-->

                <!--媽媽start-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="getcoupon8.aspx">
                            <img alt="媽媽" src="https://www.hawooo.com/images/ftp/20171116/edmm_15.png" style="float: left; display: block; width: 100%;" /></a></li>
                    </ul>
                </div>
                <div style="position: relative; float: center; margin: 0 auto;">
                    <img src="https://www.hawooo.com/images/ftp/20171116/edmm_04.png" style="width: 100%">
                    <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                        <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                            <asp:Repeater ID="rp_baby" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                        </p>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!--媽媽end-->
        </main>
    </section>

    <section class="am-g am-g-collapse" id="section-company-promises">
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_01.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises">100%海外正品</span><br>
                    <!-- <span class="subtitle-company-promises">100% Authentic</span> -->
                </div>
            </div>
        </div>
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_02.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises">RM 199免郵</span><br>
                    <!-- <span class="subtitle-company-promises">RM 249 Free Shipping</span> -->
                </div>
            </div>
        </div>
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_03.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises">3-10天到貨</span><br>
                    <!-- <span class="subtitle-company-promises">Fast Delivery</span> -->
                </div>
            </div>
        </div>

    </section>

</asp:Content>

