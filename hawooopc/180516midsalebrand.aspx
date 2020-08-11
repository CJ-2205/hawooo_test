<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180516midsalebrand.aspx.cs" Inherits="_180516midsalebrand" MasterPageFile="~/user/user.master" %>

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
            width: 950px;
            background-color: #abe7f3;
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
            top: 20%;
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

        .gift1 {
            background-color: #abe7f3;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-color: #93ffa1;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180517/edm2_01.png" alt="愛呀我的媽" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 65%; top: 0; bottom: 0; left: 0; right: 0;">
            <a href="180516midsalemain.aspx?tid=gosale1" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_D.png" alt="加一元多一件" style="position: absolute; top: 69%; margin: auto; width: 43%; left: 5%;" />
            </a>
            <a href="180516midsalemain.aspx?tid=gosale2" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_E.png" alt="現折rm300" style="position: absolute; top: 69%; margin: auto; width: 50%; left: 50%;" />
            </a>
            <a href="180516midsalemain.aspx?tid=gosale3" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_F.png" alt="國際免運" style="position: absolute; top: 69%; margin: auto; width: 49%; left: 101%;" />
            </a>
        </div>
    </div>
    <!--神奇圖層區掰掰-->



    <!--sale 1區塊開始-->
    <div style="width: 1000px; margin: 0 auto; background-color: #b3241a;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180517/edm2_02.png" alt="多一元多一件" style="width: 100%;">
    </div>

    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; background-color: #b4241a; height: 780px; list-style-type: none;">
        <div class="gift1 am-cf" style="width: 950px;">
            <!--帶品牌-->
            <div style="float: left; width: 20%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=184" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/001.png" alt="妍霓絲" style="position: absolute; top: 2%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/search.aspx?stxt=%E9%9B%85%E8%81%9E" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/002.png" alt="雅聞" style="position: absolute; top: 39%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/003.png" alt="BHK's" style="position: absolute; top: 75%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=170" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/004.png" alt="KGCHECK" style="position: absolute; top: 111.5%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                </div>
            </div>

            <!--帶商品-->
            <div style="padding: 0 10px; float: right; width: 80%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 50;">
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
    </div>

    <!--sale 2區塊開始-->
    <div style="width: 1000px; margin: 0 auto; background-color: #b3241a;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180517/edm2_04.png" alt="桃花朵朵開" style="width: 100%;">
    </div>
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; background-color: #b4241a; height: 780px; list-style-type: none;">
        <div class="gift2 am-cf" style="width: 950px;">
            <!--帶品牌-->
            <div style="float: left; width: 20%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=186" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/005.png" alt="BC" style="position: absolute; top: 2%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/search.aspx?stxt=fresho2" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/006.png" alt="Fresh O2" style="position: absolute; top: 39%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=128" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/007.png" alt="Qmomo" style="position: absolute; top: 75%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=51" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/008.png" alt="Beauty小舖" style="position: absolute; top: 111.5%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                </div>
            </div>

            <!--帶商品-->
            <div style="padding: 0 10px; float: right; width: 80%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 50;">
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
    </div>

    <!--sale 3區塊開始-->
    <div style="width: 1000px; margin: 0 auto; background-color: #b3241a;">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180517/edm2_06.png" alt="桃花朵朵開" style="width: 100%;">
    </div>
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; background-color: #b4241a; height: 780px; list-style-type: none;">
        <div class="gift1 am-cf" style="width: 950px;">
            <!--帶品牌-->
            <div style="float: left; width: 20%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=206" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/009.png" alt="556" style="position: absolute; top: 2%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=167" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/010.png" alt="loveways" style="position: absolute; top: 39%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=212" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/011.png" alt="TTL" style="position: absolute; top: 75%; margin: auto; width: 25%; left: 7%;" />
                    </a>
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=170" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/012.png" alt="聯華" style="position: absolute; top: 111.5%; margin: auto; width: 25%; left: 7%;" />
                    </a>

                </div>
            </div>

            <!--帶商品-->
            <div style="padding: 0 10px; float: right; width: 80%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 50;">
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
    </div>

    <!--footer-->

         <div style="width:100%;position: relative;width: 1000px;margin: 0 auto;background-color:#b3241a;">
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>

    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar2_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar2_02.png" style="width: 150px; margin-bottom: -1px" alt="多一元多一件"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar2_03.png" style="width: 150px; margin-bottom: -1px" alt="現折300"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar2_04.png" style="width: 150px; margin-bottom: -1px" alt="國際免運"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180517/sidebar2_05.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
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
