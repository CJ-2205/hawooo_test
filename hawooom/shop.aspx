<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/js/accordion.js"></script>
    <link href="assets/css/brand.css?v=171106" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField runat="server" ID="hf_cid" />
    <asp:HiddenField runat="server" ID="hf_cname" />

    <%-- <section class="am-g brand-catalog-title-w" data-am-sticky="{top:80}">
        <div class="brand-catalog-title  am-cf">
            <div class="am-btn am-btn-primary b-collapse-title" data-am-collapse="{target: '#brands-nav'}">
                <h3 class="am-fl">
                    <span class="txtRsc" data-id="sp001">選擇類別</span>> 
                    <asp:Literal ID="lit_m_class" runat="server"></asp:Literal></h3>
                <i class="am-icon-caret-down am-fr"></i>
            </div>
        </div>
        <nav class="brand-catalog-nav">
            <ul id="brands-nav" class="am-nav am-collapse">

                <asp:Repeater ID="rp_brand_class" runat="server">
                    <ItemTemplate>
                        <li><a href="shop2.aspx?cid=<%# Eval("C01").ToString() %>"><%# Eval("C06").ToString() %></a></li>
                    </ItemTemplate>
                </asp:Repeater>
              
            </ul>
        </nav>
    </section>--%>
    <!-- 上方big slider star -->
    <div data-am-widget="slider" class="am-slider am-slider-a1" id="PMS01" runat="server">
        <ul class="am-slides">
            <asp:Repeater ID="rp_MS01" runat="server">
                <ItemTemplate>
                    <li>
                        <a href='<%# Eval("F04") %>'>
                            <img src='<%# "../images/adimgs/" + Eval("F14") %>' alt='<%# Eval("F05") %>'></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!-- 上方big slider end -->

    <!-- ＯＯ市集banner star -->
    <section class="am-d" id="PMS02" runat="server">
        <div class="am-u-sm-12 some-market-banner">
            <asp:Literal ID="lit_MS02" runat="server"></asp:Literal>
        </div>
    </section>
    <!-- ＯＯ市集banner end -->


    <!-- 最新商品 star -->
    <section class="am-container" id="pnews" runat="server">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title">
                <i class="icon-mic-outline"></i>
                <span class="txtRsc" data-id="mkt001">最新商品</span>
            </div>

            <ul class="am-cf">
                <asp:Repeater ID="rp_news" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">

                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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
    <!-- 最新商品 end -->

    <!-- 熱銷排行 star -->
    <section class="am-container" id="photsale" runat="server">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title">
                <i class="am-icon-flag-o"></i>
                <span class="txtRsc" data-id="mkt010">熱銷排行</span>
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_hot_list" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">

                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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
            <%--   <a href="#">
                <span id="index-seemore"><i class="am-icon-heart-o"></i>點我看更多推薦</span>
            </a>--%>
        </div>
    </section>
    <!-- 熱銷排行 end -->
    <asp:Repeater ID="rp_event_list" runat="server">
        <ItemTemplate>
            <section class="am-container">
                <div class="am-u-sm-12 index-section-wrapper hot-sale">
                    <div class="index-section-title" style="height: auto;">
                        <asp:Literal ID="lit_title" runat="server"></asp:Literal>
                    </div>
                    <asp:HiddenField ID="hf_SPM01" runat="server" Value='<%# Eval("SPM01").ToString() %>' />

                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="rp_event_product" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">

                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <div class="product_item_pic">
                                            <img data-sizes="auto"
                                                src="../noimg.png"
                                                data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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
        </ItemTemplate>
    </asp:Repeater>

    <!-- 熱銷排行 star -->

    <a id="moreid">
        <span class="index-seemore" style="margin-bottom: 10px; background: white;"><i class="am-icon-heart-o"></i>More...</span>
    </a>

    <!--Hawooo Facebook Pixel Code -->
    <script type="text/javascript">
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            }; if (!f._fbq) f._fbq = n;
            n.push = n; n.loaded = !0; n.version = '2.0'; n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t, s)
        }(window,
            document, 'script', '//connect.facebook.net/en_US/fbevents.js');
        fbq('init', '967509866640000');
        fbq('trackCustom', 'ViewCategory', { category_id: '<%=hf_cid.Value %>', category_name: '<%=hf_cname.Value%>' });
    </script>
    <noscript>
        <img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=967509866640000&ev=PageView&noscript=1" />
    </noscript>
    <!--Hawooo End Facebook Pixel Code -->
</asp:Content>

