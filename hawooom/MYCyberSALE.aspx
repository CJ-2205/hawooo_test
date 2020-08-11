<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="mycybersale.aspx.cs" Inherits="mobile_static_mycybersale_mycybersale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mycybersale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_01m.png" %>' alt="首頁banner" style="width: 100%;" />
        </div>
        <%--=====================領取折扣券 Start==========================--%>
        <div class="coupon am-center">
            <ul class="am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="MYCYBER20" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/coupon_01m.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="MYCYBER40" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/coupon_02m.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================領取折扣券 End==========================--%>

        <%--=====================登記 Start==========================--%>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/reg_03m.png" %>' alt="首頁banner" style="width: 100%;" />
        </div>
        <%--=====================登記 End==========================--%>
        <%--=====================flash sale Start==========================--%>

        <div class="banner-box am-padding-top-lg  reg-bn">
            <a href="2019cybersalepreorder.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_02m.png" %>' alt="首頁banner" style="width: 100%;" id="Fsbanner"/>

                <div class="clock am-text-center">
                    <span id="content" style="font-size: 14px; font-weight: bold"></span>
                    <span id='h'></span>:
                    <span id='m'></span>:
                    <span id='s'></span>:
                    <span id='ms'></span>
                </div>
            </a>
        </div>
        <%--=====================flash sale End==========================--%>

        <%--=====================shop-block-wrap1===Hot Deal Start===============================--%>

        <section class="am-padding-top-lg">
            <div class="banner-box  am-text-center">
                <a href="hot_deal.aspx" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_03m.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </a>
                <div class="mb-shop-block mb-shop-block1 mb-shop-theme">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_01m.png" %>' alt="Hot Deal Banner" style="width: 100%;" />
                    </a>
                </div>
        </section>

        <%--=======================shop-block-wrap1===Hot Deal  End============================--%>


        <%--=======================shop-block-wrap2===Supreme Brand Start===============================--%>
        <section class="am-padding-top-xl">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_04m.png" %>' alt="Supreme Brand  Banner" style="width: 100%;" />
            </div>

            <div class="mb-shop-block mb-shop-block2">
                <ul class="am-margin-0 am-avg-sm-2">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("_url") %>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%#Eval("_img") %>' />
                                    </div>
                                    <div class="brand-logo">
                                        <img class=" am-center" data-sizes="auto" src='<%#Eval("_logo") %>'>
                                    </div>
                                    <div class="brand-info">
                                        <h6><%#Eval("_name") %></h6>
                                        <span><%#Eval("_title") %></span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <%--============================== shop-block-wrap2=== Supreme Brand   End ===============================--%>


        <%--=========================shop-block-wrap3====beauty_stall  Start ===============================--%>
        <section class="shop-block-wrap am-padding-top-xl">
            <div class="banner-box">
                <a href="beauty_stall.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_05m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-theme" id="product-make2">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products2" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="beauty_stall.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap3==== Beauty  End ===============================--%>

        <%--=========================shop-block-wrap4===Supplement  Start ===============================--%>
        <section class=" shop-block-wrap am-padding-top-xl">
            <div class="banner-box">
                <a href="supplement_stall.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_06m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-theme" id="product-make3">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="supplement_stall.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap4===Supplement  End ===============================--%>
        <%--=========================shop-block-wrap5===Life Start ===============================--%>
        <section class=" shop-block-wrap am-padding-top-xl">
            <div class="banner-box">
                <a href="lifestyle.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_07m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-theme" id="product-make5">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products4" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="lifestyle.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap5===Life  End ===============================--%>

        <%--=========================shop-block-wrap6===Fashion Start ===============================--%>
        <section class="shop-block-wrap   am-padding-vertical-xl">
            <div class="banner-box">
                <a href="fashion.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_08m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-theme">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products5" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="fashion.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap6===Fashion  End ===============================--%>
    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0 am-container">
            Terms & Conditions  
                <br />
            Hawooo Mycyber Sale<br />
            1. Promotion date : 27th September 2019 - 6th October 2019 
            <br />
            2. Use Code【MYCYBER20】for EXTRA RM20 OFF (min spend 170)；Use Code【MYCYBER40】for EXTRA RM40 OFF (min spend 380)
            <br />
            3. Coupon is NOT APPLICABLE on Flash Sale items.
            <br />
            4. Coupon is APPLICABLE on selected Flagship Stores , including Anriea, LOVING FAMILY, ROOTFOCUS, Newart, Deseno, MOOIMOM, LALER, CHOYER, HSU’S, HH, DV, PARADISO GARDEN, ZEPHYRINE, Naturero, Grandmotherapy, Life8.
            <br />
            5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Hawooo Mycyber Sale Terms from time to time, and in such manner as Hawooo deems appropriate. 
        </p>
    </footer>

    <%--<script type="text/javascript">

    </script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>

    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".clock").everyTime('0.1s',
                function (i) {
                    //spendtime--; //總共秒數
                    spendtime = spendtime - 0.1; //總共秒數

                    //var d = Math.floor(spendtime / (24 * 3600));
                    //d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600 * 3600)) / 3600);
                    h = PrefixInteger(h, 3);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    var ms = Math.floor((spendtime * 10 % 10));
                    ms = PrefixInteger(ms, 1);

                    if (spendtime > 0) {
                        //$("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                        $("#ms").text(ms);
                    } else { // 避免倒數變成負的
                        //$("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                        $("#ms").text(ms);
                    }
                });
        };

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        };

        $(function () {
            var date1 = new Date("2019-10-02T00:00:00");
            var date2 = new Date("2019-10-04T00:00:00");
            var dateNow = new Date();
            if (dateNow < date1) {
                $('#content').text('pre-order ending：');
                $('#Fsbanner').attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_02m.png" %>')
            };
            if ((dateNow < date2 && dateNow > date1)) {
                $('#content').text('ending：');
                $('#Fsbanner').attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_02cm.png" %>')
                $('.clock').css('top', '50%')

            }
        });

        $(function () {
            var date3 = new Date("2019-10-04T00:00:00");
            var dateNow = new Date();
            if (dateNow > date3) {
                $('.reg-bn').css("display", "none");
                $('.clock').remove();

            };
        });
    </script>

</asp:Content>

