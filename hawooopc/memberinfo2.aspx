<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="memberinfo2.aspx.cs" Inherits="user_memberinfo" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--    <link href="../Huploadify/Huploadify.css" rel="stylesheet" />
    <script src="../Huploadify/jquery.Huploadify.js"></script>--%>

    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
    <!-- 下方三個好處免運、正品、快送 -->
    <link rel="stylesheet" href="assets/css/footer_good_block.css">
    <!-- 會員專區專用 -->
    <link rel="stylesheet" type="text/css" href="assets/css/member2.css">
    <!-- 商品評分專用 reviews -->
    <link rel="stylesheet" type="text/css" href="assets/css/reviews.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <content style="margin-top: 140px; display: block;">

    <section class="am-container am-cf member-wrapper">
            <uc1:memberleftclass runat="server" ID="memberleftclass" />
      
        <!--  右邊導覽 -->

        <div class="am-fl member-rightmenu">
            <div class="am-tabs" data-am-tabs>
                <!-- 訂單tab 開始 -->
                <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-2">
                    <li class="am-active"><a href="#tab1">會員資料</a></li>
                    <li><a href="#tab2">修改密碼</a></li>
                </ul>
                <!-- 訂單tab 結束 -->


                <div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                    <!-- 會員資料的panel 開始 -->
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <div class="am-u-sm-12 am-cf member-info m-main-info">
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                                <asp:HiddenField ID="hf_A01" runat="server" />


                                <div class="am-form-group">
                                    <h5>姓名 | Name</h5>
                                    <asp:TextBox ID="txt_A15" runat="server" MaxLength="30" placeholder="請輸入姓名"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5>暱稱 | Nickname</h5>
                                    <asp:TextBox ID="txt_A21" runat="server" MaxLength="30" placeholder="請輸入暱稱"></asp:TextBox>
                                </div>
                                <div class="am-form-group  member-email">
                                    <h5>電子信箱 | E-mail</h5>
                                    <asp:TextBox ID="txt_A08" runat="server" placeholder="請輸入Email"></asp:TextBox>
                                      
                                    <!--驗證信-->                                                                                    
                             <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
                                            <ContentTemplate>
                                                <%--<button id="btnSend" runat="server" class="am-btn fuchsia-btn" onserverclick="btnSend_ServerClick"><i class="am-icon-exclamation-triangle"></i>發驗證信</button>--%>                           
                                                 <asp:Button ID="btnSend" runat="server" CssClass="am-btn fuchsia-btn" Text="發驗證信" OnClick="btnSend_Click" Width="87%" />
                                            </ContentTemplate>
                                        <%--    <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnSend" EventName="ServerClick" />
                                            </Triggers>--%>
                                        </asp:UpdatePanel>

                                  </div>
                                <div class="am-form-group">
                                    <h5>性別 | Gender</h5>
                                    <div class="labelpadding">
                                        <asp:RadioButtonList ID="rb_A16" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            <asp:ListItem Text="男性" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="女性" Value="0"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>

                            </div>
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5>聯絡電話 | Tel</h5>
                                    <asp:TextBox ID="txt_A10" runat="server" placeholder="請輸入聯絡電話" MaxLength="30"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5>手機 | Mobile</h5>
                                    <asp:TextBox ID="txt_A09" runat="server" placeholder="請輸入手機號碼" MaxLength="30"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5>地址 | Address</h5>
                                    <asp:TextBox ID="txt_A14" runat="server" placeholder="請輸入收件地址" MaxLength="500"></asp:TextBox>
                                </div>
                            </div>
                            <div class="am-fl am-text-right m-btn-wrapper">
                                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btn_date_save" runat="server" Text="確認修改" CssClass="am-btn am-btn-default fuchsia-o-btn" OnClick="btn_date_save_Click" />
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btn_date_save" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                    <!-- 會員資料的panel 結束 -->

                    <!-- 修改密碼的panel 開始-->             
                    <div class="am-tab-panel am-fade" id="tab2">
                        <div class="am-u-sm-12 member-info m-modify">
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5>舊密碼 | Old password</h5>
                                        <asp:TextBox ID="txt_old_password" runat="server" placeholder="請輸入舊密碼" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5>新密碼 | New password</h5>
                                        <asp:TextBox ID="txt_new_password" runat="server" placeholder="請輸入新密碼" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5>確認新密碼 | Confirm new password</h5>
                                        <asp:TextBox ID="txt_chk_new_password" runat="server" placeholder="請再次輸入新密碼" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="am-fl am-text-right m-btn-wrapper">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:Button ID="btn_pw_save" runat="server" Text="確認修改" CssClass="am-btn am-btn-default fuchsia-o-btn" OnClick="btn_pw_save_Click" />
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btn_pw_save" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>                             
                            </div>
                        </div>
                    </div>
                    
                               <!-- 修改密碼的panel 結束 -->
                </div>

            </div>
        </div>

    </section>
          </content>
    <script>
        $(function () {
            $("#mc01").addClass("select");
        })


        function btnBlock() {
            $("#" + "<%= btnSend.ClientID %>").attr('disabled', 'disabled');
            setTimeout(function () { $("#" + "<%= btnSend.ClientID %>").removeAttr('disabled'); }, 30000);
        }

    </script>


</asp:Content>

