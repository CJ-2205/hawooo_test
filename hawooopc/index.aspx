<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="user_index" %>

<%@ Import Namespace="hawooo" %>
<%@ OutputCache Duration="15" VaryByParam="none" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/market_menu.css" rel="stylesheet" />
    <%-- <!--Appier start-->
    <script>
        (function () {
            if (typeof (window.APPIER_RETARGET) == 'undefined') {
                (function (w, d, s, m) {
                    var f = d.getElementsByTagName('script')[0],
                        j = d.createElement('script'),
                        ns = 'APPIER_RETARGET';
                    w._appierSendQueue = w._appierSendQueue || [];
                    w['appierRetargetJson'] = { id: s, site: m };
                    j.async = true;
                    j.src = '//jscdn.appier.net/aa.js?id=' + m;
                    f.parentNode.insertBefore(j, f);
                    !w[ns] && (w[ns] = {});
                    (!w[ns].send) && (w[ns].send = function (j) {
                        w._appierSendQueue.push(j);
                    });
                })(window, document, "ZFfm", "hawooo.com");GetProductGroupByClass
            }
            window.APPIER_RETARGET.send({ 't': 'type_home', 'content': '' });
        })();
    </script>--%>
    <script type="text/javascript">
        function setTime(spantime, tt, did, hid, mid, sid) {

            $(tt).everyTime('1s', function (i) {
                spantime--;
                var d = Math.floor(spantime / (24 * 3600));
                var h = Math.floor((spantime % (24 * 3600)) / 3600);
                var m = Math.floor((spantime % 3600) / (60));
                var s = Math.floor(spantime % 60);
                if (spantime > 0) {
                    $(did).text(d);
                    $(hid).text(h);
                    $(mid).text(m);
                    $(sid).text(s);
                } else { // 避免倒數變成負的
                    $(did).text(0);
                    $(hid).text(0);
                    $(min).text(0);
                    $(sid).text(0);
                }
            })
        }
    </script>
    <!--Appier end-->
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 140px; display: block;">
        <!--slider & pic-ad star-->
        <div class="am-g in-main-slider-wrapper">
            <div class="am-container am-cf in-main-slider-content">
                <div class="am-u-sm-9 in-main-slider">
                    <div data-am-widget="slider" class="am-slider am-slider-b1 slider-1" data-am-slider='{&quot;controlNav&quot;:false}'>
                        <ul class="am-slides">
                            <asp:Repeater ID="rp_I01" runat="server">
                                <ItemTemplate>
                                    <li><a href='<%# Eval("F04").ToString() %>'>
                                        <img src='<%# "../images/adimgs/" + Eval("F14").ToString() %>' />
                                    </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <!-- 限時團購slider start -->
                <div class="am-u-sm-3 in-main-slider limit-slider">
                    <!-- 固定的粉紅背景 開始-->
                    <div class="limit-countdown">
                    </div>
                    <!-- 固定的粉紅背景 結束-->
                    <div data-am-widget="slider" class="am-slider am-slider-b1 slider-1" data-am-slider='{&quot;controlNav&quot;:false}'
                        data-am-flexslider="{slideshowSpeed:8000}">
                        <ul class="am-slides">
                            <asp:Repeater ID="rp_group" runat="server" OnItemDataBound="rp_group_ItemDataBound">
                                <ItemTemplate>
                                    <!-- ㄧ筆li一筆限時商品 -->
                                    <li style="min-width: 295px">
                                        <%--<asp:HiddenField ID="hf_stime" runat="server" EnableViewState="false" Value='<%# Convert.ToDateTime(Eval("WP09").ToString()).ToString("yyyy-MM-dd HH:mm") %>' />
                                        <asp:HiddenField ID="hf_etime" runat="server" EnableViewState="false" Value='<%# Convert.ToDateTime(Eval("WP10").ToString()).ToString("yyyy-MM-dd HH:mm") %>' />--%>
                                        <asp:HiddenField ID="hf_WP01" runat="server" EnableViewState="false" Value='<%# Eval("WP01").ToString() %>' />
                                        <!-- 倒數開始 -->
                                        <div class="limit-countdown-fixed" style="right: 0px; text-align: center; width: 295px"
                                            id='<%# Eval("WP01") %>'>
                                            <i class="am-icon-play-circle"></i>
                                            <div class="limit-countdown-w" >
                                                Super 
                                            </div>
                                            <div class="limit-countdown-y">
                                                Offer
                                                <%--    <span id='<%# "d" + Eval("WP01") %>'></span>:    
                                                <span id='<%# "h" + Eval("WP01") %>'></span>:
                                                <span id='<%# "m" + Eval("WP01") %>'></span>:
                                                <span id='<%# "s" + Eval("WP01") %>'></span>--%>
                                                <span style="background: none"><a href="hotsale_detail.aspx?eid=317" style="border: 1px solid #ffffff; color: #ffffff; padding: 0px 3px; border-radius: 3px;">more</a></span>
                                            </div>
                                        </div>
                                        <!-- 倒數結束 -->
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>" class="am-cf">
                                            <div class="limit-pic">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-u-sm-centered" />
                                            </div>
                                            <div class="limit-text">
                                                <h4 style="height: 42px">
                                                    <%# Eval("WP02") %>
                                                    <%--   <span class="limit-sipping">
                                                        <img src="icon/free_shipping_icon.png">免郵
                                                    </span>--%>
                                                </h4>
                                                <div class="limit-price">
                                                    <%--  <span class="limit-discount">8折/ </span>--%>
                                                    <span class="limit-small">RM </span>
                                                    <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    <span style="font-size: 12px; color: #9C9C9C; text-decoration: line-through;">RM
                                                        <%# PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %>
                                                    </span>
                                                </div>
                                            </div>
                                        </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--slider & pic-ad end-->
        <!--ad or whatever you want star-->
        <div class="am-container ad-under-slider-wrapper">
            <div class="ad-under-slider-content">
                <asp:Literal ID="lit_I10" runat="server"></asp:Literal>
            </div>
        </div>
        <!--ad or whatever you want end-->
        <!-- learn more about brands star-->
        <div class="am-container learn-brands-wrapper">
            <div class="learn-brands-content">
                <!-- vedio section star -->
                <div class="am-u-sm-4 live-video">
                    <div class="live-video-main">
                        <!-- youtube iframe -->
                        <div id="player" onload="">
                        </div>
                    </div>
                    <div class="am-u-sm-12 video-slider">
                        <span class="video-control more-video-left"><i class="am-icon-chevron-left"></i>
                        </span>
                        <ul class="am=cf" onload="videoSlider()">
                            <!-- data-video-id ＝ youtube影片ＩＤ -->
                            <asp:Repeater ID="rp_YOUTUBE" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl" data-video-id='<%# Eval("F04") %>'></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <span class="video-control more-video-right"><i class="am-icon-chevron-right"></i>
                        </span>
                    </div>
                    <%-- <div class="am-u-sm-12" style="color: white; height: 30px; line-height: 30px;">
                        直播預告 <span style="color: #ff7c81">LIVE</span>
                    </div>--%>
                </div>
                <!-- vedio section end -->
                <div class="am-u-sm-8 brands-list">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp_brand_logo" runat="server">
                            <ItemTemplate>
                                <li><a href='<%# "brands.aspx?bid=" + Eval("B01") %>'></a>
                                    <img src="../images/brandimgs/<%# Eval("BA08").ToString() %>" /></li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <li><a href="brandlist.aspx">MORE...</a> </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- learn more about brands end-->
        <!-- purchas agent(團購) star -->
        <section class="purchas-agent">
            <!-- purchas agent(代購) title star -->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx001">精選活動</h3>
                </div>
                <%--     <div class="am-fr index-more-products-learnmore">
                    <span><a href="group.aspx">MORE ></a></span>
                </div>--%>
            </div>
            <!-- purchas agent(代購) title end -->
            <div class="am-container purchas-agent-content">
                <div class="am-g" style="border: 1px solid #ddd; margin: 0; height: 100%; background: white">
                    <div class="am-u-sm-3 purchas-agent-content-title">
                        <span>
                            <h3>Hot Deals</h3>
                            <strong class="txtRsc" data-id="idx001">精選活動</strong>
                             <p class="txtRsc" data-id="idx022">大家都在買 即將缺貨區</p>
                        </span>
                    </div>
                    <!-- purchas agent(代購內容) content end -->
                    <div class="am-u-sm-9 purchas-agent-content-products">
                        <div class="more-products-slider">
                            <!-- 商品slider本體 star -->
                            <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                                <ul class="am-slides">
                                    <!-- 一頁商品頁 star -->

                                    <asp:Repeater ID="rp_sel_event" runat="server">
                                        <ItemTemplate>
                                            <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                            <li class="am-fl">
                                                <a href='<%# Eval("F04").ToString() %>'>
                                                    <img src='<%# "../images/adimgs/" + Eval("F14").ToString() %>' />
                                                </a>
                                            </li>
                                            <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <!-- 一頁商品頁 end -->

                                </ul>
                            </div>
                            <!-- 商品slider本體 star -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- purchas agent(團購) end -->
        <!-- fashion makeup star -->
        <section class="index-products-section fashion-makeup section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx002">時尚彩妝</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_時尚彩妝_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=16">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content fashion-makeup-content">
                <div class="am-u-sm-9 am-fl index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #F2195B;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_時尚彩妝" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>

                                    </ItemTemplate>
                                </asp:Repeater>

                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fr index-more-products-pic">
                    <asp:Literal ID="lit_時尚彩妝_AD" runat="server"></asp:Literal>
                    <%--<a href="javascript:void">
                        <img src="https://www.hawooo.com/images/adimgs/o20170720091728018.png"></a>--%>
                </div>
            </div>
        </section>
        <!-- fashion makeup end -->
        <!-- body-care star -->
        <section class="index-products-section body-care section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx003">美體保養</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_美體保養_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=42">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content body-care-content">
                <div class="am-u-sm-9 am-fr index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #00CCB2;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">

                                <asp:Repeater ID="rp_美體保養" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fl index-more-products-pic">
                    <asp:Literal ID="lit_美體保養_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- body-care end-->
        <!-- health food star-->
        <section class="index-products-section health-food section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx004">保健食品</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_保健食品_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=43">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content health-food-content">
                <div class="am-u-sm-9 am-fl index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #003B78;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_保健食品" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fr index-more-products-pic">
                    <asp:Literal ID="lit_保健食品_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- health food end-->
        <!-- under wear star-->
        <section class="index-products-section under-wear section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx005">服裝內衣</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_服裝內衣_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=44">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content under-wear-content">
                <div class="am-u-sm-9 am-fr index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #4E87C1;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_服裝內衣" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fl index-more-products-pic">
                    <asp:Literal ID="lit_服裝內衣_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- under-wear end-->
        <!-- fashion shoes star -->
        <section class="index-products-section fashion-shoes section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx006">流行美鞋</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_流行美鞋_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=45">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content fashion-shoes-content">
                <div class="am-u-sm-9 am-fl index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #774793;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_流行美鞋" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fr index-more-products-pic">
                    <asp:Literal ID="lit_流行美鞋_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- fashion shoes end -->
        <!-- bag & accessory star -->
        <section class="index-products-section bag-accessory section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx007">包包配件</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_包包配件_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=46">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content bag-accessory-content">
                <div class="am-u-sm-9 am-fr index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #62B616;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_包包配件" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 end -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fl index-more-products-pic">
                    <asp:Literal ID="lit_包包配件_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- bag & accessory end -->
        <!-- snack & deli star -->
        <section class="index-products-section snack-deli section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx008">品味美食</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_品味美食_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=47">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content snack-deli-content">
                <div class="am-u-sm-9 am-fl index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #F06923;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_品味美食" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fr index-more-products-pic">
                    <asp:Literal ID="lit_品味美食_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- snack-deli end -->
        <!-- life supplies star -->
        <section class="index-products-section life-supplies section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx009">生活用品</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_生活用品_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=48">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content life-supplies-content">
                <div class="am-u-sm-9 am-fr index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #FF7CC0;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_生活用品" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fl index-more-products-pic">
                    <asp:Literal ID="lit_生活用品_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- life supplies end -->
        <!-- mom & baby star -->
        <section class="index-products-section mom-baby section-1">
            <!-- title star-->
            <div class="am-container am-cf index-more-products-titile-wrapper">
                <div class="am-fl index-more-products-main-title">
                    <h3 class="txtRsc" data-id="idx010">寶貝媽咪</h3>
                </div>
                <div class="am-fr index-more-products-learnmore">
                    <ul>
                        <asp:Repeater ID="rp_寶貝媽咪_class" runat="server">
                            <ItemTemplate>
                                <li class="am-fl"><a href="shop.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <span class="am-fl"><a href="shop.aspx?cid=49">MORE ></a></span>
                </div>
            </div>
            <!-- title end-->
            <div class="am-container am-cf index-more-products-content mom-baby-content">
                <div class="am-u-sm-9 am-fl index-more-products-list">
                    <span class="index-more-products-list-colorline" style="background-color: #FF6A6F;"></span>
                    <div class="more-products-slider">
                        <!-- 商品slider本體 star -->
                        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_寶貝媽咪" runat="server">
                                    <ItemTemplate>
                                        <asp:Literal ID="lit_start_str" runat="server"></asp:Literal>
                                        <li>
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <div class="am-u-sm-5 more-products-slider-pic">
                                                    <img data-sizes="auto"
                                                        src="https://www.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="am-u-sm-7 more-products-slider-text">
                                                    <h4><%# Eval("WP02").ToString() %></h4>
                                                    <p><%#  WPFactory.DeskIndexDisPiceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %></p>
                                                    <h5>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></h5>
                                                </div>
                                            </a>
                                        </li>
                                        <asp:Literal ID="lit_end_str" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- 商品slider本體 star -->
                    </div>
                </div>
                <div class="am-u-sm-3 am-fr index-more-products-pic">
                    <asp:Literal ID="lit_寶貝媽咪_AD" runat="server"></asp:Literal>
                </div>
            </div>
        </section>
        <!-- mom & baby end -->
        <!-- guess what you like(猜你喜歡) star -->
        <section class="guess-you-like">
            <div class="am-container l-guess-you-like-wrapper">
                <div class="am-u-sm-12 guess-you-like-title">
                    <h3><i class="am-icon-heart-o"></i>
                        <span class="txtRsc" data-id="pd011">猜你喜歡</span>
                    </h3>
                </div>
                <div class="am-u-sm-12 guess-you-like-content">
                    <ul class="am-avg-sm-5 product-style-3">
                        <asp:Repeater ID="rp_like_product" runat="server">
                            <ItemTemplate>
                                <!-- 猜你喜歡商品 開始 -->

                                <li class="guess-you-like-item">
                                    <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                        <div class="am-u-sm-12 guess-you-like-item-content">

                                            <div class="am-u-sm-12 guess-you-like-item-pic">
                                                <img data-sizes="auto"
                                                    src="https://www.hawooo.com/noimg.png"
                                                    data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />

                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class='tag-chinese'>" + Eval("WP30").ToString() + "</span>" : "" %>
                                            </div>

                                            <div class="am-u-sm-12 guess-you-like-item-text">
                                                <h4 class="am-u-sm-12"><%# Eval("WP02").ToString() %> </h4>
                                                <div class="am-cf price-discount">
                                                    <h5 class="am-fl">
                                                        <p>RM <%# PbClass.CashRate(Eval("WPA06").ToString(),"7.6")%><span class="price-end"></span></p>
                                                    </h5>
                                                    <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                                </div>
                                            </div>

                                        </div>
                                    </a>

                                </li>
                                <!-- 猜你喜歡商品 結束 -->
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
            </div>
        </section>
        <!-- guess what you like end -->
        <!-- people recommend star -->
        <section class="people-recommend">
            <div class="am-container people-recommend-wrapper">
                <!-- title star-->
                <div class="am-container am-cf index-more-products-titile-wrapper">
                    <div class="am-fl index-more-products-main-title">
                        <h3 class="txtRsc" data-id="idx012">網友推薦</h3>
                    </div>
                </div>
                <!-- title end-->
                <div class="am-u-sm-12 am-cf people-recommend-content">
                    <div class="am-u-sm-3 am-fl people-recommend-pic">
                        <asp:Literal ID="lit_I11" runat="server"></asp:Literal>
                        <%-- <img src="http://pic.pimg.tw/goris/1364542330-4162568514.jpg?v=1364542331" alt="">--%>
                    </div>
                    <div class="am-u-sm-9 am-fr people-recommend-window">
                        <div class="recommend-tabs-wrapper">
                            <!-- 上方標籤 tabs star -->
                            <div class="am-u-sm-12 recommend-tabs-bar">
                                <ul class="am-cf">
                                    <asp:Repeater ID="rp_article_class_tab" runat="server">
                                        <ItemTemplate>
                                            <%# Container.ItemIndex == 0 ? "<li class=\"am-fl recommend-tabs tabs-active\">" + Eval("ATCA03").ToString() + "</li>" : "<li class=\"am-fl recommend-tabs\">" + Eval("ATCA03").ToString() + "</li>" %>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <span class="am-fr">
                                        <a href="article.aspx">MORE ></a>
                                    </span>
                                </ul>
                            </div>
                            <!-- 上方標籤 tabs end -->
                            <div class="am-u-sm-12 recommend-tabs-content">
                                <ul class="recommend-tabs-ul">
                                    <asp:Repeater ID="rp_article_class" runat="server">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hf_CID" runat="server" Value='<%# Eval("ATCA01") %>' />
                                            <%# Container.ItemIndex == 0 ? "<li class=\"am-u-sm-12 tabs-content tabs-content-active\">" : "<li class=\"am-u-sm-12 tabs-content\">" %>
                                            <!-- 網友推薦四份方格裡面的內容 star -->
                                            <ul class="am-cf am-avg-sm-4 recommend-tabs-main">
                                                <asp:Repeater ID="rp_content" runat="server">
                                                    <ItemTemplate>
                                                        <li class="am-fl tabs-content-outsideblock">
                                                            <div class="tabs-content-insideblock">
                                                                <div class="am-u-sm-12 tabs-content-pic">
                                                                    <a href="articledetail.aspx?id=<%# Eval("ATCB01").ToString() %>">
                                                                        <img src="../images/atcimgs/<%# Eval("ATCB17").ToString() %>">
                                                                    </a>
                                                                </div>
                                                                <div class="am-u-sm-12 tabs-content-title">
                                                                    <a href="articledetail.aspx?id=<%# Eval("ATCB01").ToString() %>">
                                                                        <h4><%# Eval("ATCB03").ToString() %></h4>
                                                                    </a>
                                                                </div>
                                                                <div class="am-u-sm-12 tabs-content-text">
                                                                    <a href="articledetail.aspx?id=<%# Eval("ATCB01").ToString() %>">
                                                                        <p style="height: 130px"><%# Eval("ATCB06").ToString() %></p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                            <!-- 網友推薦四份方格裡面的內容 end -->
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- people recommend end -->
        <!-- footer-good-block 頁尾三大好處的icon star -->
        <style>
            .footer-good-block  h4 {
                margin: 20px !important;
            }
        </style>
        <section class="footer-good-block">
            <div class="am-g" style="background: white; margin: 20px 0px;">
                <div class="am-container footer-good-block-wrapper">
                    <ul class="am-avg-sm-3">
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_01.png" id="company-quality1">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4 class="txtRsc" data-id="idx018">100％海外正品</h4>
                                    <%--   <p>100% Authentic</p>--%>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_02.png" id="company-quality2">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4 class="txtRsc" data-id="idx019">RM99 免運</h4>
                                    <%-- <p>RM99 Free Shipping</p>--%>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_03.png">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4 class="txtRsc" data-id="idx020">3-10天到貨</h4>
                                    <%-- <p>Fast Delivery</p>--%>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- footer-good-block 頁尾三大好處的icon end -->
        <!-- side-nav 側邊導覽列 star -->
        <style>
            .menu_silder li img {
                width: 20px;
            }
        </style>
        <section class="side-nav side-nav-out am-container">
            <div class="side-nav-wrapper">
                <ul class="menu_silder">
                    <%-- <li>時尚彩妝</li>
                    <li>美體保養</li>
                    <li>保健食品</li>
                    <li>服裝內衣</li>
                    <li>流行美鞋</li>
                    <li>包包配件</li>
                    <li>品味美食</li>
                    <li>生活用品</li>
                    <li>寶貝媽咪</li>--%>
                    <li>
                        <img src="../images/cicon/c01.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c02.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c03.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c04.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c05.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c06.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c07.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c08.png" style="width: 20px" /></li>
                    <li>
                        <img src="../images/cicon/c09.png" style="width: 20px" /></li>
                    <li class="gotop"><i class="am-icon-arrow-up"></i></li>
                </ul>
            </div>
        </section>
    </div>
    <script>
        $(function () {

            $('#mbody').attr('onscroll', 'sidemenuStal()');
        })
    </script>
    <script src="https://www.youtube.com/player_api"></script>
    <script src="assets/js/YTiframe.js"></script>
    <!--[if (gte IE 9)|!(IE)]><!-->
    <!--<![endif]-->
    <!--[if lte IE 8 ]>
    <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
    <![endif]-->
    <!-- side-nav 側邊導覽列 end -->
    <div id="fb-root">
    </div>
    <script>        (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.6&appId=915312548542698";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
</asp:Content>
