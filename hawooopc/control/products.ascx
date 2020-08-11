<%@ Control Language="C#" AutoEventWireup="true" CodeFile="products.ascx.cs" Inherits="user_control_products" %>
<%@ Import Namespace="hawooo" %>
<style>
    .product-items-tag {
        padding: 2px 6px;
        color: #689b94;
        background: #e3eae9;
        vertical-align: bottom;
        border-radius: 12px;
    }
</style>
<asp:Repeater ID="rp_goods" runat="server">
    <ItemTemplate>
        <li>
            <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                        <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />
                    </div>
                    <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                        <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>
                        </div>
                        <div class="am-u-sm-12 " style="padding: 5px !important">
                            <div class="am-fl">
                                <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                    <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                </span>
                            </div>
                            <div class="am-fr">
                                <span style="vertical-align: middle;">
                                    <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                </span>
                            </div>
                        </div>
                        <div class="am-u-sm-12 " style="padding: 5px !important">
                            <div class="am-fl">
                                <span style="font-size: 13px;">
                                    <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                </span>
                            </div>
                            <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                            </div>
                        </div>

                    </div>
                </div>
            </a>
        </li>
    </ItemTemplate>
</asp:Repeater>
