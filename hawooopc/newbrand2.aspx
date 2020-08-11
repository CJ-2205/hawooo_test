<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newbrand2.aspx.cs" Inherits="newbrand2" MasterPageFile="~/user/user.master" %>

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
            background-color: #ffcccc;
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
            background-color: #ff8242;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale3 {
            width: 900px;
            background-color: #e53c4e;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale4 {
            width: 900px;
            background-color: #ffcccc;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale5 {
            width: 900px;
            background-color: #1e2c59;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale6 {
            width: 900px;
            background-color: #d6d7d8;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale7 {
            width: 900px;
            background-color: #eb495c;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale8 {
            width: 900px;
            background-color: #7a0171;
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
            top: 17%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--第一塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
            <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180430/edm2_01.png" alt="BHK's" style="width: 100%;"></a>
    </div>

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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--第二塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=51" target="_blank">
            <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180430/edm2_03.png" alt="beauty小舖" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>

    </div>


    <!--第三塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=212" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180430/edm2_05.png" alt="台酒" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--第四塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
            <img id="gosale4" src="https://www.hawooo.com/images/ftp/20180430/edm2_07.png" alt="UNT" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--第五塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=128" target="_blank">
            <img id="gosale5" src="https://www.hawooo.com/images/ftp/20180430/edm2_09.png" alt="Qmomo" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--第六塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=209" target="_blank">
            <img id="gosale6" src="https://www.hawooo.com/images/ftp/20180430/edm2_11.png" alt="robin may" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>


    <!--第七塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=211" target="_blank">
            <img id="gosale7" src="https://www.hawooo.com/images/ftp/20180430/edm2_13.png" alt="solone" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--第八塊-->
    <div style="width: 900px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/brands.aspx?bid=168" target="_blank">
            <img id="gosale8" src="https://www.hawooo.com/images/ftp/20180430/edm2_15.png" alt="櫻桃爺爺ㄧ" style="width: 100%;"></a>
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
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="https://www.hawooo.com/user/180430lovemom.aspx" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="熱銷上萬組"></a>

            <a href="https://www.hawooo.com/user/180430lovemom.aspx?tid=gosale1">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="買一送一"></a>

            <a href="https://www.hawooo.com/user/180430lovemom.aspx?tid=gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保養美妝"></a>

            <a href="https://www.hawooo.com/user/180430lovemom.aspx?tid=gosale3">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="衣櫃必備"></a>

            <a href="https://www.hawooo.com/user/180430lovemom.aspx?tid=gosale4">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="童顏秘訣"></a>

            <a href="https://www.hawooo.com/user/180430lovemom.aspx?tid=gosale5">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="代購必買"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>
        </div>
    </div>
    <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 110 }, 500);
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
