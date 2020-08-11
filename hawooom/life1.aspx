<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="life1.aspx.cs" Inherits="mobile_life1" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <link href="assets/countdown/jquery.countdown.css" rel="stylesheet" />




    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: small;
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
            position: relative;
        }

        .edm_title {
            float: left;
            font-size: medium;
            color: #424242;
            overflow: hidden;
            margin: 15px 0 10px 15px;
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
        }

        .w3-container, .w3-panel {
            padding: 0.01em 16px;
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
            right: 30%;
            top: 6%;
            font-size: small;
        }

        .burn-text2 {
            color: white;
            text-align: center;
            position: absolute;
            top: 6%;
            right: 33%;
            font-size: small;
        }

        .fire60 {
            position: absolute;
            margin: auto;
            width: 12%;
            right: 88%;
            top: 3%;
        }


        /*DK類別用的*/

        [data-am-widget=tabs] {
            margin: 0px;
        }



        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
                padding: 0 15px;
            }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                background-color: #C9C5C9 !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    color: black !important;
                }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                border-bottom: 6px solid #d1031c !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    line-height: 55px;
                }



                .am-tabs-d2 .am-tabs-nav > .am-active:after {
                    border: 0px;
                }



            .am-tabs-d2 .am-tabs-nav a {
                line-height: 55px;
            }



        .am-tabs-bd {
            -moz-user-select: text !important;
            -webkit-user-select: text !important;
            -ms-user-select: text !important;
            user-select: text !important;
            background-color: #fff;
        }



        .bar {
            overflow-y: hidden !important;
            width: 100%;
        }



        .am-tabs-bd .am-tab-panel {
            padding: 0px;
        }



        .bar::-webkit-scrollbar {
            display: none;
        }

        /*品牌館用的*/

        .brand_logo_space {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 66%;
            top: 28%;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .brand_logo {
            position: absolute;
            top: 32%;
            margin: auto;
            width: 45%;
            left: 53%;
            outline: 2px solid white;
        }

        .brand_logo_text {
            margin-top: 30px;
            font-size: medium;
            line-height: 11px;
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 5px;
        }

        .brand_logo_slogan {
            margin: 0 2px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 18px;
            color: #979697;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            padding-top: 3px;
        }


        /*公告用的*/
        .note_title {
            text-align: left;
            font-size: small;
            font-weight: bold;
            color: #f8d1dd;
            padding: 10px 0px;
        }

        .note_white {
            color: white;
            font-weight: normal;
        }

        .am-tabs {
            padding-top: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

      <!--8大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_bday.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_flashsale.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="48hrs sale"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/kol.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="KOL"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/brand1.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Top brands"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_bday.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life1.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="life1"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life2.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="life2"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life3.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="life3"></a>
            </li>





        </ul>
    </div>
    <!--8大類別小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: black;">


        <a href="#">
            <img alt="midterm sale" src="https://www.hawooo.com/images/ftp/20180918/life1m.png" style="float: left; display: block; width: 100%;" /></a>

    </div>



    <!--第0塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Beautiful Life</h4>
    </div>

    <!--第0塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F2E4DC">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div0" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">


                    <asp:Repeater ID="rp1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />

                          

                                    <h4 class="pnamem">
                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span></p>

                                </a>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>



                </ul>


            </div>
        </div>

    </div>




    <!--第1塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Facial Care</h4>
    </div>

    <!--第1塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F2E4DC">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />

                                   

                                    <h4 class="pnamem">
                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span></p>

                                </a>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>


            </div>
        </div>

    </div>


    <!--第2塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Beauty Supplement</h4>
    </div>

    <!--第2塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F2E4DC">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div2" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />

                                   

                                    <h4 class="pnamem">
                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span></p>

                                </a>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>


            </div>
        </div>

    </div>


    <!--第3塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Health Supplement</h4>
    </div>

    <!--第3塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F2E4DC">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div3" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp4" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />

                                  

                                    <h4 class="pnamem">
                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span></p>

                                </a>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>


            </div>
        </div>

    </div>
    <!--活動辦法+footer開始喔-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" class="note_title">HaWooo 3rd Birthday Sale:<br>
                        1. Promotion Date：<br>
                        <span class="note_white">•  Round 1: Now - September 30, 2018<br>
                            •  Round 2: October 1-18, 2018
                        </span>
                        <br>
                        <br>
                        2. Promotion Description<br>
                        <span class="note_white">•  FLASH SALE<br>
                            Limited time - valid for 48 hours only, according to checkout time<br>
                            Limited quantity - ends when all products are sold out<br>
                            •  Coupon<br>
                            Spend RM190 and get RM20 off - use promo code "bday20"<br>
                            Spend RM250 and get RM30 off - use promo code "bday30"<br>
                            Spend RM390 and get RM50 off - use promo code "bday50"<br>
                        </span>

                        3.  Notice：<br>
                        <span class="note_white">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN and FLASH SALE products.<br>
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                        <br>
                    </td>

                    <td width="5%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>
    <!--頁面END-!>



     <!--倒數計時用的-->
    <!-- JavaScript includes -->

    <%--   <script src="assets/countdown/jquery.countdown.js"></script>
    <script src="assets/countdown/script.js"></script>--%>
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
    <!--倒數計時用的結束-->
    <!--DK類別用的-->
    <script>

        // 自動偵測長度 only use in ul and li

        // thisli = li's length. i > margin or something

        $(function () {

            detectLength($('#g1 li'), 0);

            detectLength($('#g2 li'), 0);



        });

        function detectLength(thisli, i) {

            var licount = $(thisli).length;

            var liWidth = $(thisli).outerWidth() + i;

            var litotalWidth = licount * liWidth;

            $(thisli).parent("ul").css("width", litotalWidth);

        };





    </script>
    <!--DK類別用的 END-->
   <%-- <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 2; i++) {
                duplicate('div1');

            }

            for (i = 0; i < 3; i++) {
                duplicate('div2');
                duplicate('div3');

            }

        });


        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }

    </script>--%>

    <script type="text/javascript">


        $(function () {
            $("#footermenu").remove();
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>
     <script src="../user/assets/js/bday.js"></script>
</asp:Content>

