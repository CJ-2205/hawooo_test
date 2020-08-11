<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="membertrack.aspx.cs" Inherits="user_membertrack" %>

<%@ Register Src="~/user/control/memberclass.ascx" TagPrefix="uc1" TagName="memberclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">

            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-heart"></i>&nbsp;追蹤商品 - Track Products </legend>
                <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                    <asp:Repeater ID="rp_product_list" runat="server">
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
                                            <a href="productdetail.aspx">
                                                <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </a>
                                        </div>
                                        <div class="gallery-detail">
                                            <span class="moneyspan">RM</span><span class="money_txt_style">
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# Math.Round((Convert.ToDecimal(Eval("WPA06")) / Convert.ToDecimal(Application["mycashrate"].ToString())),2,MidpointRounding.AwayFromZero) %>'></asp:Literal></span>
                                            <span class="moneybtn">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'><i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

                <asp:Literal ID="lit_show" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#mc05").addClass("select");
        })
    </script>
</asp:Content>

