<%@ Control Language="C#" AutoEventWireup="true" CodeFile="brandclass.ascx.cs" Inherits="user_control_brandclass" %>
<%@ Reference Control="~/user/user.master" %>
<div class="am-u-md-3">
    <div class="am-g" style="margin-right: 0px; margin-top: 5px">
        <asp:Literal ID="lit_style" runat="server"></asp:Literal>
        <div class="class_panel_title">
            <span style="vertical-align: middle; padding-left: 5px"><i class="am-icon-arrow-circle-o-down"></i>&nbsp;
               <span class="txtRsc" data-id="bdl002">品牌分類</span></span>
        </div>
        <asp:HiddenField ID="hf_BA16" runat="server" ClientIDMode="Static" />
        <div class="am-panel boxshadow" style="margin-left: 15px">
            <ul class="classbar" id="brand_class">
                <asp:Literal ID="lit_class_list" runat="server"></asp:Literal>
            </ul>
        </div>
    </div>
</div>

