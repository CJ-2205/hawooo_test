<%@ Control Language="C#" AutoEventWireup="true" CodeFile="shoprecommed.ascx.cs" Inherits="usercode_control_shoprecommed" %>
<div class="class_panel_title" style="height: 30px; padding-top: 5px; padding-left: 5px; color: #ffffff; background-color: #ff832b"><i class="am-icon-thumbs-up"></i>&nbsp;推薦商品 </div>
<ul class="am-avg-md-1 am-avg-sm-1 am-gallery-bordered product">
    <asp:Repeater ID="rp_shop_recommend" runat="server">
        <ItemTemplate>

            <li class="boxshadow">
                <%--<div class="product_brand_tag">
                            <img src="../coimage/brand/86-s.png" />
                        </div>--%>
                <div class="am-panel am-panel-default pitem">
                    <div class="imgContain">
                        <a href='<%#"productdetail.aspx?id=" + Eval("WP01") %>'>
                            <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# "../../images/webimgs/" + Eval("WP08_1") %>' />
                        </a>
                    </div>
                    <div class="am-panel-bd">
                        <div class="gallery-title">
                            <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a>
                        </div>
                        <div class="gallery-detail">
                            <span class="money_txt_style">RM&nbsp;
                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                            <span class="moneybtn">
                                <%--  <asp:LinkButton ID="lnk_like" runat="server" CssClass="hw-btn am-btn-warning am-btn-sm" OnClick="lnk_like_Click"><i class="am-icon-heart  am-icon-sm"></i></asp:LinkButton>--%>
                                <%--    <asp:LinkButton ID="lnk_shopping" runat="server" CssClass="hw-btn am-btn-danger am-btn-sm"></asp:LinkButton>--%>
                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'><i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i></a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>

</ul>
