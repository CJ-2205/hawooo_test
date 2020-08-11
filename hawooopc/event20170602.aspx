<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="event20170602.aspx.cs" Inherits="user_event20170602" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 页面内容 -->
    <div class="am-container">
        <div class="am-g">
            <div class="am-show-md-up">
                <div class="fullBanner">
                    <img src="http://edm.hawooo.com/20170605/pc_banner.png" alt="Welcome June Sale" class="am-img-responsive">
                </div>
            </div>
            <div class="am-show-sm">
                <div class="fullBanner">
                    <img src="http://edm.hawooo.com/20170605/m_banner.png" alt="Welcome June Sale" class="am-img-responsive">
                </div>
            </div>
            <div class="pageBox" style="background-color: #e8e7e8;">
                <div class="am-container" style="padding: 2px;">
                    <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                                <div class="am-panel am-panel-default pitem">
                                    <div class="imgContain">
                                        <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto"
                                                src="http://img1.hawooo.com/noimg.png"
                                                data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                        </a>
                                    </div>
                                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                        <div class="gallery-title" style="padding: 2px;">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </a>
                                        </div>
                                        <div class="gallery-detail" style="padding: 5px;">
                                            <span class="money_txt_style">RM&nbsp; 
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                            <span class="moneybtn"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <footer class="fullBanner am-show-md-up">
                <img src="http://edm.hawooo.com/20170502/07.png" alt="Welcome June Sale" class="am-img-responsive">
            </footer>
            <footer class="fullBanner am-show-sm">
                <img src="http://edm.hawooo.com/20170502/07m.png" alt="Welcome June Sale" class="am-img-responsive">
            </footer>
        </div>
    </div>
</asp:Content>

