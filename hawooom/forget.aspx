<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="mobile_forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-main">
        <div class="page-menu-Box">
            <p class="pagelink">忘記密碼</p>
        </div>
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                <i class="am-icon-user"></i>&nbsp;忘記密碼 | Forget password
            </div>
            <table style="margin: 30px; line-height: 50px; text-align: left">

                <tr>
                    <td style="padding-right: 10px; width: 80px; text-align: right; vertical-align: top">帳號：
                    </td>
                    <td style="line-height: 30px">
                        <asp:TextBox ID="txt_account" runat="server" CssClass="am-u-sm-12 am-form-field" placeholder="請輸入帳號"></asp:TextBox>
                        <small style="color: #ff0000">請輸入當初註冊的帳號</small>
                    </td>
                </tr>

                <tr>
                    <td style="float: right; padding-right: 10px">驗證碼：
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_code" runat="server" CssClass="am-u-sm-12 am-form-field" placeholder="驗證碼"></asp:TextBox>
                                </td>
                                <td>
                                    <img src="../user/imagecode.aspx" />
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>


                <tr>
                    <td>&nbsp;
                    </td>
                    <td style="text-align: left">
                        <div style="padding-bottom: 20px;">
                            <asp:UpdatePanel ID="upjoin" runat="server" ClientIDMode="Static" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:LinkButton ID="btn_forget" runat="server" CssClass="btn btn-pink" Text="寄送密碼" OnClick="btn_forget_Click" Style="margin: 0px;"></asp:LinkButton>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_forget" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="line-height: 22px; padding-bottom: 20px; text-align: left">
                        <div style="padding-left: 20px">
                            若您忘記您的帳號，無法順利獲得您的密碼，
                                  
                                請<a href="service.aspx">聯絡我們</a>，將有專人為您服務
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

