<%@ Control Language="C#" AutoEventWireup="true" CodeFile="fastclass.ascx.cs" Inherits="user_control_fastclass" %>
<link href="assets/css/market_left.css" rel="stylesheet" />
<style>
    .classbar a:hover {
        color: #ff8e95;
    }
</style>
<div class="am-u-sm-2">
    <div class="left-box">
        <h3><a href="fast.aspx" style="color: #ff6180"><i class="am-icon-exclamation"></i>&nbsp;全部商品</a></h3>
    </div>
    <div class="left-box">
        <h3>商品分類</h3>
        <asp:Literal ID="lit_hawooo_class" runat="server"></asp:Literal>
    </div>
</div>
