<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="shopindex.aspx.cs" Inherits="user_shopindex" %>

<%@ Register Src="~/user/control/shopclass.ascx" TagPrefix="uc1" TagName="shopclass" %>
<%@ Register Src="~/user/control/shoprecommed.ascx" TagPrefix="uc1" TagName="shoprecommed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g" style="padding-top: 10px">
            <!--類別列表開始-->
            <div class="am-u-md-2" style="padding-left: 3px; padding-right: 5px">
                <uc1:shopclass runat="server" ID="shopclass" />
                <%-- <div class="am-panel boxshadow">
                    <uc1:shoprecommed runat="server" ID="shoprecommed" />
                </div>--%>
            </div>
            <!--類別列表結束-->
            <div class="am-u-md-10" style="padding-bottom: 20px; padding-left: 5px;">
                <!--<div class="product_list_title am-text-left">

                </div>-->
                <style>
                    .sort span {
                        margin-right: 13px;
                    }
                </style>


                <asp:UpdatePanel ID="up_btn_shop" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Repeater ID="rp_event_list" runat="server" OnItemDataBound="rp_event_list_ItemDataBound">
                            <ItemTemplate>
                                <div class="am-g">
                                    <asp:HiddenField ID="hf_SPM01" runat="server" Value='<%# Eval("SPM01") %>' />
                                    <div class="am-u-sm-12">
                                        <asp:Literal ID="lit_D01" runat="server"></asp:Literal>
                                        <%--  <img src="../images/adimgs/<%#Eval("SPM10") %>" style="max-width: 950px" />--%>
                                    </div>
                                </div>
                                <div class="am-g">
                                    <div class="am-u-sm-3" style="padding-top: 5px">
                                        <asp:Literal ID="lit_D02" runat="server"></asp:Literal>
                                        <%-- <img src="../images/adimgs/<%#Eval("SPM11") %>" />--%>
                                    </div>
                                    <div class="am-u-sm-9" style="padding-right: 30px">
                                        <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                                            <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="am-panel am-panel-default pitem">
                                                            <div class="imgContain">
                                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# "../images/webimgs/" + Eval("WP08_1") %>' />
                                                                </a>
                                                            </div>
                                                            <div class="am-panel-bd">
                                                                <div class="gallery-title">
                                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString().Length > 30 ? Eval("WP02").ToString().Substring(0,30) + "..." : Eval("WP02").ToString() %>'></asp:Literal></a>
                                                                </div>
                                                                <div class="gallery-detail">
                                                                    <span class="money_txt_style">RM&nbsp;
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                                                    <span class="moneybtn">

                                                                        <asp:LinkButton ID="lnk_like" runat="server" CssClass="hw-btn am-btn-warning am-btn-sm" OnClick="lnk_like_Click"><i class="am-icon-heart  am-icon-sm"></i></asp:LinkButton>
                                                                        <%--    <asp:LinkButton ID="lnk_shopping" runat="server" CssClass="hw-btn am-btn-danger am-btn-sm"></asp:LinkButton>--%>
                                                                        <%--  <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'><i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i></a>--%>
                                                                    </span>
                                                                </div>
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
</asp:Content>

