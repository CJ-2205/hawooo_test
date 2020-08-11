<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/rating-style.css" rel="stylesheet" />
    <script src="jquery-plus/touchwipe/jquery.cycle.all.min.js"></script>
    <script src="jquery-plus/touchwipe/jquery.touchwipe.1.1.1.js"></script>
    <script src="jquery-plus/imagesloaded.min.js"></script>
    <script src="assets/js/rating-stars.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 上方big slider star -->
    <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{&quot;directionNav&quot;:false}'>
        <ul class="am-slides">
            <asp:Literal ID="lit_ad_slides" runat="server"></asp:Literal>
        </ul>
    </div>
    <!-- 上方big slider end -->
    <!-- 三個banner star -->
    <section class="am-g row-link-advert">
        <asp:Literal ID="lit_md_ad" runat="server"></asp:Literal>
    </section>
    <!-- 三個banner end -->

    <!-- WOW精選 star -->
    <%--  <section class="am-g best-choice">
        <img src="images/best-choice.png?v=170908">
        <div class="best-choice-wrapper">
        
            <ul class="am-cf">
                <asp:Repeater ID="rp_group_product" runat="server">
                    <ItemTemplate>
                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                            <li class="am-fl">
                                <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                <div class="best-choice-text">
                                    <p>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %> </p>
                                </div>
                            </li>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
          <a href="group.aspx">
            <div class="best-choice-more"></div>
        </a>
    </section>--%>
    <!-- WOW精選 end -->

    <!-- 熱銷排行 star -->
    <section class="am-container">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title">
                <i class="am-icon-star-o"></i>
                <span class="txtRsc" data-id="mkt010">熱銷排行</span>
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_hot" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">
                            <a href="<%# "product.aspx?id=" + Eval("WP01").ToString() %>">
                                <div class="product_item_pic">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                        </p>
                                    </div>
                                </div>

                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </section>
    <!-- 熱銷排行 end -->

    <!-- 超級折扣 star -->
    <section class="am-container">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title">
                <i class="am-icon-bell-o"></i>
                <span class="txtRsc" data-id="idx015">超級折扣</span>
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_discount" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">

                            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                <div class="product_item_pic">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%#  ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />

                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="rating-wrapper">
                                    <p class="rating-avg"><%# Eval("StarCount").ToString() %></p>
                                    <div class="rating-stars">
                                        <span class="rating-stars-empty">
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                        </span>
                                        <span class="rating-stars-filled">
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                            <span class="star"><i class="fa fa-star"></i></span>
                                        </span>
                                    </div>
                                    <span class="rating-count">(<%# Eval("ReviewCount").ToString() %>)</span>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </section>
    <!-- 超級折扣 end -->

    <!-- 每週新品 star -->
    <section class="am-container">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title">
                <i class="am-icon-plus-square-o"></i>
                <span class="txtRsc" data-id="idx016">每週新品</span>
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_news" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">

                            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                <div class="product_item_pic">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%#  ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </section>
    <!-- 每週新品 end -->


    <section class="am-container">
        <div class="am-panel am-panel-default middle-panel hot-item">
            <header class="am-panel-hd">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-12 am-text-center">
                        <i class="am-icon-hand-o-right"></i>
                        <span class="txtRsc" data-id="idx017">熱門項目</span>
                    </div>
                </div>
            </header>
            <ul class="am-avg-sm-2 ul-products-catalogue">
                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=16" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/icon-popular-section_01.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx002">時尚彩妝</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs013">臉部彩妝</span>&nbsp;
                                    <span class="txtRsc" data-id="cs014">卸妝</span>
                                </span>
                            </div>
                    </a>
                </li>
                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=44" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/icon-popular-section_02.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx005">服裝內衣</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs011">機能內衣</span>&nbsp; 
                                    <span class="txtRsc" data-id="cs012">泳裝</span>
                                </span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=42" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/icon-popular-section_03.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx003">美體保養</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs009">去角質</span>&nbsp;
                                    <span class="txtRsc" data-id="cs010">護髮</span>
                                </span>
                            </div>
                        </div>
                    </a>
                </li>

                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=45" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/icon-popular-section_04.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx006">流行美鞋</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs008">高跟鞋</span>&nbsp;
                                    <span class="txtRsc" data-id="cs015">運動鞋</span>
                                </span>
                            </div>
                        </div>
                    </a>
                </li>

                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=43" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/icon-popular-section_05.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx004">保健食品</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs006">奢光錠</span>&nbsp; 
                                   <span class="txtRsc" data-id="cs007">維他命C</span>
                                </span>
                            </div>
                        </div>
                    </a>
                </li>

                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=46" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/icon-popular-section_06.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx007">包包配件</span><br>
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs004">後背包</span>&nbsp; 
                                    <span class="txtRsc" data-id="cs005">戒指</span></span>
                            </div>
                        </div>
                    </a>
                </li>

                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=47" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/foodicon.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx008">品味美食</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs003">快煮麵</span>&nbsp; 
                                    <span class="txtRsc" data-id="cs016">飲品</span></span>
                            </div>
                        </div>
                    </a>
                </li>

                <li class="list-item-catalogue-section">
                    <a href="shop.aspx?cid=49" class="link-popular-section">
                        <div class="am-g am-g-collapse container-popular-section">
                            <div class="am-u-sm-4 img-container-popular-section">
                                <img src="images/momicon.svg" alt="" class="img-popular-section">
                            </div>
                            <div class="am-u-sm-8 title-container-popular-section">
                                <span class="title-popular-section txtRsc" data-id="idx010">媽咪寶貝</span><br />
                                <span class="subtitle-popular-section">
                                    <span class="txtRsc" data-id="cs001">益生菌</span>&nbsp;
                                    <span class="txtRsc" data-id="cs002">繪本</span>
                                </span>
                            </div>
                        </div>
                    </a>
                </li>

            </ul>
        </div>
    </section>
    <section class="am-g am-g-collapse" id="section-company-promises">
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_01.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises txtRsc" data-id="idx018">100%海外正品</span><br />
                    <!-- <span class="subtitle-company-promises">100% Authentic</span> -->
                </div>
            </div>
        </div>
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_02.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises txtRsc" data-id="idx019">RM199免郵</span><br />
                    <!-- <span class="subtitle-company-promises">RM 249 Free Shipping</span> -->
                </div>
            </div>
        </div>
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_03.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises txtRsc" data-id="idx020">3-10天到貨</span><br />
                    <!-- <span class="subtitle-company-promises">Fast Delivery</span> -->
                </div>
            </div>
        </div>
    </section>





    <script>

        //$(function () {

        //    $('#wrap').imagesLoaded(function () {
        //        procycle();
        //    });

        //});

        //function procycle() {
        //    $('#imagegallery').cycle({
        //        timeout: 0,
        //        fx: 'scrollHorz',
        //        next: '#next',
        //        prev: '#prev',
        //        width: 'fit'
        //    });

        //    $("#imagegallery").touchwipe({
        //        wipeLeft: function () {
        //            $("#imagegallery").cycle("next");

        //        },
        //        wipeRight: function () {
        //            $("#imagegallery").cycle("prev");
        //        }
        //    });
        //}

    </script>

</asp:Content>
