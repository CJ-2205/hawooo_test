<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180516midsalemain.aspx.cs" Inherits="_180516midsalemain" MasterPageFile="~/user/user.master" %>

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
            background-color: #a273df;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 900px;
            background-color: #d979cd;
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
            top:20%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }
        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }

        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
            }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180517/edm_01.png" alt="愛呀我的媽" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <a href="180516midsalebrand.aspx?tid=gosale1" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_A.png" alt="女人我最大" style="position: absolute; top: 67%; margin: auto; width: 45%; left: 7%;" />
            </a>
            <a href="180516midsalebrand.aspx?tid=gosale2" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_B.png" alt="桃花朵朵開" style="position: absolute; top: 67.5%; margin: auto; width: 46%; left: 52%;" />
            </a>
            <a href="180516midsalebrand.aspx?tid=gosale3" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_C.png" alt="台灣人最愛" style="position: absolute; top: 67.5%; margin: auto; width: 52%; left: 99%;" />
            </a>
        </div>
    </div>
    <!--神奇圖層區掰掰-->



    <!--第一塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #b3241a;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180517/edm_02.png" alt="多一元多一件" style="width: 100%;">
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;" class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>


    <!--第二塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #b3241a;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180517/edm_04.png" alt="最高現折300" style="width: 100%;">
        <div class="am-cf sale2">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;" class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>


    <!--第3塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #b3241a;">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180517/edm_06.png" alt="國際免運" style="width: 100%;">
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;" class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
    <!--footer-->

    <div style="width: 100%; position: relative; width: 1000px; z-index: 5; margin: 0 auto">

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>



    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="多一元多一件"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="現折300"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="國際免運"></a>
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
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
