<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newbrand.aspx.cs" Inherits="newbrand" MasterPageFile="~/mobile/mobile.master" %>

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
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/180412lovemom.aspx?tid=gosale1">
                    <img src="https://www.hawooo.com/images/ftp/20180416/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="我想變正妹"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180412lovemom.aspx?tid=gosale2">
                    <img src="https://www.hawooo.com/images/ftp/20180416/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="吃就能保養"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180412lovemom.aspx?tid=gosale3">
                    <img src="https://www.hawooo.com/images/ftp/20180416/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="穿搭小祕技"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180412lovemom.aspx?tid=gosale4">
                    <img src="https://www.hawooo.com/images/ftp/20180416/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="生活智慧王"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180416/sidebarM_05.png" style="width: 100%; max-height: 90px;" alt="台灣品牌大賞"></a></li>


        </ul>
    </div>
    <!--四大類別小選單再見-->
    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=bevy%20c" target="_blank">
            <img id="gosale1" alt="Bevy C" src="https://www.hawooo.com/images/ftp/20180416/edmm2_01.png" style="float: left; display: block; width: 100%;" /></a>
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #f4d7c2">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>

    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #cc947f">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=solone" target="_blank">
            <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180416/edmm2_02.png" alt="solone" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div id="div2" style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>

    </div>

    <!--第三塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ff8242">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=supercut" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180416/edmm2_03.png" alt="supercut" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>

    <!--第四塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #5b98c3">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=ruijia" target="_blank">
            <img id="gosale4" src="https://www.hawooo.com/images/ftp/20180416/edmm2_04.png" alt="Ruijia" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>

    <!--第五塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #2b2b2b">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=robin%20may" target="_blank">
            <img id="gosale5" src="https://www.hawooo.com/images/ftp/20180416/edmm2_05.png" alt="robin may" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <!--第六塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #37b7e9">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=warx" target="_blank">
            <img id="gosale6" src="https://www.hawooo.com/images/ftp/20180416/edmm2_06.png" alt="warx" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <!--第七塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ff8242">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=TTL%E6%B3%A1%E9%BA%B5%E7%B3%BB%E5%88%97" target="_blank">
            <img id="gosale7" src="https://www.hawooo.com/images/ftp/20180416/edmm2_07.png" alt="ttl" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_7" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <!--第八塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #7e5599">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=566%E9%99%B3%E5%BA%AD%E5%A6%AE%E6%8E%A8%E8%96%A6" target="_blank">
            <img id="gosale8" src="https://www.hawooo.com/images/ftp/20180416/edmm2_08.png" alt="566" style="width: 100%;"></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_8" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
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
    </script>


</asp:Content>
