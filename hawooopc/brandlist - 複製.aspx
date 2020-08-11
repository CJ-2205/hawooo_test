<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="brandlist.aspx.cs" Inherits="user_brandlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/market_left.css" rel="stylesheet" />
    <link href="assets/css/market_menu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="desktop-content">
        <div class="am-g">
            <!--類別列表開始-->
            <div class="am-u-sm-2 default-panel" style="width: 160px">
                <div class="left-box">
                    <h3 style="padding-bottom: 10px"><a href="brandlist.aspx" style="color: #ff6180"><i class="am-icon-hand-pointer-o"></i>全部品牌</a></h3>
                    <h3>品牌分類</h3>
                    <ul class="left-menu">
                        <asp:Literal ID="lit_brand_class" runat="server"></asp:Literal>
                    </ul>
                </div>

            </div>
            <div class="am-u-sm-10 p-0">
                <div class="am-slider am-slider-default am-slider-carousel brands-slider"
                    data-am-flexslider="{itemWidth: 160, itemMargin: 0, slideshow: true}">
                    <ul class="am-slides">
                        <asp:Repeater ID="rp_logo_loop" runat="server">
                            <ItemTemplate>
                                <li><a href='<%# "brands.aspx?bid=" + Eval("B01") %>'>
                                    <img src="../images/brandimgs/<%# Eval("BA08").ToString() %>" /></a></li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
                <div class="am-g">
                    <asp:Literal ID="lit_none_msg" runat="server"></asp:Literal>
                    <asp:Repeater ID="rp_brand_list" runat="server">
                        <ItemTemplate>
                            <div class="am-u-sm-6 brandBox" style="float: left">
                                <div class="brandBack">
                                    <asp:HiddenField ID="hf_B01" runat="server" EnableViewState="false" Value='<%# Eval("B01") %>' />
                                    <asp:Literal ID="lit_BA06" runat="server" Text='<%# Eval("BA06").ToString() %>'></asp:Literal>
                                </div>
                                <div class="brandImg">
                                    <a href='<%# "brands.aspx?bid=" + Eval("B01") %>'>
                                        <img src="../images/brandimgs/<%# Eval("BA20").ToString() %>" /></a>
                                </div>
                                <ul class="am-avg-sm-3 da-thumbs brandProdBox">
                                    <asp:Repeater ID="rp_prodcut" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <div class="am-panel brandPanel">
                                                    <div class="imgContain" style="padding: 5px;">
                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + "&bid=" + Eval("B01").ToString() %>'>
                                                            <img data-sizes="auto"
                                                                src="https://www.hawooo.com/noimg.png"
                                                                data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                        </a>
                                                    </div>
                                                    <div class="am-panel-bd" style="padding: 5px;">
                                                        <div class="gallery-title">
                                                            <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + "&bid=" + Eval("B01").ToString() %>'><%# Eval("WP02").ToString() %>
                                                            </a>
                                                        </div>
                                                        <div class="gallery-detail" style="padding: 5px;">
                                                            <span class="money_txt_style">RM &nbsp;
                                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

