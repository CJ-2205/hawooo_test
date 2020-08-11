<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2019ValentinesDay.aspx.cs" Inherits="mobile_static_ValentinesDay_2019ValentinesDay" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2019ValentinesDay.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--=====================Top Banner Start==========================--%>
    <div class="banner-box  mb-top-banner">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_01m.png" %>' alt="首頁banner" style="width: 100%;" />
        <div class="moving-object  mb-moving-object1">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/left.png" %>' alt="牛郎" style="width: 100%;" />
        </div>
        <div class="moving-object   mb-moving-object2">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/right.png" %>' alt="織女" style="width: 100%;" />
        </div>
    </div>
    <%--=====================Top Banner End==========================--%>
    <%--=====================領取折扣券 Start==========================--%>
    <div>
        <ul class="copy-coupon am-avg-sm-2">
            <li>
                <a id="coupon1" data-clipboard-text="LOVE17" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/coupon_01m.png"%>' alt="coupon1" style="width: 100%;" />
                </a>
            </li>
            <li>
                <a id="coupon2" data-clipboard-text="LOVE27" onclick="Clip('coupon2');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/coupon_02m.png"%>' alt="coupon2" style="width: 100%;" />
                </a>
            </li>
        </ul>
    </div>
    <%--=====================領取折扣券 End==========================--%>

    <div class="am-g  main-contain">

        <%--=====================shop-block-wrap1===ValueBuy Start===============================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap1">
            <div class="banner-box mb-banner-box1">
                <a href="ValueBuy.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_02m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-block1">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>

        <%--=======================shop-block-wrap1===ValueBuy End============================--%>

        <%--=====================shop-block-wrap2===Gift For Her Start===============================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap2">
            <div class="banner-box mb-banner-box2">
                <a href="GiftForHer.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_03m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-block2">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products2" />
                </ul>
            </div>
        </section>
        <%--=======================shop-block-wrap2===Gift For HerEnd============================--%>

        <%--============================shop-block-wrap3====品牌區塊Selected Brands Start===============================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap3">
            <div class="banner-box mb-banner-box3">
                <a href="#" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_04m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="shop-block mb-shop-block3">
                <ul class="am-avg-sm-2 am-avg-md-3">
<%--                    <li class="am-fl ">
                        <a href="#">
                            <div class="brand-item-pic">
                                <img src="https://www.hawooo.com/images/ftp/20190808/bd_01m.png">
                            </div>
                        </a>
                    </li>--%>
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("_url") %>'>
                                    <div class="brand-item-pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/"+Eval("_img")+".png" %>' style="width: 100%;">
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=========================shop-block-wrap3====品牌區塊Selected Brands  End===============================--%>

        <%--==========================shop-block-wrap4===Beauty Start====================================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap4">
            <div class="banner-box mb-banner-box4">
                <a href="Beauty.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_05m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-block4">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="Beauty.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/more_01m.png"%>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>
        <%--==========================shop-block-wrap4===Beauty End====================================--%>

        <%--==========================shop-block-wrap5===Fashion Start====================================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap5">
            <div class="banner-box mb-banner-box5">
                <a href="Fashion.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_06m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-block5">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products4" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="Fashion.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/more_02m.png"%>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>
        <%--==========================shop-block-wrap5===Fashion End====================================--%>
        <%--==========================shop-block-wrap6===Life Start====================================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap6">
            <div class="banner-box mb-banner-box6">
                <a href="Life.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_07m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-block6">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products5" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="Life.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/more_03m.png"%>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>
        <%--==========================shop-block-wrap6===Life End====================================--%>
        <%--==================shop-block-wrap7=======More amazing deals=banner Start=====================================--%>
        <section class="am-padding-top-xs shop-block-wrap  mb-shop-block-wrap7">
            <div class="banner-box mb-banner-box7">
                <a href="#" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_08m.png"%>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-block7">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products6" />
                </ul>
            </div>

        </section>
        <%--=========================More amazing deals=banner End=====================================--%>
        <%--==============================活動辦法 Start =====================================--%>
    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0">
            Terms & Conditions
                <br />
            Valentine’s Day Sale
                <br />
            1. Promotion date : 8th August 2019 - 18th August 2019
                <br />
            2. Use Code 【LOVE17】for EXTRA RM17 OFF (min spend 160); Use Code【LOVE27】for EXTRA RM27 OFF (min spend 250)
                <br />
            3. Coupon is APPLICABLE on selected Flagship Stores , including Life 8, CACO, WAVE SHINE, DV, HSU’S, Deseno, and LOVING FAMILY.
        </p>
    </footer>

    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 18; i++) {
                duplicate('product-make80');
            }
            for (i = 0; i < 18; i++) {
                duplicate('product-make2');
            }
            for (i = 0; i < 18; i++) {
                duplicate('product-make3');
            }
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }
    </script>
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
</asp:Content>

