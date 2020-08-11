<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2019ValentinesDay.aspx.cs" Inherits="user_static_ValentinesDay_2019ValentinesDay" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2019ValentinesDay.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-contain">
        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_01.png" %>' alt="主banner" style="width: 100%;" />
            <%--<img src="https://www.hawooo.com/images/ftp/20190808/bn_01.png" alt="主banner" style="width: 100%;" />--%>
            <div class="moving-object  moving-object1">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/left.png"%>' alt="牛郎" style="width: 100%;" />
            </div>
            <div class="moving-object   moving-object2">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/right.png"%>' alt="織女" style="width: 100%;" />
            </div>
        </div>
        <%--=====================Top Banner End==========================--%>
        <%--=====================領取折扣券 Start==========================--%>
        <div>
            <ul class="copy-coupon am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="LOVE17" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/coupon_01.png"%>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="LOVE27" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/coupon_02.png"%>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================領取折扣券 End==========================--%>
        <%--=====================shop-block-wrap1===ValueBuy Start===============================--%>

        <div class="am-container" id="maincId">

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap1">
                <div class="banner-box banner-box1">
                    <div class="banner-box-img">
                        <a href="ValueBuy.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_02.png"%>' alt="Banner" style="width: 100%;" />
                        </a>
                    </div>
                </div>

                <div class="shop-block shop-block1" id="product-make">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products" />
                        <%--<li class="am-fl  hvr-float am-padding-sm">
                            <a href="https://www.hawooo.com/user/productdetail.aspx?id=13716&amp;bid=51#&amp;name=Beauty-Shop-Super-Cal-Essence-of-Chicken-60-capsules-box">
                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                        <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                    </div>
                                    <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                        <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                            Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                        </div>
                                        <div class="am-u-sm-12 " style="padding: 5px !important">
                                            <div class="am-fl">
                                                <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM 268.90
                                                </span>
                                            </div>
                                            <div class="am-fr">
                                                <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                </span>
                                            </div>
                                        </div>
                                        <div class="am-u-sm-12 " style="padding: 5px !important">
                                            <div class="am-fl">
                                                <span style="font-size: 13px;">
                                                    <i class="far am-icon-eye"></i>Viewed 6.7K
                                                </span>
                                            </div>
                                            <div class="am-fr" style="">
                                                <span class="product-items-tag">
                                                    <img src="../images/icon/免運.svg" style="width: 20px">免運</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </li>--%>
                    </ul>
                </div>
            </section>
            <%--=======================shop-block-wrap1===ValueBuy End============================--%>

            <%--=======================shop-block-wrap2===Gift For Her Start===============================--%>

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap2">
                <div class="banner-box  banner-box2">
                    <div class="banner-box-img">
                        <a href="GiftForHer.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_03.png"%>' alt="Banner" style="width: 100%;" />
                        </a>
                    </div>
                    <%--    <span class="see-more-btn">
                          <a href="#">
                        <img src="https://www.hawooo.com/images/ftp/20190808/more_01.png" alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                    </span>--%>
                </div>

                <div class="shop-block shop-block2" >
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
            </section>
            <%--============================== shop-block-wrap2===Gift For Her  End ===============================--%>


            <%--=========================shop-block-wrap3====品牌區塊Selected Brands  Start ===============================--%>

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap3">
                <div class="banner-box banner-box3">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_04.png"%>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block3">
                    <ul class="am-avg-sm-4">
                        <%--<li class="am-fl  hvr-float">
                            <a href="#">
                                <div class="prd-brand">
                                    <img src="https://www.hawooo.com/images/ftp/20190808/bd_01.png" alt="product-img" style="width: 100%;" />
                                </div>
                            </a>
                        </li>--%>
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%# Eval("_url") %>'>
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
            <%--==============================shop-block-wrap3====Selected Brands  End ===============================--%>


            <%--==========================shop-block-wrap4===Beauty Start====================================--%>
            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap4">

                <div class="am-g reel-block">
                    <div class="banner-box  banner-box4 am-u-sm-5">
                        <div class="banner-box-img">
                            <a href="Beauty.aspx" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_05.png"%>' alt="Banner" style="width: 100%;" />
                            </a>
                        </div>
                    </div>
                    <div class="am-u-sm-9 shop-block shop-block4">
                        <ul class="am-avg-sm-3">
                            <uc1:products runat="server" id="products3" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--==========================shop-block-wrap4===Beauty End====================================--%>

            <%--==========================shop-block-wrap5===Fashion Start====================================--%>
            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap5">

                <div class="am-g reel-block">
                    <div class="banner-box  banner-box5 am-u-sm-5">
                        <div class="banner-box-img">
                            <a href="Fashion.aspx" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_06.png"%>' alt="Banner" style="width: 100%;" />
                            </a>
                        </div>
                    </div>
                    <div class="am-u-sm-9 shop-block shop-block5">
                        <ul class="am-avg-sm-3">
                            <uc1:products runat="server" id="products4" />
                        </ul>
                    </div>
                </div>

            </section>
            <%--==========================shop-block-wrap5===Fashion End====================================--%>
            <%--==========================shop-block-wrap6===Life Start====================================--%>
            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap6">

                <div class="am-g reel-block">
                    <div class="banner-box  banner-box6  am-u-sm-5">
                        <div class="banner-box-img">
                            <a href="Life.aspx" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_07.png"%>' alt="Banner" style="width: 100%;" />
                            </a>
                        </div>
                    </div>
                    <div class="am-u-sm-9 shop-block shop-block6">
                        <ul class="am-avg-sm-3">
                            <uc1:products runat="server" id="products5" />
                        </ul>
                    </div>
                </div>

            </section>
            <%--==========================shop-block-wrap6===Life End====================================--%>
            <%--==================shop-block-wrap7=======More amazing deals=banner Start=====================================--%>

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap7">
                <div class="banner-box  banner-box7">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_08.png"%>' alt="Banner8" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block7">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </section>
            <%--=========================More amazing deals=banner End=====================================--%>
        </div>
        <%--==============================活動辦法 Start =====================================--%>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
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
    </div>
    <%--==============================活動辦法 End=====================================--%>

    <%--<script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 7; i++) {
                duplicate('product-make');
            }
            for (i = 0; i < 7; i++) {
                duplicate('product-make2');
            }
            for (i = 0; i < 155; i++) {
                duplicate("slider-bar");
            }
            for (i = 0; i < 19; i++) {
                duplicate("product-make20");
            }
            for (i = 0; i < 47; i++) {
                duplicate("product-make48");
            }
            $(function () {
                //console.log('begain');
                detectLength($('#slider1 li'), 0);
                detectLength($('#slider2 li'), 0);
                detectLength($('#slider3 li'), 0);
                //console.log('end');
            });
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }

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
    <script>
        $(function () {
            $("#maincId li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>
</asp:Content>

