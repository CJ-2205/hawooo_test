<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="shop2.aspx.cs" Inherits="mobile_shop2" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/js/accordion.js"></script>
    <link href="assets/css/brand.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField runat="server" ID="hf_cid" />
    <asp:HiddenField runat="server" ID="hf_cname" />

    <%--    <section class="am-g brand-catalog-title-w" data-am-sticky="{top:80}">
        <div class="brand-catalog-title  am-cf">lit_class_name
            <div class="am-btn am-btn-primary b-collapse-title" data-am-collapse="{target: '#brands-nav'}">
                <h3 class="am-fl">
                    <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                </h3>
                <i class="am-icon-caret-down am-fr"></i>
            </div>
        </div>
        <nav class="brand-catalog-nav">
            <ul id="brands-nav" class="am-nav am-collapse">
                <asp:Literal ID="lit_classList" runat="server"></asp:Literal>
                <asp:Repeater ID="rp_brand_class" runat="server">
                    <ItemTemplate>
                        <li><a href="shop2.aspx?cid=<%# Eval("CID").ToString() %>"><%# Eval("CNAME").ToString() %></a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </nav>
    </section>
    --%>

    <section class="am-container" id="pnews" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="am-u-sm-12 index-section-wrapper hot-sale">
                    <div class="index-section-title">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_class_name" runat="server"></asp:Literal>
                    </div>
                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="p_list" runat="server">
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
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
                        <ProgressTemplate>
                            <div style="margin-left: auto; margin-right: auto; width: 100%; text-align: center">
                                <img src="ajax-loader.gif" alt="wait image" />
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>

                    <asp:LinkButton ID="lnk_more" runat="server" CssClass="index-seemore" OnClick="lnk_more_Click"><i class="am-icon-heart-o"></i>
                       <span class="txtRsc" data-id="sp002"> More... </span></asp:LinkButton>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>
    <!-- 最新商品 end -->

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

