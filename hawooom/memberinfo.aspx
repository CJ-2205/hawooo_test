<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="memberinfo.aspx.cs" Inherits="memberinfo" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../Huploadify/Huploadify.css" rel="stylesheet" />
    <script src="../Huploadify/jquery.Huploadify.js"></script>
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script>
        function notChgPW() {
            $("#chgPw").attr('display', 'none');
        }
    </script>
    <!-- 內容區 START -->
    <uc1:member_class runat="server" ID="member_class" />
    <!-- 麵包屑 Start-->
    <section class="member-order-tab-section member-margin" style="padding-top: 50px">
        <div id="member-order-tab-wrapper" class="am-tabs member-order-tab-wrapper">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <li class="am-active"><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m021">會員資料</span>
                </a></li>
                <li id="chgPw"><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m022">修改密碼</span>
                </a></li>
            </ul>

            <div class="am-tabs-bd ">
                <!-- 會員資料 開始-->

                <%--  會員帳號--%>
                <asp:HiddenField ID="hf_A01" runat="server" />
                <asp:HiddenField ID="hf_A18" runat="server" />
                <div class="am-tab-panel am-active member-info-tab">
                    <div class="am-u-sm-12 am-u-md-8 am-u-md-centered  am-cf member-info m-main-info">
                        <div class="am-u-sm-12 am-form am-form-horizontal">
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="cart045">Name</h5>
                                <asp:TextBox ID="txt_A15" runat="server" MaxLength="30" placeholder="請輸入姓名"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="m015">暱稱</h5>
                                <asp:TextBox ID="txt_A21" runat="server" MaxLength="30" placeholder="請輸入暱稱"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="cart048">電子郵件</h5>
                                <asp:TextBox ID="txt_A08" runat="server" placeholder="請輸入電子信箱"></asp:TextBox>
                                <%--  <div id="ckPl2">
                                    <h5>電子信箱 | E-mail</h5>
                                </div>--%>
                                <%-- <input class="unchecked" type="email" name="" placeholder="請輸入電子信箱">
                                    <button class="am-btn fuchsia-btn" data-am-modal="{target: '#member-email-alert'}">發認證信</button>--%>


                                <%-- <div id="ckPl">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            
                                            <asp:Button ID="btnSend" runat="server" CssClass="am-btn fuchsia-btn btn-block" Width="22.22%" Text="點我認證" OnClick="btnSend_Click" />
                                        </ContentTemplate>
                                        
                                    </asp:UpdatePanel>
                                </div>--%>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="cart046">電話</h5>
                                <asp:TextBox ID="txt_A10" runat="server" placeholder="請輸入聯絡電話" MaxLength="30"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="cart047">手機</h5>
                                <asp:TextBox ID="txt_A09" runat="server" placeholder="請輸入手機號碼" MaxLength="30"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="m017">地址</h5>
                                <asp:TextBox ID="txt_A14" runat="server" placeholder="請輸入收件地址" MaxLength="500"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="m016">性別</h5>
                                <asp:DropDownList ID="ddl_A16" runat="server" Style="padding: 8px;">

                                    <asp:ListItem Text="男性" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="女性" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="am-form-group">
                                <h5 class="txtRsc" data-id="m016">生日</h5>
                                <asp:TextBox ID="txt_A26" runat="server" placeholder="Enter your birthday" TextMode="Date"></asp:TextBox>                      
                            </div>
                        </div>
                        <div class="am-fl am-md-text-right m-btn-wrapper">
                            <asp:UpdatePanel ID="up_event" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btn_save" runat="server" Text="SAVE" CssClass="am-btn am-btn-default fuchsia-o-btn" OnClick="btn_save_Click" Width="150px" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_save" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
                <!-- 會員資料 結束-->
                <!-- 修改密碼 開始 -->
                <div class="am-tab-panel member-password-tab">
                    <asp:Panel ID="partPW" runat="server">
                        <div class="am-u-sm-12 am-u-md-8 am-u-md-centered member-info m-modify">
                            <div class="am-u-sm-12 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m018">舊密碼</h5>
                                    <asp:TextBox ID="txt_old_password" runat="server" placeholder="請輸入舊密碼" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m019">新密碼</h5>
                                    <asp:TextBox ID="txt_new_password" runat="server" placeholder="請輸入新密碼" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m020">確認新密碼</h5>
                                    <asp:TextBox ID="txt_chk_new_password" runat="server" placeholder="請輸入確認密碼" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="am-fl am-md-text-right m-btn-wrapper">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:Button ID="btn_pw_save" runat="server" Text="SAVE" CssClass="am-btn am-btn-default fuchsia-o-btn" OnClick="btn_pw_save_Click" Width="150px" />
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="btn_pw_save" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
                <!-- 修改密碼 結束 -->
            </div>
        </div>
    </section>


    <uc1:member_center_class runat="server" ID="member_center_class" />


    <style>
        /*自訂*/
        .float-left {
            float: left;
        }



        #member-email input {
            width: 80%;
            display: inline-block;
        }

        #member-email i {
            margin: 0 5px 0 0;
        }

        #member-email button {
            display: inline-block;
            width: 18.5%;
            height: 35px;
            font-size: 12px;
            padding: 0;
        }

        #member-email span {
            color: #95D7DA;
            margin: 0 0 0 5px;
        }

        .self {
            border: 0;
            border-bottom: 3px solid #FB5450;
            color: #FB5450;
            padding: 0.6em 0;
            background-color: #fff;
            font-size: .9em;
            text-align: center
        }
    </style>
    <script>

        $(function () {
            $('#member-order-tab-wrapper').tabs();
        })


        <%--  function btnBlock() {
            $("#" + "<%= btnSend.ClientID %>").attr('disabled', 'disabled');
            setTimeout(function () { $("#" + "<%= btnSend.ClientID %>").removeAttr('disabled'); }, 30000);
        }--%>

        function panelChange() {
            $("#ckPl").empty();
            $("#ckPl2").empty();
            $("#ckPl2").append('<h5 style="float:left;">E-mail</h5><span style="padding:0 0 0 1%"><i class="am-icon-check-square-o"></i>已認證</span>');
            $("#" + "<%= txt_A08.ClientID %>").css('width', '100%');
        }

    </script>
</asp:Content>

