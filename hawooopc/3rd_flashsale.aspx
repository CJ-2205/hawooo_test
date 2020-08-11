﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="3rd_flashsale.aspx.cs" Inherits="user_3rd_flashsale" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- 倒數計時用 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <%--    <link rel="stylesheet" href="countdown/jquery.countdown.css" />--%>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css">
    <!-- 引用 jQuery 1.4 -->
    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>
    <!-- 類別滑動 -->
    <%--<link rel="stylesheet" href="assets/css/index.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <style type="text/css">
        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
            text-decoration: line-through;
        }


        .tag-chinese {
            padding: 0em 0.3em;
            display: inline-block;
            position: absolute;
            font-size: .9em;
            top: 5px;
            right: 5px;
            border: 1px solid #f1b13b;
            color: #f1b13b;
            background: rgba(255,255,255,.9);
        }


        body {
            background-color: #eee;
        }


        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }


        /*基本設定*/

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
            float: right;
            margin-top: -3px;
        }

        .redprice {
            font-size: 20px;
            letter-spacing: -2px;
        }



        .fire_product_4_space {
            padding: 0 10px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: white;
        }

        .fire_product_4_box {
            width: 23%;
            background: white;
            padding: 10px;
            margin: 10px 5px;
            z-index: 50;
            margin-left: 13px;
        }

        .fire_product_4_img {
            width: 90%;
            margin-left: 11px;
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


        .gift2 {
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
        /*loading bar開始*/
        }

        .w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray, .w3-hover-light-gray:hover {
            color: #000 !important;
            background-color: #f1f1f1 !important;
        }

        .w3-round-xlarge {
            border-radius: 16px;
        }

        .bar-orange, .w3-hover-orange:hover {
            color: #fff !important;
            background-color: #FF4A1D !important;
            font-size: 10px;
            text-align: center;
        }

        .bar-white, .w3-hover-white:hover {
            color: #fff !important;
            background-color: rgba(255,255,255,0.5);
            border-radius: initial;
        }

        .w3-container, .w3-panel {
            /*padding: 0.01em 16px;*/
        }

            .w3-container:after, .w3-container:before, .w3-panel:after, .w3-panel:before, .w3-row:after, .w3-row:before, .w3-row-padding:after, .w3-row-padding:before, .w3-cell-row:before, .w3-cell-row:after, .w3-clear:after, .w3-clear:before, .w3-bar:before, .w3-bar:after {
                content: "";
                display: table;
                clear: both;
            }

        .burn-text {
            color: white;
            text-align: center;
            position: absolute;
            right: 60px;
            top: 10%;
            font-size: 13px;
        }

        .barstyle {
            display: inline;
            position: absolute;
            z-index: 52;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .burn-text2 {
            color: white;
            text-align: center;
            position: absolute;
            top: 10%;
            right: 70px;
            font-size: 13px;
        }

        /*旁邊小選單*/
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
    </style>
    <style>
        .edm_title
        {
            float: left;
            font-size: 22px;
            color: #424242;
            width: 350px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: 15px;
        }
        
        .circle
        {
            position: absolute;
            top: -280px;
            margin: auto;
            width: 70%;
            right: 30px;
        }
        
        .discountpricem
        {
            /*margin: 5px 5px 0 5px;
            font-size: small;*/
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 小選單開始-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="3rd_bday.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_01.png" style="width: 150px;
                    margin-bottom: -1px" alt="main page"></a> <a href="3rd_flashsale.aspx">
                        <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_02.png" style="width: 150px;
                            margin-bottom: -1px" alt="flash sale"></a> <a href="life1.aspx">
                                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_03.png" style="width: 150px;
                                    margin-bottom: -1px" alt="beautiful life"></a> <a href="life2.aspx">
                                        <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_04.png" style="width: 150px;
                                            margin-bottom: -1px" alt="elegant life"></a> <a href="life3.aspx">
                                                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_05.png" style="width: 150px;
                                                    margin-bottom: -1px" alt="easy life"></a>
            <a href="kol.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_06.png" style="width: 150px;
                    margin-bottom: -1px" alt="KOL"></a> <a href="brand1.aspx">
                        <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_07.png" style="width: 150px;
                            margin-bottom: -1px" alt="top brands"></a>
        </div>
    </div>
    <!-- 小選單掰掰-->
    <!--主視覺-->
    <div style="width: 1000px; margin: 0 auto;">
        <!--   <img  id="gotop" src="https://www.hawooo.com/images/ftp/20180903/edm_01.png" alt="主推" style="width: 100%;float: left;"> -->
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180918/edm_03.png" alt="主推"
            style="width: 100%; float: left; min-width: 1000px;">
        <!--限時商品 倒數計時開始-->
        <div class="am-g">
            <div class="am-fl">
                <h4 class="edm_title">
                    Flash Sale <span class="am-fr saveprice" style="letter-spacing: 1px; margin-top: 1px;">
                        Limited quantities. Only 48hours.</span></h4>
            </div>
            <div class="am-fr">
                <div id="countdown">
                </div>
            </div>
        </div>
        <!--限時商品 倒數計時結束-->
        <!--限時商品 帶商品吧-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative;
            z-index: 2; list-style-type: none;">
            <div class="gift2 am-cf" style="width: 1000px;">
                <div id="div0" class="fire_product_4_space">
                    <ul class="">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <li class="am-fl hvr-float fire_product_4_box">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </div>
                                        <h4 class="pname">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                        <p class="discountpricem">
                                            RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span
                                                class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </p>
                                        <div style="width: 100%; position: relative; z-index: 51; margin: 10px auto">
                                            <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-tw/assets/bdabfee47e1a5950b144f1b3d14687b9.png"
                                                style="width: 100%">
                                            <div class="barstyle">
                                                <div class="w3-container bar-white w3-round-xlarge" style="width: <%#FireCount(Convert.ToInt32(Eval("WP01").ToString()),Convert.ToInt32(Eval("SCOUNT").ToString()))+"%" %>;
                                                    height: 100%; float: right;">
                                                </div>
                                                <%# FireCount(Convert.ToInt32(Eval("WP01").ToString()), Convert.ToInt32(Eval("SCOUNT").ToString())) >= 40 ? "" : " <img class=\"go_bt\" src=\"https://www.hawooo.com/images/ftp/20180918/burn2.png\" style=\"position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;\">" %>
                                                <span class="burn-text">已售出<%#  Convert.ToInt32(Eval("SCOUNT").ToString()) %>件</span>
                                            </div>
                                        </div>
                                    </li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
        <!--類別區塊：即將開始Coming Soon-->
        <h4 class="edm_title">
            Coming Soon</h4>
        <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative;
            z-index: 2; list-style-type: none;">
            <div class="gift2 am-cf" style="width: 1000px;">
                <div id="div1" class="fire_product_4_space">
                    <ul class="">
                        <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <li class="am-fl hvr-float fire_product_4_box">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </div>
                                        <h4 class="pname">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                        <p class="discountpricem">
                                            <span style="font-size: medium; letter-spacing: -2px;">???</span><span class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </p>
                                        <%-- <div style="width: 100%; position: relative; z-index: 51; margin: 10px auto">
                                            <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-tw/assets/bdabfee47e1a5950b144f1b3d14687b9.png" style="width: 100%">

                                            <div style="display: inline; position: absolute; z-index: 52; top: 2px; bottom: 0; left: 0; right: 0;">

                                                <div class="w3-container bar-white w3-round-xlarge" style="width: 40%; height: 26px; float: right;"></div>

                                                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180918/burn2.png" alt="賣超過60%出現" style="position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;">
                                                <span class="burn-text">已售出111件</span>
                                            </div>
                                        </div>--%>
                                        <div style="width: 100%; position: relative; z-index: 51; margin: 0 auto">
                                            <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-tw/assets/bdabfee47e1a5950b144f1b3d14687b9.png"
                                                style="width: 100%">
                                            <div class="barstyle">
                                                <div class="w3-container bar-white w3-round-xlarge" style="width: 100%; height: 26px;
                                                    float: right;">
                                                </div>
                                                <img class="go_bt circle" src="https://www.hawooo.com/images/ftp/20180918/cs.png"
                                                    alt="coming soon">
                                                <span class="burn-text">限量<%#   id2stock(Convert.ToInt32(Eval("WP01").ToString())).Equals(0)?0:(id2stock(Convert.ToInt32(Eval("WP01").ToString()))- Convert.ToInt32(Eval("SCOUNT").ToString())) %>件</span>
                                            </div>
                                        </div>
                                    </li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
        <!--第二類別區塊：賣完拉Sold Out-->
        <h4 class="edm_title">
            Sold Out</h4>
        <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative;
            z-index: 2; list-style-type: none;">
            <div class="gift2 am-cf" style="width: 1000px;">
                <div id="div3" class="fire_product_4_space">
                    <ul class="">
                        <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>
                                <%--    <li class="am-fl hvr-float fire_product_4_box">--%>
                                <li class="am-fl hvr-float fire_product_4_box">
                                    <%--<a href="productdetail.aspx?id=<%# Eval("WP01") %>">--%>
                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                            class="lazyload am-img-responsive" />
                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                    </div>
                                    <h4 class="pname">
                                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span
                                            class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span>
                                    </p>
                                    <div style="width: 100%; position: relative; z-index: 51; margin: 10px auto">
                                        <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-tw/assets/bdabfee47e1a5950b144f1b3d14687b9.png"
                                            style="width: 100%">
                                        <div class="barstyle">
                                            <div class="w3-container bar-white w3-round-xlarge" style="width: 0%; height: 0%;
                                                float: right;">
                                            </div>
                                            <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180918/burn2.png" style="position: absolute;
                                                top: -29%; margin: auto; width: 13%; right: 88%;">
                                            <img class="go_bt circle" src="https://www.hawooo.com/images/ftp/20180918/out2.png"
                                                alt="賣超過60%出現">
                                            <span class="burn-text">已售出<%# id2stock(Convert.ToInt32(Eval("WP01").ToString())) %>件</span>
                                        </div>
                                    </div>
                                    </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--活動辦法開始吧-->
    <div style="width: 100%; position: relative; width: 1000px; margin: 0 auto">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif;
                        font-size: small; color: #f8d1dd; padding: 20px; line-height: normal;">
                        HaWooo 3rd Birthday Sale:<br>
                        <span style="color: white;">
                            <br>
                        </span>
                        <br>
                        1. Promotion Date<br>
                        <span style="color: white;">. Round 1: Now - September 30, 2018<br />
                            . Round 2: October 1-18, 2018<br />
                        </span>
                        <br>
                        2. Promotion Description<br />
                        <span style="color: white;">． FLASH SALE<br />
                            Limited time - valid for 48 hours only, according to checkout time<br />
                            Limited quantity - ends when all products are sold out<br />
                        </span><span style="color: white;">．Coupon<br />
                            Spend RM190 and get RM20 off - use promo code "bday20"<br />
                            Spend RM250 and get RM30 off - use promo code "bday30"<br />
                            Spend RM390 and get RM50 off - use promo code "bday50"<br />
                        </span>3. Notice<br />
                        <span style="color: white;">※ Promo codes are not applicable to the following brands/products:
                            BHK's, DR.CINK, Dr.Lady, UNIQMAN,Keep Perfume, H&J, SHARE and FLASH SALE products.<br />
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                    </td>
                </tr>
            </tbody>
        </table>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png"
            alt="hawooo.com" style="width: 100%;">
    </div>
    <script>
        $(function () {
            for (var i = 1; i <= 3; i++) {
                $("#tab" + i + " > li").mouseover(function () {

                    if ($(this).hasClass("am-active"))

                        return;

                    else {

                        $(this).find('a').tabs('open');

                    }

                });
            };

            //var note = $('#note'),
            //ts = new Date(2018, 9, 17),
            //newYear = true;

            //    if ((new Date()) > ts) {
            //        // The new year is here! Count towards something else.
            //        // Notice the *1000 at the end - time must be in milliseconds
            //        ts = (new Date()).getTime() + 2 * 24 * 60 * 60 * 1000;
            //        newYear = false;
            //    }

            //    $('#countdown').countdown({
            //        timestamp: ts,
            //        callback: function (days, hours, minutes, seconds) {

            //            var message = "";

            //            message += days + " day" + (days == 1 ? '' : 's') + ", ";
            //            message += hours + " hour" + (hours == 1 ? '' : 's') + ", ";
            //            message += minutes + " minute" + (minutes == 1 ? '' : 's') + " and ";
            //            message += seconds + " second" + (seconds == 1 ? '' : 's') + " <br />";

            //            if (newYear) {
            //                message += "left until the new year!";
            //            }
            //            else {
            //                message += "left to 10 days from now!";
            //            }

            //            note.html(message);
            //        }
            //    });


        });




    </script>
    <!--DK 三大類別tab用 結束-->
    <!--倒數計時用的-->
    <!-- JavaScript includes -->
    <%--    <script src="https://code.jquery.com/jquery-1.7.1.min.js"></script>--%>
    <%--  <script src="countdown/jquery.countdown.js"></script>--%>
    <%--    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/script.js"></script>--%>
    <%--   <script src="js/script.js"></script>--%>
    <!--倒數計時用的結束-->
    <!--    <script src="assets/js/jquery.min.js"></script>-->
    <%--  <script src="assets/js/amazeui.min.js"></script>--%>
    <script src="assets/js/jquery.countdown.js"></script>
    <script>
        function timeEvent(stime) {

            var note = $('#note'),
                ts = new Date(stime).getTime() + 2 * 24 * 60 * 60 * 1000;
            console.log(ts);
            $("#countdown").countdown({
                timestamp: ts,
                callback: function (days, hours, minutes, seconds) {

                    var message = "";

                    message += days + " day" + (days === 1 ? "" : "s") + ", ";
                    message += hours + " hour" + (hours === 1 ? "" : "s") + ", ";
                    message += minutes + " minute" + (minutes === 1 ? "" : "s") + " and ";
                    message += seconds + " second" + (seconds === 1 ? "" : "s") + " <br />";

                    note.html(message);
                }
            });
        }

    </script>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };

    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
    <%--     <script>
            function RedeemCoupon() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('newarrivals1.aspx');
            }
   
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
     
            </ContentTemplate>
        </asp:UpdatePanel>--%>
   <script src="assets/js/bday.js"></script>
</asp:Content>
