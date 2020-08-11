<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g" style="padding-top: 20px;padding-bottom: 20px">
        <div class="am-u-sm-12 am-u-sm-centered">
            <div class="login-wrapper" style="width: 600px;margin: auto">
                <div class="login-title" style="text-align: center; font-size: 18px;padding-top:10px">
                    <span class="txtRsc" data-id="mb012" style="margin-top: 5px">會員登入</span>
                </div>
                <div class="am-modal-bd login-content">
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="btn_Login">
                        <div class="am-u-sm-12 login-form">
                            <div class="am-u-sm-12 am-u-sm-centered">
                                <div class="am-form am-form-horizontal">
                                    <!-- 帳號input -->
                                    <div class="am-form-group">
                                        <div class="am-u-sm-12 am-u-sm-centered am-cf input-wrapper id-wrapper">
                                            <div class="am-fl logoin-icon">
                                                <i class="am-icon-user"></i>
                                            </div>
                                            <asp:TextBox ID="txt_account" runat="server" CssClass="am-u-sm-12 am-form-field"
                                                placeholder="Please enter account">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- 密碼input -->
                                    <div class="am-form-group">
                                        <div class="am-u-sm-12 am-u-sm-centered am-cf input-wrapper password-wrapper">
                                            <div class="am-fl logoin-icon">
                                                <i class="am-icon-lock"></i>
                                            </div>
                                            <asp:TextBox ID="txt_password" runat="server" CssClass="am-u-sm-12 am-form-field"
                                                placeholder="Please enter password" TextMode="Password">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- 忘記密碼 -->
                                    <div class="am-u-sm-12 am-u-sm-centered am-text-right forget-password">
                                        <a href="forget.aspx">Forget password ?</a>
                                    </div>
                                    <!-- 登入按鈕 -->
                                    <div class="am-form-group">
                                        <div class=" am-u-sm-12 am-u-sm-centered login-btn-wrapper">
                                            <asp:UpdatePanel ID="upjoin" runat="server" ClientIDMode="Static" UpdateMode="Conditional">
                                                <contenttemplate>
                                                    <asp:LinkButton ID="btn_Login" runat="server" CssClass="am-btn am-btn-default login-btn"
                                                        ViewStateMode="Disabled" OnClick="btn_Login_Click">SIGN IN</asp:LinkButton>
                                                </contenttemplate>
                                                <triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="btn_Login" EventName="Click" />
                                                </triggers>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <!-- 加入新會員 -->
                                    <div class="am-u-sm-12 am-u-sm-centered am-text-center new-member">
                                        <a href="join.aspx">
                                            <span class="txtRsc" data-id="mb001">還不是會員? 加入會員
                                            </span>
                                        </a>
                                    </div>
                                    <!-- 臉書按鈕 -->
                                    <div class="am-form-group">
                                        <div class=" am-u-sm-12 am-u-sm-centered facebook-wrapper">
                                            <button type="button" class="am-btn am-btn-default facebook-btn" onclick="fbLogin();">
                                                <i class="am-icon-facebook"></i>Facebook</button>
                                        </div>
                                    </div>
                                    <!-- 同意隱私權說明 -->
                                    <div class="am-u-sm-12 am-u-sm-centered am-text-center login-description">
                                        <a href="qa34.aspx">
                                            <span class="txtRsc" data-id="mb002">擁有帳號表示您同意，隱私權條款
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

