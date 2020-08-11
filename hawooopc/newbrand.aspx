<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newbrand.aspx.cs" Inherits="newbrand" MasterPageFile="~/user/user.master" %>

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
            background-color: #f4d7c2;
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
            background-color: #cc947f;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale3 {
            width: 900px;
            background-color: #ff8242;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale4 {
            width: 900px;
            background-color: #5b98c3;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale5 {
            width: 900px;
            background-color: #2b2b2b;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale6 {
            width: 900px;
            background-color: #37b7e9;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale7 {
            width: 900px;
            background-color: #ff8242;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale8 {
            width: 900px;
            background-color: #7e5599;
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
        <a href="https://www.hawooo.com/user/search.aspx?stxt=Bevy%20C" target="_blank">
            <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180416/edm2_01.png" alt="robin way" style="width: 100%;"></a>
    </div>

    <!--第一塊-->
    <div class="am-cf sale1">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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
        <a href="https://www.hawooo.com/user/search.aspx?stxt=solone" target="_blank">
            <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180416/edm2_02.png" alt="superCut" style="width: 100%;"></a>
    </div>
    <div class="am-cf sale2">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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
        <a href="https://www.hawooo.com/user/search.aspx?stxt=supercut" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180416/edm2_03.png" alt="supercut" style="width: 100%;"></a>
    </div>
    <div class="am-cf sale3">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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

    <!--第四塊-->
    <div style="width: 900px; margin: 0 auto;">

        <a href="https://www.hawooo.com/user/search.aspx?stxt=%E9%9C%B2%E5%A5%87%E4%BA%9E" target="_blank">
            <img id="gosale4" src="https://www.hawooo.com/images/ftp/20180416/edm2_04.png" alt="膠原蛋白" style="width: 100%;"></a>

    </div>
    <div class="am-cf sale4">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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

    <!--第五塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=Robin%20may" target="_blank">
            <img id="gosale5" src="https://www.hawooo.com/images/ftp/20180416/edm2_05.png" alt="Robin may" style="width: 100%;"></a>
    </div>
    <div class="am-cf sale5">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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

    <!--第六塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=WARX" target="_blank">
            <img id="gosale6" src="https://www.hawooo.com/images/ftp/20180416/edm2_06.png" alt="WARX除臭襪" style="width: 100%;"></a>

    </div>
    <div class="am-cf sale6">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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


    <!--第七塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=TTL%E6%B3%A1%E9%BA%B5%E7%B3%BB%E5%88%97" target="_blank">
            <img id="gosale7" src="https://www.hawooo.com/images/ftp/20180416/edm2_07.png" alt="TTL台酒" style="width: 100%;"></a>
    </div>
    <div class="am-cf sale7">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_7" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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

    <!--第八塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=566%E9%99%B3%E5%BA%AD%E5%A6%AE%E6%8E%A8%E8%96%A6" target="_blank">
            <img id="gosale8" src="https://www.hawooo.com/images/ftp/20180416/edm2_08.png" alt="566" style="width: 100%;"></a>
    </div>
    <div class="am-cf sale8">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_8" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
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
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="https://www.hawooo.com/user/180412lovemom.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>


            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale1" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="我想變正妹"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale2" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="吃就能保養"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale3" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="穿搭小祕技"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale4" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="生活智慧王"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="台灣品牌大賞"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>

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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 160 }, 500);
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
