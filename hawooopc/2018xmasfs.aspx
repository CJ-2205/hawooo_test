<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2018xmasfs.aspx.cs" Inherits="user_2018xmasfs" EnableEventValidation="false" %>

<%@ Import Namespace="hawooo" %>
<%--<%@ Register Src="~/user/control/20181111menu.ascx" TagPrefix="uc1" TagName="menu" %>--%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/1111.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/jquery.countdown.css">
    <style>
        option {
            color: #000000 !important;
        }
    </style>
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
        .edm_title {
            float: left;
            font-size: 22px;
            color: #424242;
            width: 350px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: 15px;
        }

        .circle {
            position: absolute;
            top: -280px;
            margin: auto;
            width: 70%;
            right: 30px;
        }

        .discountpricem {
            /*margin: 5px 5px 0 5px;
            font-size: small;*/
            color: red;
        }

        .countDiv {
            display: inline-block;
            width: 17px;
            height: 1.9em;
            position: relative;
        }

        .countDays { /* display:none !important;*/
            font-size: 45px;
        }

        .countDiv0 { /* display:none !important;*/
        }

        .countHours {
            font-size: 45px;
        }

        .countDiv1 {
        }

        .countMinutes {
            font-size: 45px;
        }

        .countDiv2 {
        }

        .countSeconds {
            font-size: 45px;
        }

        .countdownHolder2 {
            margin: 0 auto;
            font: 37px/1.6 'Open Sans Condensed',sans-serif;
            text-align: center;
            letter-spacing: -3px;
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

        .cloud_four {
            position: absolute;
            z-index: 2;
            animation-name: cloud_four;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
        }

        @keyframes cloud_four {
            from {
                left: 50px;
            }

            to {
                left: 140px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <uc1:menu runat="server" ID="menu" />--%>

    <!-- 小選單開始-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
         <div class="box">
            <a href="2018xmas.aspx">
                <%--    <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page">--%>
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_01.png" %>' style="width: 150px; margin-bottom: -1px" alt="main page">
            </a>


            <a href="2018xmasfs.aspx">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_02.png" %>' style="width: 150px; margin-bottom: -1px" alt="flash sale">
            </a>

            <a href="2018xmasbuy.aspx?did=1">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_03.png" %>' style="width: 150px; margin-bottom: -1px" alt="value package">
            </a>

            <a href="2018xmasbuy.aspx?did=2">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_04.png" %>' style="width: 150px; margin-bottom: -1px" alt="beauty">
            </a>

            <a href="2018xmasbuy.aspx?did=3">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_05.png" %>' style="width: 150px; margin-bottom: -1px" alt="supplement">
            </a>

            <a href="2018xmasbuy.aspx?did=4">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_06.png" %>' style="width: 150px; margin-bottom: -1px" alt="home">
            </a>

            <a href="2018xmasbuy.aspx?did=5">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/sidebar_07.png" %>' style="width: 150px; margin-bottom: -1px" alt="fashion">
            </a>


        </div>
    </div>
    <!-- 小選單掰掰-->
    <!--神奇主視覺開始-->
    <div style="width: 100%; width: 1100px; position: relative; z-index: 1; margin: 0 auto;">

        <img  src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/flash_01.png" %>'  alt="xmas party" style="width: 100%">


        <div class="timelineup">


            <a onclick="GetCoupon('2018xmas8');">
                <img  src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/santa_a.png" %>'  alt="Santa2" style="position: absolute; top: 28%; margin: auto; width: 31%; left: 0" />
            </a>

        </div>

        <div class="timelineup">


            <a onclick="GetCoupon('2018xmas9');">
                <img class="go_bt cloud_four" src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20181129/santa_b.png" %>'  alt="Santa2" style="position: absolute; top: 32%; margin: auto; width: 28%; right: -53%;" />
            </a>

        </div>
    </div>

    <div style="width: 1100px; margin: 0 auto; background-color: #ffbb2b;">


        <!--限時商品 倒數計時開始-->

        <style>
            .edm_title {
                float: left;
                font-size: 22px;
                color: #424242;
                width: 350px;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                margin-top: 15px;
            }

            .circle {
                position: absolute;
                top: -254px;
                margin: auto;
                width: 70%;
                right: 30px;
            }
        </style>
        <!--	<h4 class="edm_title">Flash Sale <span class="am-fr saveprice" style="letter-spacing: 1px;margin-top: 1px;">Limited quantities.As low as RM1</span></h4>-->
        <div id="countdown" style="width: 1000px; height: 77px;"></div>

        <!--限時商品 倒數計時結束-->






        <div style="width: 100%; margin: 0 auto; display: block; width: 1100px; position: relative; z-index: 2; list-style-type: none; background-color: white">
            <div class="gift2 am-cf" style="width: 1000px;">
                <div id="div0" class="fire_product_4_space">
                    <ul class="">
                        <asp:Repeater ID="rp" runat="server">
                            <ItemTemplate>
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"productdetail.aspx?id="+Eval("WP01")%>'>
                                    <li class="am-fl hvr-float fire_product_4_box">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%--             <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<img class='go_bt circle' src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='sold out' style='top: 36px;display: initial;width: 70%;position: absolute;left: 33px;'>":"" %>--%>
                                            <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:2px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </div>
                                        <h4 class="pname">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                        <p class="discountpricem">
                                            RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span
                                                class="am-fr deletepricem">RM<%# PbClass.GetPrice(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </p>
                                        <div style="width: 100%; position: relative; z-index: 51; margin: 10px auto">
                                            <img  src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/test/orangebar.png" %>' 
                                                style="width: 100%">
                                            <div class="barstyle">
                                                <div class="w3-container bar-white w3-round-xlarge" style="width: <%#FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>; height: 100%; float: right;">
                                                </div>
                                                <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())) >= 40 ? "" : " <img class=\"go_bt\" src=\"https://www.hawooo.com/images/ftp/20180918/burn2.png\" style=\"position: absolute; top: -29%; margin: auto; width: 13%; right: 88%;\">" %>
                                                <span class="burn-text">已售出<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件</span>
                                                <%--   <span class="burn-text">已售出<%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())) %>件</span>--%>
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


        <div>
            <img class="twoyearbottom"   src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20180312/footer.png" %>'  alt="hawooo.com" style="width: 1100px; margin: 0 auto">
        </div>
        <%--   <section class="addPanel">
        <header class="am-g">
            <span id="add-msg2">0 items have been purchased, the original price is RM0.00 , and the offer price is RM 0.00 .Attention! The items are limited, remember to checkout at 11/11 00:00 </span>
        </header>
        <hr class="am-margin-xs">

        <div id="bottom_add_panel" class="am-g">

            <div class="am-slider am-slider-carousel am-slider-b3 clean_shadow" data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false}" id="top_slider">
                <ul class="am-slides" id="add-list">
                </ul>
            </div>
        </div>
    </section>--%>
    </div>
    <script>

        //function SetInfo() {
        //    var msg = "";
        //    if ('en' === 'en') {
        //        msg =
        //            "#QTY# items have been purchased, the original price is RM#PRICE# , and the offer price is RM #SPRICE# .Attention! The items are limited, remember to checkout at 11/11 00:00 ";
        //    } else {
        //        msg = "已选购 #QTY# 件，原价 RM #PRICE#，折扣价 RM #SPRICE#，注意! 货量有限，记得在11/11 00:00开始抢先结帐";
        //    }
        //    msg = msg.replace("#QTY#", tqty);
        //    msg = msg.replace("#SPRICE#", tsprice.toFixed(2));
        //    msg = msg.replace("#PRICE#", tprice.toFixed(2));
        //    $("#add-msg1").html(msg);
        //    $("#add-msg2").html(msg);
        //}

        $(function () {
            //SetInfo();
            timeEvent('2018-12-13 00:00:00');
            //$(".countDays").remove();
            //$(".countDiv").remove();
            //$("<span style='margin:5px;font-size:53px'>H</span>").insertAfter(".countHours");
            //$("<span style='margin:5px;font-size:53px'>M</span>").insertAfter(".countMinutes");
            //$("<span style='margin:5px;font-size:53px'>S</span>").insertAfter(".countSeconds");
            //$("#countdown").removeClass("countdownHolder");
            //$("#countdown").addClass("countdownHolder2");
        });
    </script>
    <script src="assets/js/jquery.countdown.js"></script>
    <script>
        function timeEvent(stime) {

            var note = $('#note'),
                ts = new Date(stime).getTime() + 1 * 24 * 60 * 60 * 1000;
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
                    success: function () {
                        alert("Congrats! You found a Santa. 100 HaCoins Get!");
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
</asp:Content>

