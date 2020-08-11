<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailcoupon.aspx.cs" Inherits="mailcoupon" MasterPageFile="~/mobile/mobile.master" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/gruop_buying_category.css" rel="stylesheet" />

    <script type="text/javascript">
        function popCouponMsg(s,i) {
            if (i == 1) {          
                PopMsg.innerText = s;
                $('#popupmsg').modal('open')
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="am-container">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title" style="height: auto">
                <asp:UpdatePanel ID="UPCoupon" runat="server">
                    <ContentTemplate>
                        <asp:ImageButton ID="img" runat="server" OnClick="GetCoupon_Click" Style="width: 100%" ImageUrl="https://www.hawooo.com/images/ftp/20171113member/27mb.png"/>
                    </ContentTemplate>
                    <Triggers>


                    </Triggers>
                </asp:UpdatePanel>
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_product_list" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">
                            <div class="index-items-pic">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                </a>
                            </div>
                            <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                <div class="index-items-text">
                                    <h3><%# Eval("WP02").ToString() %></h3>
                                    <h4>RM <%#Eval("PRICE")%></h4>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </section>

        <div class="am-modal" id="popupmsg">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">系統資訊</div>
            <div class="am-modal-bd" data-am-modal-close>
                <p><span id="PopMsg">@A</span></p>
            </div>
        </div>
    </div>
</asp:Content>
