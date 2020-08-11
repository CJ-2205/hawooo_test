<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180516midsalebrand.aspx.cs" Inherits="_180516midsalebrand" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--3大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM2_01.png" style="width: 100%; max-height: 90px;" alt="女人我老大"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM2_02.png" style="width: 100%; max-height: 90px;" alt="桃花朵朵開"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM2_03.png" style="width: 100%; max-height: 90px;" alt="台灣人最愛"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM2_04.png" style="width: 100%; max-height: 90px;" alt="top"></a></li>

        </ul>
    </div>
    <!--3大類別小選單再見-->

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180517/edmm2_01.png" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <a href="180516midsalemain.aspx?tid=gosale1">
                <img src="https://www.hawooo.com/images/ftp/20180517/MB_04.png" alt="加1元多1件" style="position: absolute; top: 64%; margin: auto; width: 51%; left: 0;" />
            </a>

            <a href="180516midsalemain.aspx?tid=gosale3" >
                <img src="https://www.hawooo.com/images/ftp/20180517/MB_06.png" alt="現折300" style="position: absolute; top: 64%; margin: auto; width: 51%; left: 100.5%;" />
            </a>

            <a href="180516midsalemain.aspx?tid=gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180517/MB_05.png" alt="國際免運費" style="position: absolute; top: 64%; margin: auto; width: 49%; left: 51.5%;" />
            </a>
        </div>
    </div>


    <!--神奇圖層區掰掰-->


    <!--第1塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #abe7f3">
        <img id="gosale1" alt="女人我最大" src="https://www.hawooo.com/images/ftp/20180517/edmm2_02.png" style="float: left; display: block; width: 100%;" />
        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=184" target="_blank">
            <img alt="妍霓絲" src="https://www.hawooo.com/images/ftp/20180517/edmm2_03.png" style="float: left; display: block; width: 100%;" /></a>

        <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>


        <!--1-2 start-->

        <a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E9%9B%85%E8%81%9E" target="_blank">
            <img alt="雅聞" src="https://www.hawooo.com/images/ftp/20180517/edmm2_04.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div2" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>

                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

        <!--1-3 start-->
        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=12" target="_blank">
            <img alt="BHK's" src="https://www.hawooo.com/images/ftp/20180517/edmm2_05.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div3" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>


        <!--1-4 start-->
        <a href="http://www.hawooo.com/mobile/search.aspx?stxt=KGCHECK" target="_blank">
            <img alt="KGcheck" src="https://www.hawooo.com/images/ftp/20180517/edmm2_06.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div4" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>

                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第2塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #9effab">
        <img id="gosale2" alt="桃花朵朵開" src="https://www.hawooo.com/images/ftp/20180517/edmm2_08.png" style="float: left; display: block; width: 100%;" />
        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=186" target="_blank">
            <img alt="BC" src="https://www.hawooo.com/images/ftp/20180517/edmm2_09.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div5" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>

                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>


        <!--1-2 start-->

        <a href="http://www.hawooo.com/mobile/search.aspx?stxt=FRESHO2" target="_blank">
            <img alt="Fresho2" src="https://www.hawooo.com/images/ftp/20180517/edmm2_10.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div6" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>

                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <!--1-3 start-->

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=128" target="_blank">
            <img alt="Qmomo" src="https://www.hawooo.com/images/ftp/20180517/edmm2_11.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div7" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_7" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

        <!--1-4 start-->

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=51" target="_blank">
            <img alt="Beauty小舖" src="https://www.hawooo.com/images/ftp/20180517/edmm2_12.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div8" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_8" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>



    <!--第3塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #abe7f3">
        <img id="gosale3" alt="台灣人最愛" src="https://www.hawooo.com/images/ftp/20180517/edmm2_14.png" style="float: left; display: block; width: 100%;" />
        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=206" target="_blank">
            <img alt="566" src="https://www.hawooo.com/images/ftp/20180517/edmm2_15.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div9" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_9" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

        <!--1-2 start-->

        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=167" target="_blank">
            <img alt="loveways" src="https://www.hawooo.com/images/ftp/20180517/edmm2_16.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div10" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_10" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>


        </div>
        <!--1-3 start-->

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=212" target="_blank">
            <img alt="TTL" src="https://www.hawooo.com/images/ftp/20180517/edmm2_17.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div11" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_11" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

        <!--1-4 start-->

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=170" target="_blank">
            <img alt="聯華" src="https://www.hawooo.com/images/ftp/20180517/edmm2_18.png" style="float: left; display: block; width: 100%;" /></a>
        <div id="div12" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_12" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
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
    </script>

</asp:Content>
