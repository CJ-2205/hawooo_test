<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="180816.aspx.cs" Inherits="user_180816" %>

<%@ Import Namespace="hawooo" %>
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

        .saveprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
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

        .gift1 {
            background-color: #f7c701;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto; margin-bottom: -90px; margin-top: 120px">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180816/edm_01.png" alt="愛呀我的媽" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 65%; top: 0; bottom: 0; left: 0; right: 0;">


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/edm_02.png" alt="FG必買" style="position: absolute; top: 69%; margin: auto; width: 45%; left: 5%;" />
            </a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/edm_03.png" alt="館長保證" style="position: absolute; top: 69%; margin: auto; width: 45%; left: 55%;" />
            </a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/edm_04.png" alt="低過RM50" style="position: absolute; top: 69%; margin: auto; width: 45%; left: 104%;" />
            </a>

        </div>
    </div>
    <!--神奇圖層區掰掰-->
    <!--sale 1區塊開始-->
    <!--帶商品吧-->

    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; background-color: #2c2b2a; height: 780px; list-style-type: none;">

        <div class="gift1 am-cf" style="width: 950px;">

            <div style="float: left; width: 450px;">
                <div style="display: inline; position: absolute; z-index: 6; top: 0; bottom: 0; left: 0; right: 0;">


                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=13751" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/fg1.png" alt="Solone睡美人持久眉膠" id="gosale1" style="position: absolute; top: 10px; margin: auto; width: 40%; left: 7%;" />
                    </a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=15831" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/fg2.png" alt="【買就送】Emma1997身體勻嫩霜(180ml+60ml) 送身體潤膚霜(180ml)" style="position: absolute; top: 330px; margin: auto; width: 40%; left: 7%;" />
                    </a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=13106" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/fg3.png" alt="566香水能量洗髮露" style="position: absolute; top: 645px; margin: auto; width: 40%; left: 7%;" />
                    </a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=12599" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/fg4.png" alt="隋棠代言-密沐浴露" style="position: absolute; top: 964px; margin: auto; width: 40%; left: 7%;" />
                    </a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=14422" target="_blank">
                        <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180816/fg5.png" alt="FG特優雙霸好評熱推組" style="position: absolute; top: 1281px; margin: auto; width: 40%; left: 7%;" />
                    </a>
                </div>
            </div>


            <div id="div1" style="padding: 0 10px; float: right; width: 500px; position: relative; z-index: 50;">
                <ul class="am-avg-sm-2">

                    <asp:Repeater ID="rp_product_list1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 48%; background: white; padding: 0px; margin: 10px 3px; z-index: 50;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <div class="p-style">
                                        <div class="p-style-pic" style="padding: 5px">
                                            <div id="<%#" imgdivHot"+ Container.ItemIndex %>">
                                                <img data-sizes="auto" style="width: 90%; margin-left: 11px" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                            </div>
                                        </div>
                                        <div class="p-style-text">

                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </h4>
                                            <%--               <span class="p-style-line"></span>--%>
                                            <div class="am-cf price-discount" style="margin-top: 0">
                                                <h5 class="am-fl">
                                                    <p class="discountprice"> 
                                                        RM
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>
            </div>


        </div>



    </div>



    <!--sale 2區塊開始-->
    <div style="width: 1000px; margin: 0 auto; background-color: #2c2b2a;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180816/edm_05.png" alt="主推" style="width: 100%; margin-top: 10px;">
    </div>

    <!--帶商品吧-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; background-color: #2c2b2a; height: 780px; list-style-type: none;">

        <div class="gift2 am-cf" style="width: 1000px;">


            <div id="div2" style="padding: 0 10px; float: right; position: relative; z-index: 50;">
                <ul class="am-avg-sm-4" style="margin-left: 20px;">

                    <asp:Repeater ID="rp_product_list2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23.5%; background: white; padding: 0px; margin: 10px 5px; z-index: 50;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <div class="p-style">
                                        <div class="p-style-pic" style="padding: 5px">
                                            <div id="<%#" imgdivHot"+ Container.ItemIndex %>">
                                                <img data-sizes="auto" style="width: 90%; margin-left: 11px" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                            </div>
                                        </div>
                                        <div class="p-style-text">

                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </h4>
                                            <%--               <span class="p-style-line"></span>--%>
                                            <div class="am-cf price-discount" style="margin-top: 0">
                                                <h5 class="am-fl">
                                                    <p class="discountprice"> 
                                                        RM
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>



    </div>



    <!--sale 3區塊開始-->
    <div style="width: 1000px; margin: 0 auto; background-color: #2c2b2a">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180816/edm_06.png" alt="平價" style="width: 100%;">
    </div>

    <!--帶商品吧-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; background-color: #2c2b2a; height: 780px; list-style-type: none;">

        <div class="gift2 am-cf" style="width: 1000px;">


            <div id="div3" style="padding: 0 10px; float: right; position: relative; z-index: 50;">
                <ul class="am-avg-sm-4" style="margin-left: 20px;">

                    <asp:Repeater ID="rp_product_list3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23.5%; background: white; padding: 0px; margin: 10px 5px; z-index: 50;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <div class="p-style">
                                        <div class="p-style-pic" style="padding: 5px">
                                            <div id="<%#" imgdivHot"+ Container.ItemIndex %>">
                                                <img data-sizes="auto" style="width: 90%; margin-left: 11px" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                            </div>
                                        </div>
                                        <div class="p-style-text">

                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </h4>
                                            <%--               <span class="p-style-line"></span>--%>
                                            <div class="am-cf price-discount" style="margin-top: 0">
                                                <h5 class="am-fl">
                                                    <p class="discountprice"> 
                                                        RM
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>

        </div>
    </div>



    <!--footer-->

    <div style="width: 100%; position: relative; width: 1000px; margin: 0 auto; background-color: #2c2b2a;">

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>


    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        box是固定的nav
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180816/sidebar_01.png" style="width: 105px; margin-bottom: -1px" alt="menu"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180816/sidebar_02.png" style="width: 105px; margin-bottom: -1px" alt="FG"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180816/sidebar_03.png" style="width: 105px; margin-bottom: -1px" alt="主推"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180816/sidebar_04.png" style="width: 105px; margin-bottom: -1px" alt="平價"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180816/sidebar_05.png" style="width: 105px; margin-bottom: -1px" alt="TOP"></a>




        </div>
    </div>



    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">
        //$(document).ready(function () {
        //    for (i = 0; i < 9; i++) {
        //        duplicate('div1');



        //    }
        //    for (i = 0; i < 19; i++) {

        //        duplicate('div2');
        //        duplicate('div3');

        //    }

        //});


        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }

    </script>
    <script type="text/javascript">


        //$(function () {
        //    var tagid = $.url.param("tid");
        //    if (tagid != '') {
        //        GoID(tagid);
        //    }
        //});
        function GoID(id) {
            if (id != "")
                $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        };


    </script>
</asp:Content>

