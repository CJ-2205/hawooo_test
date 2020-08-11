<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200813hawooo_lab.aspx.cs" Inherits="user_static_200813hawooo_lab" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <title>Supplement Flash Sale</title>
    <style>
        /* Logo border style */


        .float-menu-point {
            cursor: pointer;
        }

                .countdown-txt {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 34%;
            color: #fff;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 30px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain" style="background: #EA5C52;">
        <div>
            
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_live/bn_lab.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        
        </div>
    <div class="am-container">
        <%--=====================領取折扣券 Start ==========================--%>
        <div class="am-container am-margin-vertical-lg" style="position: relative;">
            <%--<img class="am-margin-bottom-xl" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_live/bn_lab.png" + "?cacheVersion=" + cacheVersion %>'
                alt="bbn_01" />--%>
            <div class="even-title"> 
                <h2 class="countdown-txt">Sale ends in
                <span class="countdown">
                    <span class="d">0</span>:
                <span class="h">0</span>:
                <span class="m">0</span>:
                <span class="s">0</span>
                </span>
                </h2>
            </div>
        </div>
        <%--=====================領取折扣券 End ===========================--%>

        <%--===================== block1 Start ======================--%>
        <section class="am-margin-bottom-xl">

            <div class="shop-block ">
                <ul class="am-avg-sm-4 hvr">
                    <%--後端帶入商品 (Start) --%>
                    <uc1:products runat="server" id="products1" />
                    <%--後端帶入商品 (Start) --%>
                </ul>
            </div>

        </section>
        <%--Block (Start) =====================================================--%>

        <%--Block2 Highlighted Brands(Start)==========================================--%>

        <%--Block2 Block3 Highlighted Brands(End) ======================================--%>

        <%--Block3 Shop By Category (Start) ==========================================--%>
        <%--<div class="include" data-file="category.html"></div> --%>

        <%--Block3 Shop By Category (End) ===========================================--%>

        <%--Block4  You May Also Like... (Start)========================================--%>

        <%--Block4  You May Also Like... (End)=========================================--%>
    </div>
    <%--Terms & Conditions (Start) =====================================================--%>
    <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
        <div class="am-container">
            <p>
                Terms & Conditions<br>
                Hawooo Lab<br>
                1. Live campaign only available for 48hrs<br>
                2. New Brand Sale are available for 玩轉科技，RM25 OFF, use code [Brand25] (min spend 250)<br>
                3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 48 hrs Live 
                    campaign terms from time to time, and in such manner as Hawooo deems appropriate.<br>
            </p>
        </div>
    </footer>
    <%--Terms & Conditions (End) ======================================================--%>
    </div>


    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

        $(function () {

            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $(".hvr li").attr("class", "am-fl hvr-float");

            SetThem();
            PutImg();


        });



        /* Used by putimg() */
        function paddingLeft(str, lenght) {
            debugger;
            if (str.length >= lenght)
                return str;
            else
                return paddingLeft("0" + str, lenght);
        };


        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>

    <script>
        function setTime(spendtime) {

            $(".countdown").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    if (spendtime > 0) {
                        $("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                    } else { // 避免倒數變成負的
                        $("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                    }

                });

        }

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
        //debug
        //function printDebugMessage(argg) {
        //    console.log(`${argg}`);
        //}
    </script>
</asp:Content>
