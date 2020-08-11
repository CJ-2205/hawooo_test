<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="shop2.aspx.cs" Inherits="user_shop2" %>

<%@ Register Src="~/user/control/shopclass.ascx" TagPrefix="uc1" TagName="shopclass" %>
<%@ Register Src="~/user/control/shoprecommed.ascx" TagPrefix="uc1" TagName="shoprecommed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                <div class="am-g" style="padding-top: 15px">
                    <div class="am-panel product_list_title boxshadow">
                        <div class="am-u-md-9" style="height: 40px">
                            <ol class="am-breadcrumb" style="font-size: 14px">
                                <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                            </ol>
                        </div>
                        <div class="am-u-md-3" style="text-align: right; height: 40px">
                            <table style="font-size: 14px; color: #6F6957">
                                <tr>
                                    <td style="vertical-align: central">商品排序：</td>
                                    <td>
                                        <asp:DropDownList ID="ddl_product_list" runat="server" Style="padding: 2px; margin-top: 4px;" AutoPostBack="true" OnSelectedIndexChanged="ddl_product_list_SelectedIndexChanged">
                                            <asp:ListItem Text="預設排序" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="熱門程度優先" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="最新上架優先" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="價格由低至高" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="價格有高至低" Value="4"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>


                <asp:UpdatePanel ID="up_btn_shop" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                            <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel am-panel-default pitem">
                                            <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<div class=\"ptag\">" + Eval("WP30").ToString()　+ "</div>" : "" %>'></asp:Literal>
                                            <div class="imgContain">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto"
                                                        src="http://img1.hawooo.com/noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style">RM&nbsp;
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                                    <span class="moneybtn">
                                                        <asp:LinkButton ID="lnk_like" runat="server" CssClass="hw-btn am-btn-warning am-btn-sm" OnClick="lnk_like_Click"><i class="am-icon-heart  am-icon-sm"></i></asp:LinkButton>
                                                        <%--    <asp:LinkButton ID="lnk_shopping" runat="server" CssClass="hw-btn am-btn-danger am-btn-sm"></asp:LinkButton>--%>
                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'><i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i></a>
                                                    </span>
                                                </div>
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

