<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20200319VIP_exclusive_sales.aspx.cs" Inherits="user_static_20200319VIP_exclusive_sales" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200319VIP_exclusive_sales.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_01.png" %>' alt="主banner" />
        </div>

        <div class="am-container">
            <div class="am-margin-lg">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_02.png" %>' alt="主banner" />
            </div>
            <%--====================== 領取折扣券 Start ==========================--%>
            <div class=" am-margin-lg">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-lg exclusive-code">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/coupon_01.png" %>' alt="coupon_01" />
                        <span class="enter-exclusive-code" id="UserCode">Please login</span>
                    </li>
                    <li class="am-padding-lg">
                        <a href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                </ul>
            </div>
            <%--======================領取折扣券 End===========================--%>

            <%--======================  block1  Start ===========================--%>
            <section class="am-container" id="s1">
                <div class="am-text-center">
                    <a href="20200319VIP_super_deals.aspx">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_03.png" %>' alt="bn_03" style="width: 100%;" />
                    </a>
                </div>

                <div class="am-padding-sm shop-block bg1">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div class="see-more">
                    <a href="20200319VIP_super_deals.aspx">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/more.png" %>' alt="more" style="width: 100%;" />
                    </a>
                </div>

            </section>
            <%--===================== block1   End ======================--%>


            <%--===================== block2   Start  =====================--%>

            <section class="am-margin-vertical-xl" id="s2">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bn_04.png" %>' alt="bn_04" />
                </div>
                <div class="shop-block am-padding-sm bg1" id="div2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />

                    </ul>
                </div>
            </section>

            <%--=====================block2  ===End====================--%>

            <%--======================= 活動辦法 Start ==========================--%>
        </div>
    </div>

    <footer class="activity-method">
        <div class="am-container">
            <div class="am-padding">
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
        </div>
    </footer>
    <%--==============================活動辦法 End=====================================--%>

    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

        $(function () {
            if (u == null) {
                $(".main-contain a").attr("href", "#!")
                //doLogin('20200319VIP_exclusive_sales.aspx');

                $(".main-contain").click(function () {
                    var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                    if (u == null) {
                        doLogin('20200319VIP_exclusive_sales.aspx');

                    }
                });
            }
            else {
                var val = "{'userID':'" + u + "'}";

                $.ajax({
                    type: "POST",
                    url: "20200319VIP_exclusive_sales.aspx/GetUserInfo",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {

                        var rmsg = JSON.parse(msg.d)[0].rmsg;
                        var code = JSON.parse(msg.d)[0].code;

                        if (rmsg === "VIP") {

                            //console.log(code);
                            $("#UserCode").text(code);
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

            $("#s1 li").attr("class", "am-fl  hvr-float");
        };

        var brandNo = [235, 345, 203, 312, 349, 283, 322, 432, 307, 319, 72, 117, 309, 287, 334, 413];
        function PutImg() {
            for (i = 0; i < 16; i++) {
                $('#s2 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200324/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s2 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });

            }

        };

    </script>
</asp:Content>

