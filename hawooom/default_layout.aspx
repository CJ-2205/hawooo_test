<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="default_layout.aspx.cs" Inherits="mobile_static_FriendshipDaySale_default_layout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/flagship_store_events.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="am-g default-layout bg-color">
        <div class="main-contain">
            <div class="main-banner">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/mb_bn.png" />
            </div>

            <!-- 側邊活動倒數 start -->
            <section class="countdown-contain-mb">
                <a href="#!">
                    <div class="am-u-sm-3">
                        <div class="countdown-info">
                            <div class="countdown-block">
                                <h3>FINAL </h3>
                                <span class="countdown-tag">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/saletag.png" />
                                </span>
                            </div>
                            <div class="countdown-block">
                                <h3>COUANTDOWN</h3>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-5 countdown-block">
                        <ul class="countdown-time">
                            <li id="d"></li>
                            <li id="h"></li>
                            <li id="m"></li>
                            <li id="s"></li>
                        </ul>
                    </div>
                    <div class="am-u-sm-4">
                        <div class="countdown-btn">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/m_time_bg.png" />
                        </div>
                    </div>
                </a>
            </section>
            <!-- 側邊活動倒數 end -->

            <div class="am-container">
                <!-- 折扣券 start 如果只有一張 在li加上.single-coupon & am-avg-sm-2改成1 -->
                <section class="section-space">
                    <div class="default-layout-coupon" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/coupon_bg.png' ) no-repeat center center; background-size: 100% 100%;">
                        <ul class="am-avg-sm-2 coupon-group">
                            <li class="am-fl coupon">
                                <a id="coupon1" data-clipboard-text="couponCode" onclick="Clip('coupon1');">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/coupon_1.png" />
                                </a>
                            </li>
                            <li class="am-fl coupon">
                                <a id="coupon2" data-clipboard-text="couponCode" onclick="Clip('coupon2');">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/coupon_1.png" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
            <!-- 折扣券 end -->

            <!-- 主題條 start -->
            <section class="theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bartitle_limiteditem.png" />
                </div>
            </section>
            <!-- 主題條 End -->

            <!-- Limited item start 商品滑塊 +swiper-container & goods-item-slider-->
            <section class="am-container section-space">
                <div class="am-u-sm-12 block-item">
                    <div class="swiper-container swiper-container1 goods-item-wrepper goods-item-slider">
                        <ul class="swiper-wrapper">
                            <li class="am-fl swiper-slide goods-item goods-item1">
                                <a href="#!">
                                    <div class="goods-item-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg" />
                                        </div>
                                        <span class="goods-discount goods-discount1">10<small>%</small>  OFF
                                        </span>
                                    </div>
                                    <div class="goods-item-bottom">
                                        <div class="goods-item-block">
                                            <div class="goods-item-brand">
                                                Dr.Cink
                                            </div>
                                            <h3 class="goods-name">DR.CINK All-Round 4D Super Moisturizing Revitalizing & Luxurios Caviar Serum Set & Luxurios Caviar Serum Set
                                            </h3>
                                        </div>
                                        <div class="goods-item-block flex-between-baseline">
                                            <h5 class="goods-price">385.20
                                            </h5>
                                            <s class="goods-original-price">530.56
                                            </s>
                                        </div>
                                        <div class="goods-item-block  shop-now-btn">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/shop_now_btn.png" />
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide goods-item goods-item1">
                                <a href="#!">
                                    <div class="goods-item-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg" />
                                        </div>
                                        <span class="goods-discount goods-discount1">10<small>%</small>  OFF
                                        </span>
                                    </div>
                                    <div class="goods-item-bottom">
                                        <div class="goods-item-block">
                                            <div class="goods-item-brand">
                                                Dr.Cink
                                            </div>
                                            <h3 class="goods-name">DR.CINK All-Round 4D Super Moisturizing Revitalizing & Luxurios Caviar Serum Set & Luxurios Caviar Serum Set
                                            </h3>
                                        </div>
                                        <div class="goods-item-block flex-between-baseline">
                                            <h5 class="goods-price">385.20
                                            </h5>
                                            <s class="goods-original-price">530.56
                                            </s>
                                        </div>
                                        <div class="goods-item-block  shop-now-btn">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/shop_now_btn.png" />
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide goods-item goods-item1">
                                <a href="#!">
                                    <div class="goods-item-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg" />
                                        </div>
                                        <span class="goods-discount goods-discount1">10<small>%</small>  OFF
                                        </span>
                                    </div>
                                    <div class="goods-item-bottom">
                                        <div class="goods-item-block">
                                            <div class="goods-item-brand">
                                                Dr.Cink
                                            </div>
                                            <h3 class="goods-name">DR.CINK All-Round 4D Super Moisturizing Revitalizing & Luxurios Caviar Serum Set & Luxurios Caviar Serum Set
                                            </h3>
                                        </div>
                                        <div class="goods-item-block flex-between-baseline">
                                            <h5 class="goods-price">385.20
                                            </h5>
                                            <s class="goods-original-price">530.56
                                            </s>
                                        </div>
                                        <div class="goods-item-block  shop-now-btn">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/shop_now_btn.png" />
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- Limited item End -->


            <!-- Best Offer start -->
            <section class="theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bartitle_bestoffer.png" />
                </div>
            </section>
            <section class="section-space bestoffer-block">
                <div class="am-u-sm-12 block-item">
                    <a href="#!">
                        <div class="single-img">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bestoffer1.png" />
                        </div>
                    </a>
                </div>

                <div class="block-item-group">
                    <div class="am-u-sm-6 block-item">
                        <a href="#!">
                            <div class="even-img">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bestoffer2.png" />
                            </div>
                        </a>
                    </div>
                    <div class="am-u-sm-6 block-item">
                        <a href="#!">
                            <div class="even-img">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bestoffer3.png" />
                            </div>
                        </a>
                    </div>
                </div>
            </section>
            <!-- Best Offer End -->



            <!-- Hot Deal start 如果透明背景圖 +bg-none -->
            <section class="theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bartitle_hotdeal.png" />
                </div>
            </section>
            <section class="section-space hotdeal-block">
                <div class="swiper-container single-swiper">
                    <ul class="swiper-wrapper  bg-none">
                        <li class="am-fl swiper-slide">
                            <div class="block-item">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/hotdeal1.png" />
                                </a>
                            </div>
                            <div class="block-item-group">
                                <div class="am-u-sm-6 block-item">
                                    <a href="#!">
                                        <div class="even-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/hotdeal2.png" />
                                        </div>
                                    </a>
                                </div>
                                <div class="am-u-sm-6 block-item">
                                    <a href="#!">
                                        <div class="even-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/hotdeal3.png" />
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="am-fl swiper-slide">
                            <div class="block-item">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/hotdeal1.png" />
                                </a>
                            </div>
                            <div class="block-item-group">
                                <div class="am-u-sm-6 block-item">
                                    <a href="#!">
                                        <div class="even-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/hotdeal2.png" />
                                        </div>
                                    </a>
                                </div>
                                <div class="am-u-sm-6 block-item">
                                    <a href="#!">
                                        <div class="even-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/hotdeal3.png" />
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <span class="swiper-button-prev prev-btn" href="#">
                    <i class="fas fa-chevron-left"></i>
                </span>
                <span class="swiper-button-next next-btn" href="#">
                    <i class="fas fa-chevron-right"></i>
                </span>
            </section>
            <!-- Hot Deal End -->



            <!-- gift-foryou-block start -->
            <section class="theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/bartitle_giftforyou.png" />
                </div>
            </section>
            <section class="section-space gift-foryou-block bg-none">
                <div class="block-item">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/giftforyou_1.png" />
                    </a>
                </div>
            </section>
            <!--gift-foryou-block End -->
        </div>
    </main>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/flagship_store_events.js"></script>

</asp:Content>

