<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="track.aspx.cs" Inherits="mobile_track" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=967509866640000&ev=PageView&noscript=1" />
    </noscript>
    <!--Hawooo End Facebook Pixel Code -->




    <!--Hawooo Facebook Pixel Code -->
    <script>
        fbq('track', 'AddToWishlist', { content_ids: [<%=hfListId.Value%>], currency: 'MYR', value: <%=hfTotal.Value%> });
    </script>
    <!--Hawooo End Facebook Pixel Code -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 精選活動商品 star -->
    <uc1:member_class runat="server" ID="member_class" />
    <asp:HiddenField ID="hfListId" runat="server" Value="" />
    <asp:HiddenField ID="hfTotal" runat="server" Value="0" />
    <section class="am-container">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title">
                <span class="txtRsc" data-id="mb009">收藏商品 </span>
            </div>
            <div style="margin: auto; text-align: center; font-weight: 700; padding: 50px" id="non_track" runat="server">
                No tracking products
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_list" runat="server">
                    <ItemTemplate>

                        <li class="am-fl">
                            <i class="am-icon-times-circle-o am-icon-sm product_item_del_icon" onclick="DelTrack(<%# Eval("WP01") %>)"></i>
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block">
                                        <h3><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.CashRate(Eval("WPA06").ToString() ,Application["mycashrate"].ToString())%></h4>

                                        <span class="product_item_dis"><%# decimal.Parse(Eval("WPA10").ToString()) > decimal.Parse(Eval("WPA06").ToString()) ? "省" + PbClass.CashRate((decimal.Parse(Eval("WPA10").ToString()) - decimal.Parse(Eval("WPA06").ToString())).ToString(),Application["mycashrate"].ToString()) : ""  %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </section>
    <script>
        function DelTrack(pid) {
            $("#pid").val(pid);
            $("#<%= btn_del.ClientID %>").click();
        }
    </script>
    <!-- 精選活動商品 end -->
    <asp:UpdatePanel ID="up_event" runat="server">
        <ContentTemplate>
            <asp:HiddenField ID="pid" runat="server" ClientIDMode="Static" />
            <asp:Button ID="btn_del" OnClick="btn_del_Click" runat="server" Style="display: none;" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

