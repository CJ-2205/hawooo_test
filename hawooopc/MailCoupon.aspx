<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MailCoupon.aspx.cs" Inherits="Webform_MailCoupon" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="UTF-8">
    <link href="assets/css/group_buying.css?v=20170930" rel="stylesheet" />
    <link href="assets/css/group_buying_catalog.css" rel="stylesheet" />

    <script>
        function popCouponMsg(s,i) {
            if (i == 1) { 
            PopMsg.innerText = s;
            $('#popup').modal('open')
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <section class="group_buying-slider">
            <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{slideshow: true}'>
                <asp:UpdatePanel ID="UPCoupon" runat="server">
                    <ContentTemplate>
                        <div style="background-color:#f0f0f0;">
                          <asp:ImageButton ID="img" runat="server" OnClick="GetCoupon_Click" Style="width: 1180px;display:block; margin:auto;" ImageUrl="https://www.hawooo.com/images/ftp/20171113member/clickrm15.gif" />
                   </div> </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </section>

        <span class="am-container p-0 dotted-line"></span>

        <section class="whats-hot-section">
            <div class="am-container whats-hot-wrapper" style="background-color: white">
                <div class="whats-hot-title">
                    <h4>What's Hot</h4>
                    <h5>熱銷商品</h5>
                </div>
            </div>
        </section>
        <div class="am-container items-wrapper products-catalog-items">
            <div class="am-u-sm-12 items-content">
                <ul class="am-cf am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(25% - 20px); padding: 10px; margin: 10px">
                                <a href="https://www.hawooo.com/user/productdetail.aspx?id=<%# Eval("WP01") %>" style="text-decoration: none">
                                    <img src="https://www.hawooo.com/images/webimgs/<%# Eval("WP08_1") %>" style="width: 100%;">
                                    <div class="am-u-sm-12 items-content-text">
                                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                            <%# Eval("WP02") %></h4>
                                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                            <span style="font-size: medium; color: red; float: left">RM <%# Eval("PRICE").ToString() %></span>
                                        </p>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    

    <div class="am-modal" id="popup">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">系統資訊</div>
            <div class="am-modal-bd" data-am-modal-close>
                <p><span id="PopMsg"></span></p>
            </div>
        </div>
    </div>
    </section>


</asp:Content>
