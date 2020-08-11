<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="emailevent.aspx.cs" Inherits="mobile_emailevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/buttons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="max-width: 650px">
        <div class="page-main">
            <div style="margin: 0 auto;">
                <div style="margin: 0; padding: 0;">
                    <img src="images/m-email-banner.png" class="am-img-thumbnail" />
                </div>
                <div style="background: #fff;">
                    <div class="am-u-sm-12">
                        填表就抽碳酸潤白泡面膜、Hello Kitty真空保溫杯(多款)、Mighty Mug吸奇不倒杯(多款)、木酢家居清潔組、Douxi頂級保養組。
                        <br />
                        此活動將於2016/02/05 Facebook官方粉絲團公布。
                    </div>
                    <img src="../user/img/email-title.png" style="width: 100%" />
                    <div style="font-size: 20px; padding-left: 20px; height: 50px; font-weight: 900">
                        即日起至 1月31日止
                    </div>

                    <div class="am-u-sm-12" style="margin-bottom: 20px">
                        <asp:TextBox ID="txt_name" runat="server" Placeholder="請輸入姓名" Style="width: 100%; height: 40px;"></asp:TextBox>
                        <br />
                        <div style="height: 10px"></div>
                        <asp:TextBox ID="txt_email" runat="server" Placeholder="請輸入Email" Style="width: 100%; height: 40px;"></asp:TextBox>
                        <p style="line-height: 40px;">（請填寫正確的E-mail，以便寄送中獎通知）</p>
                        <div style="text-align: center">
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
        </div>
    </div>
</asp:Content>

