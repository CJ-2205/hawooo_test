<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="shop.aspx.cs" Inherits="user_shop" %>

<%@ Register Src="~/user/control/shopclass.ascx" TagPrefix="uc1" TagName="shopclass" %>
<%@ Register Src="~/user/control/shoprecommed.ascx" TagPrefix="uc1" TagName="shoprecommed" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function sendAppierClassProducts(key, productList) {
            var appierRtListPage = key;
            var appierRtProductIDList = productList;
            //========= PLEASE DO NOT CHANGE BELOW =========
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
                })(window, document, "ZFfm", "hawooo.com");
            }
            window.APPIER_RETARGET.send({ "t": "type_listpage", "content": appierRtListPage, "productIDList": appierRtProductIDList });
        };
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField runat="server" ID="hf_cid" />
    <asp:HiddenField runat="server" ID="hf_cname" />
    <div class="am-container">
        <div class="am-g" style="padding-top: 10px">
            <!--類別列表開始-->
            <uc1:shopclass runat="server" ID="shopclass" />
            <%-- <div class="am-u-md-2">
                 <div class="am-panel boxshadow">
                    <uc1:shoprecommed runat="server" ID="shoprecommed" />
                </div>
            </div>--%>
            <!--類別列表結束-->
            <div class="am-u-md-10" style="padding-bottom: 20px; padding-left: 0px;">
                <!--<div class="product_list_title am-text-left">

                </div>-->
                <style>
                    .sort span {
                        margin-right: 13px;
                    }
                </style>
                <div class="am-u-sm-12" style="padding-left: 5px">
                    <asp:Literal ID="lit_event_img" runat="server"></asp:Literal>
                </div>

                <!--上方廣告區塊結束-->

                <div>
                    <div class="am-panel product_list_title" style="margin: 0px 12px 9px 8px; display: inline-block; width: 950px;">
                        <div class="am-u-md-8" style="height: 40px">
                            <ol class="am-breadcrumb" style="font-size: 14px">
                                <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                            </ol>
                        </div>
                        <div class="am-u-md-4 " style="text-align: right; height: 40px">

                            <table style="font-size: 14px; color: #6F6957" class="am-fr">
                                <tr>
                                    <td>
                                        <p class="txtRsc" data-id="sp009" style="padding-top: 5px">商品排序</p>
                                    </td>
                                    <td>：
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlSortList" runat="server" Style="padding: 2px; margin-top: 4px;" AutoPostBack="true" OnSelectedIndexChanged="ddlSortList_SelectedIndexChanged">
                                            <asp:ListItem Value="0" Text="預設排序"></asp:ListItem>
                                            <asp:ListItem Value="1" Text="熱門程度優先"></asp:ListItem>
                                            <asp:ListItem Value="2" Text="最新上架優先"></asp:ListItem>
                                            <asp:ListItem Value="3" Text="價格由低至高"></asp:ListItem>
                                            <asp:ListItem Value="4" Text="價格由高至低"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <%-- <div style="padding-bottom: 5px; padding-left: 15px" runat="server" id="shopbar">
                        <img src="images/20161124/shop_banner.png?v=20161125" style="width: 990px" />
                    </div>--%>
                </div>
                <asp:UpdatePanel ID="up_btn_shop" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <ul class="am-avg-md-4 am-gallery-bordered product" style="padding: 2px">
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
                                                    </div>
                                                </a>
                                            </div>
                                        </div>


                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <ul class="am-pagination am-pagination-right">
                            <asp:Literal ID="lit_page" runat="server"></asp:Literal>
                        </ul>
                        <asp:Panel ID="panel_no_products" runat="server">
                            <div style="font-size: 20px; color: #888888; text-align: center;">
                                <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                            </div>
                        </asp:Panel>
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
    <script>
        function onProductClick() {
            ga('ec:addProduct', {
                'id': 'P12345',
                'name': 'Android Warhol T-Shirt',
                'category': 'Apparel',
                'brand': 'Google',
                'variant': 'black',
                'position': 1
            });
            ga('ec:setAction', 'click', { list: 'Search Results' });

            // Send click with an event, then send user to product page.
            ga('send', 'event', 'UX', 'click', 'Results', {
                hitCallback: function () {
                    document.location = '/product_details?id=P12345';
                }
            });
        }
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
