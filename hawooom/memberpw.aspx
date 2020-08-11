<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="memberpw.aspx.cs" Inherits="memberpw" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="page-main">
            <uc1:member_class runat="server" ID="member_class" />
            <div class="am-modal-dialog">
                <div class="am-modal-hd">
                    <i class="am-icon-user-plus"></i>&nbsp;密碼修改 | Change Password
                </div>
                <hr />
                <ul class="member-list">
                    <li><span>舊密碼</span>
                        <asp:TextBox ID="txt_old_password" runat="server" placeholder="請輸入舊密碼" TextMode="Password"></asp:TextBox>
                    </li>
                    <li><span>新密碼</span>
                        <asp:TextBox ID="txt_new_password" runat="server" placeholder="請輸入新密碼" TextMode="Password"></asp:TextBox>
                    </li>
                    <li><span>確認密碼</span>
                        <asp:TextBox ID="txt_chk_new_password" runat="server" placeholder="請輸入確認密碼" TextMode="Password"></asp:TextBox>
                    </li>
                </ul>
                <hr />
                <div id="upjoin" class="join-btn">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="btn_pw_save" runat="server" Text="修改密碼" CssClass="btn" OnClick="btn_pw_save_Click" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btn_pw_save" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

