<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="emailevent.aspx.cs" Inherits="user_emailevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../mobile/assets/css/buttons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-bottom: 10px">
        <div style="margin: 10px 0px 0px 10px; padding: 0; width: 1180px;">
            <div style="float: left; display: block; margin: 0; padding: 0; width: 805px;">
                <img src="img/email-banner.png" />
            </div>
            <div style="float: left; display: block; margin: 0; padding: 0; width: 375px; height: 474px; background: #fff;">
                <img src="img/email-title.png" style="width: 375px; margin-top: 82px;" />
                <div style="font-size: 20px; padding-left: 23px; height: 50px; font-weight: 900">
                    即日起至 1月31日止
                </div>
                <div style="margin-left: 30px;">
                    <asp:TextBox ID="txt_name" runat="server" Placeholder="請輸入姓名" Style="width: 90%; height: 40px;"></asp:TextBox>
                    <br />
                    <div style="height: 10px"></div>
                    <asp:TextBox ID="txt_email" runat="server" Placeholder="請輸入Email" Style="width: 90%; height: 40px;"></asp:TextBox>
                    <p style="line-height: 40px;">（請填寫正確的E-mail，以便寄送中獎通知）</p>

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="btn_send" runat="server" Text="SEND" CssClass="button button-3d button-primary button-rounded" Style="width: 180px; font-size: 16px; background-color: #FF000E;" OnClick="btn_send_Click" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btn_send" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>

    </div>

</asp:Content>

