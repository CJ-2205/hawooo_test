<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css" />
    <script type="text/javascript" src="assets/js/login.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="upjoin" runat="server" ClientIDMode="Static" UpdateMode="Conditional" RenderMode="Block">
        <ContentTemplate>

            <div class="am-u-sm-12 login-form">
                <!-- 表單開始 -->
                <div class="am-u-sm-10 am-u-md-10 am-u-sm-centered">
                    <div class="am-form am-form-horizontal">
                        <!-- 帳號input -->
                        <div class="am-form-group">
                            <div class="am-u-sm-12 am-u-md-8 am-u-sm-centered am-cf input-wrapper id-wrapper">
                                <div class="am-fl logoin-icon"><i class="am-icon-user"></i></div>
                                <asp:TextBox ID="txt_account" runat="server" CssClass="am-fl" placeholder="Please enter account"></asp:TextBox>

                            </div>
                        </div>

                        <!-- 密碼input -->
                        <div class="am-form-group">
                            <div class="am-u-sm-12 am-u-md-8 am-u-sm-centered am-cf input-wrapper password-wrapper">
                                <div class="am-fl logoin-icon"><i class="am-icon-lock"></i></div>
                                <asp:TextBox ID="txt_password" runat="server" CssClass="am-fl" placeholder="Please enter password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <!-- 忘記密碼 -->
                        <div class="am-u-sm-12 am-u-md-8 am-u-sm-centered am-text-right forget-password"><a href="forget.aspx">Forget password ?</a></div>
                        <!-- 登入按鈕 -->
                        <div class="am-form-group">
                            <div class=" am-u-sm-12 am-u-md-8 am-u-sm-centered login-btn-wrapper" style="height: 40px">
                                <asp:LinkButton ID="btn_Login" runat="server" CssClass="am-btn am-btn-default login-btn" Text="SIGN IN" ViewStateMode="Disabled" OnClick="btn_Login_Click" Style="height: 40px"></asp:LinkButton>
                            </div>
                        </div>

                        <!-- 加入新會員 -->
                        <div class="am-u-sm-12 am-u-md-8 am-u-sm-centered am-text-center new-member" style="display: table">
                            <div class="am-fr">
                                <a href="register.aspx">
                                    <span class="txtRsc" data-id="mb001">還不是會員? 加入會員</span>
                                </a>
                            </div>
                        </div>

                        <!-- 臉書按鈕 -->
                        <div class="am-form-group">
                            <div class=" am-u-sm-12 am-u-md-8 am-u-sm-centered facebook-wrapper">
                                <button type="submit" class="am-btn am-btn-default facebook-btn" onclick="fbLogin();"><i class="am-icon-facebook"></i>Facebook</button>
                            </div>
                        </div>

                        <!-- 同意隱私權說明 -->
                        <div class="am-u-sm-12 am-u-md-8 am-u-sm-centered am-text-center login-description" style="padding-bottom: 10px">
                            <span class="txtRsc" data-id="mb002">擁有帳號表示您同意，隱私權條款
                            </span>
                        </div>

                    </div>
                </div>
                <!-- 表單結束 -->
            </div>


        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_Login" EventName="Click" />

        </Triggers>
    </asp:UpdatePanel>

</asp:Content>

