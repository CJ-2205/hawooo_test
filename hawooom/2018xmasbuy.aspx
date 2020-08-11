<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2018xmasbuy.aspx.cs" Inherits="mobile_2018xmasbuy" %>

<%--<%@ Register TagPrefix="mn" TagName="mn1" Src="~/mobile/control/20181111menum.ascx" %>--%>
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
            border: solid 1px #eaeaea;
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

        #body {
            background-color: #F2E4DC;
        }


        /*老人飄飄*/
        .cloud_four {
            position: absolute;
            z-index: 2;
            animation-name: cloud_four;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
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
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: black; position: relative">


        <a href="#">
            <img id="bn" src="https://www.hawooo.com/images/ftp/20181101/edmm04.png" runat="server" style="float: left; display: block; width: 100%;" /></a>
        <div class="timelineup" id="b4">
        </div>
    </div>





    <!--第0塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;" id="bc">

        <div style="position: relative; max-width: 600px; margin: 0 auto;">

            <div id="div0" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">


                    <asp:Repeater ID="rp" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">

                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />



                                    <h4 class="pnamem">
                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# "RM " + PbClass.GetPrice(Eval("WPA10").ToString(), Application["mycashrate"].ToString())%></span></p>

                                </a>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>



                </ul>


            </div>
        </div>

    </div>
    <div>
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>




    <script type="text/javascript">


        $(function () {
            $("#footermenu").remove();
            //var tagid = $.url.param("tid");
            //if (tagid != '') {
            //    GoID(tagid);
            //}
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        };


        function bcolor(did) {
            var v = "";

            switch (did) {
                case 1:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas10');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa_c.png' alt='Santa2' style='position:absolute;top:45%;margin:auto;width:15%;right:16%'>";
                        app += "</a>"
                        app += "<a onclick=\"GetCoupon('2018xmas9');\">"
                        app += "<img src='https://www.hawooo.com/images/ftp/20181129/santa2.png' alt='Santa' style='top:37%;width:12%;position: absolute;left:21%'/>";
                        app += "</a>"
                        v = "#009d3b";
                        break;
                    }
                case 2:
                    {

                        app = "<a onclick=\"GetCoupon('2018xmas11');\">"
                        app += "<img class='go_bt cloud_four' src='https://www.hawooo.com/images/ftp/20181129/santa7.png' alt='Santa2' style='position:absolute;top:5%;margin:auto;width:23%;right:5%'>";
                        app += "</a>"
                        app += "<a onclick=\"GetCoupon('2018xmas7');\">"
                        app += "<img src='https://www.hawooo.com/images/ftp/20181129/santa5.png' alt='Santa' style='top:73%;width:9%;position: absolute;left:67%'/>";
                        app += "</a>"
                        v = "#91c4c8";
                        break;
                    }
                case 3:
                    {

                        app = "<a onclick=\"GetCoupon('2018xmas12');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa5.png' alt='Santa2' style='position:absolute;top:59%;margin:auto;width:10%;left:46%'>";
                        app += "</a>"
                        app += "<a onclick=\"GetCoupon('2018xmas13');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa6.png' alt='Santa2' style='position:absolute;top:43%;margin:auto;width:20%;left:76%'>"
                        app += "</a>"
             
                        v = "#c7bd90";
                        break;
                    }
                case 4:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas14');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa5.png' alt='Santa2' style='position:absolute;top:27%;margin:auto;width:7%;left:3.7%'>";
                        app += "</a>"
                        v = "#90b6c7";
                        break;
                    }
                case 5:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas15');\">"
                        app += "<img class='go_bt cloud_four' src='https://www.hawooo.com/images/ftp/20181129/santa7.png' alt='Santa2' style='position: absolute; top: 53%; margin: auto; width: 28%; left: 3%;'>";
                        app += "</a>"
                        app += "<a onclick=\"GetCoupon('2018xmas8');\">"
                        app += "<img src='https://www.hawooo.com/images/ftp/20181129/santa5.png' alt='Santa' style='top:37%;width:9%;position:absolute;left:23%'/>";
                        app += "</a>"
                        v = "#c7a48f";
                        break;
                    }
            }

            //if (did == 0) {
            //$("body").css("background-color", "#131a2e");
            $("#bc").css("background-color", v);
            $("#b4").append(app);
            //$(".page-main").css("background-color", "#131a2e");
            //}

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
               <%--$("#<%= litCount.ClientID %>").text(data.d);
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
</asp:Content>

