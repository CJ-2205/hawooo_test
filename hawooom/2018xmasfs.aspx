<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2018xmasfs.aspx.cs" Inherits="mobile_2018xmasfs" %>

<%@ Import Namespace="hawooo" %>
<%--<%@ Register Src="~/mobile/control/20181111menum.ascx" TagPrefix="uc1" TagName="menum" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
            text-decoration: line-through;
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

        .barstyle1 {
            display: inline;
            position: absolute;
            z-index: 52;
            top: 1px;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .bar-white {
            height: 100% !important;
            padding: 0px !important;
            border-radius: initial;
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
            bottom: 0;
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

        .countDiv {
            display: inline-block;
            width: 17px;
            height: 1.3em;
            position: relative;
        }

        .countDays { /* display:none !important;*/
            font-size: 20px;
        }

        .countDiv0 { /* display:none !important;*/
        }

        .countHours {
            font-size: 20px;
        }

        /*.countDiv1::before {
            content: 'H';
        }

        .countDiv1::after {
            content: 'H';
        }*/

        .countMinutes {
            font-size: 20px;
        }

        /*.countDiv2::before {
            content: 'S';
        }

        .countDiv2::after {
            content: 'S';
        }*/

        .countSeconds {
            font-size: 20px;
        }

        /*.countdownHolder2 {
            font: '';
        }*/

        .countdownHolder2 {
            margin: 0 auto;
            /*font: 37px/1.5 'Open Sans Condensed',sans-serif;*/
            text-align: center;
            letter-spacing: -3px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!--8大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 120px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="2018xmas.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasfs.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="Flash sale"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=2">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="beauty"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=4">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Home"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmas.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=1">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="package"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=3">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="supplement"></a>
            </li>

            <li class="am-fl">

                <a href="2018xmasbuy.aspx?did=5">
                    <img src="https://www.hawooo.com/images/ftp/20181129/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="fashion"></a>
            </li>





        </ul>
    </div>
    <!--8大類別小選單再見-->
    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; position: relative">
        <img alt="celebrities choice" src="https://www.hawooo.com/images/ftp/20181129/flashm.png" style="float: left; display: block; width: 100%;" />

        <div class="timelineup">
            <a onclick="GetCoupon('2018xmas8');">
                <img src="https://www.hawooo.com/images/ftp/20181129/santa_am.png" alt="Santa" style="top: 35%; width: 21%; position: absolute; left: 0%">
            </a>
            <a onclick="GetCoupon('2018xmas9');">
                <img src="https://www.hawooo.com/images/ftp/20181129/santa_bm.png" alt="Santa" style="top: 37%; width: 30%; position: absolute; left: 70%">
            </a>
        </div>

        <div id="countdown" style="height: 20px; padding-right: 10px; position: absolute; bottom: 4%; left: 0%; right: 0%;"></div>
        <%--<input id="test" type="text" />--%>
    </div>
    <%--   <div>
        <img src="https://www.hawooo.com/images/ftp/20181111/note_m.png" width="100%" />
    </div>--%>
    <!--第1塊-->
    <%-- <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <div class="am-fl">
            <h4 class="edm_title">Flash Sale
            </h4>
        </div>
        <div class="am-fr">
            <div id="countdown" style="height: 20px; padding-right: 10px"></div>
        </div>
    </div>--%>

    <!--第1塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #060f54">
        <div style="position: relative; max-width: 600px; margin: 0 auto;">
            <div id="div1" style="max-width: 600px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp" runat="server">
                        <ItemTemplate>

                            <li class="am-fl box">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:2px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                    <h4 class="pnamem"><%# Eval("WP02").ToString() %></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(), Application["mycashrate"].ToString())%></span></p>

                                    <div style="width: 100%; position: relative; z-index: 51; margin: 0 auto">

                                        <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-tw/assets/bdabfee47e1a5950b144f1b3d14687b9.png" style="width: 100%">



                                        <div class="barstyle1">
                                            <div class="w3-container bar-white w3-round-xlarge" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%"  %>; height: 26px; float: right;"></div>

                                            <%--  <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180918/burn2.png" alt="賣超過60%出現" style="position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;">--%>
                                            <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString())) >= 40 ? "" : " <img class=\"go_bt\" src=\"https://www.hawooo.com/images/ftp/20180918/burn2.png\" style=\"position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;\">" %>
                                            <span class="burn-text">已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件</span>

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

    <!--活動辦法+footer開始喔-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>

    <!--頁面END-!>



     <!--倒數計時用的-->
    <!-- JavaScript includes -->

    <%--   <script src="assets/countdown/jquery.countdown.js"></script>
    <script src="assets/countdown/script.js"></script>--%>
    <script src="assets/countdown/jquery.countdown.js"></script>
    <%--    <script src="assets/js/bday.js"></script>--%>
    <script>
        function timeEvent(stime) {


            var note = $('#note'),
                ts = new Date(stime.replace(/-/g, '/')).getTime() + 1 * 24 * 60 * 60 * 1000;
            //ts = new Date(stime).getTime() + 1 * 24 * 60 * 60 * 1000;

            //ts = 1541952000000;
            console.log(ts);
            //$("#test").val(ts);
            $("#countdown").countdown({
                timestamp: ts,
                //callback: function (days,hours, minutes, seconds) {

                //    var message = "";

                //    message += days + " day" + (days === 1 ? "" : "s") + ", ";
                //    message += hours + " hour" + (hours === 1 ? "" : "s") + ", ";
                //    message += minutes + " minute" + (minutes === 1 ? "" : "s") + " and ";
                //    message += seconds + " second" + (seconds === 1 ? "" : "s") + " <br />";

                //    note.html(message);
                //}
                callback: function (hours, minutes, seconds) {

                    var message = "";

                    //message += days + " day" + (days === 1 ? "" : "s") + ", ";
                    message += hours + " hour" + (hours === 1 ? "" : "s") + ", ";
                    message += minutes + " minute" + (minutes === 1 ? "" : "s") + " and ";
                    message += seconds + " second" + (seconds === 1 ? "" : "s") + " <br />";

                    note.html(message);
                }
            });
        };
        function GetCoupon(e) {
            var memberID = '<%= Session["A01"] %>';
               if (memberID !== '') {
                   var d = "{'d':'" + e + "'}";
                   $.ajax({
                       type: "post",
                       url: "2018xmas.aspx/AddCoupon",
                       data: d,
                       contentType: "application/json;charset=utf-8",
                       dataType: "json",
                       success: function (data) {
                           alert("領取成功");
             <%--       $("#<%= litCount.ClientID %>").text(data.d);
                        var total = data.d * 100;
                        $("#<%= litTotal.ClientID %>").text(total);--%>
                        //alert(data.d);
                    },
                    error: function () {
                        alert('請稍後再領取一次');
                    }
                });
            }
            else {
                doLogin("2018xmas.aspx");
            }
        };


    </script>
    <!--倒數計時用的結束-->
    <!--DK類別用的-->
    <script>

        // 自動偵測長度 only use in ul and li

        // thisli = li's length. i > margin or something

        $(function () {

            //detectLength($('#g1 li'), 0);

            //detectLength($('#g2 li'), 0);

            timeEvent('2018-12-13 00:00:00');
            //$(".countDays").remove();
            //$(".countDiv").remove();
            //$("<span style='margin:5px;font-size:25px'>H</span>").insertAfter(".countHours");
            //$("<span style='margin:5px;font-size:25px'>M</span>").insertAfter(".countMinutes");
            //$("<span style='margin:5px;font-size:25px'>S</span>").insertAfter(".countSeconds");
            $("#footermenu").remove();
            $("#countdown").removeClass('countdownHolder');
            $("#countdown").addClass('countdownHolder2');
        });

        //function detectLength(thisli, i) {

        //    var licount = $(thisli).length;

        //    var liWidth = $(thisli).outerWidth() + i;

        //    var litotalWidth = licount * liWidth;

        //    $(thisli).parent("ul").css("width", litotalWidth);

        //};





    </script>
    <!--DK類別用的 END-->
    <script type="text/javascript">


        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }

    </script>

    <script type="text/javascript">


        //$(function () {

        //    $("#footermenu").remove();
        //    $("#countdown").removeClass('countdownHolder');
        //    $("#countdown").addClass('countdownHolder2');
        //})

        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>
</asp:Content>

