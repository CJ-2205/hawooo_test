<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="user_forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding: 10px 0px">
        <style type="text/css">
            .login_table_title {
                width: 100%;
                /*height: 85px;*/
                background-color: #333;
                display: table-cell;
                text-align: center;
                vertical-align: middle;
                border: solid 2px #fff;
                background-color: #00d3e0;
            }

                /* IE6 hack */
                .login_table_title span {
                    height: 100%;
                    display: inline-block;
                }

                /* 讓table-cell下的所有元素都居中 */
                .login_table_title * {
                    vertical-align: middle;
                }
        </style>
        <div class="am-g" style="background-color: #f6f6f6;">
            <asp:HiddenField ID="hf_RCID" runat="server" ClientIDMode="Static" />
            <div class="am-u-md-12" style="padding-left: 350px">
                <asp:Panel ID="Panel1" runat="server" DefaultButton="btn_forget">
                    <div style="margin: 15px; width: 500px; background-color: #fff" class="boxshadow">
                        <div style="padding-left: 100px; padding-top: 20px;">
                            <span style="font-size: 20px"><i class="am-icon-user-plus"></i>&nbsp;忘記密碼</span> | <span>Forget Password</span>
                        </div>
                        <hr />
                        <table style="margin: 30px; line-height: 50px; width: 400px;">

                            <tr>
                                <td style="float: right; padding-right: 5px">帳號：
                                </td>
                                <td style="line-height: 30px">
                                    <asp:TextBox ID="txt_account" runat="server" CssClass="am-u-sm-12 am-form-field" placeholder="請輸入帳號"></asp:TextBox>
                                    <small style="color: #ff0000">請輸入當初註冊的帳號</small>
                                </td>
                            </tr>

                            <tr>
                                <td style="float: right; padding-right: 5px">驗證碼：
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txt_code" runat="server" CssClass="am-u-sm-12 am-form-field" placeholder="請輸入驗證碼"></asp:TextBox>
                                            </td>
                                            <td>
                                                <img src="imagecode.aspx" />
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>


                            <tr>
                                <td>&nbsp;
                                </td>
                                <td>
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
                                <td>&nbsp;
                                </td>
                                <td style="line-height: 30px; padding-bottom: 20px">
                                    <div>
                                        若您忘記您的帳號，無法順利獲得您的密碼，
                                    <br />
                                        請<a href="service.aspx">聯絡我們</a>，將有專人為您服務
                                    </div>
                                </td>
                            </tr>
                        </table>

                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

