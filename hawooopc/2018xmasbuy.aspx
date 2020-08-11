<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="2018xmasbuy.aspx.cs" Inherits="user_2018xmasbuy" %>

<%--<%@ Register TagPrefix="mn" TagName="mn1" Src="~/user/control/20181111menu.ascx" %>--%>
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


        .product_5_space_1 {
            float: right;
            position: relative;
            z-index: 50;
            background-color: #F2E4DC;
            padding: 10px 0;
        }

        .product_5_box {
            width: 18.8%;
            background: white;
            padding: 5px;
            margin: 5px 3px;
            z-index: 50;
            margin-left: px;
        }

        .product_5_img {
            width: 90%;
            margin-left: 8px;
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

        /*#body {
            background-color: #F2E4DC;
        }*/

        .deletepricem {
            color: #898989;
            text-decoration-line: line-through;
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
    <!-- 小選單開始-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="2018xmas.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page"></a>


            <a href="2018xmasfs.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="flash sale"></a>

            <a href="2018xmasbuy.aspx?did=1">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="value package"></a>

            <a href="2018xmasbuy.aspx?did=2">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="beauty"></a>

            <a href="2018xmasbuy.aspx?did=3">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="supplement"></a>

            <a href="2018xmasbuy.aspx?did=4">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="home"></a>

            <a href="2018xmasbuy.aspx?did=5">
                <img src="https://www.hawooo.com/images/ftp/20181129/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="fashion"></a>


        </div>
    </div>



    <%--    <mn:mn1 ID="mn" runat="server" />--%>
    <%--    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="3rd_bday.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page"></a>
            <a href="3rd_flashsale.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="flash sale"></a>

            <a href="life1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="beautiful life"></a>

            <a href="life2.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="elegant life"></a>

            <a href="life3.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="easy life"></a>

            <a href="kol.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="KOL"></a>

            <a href="brand1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top brands"></a>


        </div>
    </div>--%>
    <!-- 小選單掰掰-->

    <div style="width: 1100px; margin: 0 auto; position: relative" id="mn">
        <!--限時商品 倒數計時結束-->
        <!--限時商品 帶商品吧-->
        <%--      <h4 class="edm_title" id="t1" runat="server" visible="false">Fashion&Lingeries</h4>--%>
        <img id="mainImg" runat="server" alt="主推" style="width: 100%; max-width: 1100px;" />


        <div class="timelineup" id="b4">
        </div>

        <div style="width: 100%; margin: 0 auto; display: block; width: 1100px; position: relative; z-index: 2; list-style-type: none;">

            <div class="gift2 am-cf" style="width: 1100px;">
                <%--     <div class="product_5_space_1">--%>
                <div>
                    <ul class="">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <li class="am-fl hvr-float product_5_box">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </div>
                                        <h4 class="pname">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                        <p class="discountprice">
                                            RM
                                            <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                            <span class="am-fr deletepricem">
                                                <%# "RM " + PbClass.GetPrice(Eval("WPA10").ToString(), Application["mycashrate"].ToString())%></span>
                                        </p>
                                    </li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <!--活動辦法開始吧-->
    <div style="width: 100%; position: relative; width: 1100px; margin: 0 auto">
        <%-- <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>


                    <td width="100%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; color: #f8d1dd; padding: 20px; line-height: normal;">HaWooo 3rd Birthday Sale:<br>
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
                        </span>
                        <span style="color: white;">．Coupon<br />
                            Spend RM190 and get RM20 off - use promo code "bday20"<br />
                            Spend RM250 and get RM30 off - use promo code "bday30"<br />
                            Spend RM390 and get RM50 off - use promo code "bday50"<br />
                        </span>

                        3. Notice<br />
                        <span style="color: white;">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN,Keep Perfume, H&J, SHARE and FLASH SALE products.<br />
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                    </td>


                </tr>
            </tbody>
        </table>--%>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png"
            alt="hawooo.com" style="width: 100%;">
    </div>

    <%--    <script>
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




    </script>--%>
    <!--DK 三大類別tab用 結束-->
    <!--倒數計時用的-->
    <!-- JavaScript includes -->
    <%--    <script src="https://code.jquery.com/jquery-1.7.1.min.js"></script>--%>
    <%--  <script src="countdown/jquery.countdown.js"></script>--%>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/script.js"></script>
    <%--   <script src="js/script.js"></script>--%>
    <!--倒數計時用的結束-->
    <!--    <script src="assets/js/jquery.min.js"></script>-->
    <%--  <script src="assets/js/amazeui.min.js"></script>--%>
    <script src="assets/js/bday.js"></script>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };

        function SetSelClass(i) {
            var color = '';
            var app = '';
            switch (i) {
                case 1:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas10');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa_c.png' alt='Santa2' style='position:absolute;top:25%;margin:auto;width:10%;right:30%'>";
                        app += "</a>"
                        color = '#006734';
                        break;
                    }
                case 2:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas11');\">"
                        app += "<img class='go_bt cloud_four' src='https://www.hawooo.com/images/ftp/20181129/santa4.png' alt='Santa2' style='position:absolute;top:0;margin:auto;width:20%;right:0'>";
                        app += "</a>"
                        color = '#90c4c8';
                        break;
                    }
                case 3:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas12');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa5.png' alt='Santa2' style='position:absolute;top:25%;margin:auto;width:8%;right:45%'>";
                        app += "</a>"
                        app += "<a onclick=\"GetCoupon('2018xmas13');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa6.png' alt='Santa2' style='position:absolute;top:10%;margin:auto;width:20%;right:5%'>"
                        app += "</a>"
                        color = '#cbc09a';
                        break;
                    }
                case 4:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas14');\">"
                        app += "<img class='go_bt' src='https://www.hawooo.com/images/ftp/20181129/santa5.png' alt='Santa2' style='position:absolute;top:5%;margin:auto;width:5%;left:4%'>";
                        app += "</a>"
                        color = '#90b6c8';
                        break;
                    }
                case 5:
                    {
                        app = "<a onclick=\"GetCoupon('2018xmas15');\">"
                        app += "<img class='go_bt cloud_four' src='https://www.hawooo.com/images/ftp/20181129/santa7.png' alt='Santa2' style='position: absolute; top: 8%; margin: auto; width: 22%; left: 10%;'>";
                        app += "</a>"
                        color = '#c8a694';
                        break;
                    }
            }
            $("#b4").append(app);
            $("#mn").css("background-color", color);
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
                          alert("領取成功");
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


    <%-- <script src="assets/js/clipboard.min.js"></script>
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

        $(function () {

            $("#footermenu").remove();

        })
    </script>--%>
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
</asp:Content>
