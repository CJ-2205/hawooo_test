<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="borderok.aspx.cs" Inherits="mobile_borderok" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-main">
        <div class="page-menu-Box">
            <p class="pagelink">代購單付款確認</p>
        </div>
        <div class="cart-infor-box">
            <p class="cart3-p">
                代購單編號：
                <asp:Literal ID="lit_BORM20" runat="server"></asp:Literal>
            </p>

            <p class="cart3-p">
                感謝您的訂購<br />
                可進入<a href="memberorder.aspx">代購管理</a>查詢處理進度
            </p>
            <hr />
            <asp:Panel ID="Panel2" runat="server" Visible="false">
                <p class="cart3-p" style="color: #8f9090;">
                    <asp:Literal ID="lit_crad_info" runat="server"></asp:Literal>
                </p>
            </asp:Panel>

            <asp:Panel ID="Panel1" runat="server">
                <div style="text-align: left">
                    <p class="cart3-p">
                        付款資訊[Pay info]<br />
                    </p>
                    <hr />
                    <div class="am-panel boxshadow" style="text-align: left">
                        <p class="cart3-p">
                            付款金額：<span style="color: #ff0000">RM 
                                <asp:Literal ID="lit_BORM16" runat="server"></asp:Literal></span>

                        </p>
                        <p class="cart3-p">
                            付款期限：
               <span style="color: #ff0000">
                   <asp:Literal ID="lit_BORM21" runat="server"></asp:Literal></span>
                        </p>

                        <p class="cart3-p">
                            Account：80-0327458-9
                        </p>
                        <p class="cart3-p">
                            Bank：CIMB BANK
                        </p>
                        <p class="cart3-p">
                            Name：PEOPLES MAP SDN. BHD.
                        </p>

                    </div>
                </div>

            </asp:Panel>

        </div>
    </div>

</asp:Content>

