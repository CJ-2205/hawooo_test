<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="memberborder.aspx.cs" Inherits="mobile_memberborder" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div >
        <div style="padding-bottom: 20px">
            <uc1:member_class runat="server" ID="member_class" />
            <div class="am-modal-dialog">
                <div class="am-modal-hd">
                    <i class="am-icon-file-o"></i>&nbsp;尚未結帳代購單
                </div>
                
                <asp:Literal ID="lit_m1" runat="server"></asp:Literal>
                <asp:Repeater ID="rp_non_pay_border_list" runat="server">
                    <ItemTemplate>
                      <ul class="voucher-list">
                            <li>代購日期：<%# Convert.ToDateTime(Eval("BORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></li>
                            <li>代購單號：<a style="color: #32b9ff;" href='<%# "memberborderdetail.aspx?oid=" + Eval("BORM20").ToString() %>'><%# Eval("BORM20") %></a></li>
                            <li>總數量：<asp:Literal ID="lit_BORM14" runat="server" Text='<%# Eval("BORM14") %>'></asp:Literal></li>
                            <li>總金額：RM<asp:Literal ID="lit_BORM16" runat="server" Text='<%# Eval("BORM16") %>'></asp:Literal></li>
                            <li>最後付款日：
                                <asp:Literal ID="lit_BORM21" runat="server" Text='<%# Eval("BORM21") %>'></asp:Literal></li>
                            <li>狀態：
                                <asp:Literal ID="lit_BORM02" runat="server" Text='<%# hawooo.CFacade.GetFac.GetBFYORMFac.OrderStateStr(Convert.ToInt32(Eval("BORM02").ToString())) %>'></asp:Literal>
                                <a href='<%# "border.aspx?oid=" + Eval("BORM20") %>'><span style="color: #E75353">(前往付款)</span></a>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            
            <div class="am-modal-dialog">
                <div class="am-modal-hd">
                    <i class="am-icon-file-o"></i>&nbsp;歷史代購單紀錄
                </div>
                
                <asp:Literal ID="lit_m2" runat="server"></asp:Literal>
                <asp:Repeater ID="rp_border_list" runat="server">
                    <ItemTemplate>
                        <ul class="voucher-list">
                            <li>代購日期：<%# Convert.ToDateTime(Eval("BORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></li>
                            <li>代購單號：<a style="color: #32b9ff;" href='<%# "memberborderdetail.aspx?oid=" + Eval("BORM20").ToString() %>'><%# Eval("BORM20") %></a></li>
                            <li>總數量：<asp:Literal ID="lit_BORM14" runat="server" Text='<%# Eval("BORM14") %>'></asp:Literal></li>
                            <li>總金額：RM<asp:Literal ID="lit_BORM16" runat="server" Text='<%# Eval("BORM16") %>'></asp:Literal></li>
                            <li>狀態：
                                 <asp:Literal ID="lit_BORM02" runat="server" Text='<%# hawooo.CFacade.GetFac.GetBFYORMFac.OrderStateStr(Convert.ToInt32(Eval("BORM02").ToString())) %>'></asp:Literal>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>

