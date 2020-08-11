<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="market.aspx.cs" Inherits="user_market" %>

<%@ Register Src="~/user/control/shopclass.ascx" TagPrefix="uc1" TagName="shopclass" %>
<%@ Register Src="~/user/control/shoprecommed.ascx" TagPrefix="uc1" TagName="shoprecommed" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField runat="server" ID="hf_cid" />
    <asp:HiddenField runat="server" ID="hf_cname" />
    <div class="am-container">
        <div class="am-g" style="padding-top: 10px">
            <!--類別列表開始-->
            <uc1:shopclass runat="server" ID="shopclass" />
            <!--類別列表結束-->
            <div class="am-u-sm-10" style="padding-bottom: 20px; padding-left: 5px;">
                <style>
                    .sort span {
                        margin-right: 13px;
                    }
                </style>
                <!--上方廣告區塊開始-->
                <div class="am-g" style="margin-left: 0px">
                    <div class="am-u-sm-9">
                        <%--<p>
                            <span style="font-size: 18px; color: #5CA098;"><strong>
                                <asp:Literal ID="lit_class_name" runat="server"></asp:Literal></strong>&nbsp;&nbsp;</span>
                        </p>--%>
                        <div class="am-g">
                            <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{&quot;directionNav&quot;:false}'>
                                <ul class="am-slides">
                                    <asp:Literal ID="lit_AD_S01" runat="server"></asp:Literal>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-3">
                        <div>
                            <p style="width: 100%; height: 22px; line-height: 22px; color: #fff; font-size: 14px; background: #4F4F4F; text-align: center;">
                                <span class="txtRsc" data-id="mkt011">今日推薦</span>
                            </p>
                            <asp:FormView ID="FormView1" runat="server" EnableViewState="false">
                                <ItemTemplate>
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0;">
                                        <div class="imgContain" style="padding: 10px;">
                                            <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    EnableViewState="false" />
                                            </a>
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery_title_top">
                                                <asp:Literal ID="lit_WP24" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal>
                                            </div>
                                            <div class="gallery-title" style="padding: 5px;">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString().Length > 30 ? Eval("WP02").ToString().Substring(0,30) + "..." : Eval("WP02").ToString() %>'></asp:Literal>
                                                </a>
                                            </div>
                                            <div class="gallery-detail" style="padding: 5px; border: 0; text-align: center;">
                                                <span class="money_txt_style_market">RM&nbsp;
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                </div>
                <div class="am-g" style="padding: 0px 0px 10px 0px">
                    <div class="am-u-sm-12">
                        <asp:Literal ID="lit_AD_S02" runat="server"></asp:Literal>
                    </div>
                </div>
                <!--上方廣告區塊結束-->
                <div class="am-g" style="margin-left: 0px">
                    <div class="am-u-md-12" style="margin: 0; padding: 0;">
                        <div style="border-top: 2px #efefef dotted; border-bottom: 5px #eee solid;">
                            <img src="images/market-icon-1.png" />
                            <span style="font-size: 20px; color: #5CA098;" class="txtRsc" data-id="mkt009"><strong>最新商品</strong></span>
                        </div>
                    </div>
                    <div class="am-u-md-12" style="margin: 0; padding: 0;">
                        <ul class="am-avg-sm-5 da-thumbs product">
                            <asp:Repeater ID="rp_news_list" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="p-style">
                                            <div class="p-style-pic">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </a>
                                                <%--    <span class="guess-you-like-button">
                                                    <span class="am-icon-heart-o white-o"></span>
                                                    <span class="am-icon-heart-o pink-o"></span>
                                                </span>--%>
                                            </div>
                                            <div class="p-style-text">
                                                <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <h4>
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                    <span class="p-style-line"></span>
                                                    <div class="am-cf price-discount">
                                                        <h5 class="am-fl">
                                                            <p>
                                                                RM
                                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                            </p>
                                                        </h5>
                                                        <p class="discount-range">
                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <%--   <div class="am-panel am-panel-default pitem">
                                            <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<div class=\"ptag\">" + Eval("WP30").ToString()　+ "</div>" : "" %>'></asp:Literal>
                                            <div class="imgContain">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <img data-sizes="auto"
                                                        src="http://img1.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </a>
                                            </div>
                                            <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                                <div class="gallery-title" style="padding: 2px;">
                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' EnableViewState="false" />

                                                        <asp:Literal ID="lit_WP02" EnableViewState="false" runat="server" Text='<%# Eval("WP02").ToString().Length > 30 ? Eval("WP02").ToString().Substring(0,30) + "..." : Eval("WP02").ToString() %>'></asp:Literal></a>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail" style="padding: 5px;">
                                                    <span class="money_txt_style">RM&nbsp;
                                                        <asp:Literal ID="lit_WPA06" EnableViewState="false" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                                    <span class="moneybtn"></span>
                                                </div>
                                            </div>
                                        </div>--%>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="am-u-md-12" style="margin: 0; padding: 0;">
                        <div style="border-top: 2px #efefef dotted; border-bottom: 5px #eee solid;">
                            <img src="images/market-icon-2.png">
                            <span style="font-size: 20px; color: #5CA098;"><strong class="txtRsc" data-id="mkt010">熱銷排行榜</strong></span>
                        </div>
                    </div>
                    <div class="am-u-md-12" style="margin: 0; padding: 0;">
                        <ul class="am-avg-sm-5 da-thumbs product">
                            <asp:Repeater ID="rp_hot_list" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="p-style">
                                            <div class="p-style-pic">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </a>
                                                <%--    <span class="guess-you-like-button">
                                                    <span class="am-icon-heart-o white-o"></span>
                                                    <span class="am-icon-heart-o pink-o"></span>
                                                </span>--%>
                                            </div>
                                            <div class="p-style-text">
                                                <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <h4>
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                    <span class="p-style-line"></span>
                                                    <div class="am-cf price-discount">
                                                        <h5 class="am-fl">
                                                            <p>
                                                                RM
                                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                            </p>

                                                        </h5>
                                                        <p class="discount-range">
                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </p>
                                                        <%-- <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>--%>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <asp:UpdatePanel ID="up_btn_shop" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Repeater ID="rp_event_list" runat="server" OnItemDataBound="rp_event_list_ItemDataBound">
                            <ItemTemplate>
                                <div class="am-g" style="margin: 10px 0px 0px 0px;">
                                    <asp:HiddenField ID="hf_SPM01" runat="server" Value='<%# Eval("SPM01") %>' />
                                    <div class="am-u-sm-12" style="padding: 0px; margin: 0px">
                                        <asp:Literal ID="lit_D01" runat="server"></asp:Literal>
                                        <%--  <img src="../images/adimgs/<%#Eval("SPM10") %>" style="max-width: 950px" />--%>
                                    </div>
                                </div>
                                <div class="am-g" style="margin-left: 0px">
                                    <div class="am-u-sm-3" style="padding-top: 5px; padding-left: 0px; margin: 0px">
                                        <asp:Literal ID="lit_D02" runat="server"></asp:Literal>
                                        <%-- <img src="../images/adimgs/<%#Eval("SPM11") %>" />--%>
                                    </div>
                                    <div class="am-u-sm-9" style="padding: 0px; padding-left: 5px">
                                        <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                                            <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="p-style">
                                                            <div class="p-style-pic">
                                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                                        class="lazyload am-img-responsive" />
                                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                                </a>

                                                            </div>
                                                            <div class="p-style-text">
                                                                <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                                    <h4>
                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                                    <span class="p-style-line"></span>
                                                                    <div class="am-cf price-discount">
                                                                        <h5 class="am-fl">
                                                                            <p>
                                                                                RM
                                                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                            </p>
                                                                        </h5>
                                                                        <p class="discount-range">
                                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                        </p>
                                                                        <%--     <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>--%>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>

                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#navMenu > li").eq(0).addClass('selected');
        });
    </script>
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
