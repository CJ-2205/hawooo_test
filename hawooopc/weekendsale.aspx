<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weekendsale.aspx.cs" Inherits="helloday" MasterPageFile="~/user/user.master" %>

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
            background-color: #bfb0e0;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 900px;
            background-color: #de5b8a;
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
            top: 15%;
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

    <%--  <div style="width: 1000px; margin: 0 auto;">--%>
    <!--第一塊-->
    <div style="width: 1180px; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/20180511/edm_01.png" alt="週末特殺" style="width: 100%;">
    </div>

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1180px; z-index: 1; margin: 0 auto; margin-bottom: -70px;">
        <img src="https://www.hawooo.com/images/ftp/20180511/edm_02.png" style="width: 100%;">
        <!--第一塊-->
        <div style="display: inline; position: absolute; z-index: 3; top: 0; bottom: 0; left: 0; right: 0;">
            <div style="width: 920px; margin: 0 auto; background-color: white;">
                <a href="https://www.hawooo.com/user/productdetail.aspx?id=14140" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180511/pc_002.png" alt="膠原蛋白" style="width: 920px;"></a>
                <div class="am-cf sale1">
                    <div id="div1" style="float: left; width: 100%; z-index: 6;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
                                        <h4 class="slogan">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
                </div>
            </div>
        </div>
    </div>
    <%--  </div>--%>

    <!--第二塊-->
    <%--  <div style="width: 1000px; margin: 0 auto;">--%>
    <%--   <div>
        <img src="https://www.hawooo.com/images/ftp/20180504/edm_04.png" alt="save up to 50% off" style="width: 100%;">
    </div>--%>
    <div style="width: 100%; position: relative; width: 1180px; z-index: 1; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/20180511/edm_03.png" alt="save up tp 50% off" style="width: 100%;">
    </div>

    <div style="width: 100%; position: relative; width: 1180px; z-index: 1; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/20180511/edm_04.png" style="width: 100%;">
        <!--第2塊-->
        <div style="display: inline; position: absolute; z-index: 3; top: 0; bottom: 0; left: 0; right: 0;">
            <div style="width: 920px; margin: 0 auto; background-color: white;">
                <a href="https://www.hawooo.com/user/productdetail.aspx?id=12919" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180511/pc_004.png" alt="廣源良" style="width: 920px;"></a>
                <div class="am-cf sale2">
                    <div id="div2" style="float: left; width: 100%; z-index: 6;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
                                        <h4 class="slogan">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
                </div>
            </div>
        </div>
    </div>

    <%--</div>--%>


    <!--footer-->
    <!--下面帶活動說明-->

    <div style="width: 100%; position: relative; width: 1180px; z-index: 5; margin: 0 auto">
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>


    <!-- 一個看不見的div 高度0-->
    <%-- <div class="invisible" style="z-index: 13">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/week1/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/week1/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="包包"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/week1/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/week1/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="瘦身"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/week1/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="洗髮"></a>
        </div>
    </div>--%>

    <script src="assets/js/jquery.url.js"></script>
    <%-- <script type="text/javascript">


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

    </script>--%>
</asp:Content>
