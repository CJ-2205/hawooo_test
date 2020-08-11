<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="special_layout.aspx.cs" Inherits="user_static_flagship_store_events_special_layout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/flagship_store_events.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="am-g default-layout  bg-color special-bg" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_bg.png' )repeat-y center center; background-size: contain;">
        <div class="main-banner">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_pc_bn.png" />
        </div>
        <div class="am-container">
            <!-- 特別版活動倒數 start -->
            <section class="countdown-contain" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_time_bg.png' ) no-repeat center center; background-size: 100% 100%;">
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
                    <div class="countdown-block">
                        <ul class="countdown-time">
                            <li>03</li>
                            <li>03</li>
                            <li>03</li>
                            <li>03</li>
                        </ul>
                    </div>
                </div>
                <div class="countdown-btn">
                    <a href="#!"></a>
                </div>
            </section>
            <!-- 側邊活動倒數 end -->


            <!-- 折扣券 start 如果只有一張 在li加上.single-coupon & am-avg-sm-2改成1 -->
            <section class="section-space">
                <div class="default-layout-coupon special-layout-coupon" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_coupon_bg.png' ) no-repeat center center; background-size: 100% 100%;">

                    <ul class="am-avg-sm-2 coupon-group">
                        <li class="am-fl coupon">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/coupon_1.png" />
                            </a>
                        </li>
                        <li class="am-fl coupon">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/coupon_1.png" />
                            </a>
                        </li>
                    </ul>
                </div>
            </section>

            <!-- 折扣券 end -->

            <!-- 主題條 start -->
            <section class="special-theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_bartitle_limiteditem.png" />
                </div>
            </section>
            <!-- 主題條 End -->

            <!-- Limited item start -->
            <section class="section-space">
                <div class="goods-item-wrepper">
                    <ul class="am-avg-lg-3 goods-item-contain">
                        <li class="am-fl goods-item  special-goods-item">
                            <a href="#!">
                                <div class="goods-item-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg" />
                                    </div>
                                </div>
                                <div class="goods-item-bottom">
                                    <div class="goods-item-block">
                                        <div class="goods-item-brand">
                                            Dr.Cink
                                        </div>
                                        <div class="goods-name">
                                            DR.CINK All-Round 4D Super Moisturizing Revitalizing & Luxurios Caviar Serum Set
                                        </div>
                                    </div>
                                    <div class="goods-item-block flex-between-center goods-price-contain">
                                        <h5 class="goods-price">385.20
                                        </h5>
                                        <div>
                                            <div class="special-goods-discount">-110.00</div>
                                            <s class="goods-original-price">530.56
                                            </s>
                                        </div>
                                    </div>
                                    <div class="goods-item-block shop-now-btn">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/shop_now_btn.png" />
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="am-fl goods-item  special-goods-item">
                            <a href="#!">
                                <div class="goods-item-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg" />
                                    </div>
                                </div>
                                <div class="goods-item-bottom">
                                    <div class="goods-item-block">
                                        <div class="goods-item-brand">
                                            Dr.Cink
                                        </div>
                                        <div class="goods-name">
                                            DR.CINK All-Round 4D Super Moisturizing Revitalizing & Luxurios Caviar Serum Set
                                        </div>
                                    </div>
                                    <div class="goods-item-block flex-between-center goods-price-contain">
                                        <h5 class="goods-price">385.20
                                        </h5>
                                        <div>
                                            <div class="special-goods-discount">-110.00</div>
                                            <s class="goods-original-price">530.56
                                            </s>
                                        </div>
                                    </div>
                                    <div class="goods-item-block shop-now-btn">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/shop_now_btn.png" />
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="am-fl goods-item  special-goods-item">
                            <a href="#!">
                                <div class="goods-item-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg" />
                                    </div>
                                </div>
                                <div class="goods-item-bottom">
                                    <div class="goods-item-block">
                                        <div class="goods-item-brand">
                                            Dr.Cink
                                        </div>
                                        <div class="goods-name">
                                            DR.CINK All-Round 4D Super Moisturizing Revitalizing & Luxurios Caviar Serum Set
                                        </div>
                                    </div>
                                    <div class="goods-item-block flex-between-center goods-price-contain">
                                        <h5 class="goods-price">385.20
                                        </h5>
                                        <div>
                                            <div class="special-goods-discount">-110.00</div>
                                            <s class="goods-original-price">530.56
                                            </s>
                                        </div>
                                    </div>
                                    <div class="goods-item-block shop-now-btn">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/shop_now_btn.png" />
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <!-- Limited item End -->

            <section class="special-theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_bartitle_best_offer.png" />
                </div>
            </section>

            <!-- Best Offer start -->
            <section class="section-space spacial-bestoffer-block">
                <div class="block-item">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/best_offer1.png" />
                    </a>
                </div>
                <div class="block-item">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/best_offer2.png" />
                    </a>
                </div>
                <div class="block-item">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/best_offer3.png" />
                    </a>
                </div>
            </section>
            <!-- Best Offer End -->

            <section class="special-theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_bartitle_hot_deal.png" />
                </div>
            </section>

            <!-- Hotdeal Start -->
            <section class="am-u-sm-12 section-space">
                <div class="special-hotdeal-block">

                    <div class="block-item">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_hotdeal1.png" />
                        </a>
                    </div>

                    <div>
                        <ul class="am-avg-sm-3 block-item-group special-block-item-group">
                            <li class="am-fl block-item">
                                <a href="#!">
                                    <div class="even-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_hotdeal2.png" />
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl block-item">
                                <a href="#!">
                                    <div class="even-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_hotdeal3.png" />
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl block-item">
                                <a href="#!">
                                    <div class="even-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_hotdeal4.png" />
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- Hot Deal End -->

            <section class="special-theme-line">
                <div class="theme-line-title">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/s_bartitle_gift_for_you.png" />
                </div>
            </section>

            <!-- gift-foryou-block start -->
            <section class="section-space gift-foryou-block bg-none">
                <div class="am-u-sm-12 block-item">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/gifeforyou.png" />
                    </a>
                </div>
            </section>
            <!--gift-foryou-block End -->
        </div>
    </main>

    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/flagship_store_events.js"></script>

</asp:Content>

