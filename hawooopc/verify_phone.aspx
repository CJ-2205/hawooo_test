<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="verify_phone.aspx.cs" Inherits="user_verify_phone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/newmember.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding: 10px 0px">
        <!-- newmember 加入會員 開始 -->
        <section>
            <div class="am-container newmember-wrapper">
                <!-- 左邊登入表單 -->
                <div class="am-u-sm-12 nm-form">
                    <h4 class="newmember-title"><i class="am-icon-phone"></i>
                        <span>Phone Number Validation</span>
                    </h4>
                    <div class="am-form am-form-horizontal" id="newmemer-form">
                        <!-- 帳號input -->
                        <div class="am-form-group">
                            <div class="am-u-sm-7 am-u-sm-centered am-cf input-wrapper">
                                <div class="am-fl logoin-icon"><i class="am-icon-phone"></i></div>
                                <asp:TextBox ID="txt_phone" runat="server" CssClass="am-fl" placeholder="Phone" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <!-- 手機input -->
                        <div class="am-form-group">
                            <div class="am-u-sm-7 am-u-sm-centered am-cf input-wrapper">
                                <div class="am-fl logoin-icon"><i class="am-icon-code"></i></div>
                                <asp:TextBox ID="txt_code" runat="server" CssClass="am-fl" placeholder="Verify Code"></asp:TextBox>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="upjoin" runat="server" ClientIDMode="Static" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="am-form-group">
                                    <div class=" am-u-sm-7 am-u-sm-centered nm-btn-wrapper">
                                        <div class="am-u-sm-6" style="padding: 5px 0px 5px 0px">
                                            <asp:LinkButton ID="btn_confirm" runat="server" CssClass="am-btn am-btn-default nm-btn" Text="Confirm" ViewStateMode="Disabled" OnClick="btn_confirm_OnClick">
                                            </asp:LinkButton>
                                        </div>
                                        <div class="am-u-sm-6" style="padding: 5px 0px 0px 5px">
                                            <asp:LinkButton ID="btn_resend" runat="server" CssClass="am-btn am-btn-default " Text="Resend" ViewStateMode="Disabled" style="width:100%" OnClick="btn_resend_OnClick">
                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                </div>

                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btn_confirm" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="btn_resend" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

