<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20200319VIP_exclusive_sales.aspx.cs" Inherits="mobile_static_20200319VIP_exclusive_sales" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200319VIP_exclusive_sales.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_01m.png" %>' alt="main-banner" />
        </div>
        <div class="am-container">
            <div class="am-margin-vertical-xs">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_02m.png" %>' alt="main-banner" />
            </div>
            <%--========================Coupon Start===============================--%>

            <div class="am-margin-vertical-xs">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-right-xs exclusive-code">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/coupon_01.png" %>' alt="coupon_01m" />
                        <span class="enter-exclusive-code enter-exclusive-code-mb">Please login</span>
                    </li>
                    <li class="am-padding-left-xs">
                        <a href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/coupon_02.png" %>' alt="coupon_02m" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <%--========================Coupon End===============================--%>


        <%--======================== Block1 Start===============================--%>

        <section class="am-margin-vertical goods-mb" id="s1">
            <div>
                <a href="20200319VIP_super_deals.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>
            </div>
            <div>
                <div class="mb-shop-block bg1 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products1" />

                    </ul>
                </div>
            </div>
            <div>
                <a href="20200319VIP_super_deals.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/morem.png" %>' alt="morem" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--========================Block1  End ==============================--%>

        <%--========================Block2 Start ==============================--%>

        <section class="am-margin-vertical">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
            </div>

            <div class="mb-shop-block goods-mb bg1" id="logo">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="brands" />

                </ul>
            </div>
        </section>

        <%--=======================Block2  End=========================--%>


        <%--======================= Footer=== Start ========================--%>
        <footer class="am-padding activity-method">
            <div class="am-container">
                <p class="am-margin-0">
                    Terms & Conditions<br />
                    VIP Exclusive Sale<br />
                    1. Promotion Date : 24th Mar 2020 12:00 - 26th Mar 2020 23:59<br />
                    2. Promo Code:
            <br />
                </p>
                <p class="am-margin-left-lg">
                    - RM40 OFF (min spend 290)<br />
                    - each member has their exclusive code, it’s saved in you account, select it when you are checking out your shopping cart<br />
                    - each member will only get 1 code, the code can only use once,  CANNOT be used repeatedly<br />
                    - ONLY applicable on brands on this page, including Dr.Morita, Paradiso Garden, Double Doctor, Zephyrine, Naturero, Nature Tree, Unicat, Dayla, 1838 Eurocares, Unipapa, Dawako, Chef Clean, Icon, Enjoy The Life, DV, Laler, Beezin, Ivita, Angel Lala, Vincent’s World, C’est Vrai, Catiss<br />
                </p>
                <p class="am-margin-0">
                    3. Free Gift: Spend RM 450 and above, get Free Paradiso Essence Set ( Essence 8ml + Mask, Worth RM100, Limited 50 sets)<br />
                    4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these VIP Exclusive Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>


    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

        $(function () {
            if (u == null) {
                $(".main-contain a").attr("href", "#!")

                $(".main-contain").click(function () {
                    var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                    if (u == null) {
                        location.href = 'login.aspx?rurl=20200319VIP_exclusive_sales.aspx';
                    }
                });
            }
            else {
                var val = "{'userID':'" + 444 + "'}";

                $.ajax({
                    type: "POST",
                    url: "20200319VIP_exclusive_sales.aspx/GetUserInfo",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {

                        var rmsg = JSON.parse(msg.d)[0].rmsg;

                        if (rmsg === "VIP") {
                            PutUrl();
                            PutImg();
                        }
                        else {

                            alert2url('Oops, the is the secret sale for Top500 VIPs!', 'index.aspx');
                            //alert('Oops, the is the secret sale for Top500 VIPs!');
                            //location.href = 'index.aspx';
                        }

                    },
                    error: function () {
                        alert('Ajax ERROR');
                    }
                });
               
            }
           
        })


        function PutUrl() {
            $('#s1 a').attr({
                "href": "20200319VIP_super_deals.aspx",
                "target": "_blank"
            });

        };


        var brandNo = [235, 345, 203, 312, 349, 283, 322, 432, 307, 319, 72, 117, 309, 287, 334, 413];
        function PutImg() {
            for (i = 0; i < 16; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200324/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }


        };
    </script>
</asp:Content>

