<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="memberinfo.aspx.cs" Inherits="user_memberinfo" %>

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
    <style>
        h5 {
            display: inline-block;
        }
    </style>
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
                    <li class="am-active"><a href="#tab1">
                       <span class="txtRsc" data-id="m021"> 會員資料</span>
                    </a></li>
                  
                    <li>  <asp:Panel ID="partPWname" runat="server">
                        <a href="#tab2">
                           <span class="txtRsc" data-id="m022">修改密碼</span>
                        </a>
                          </asp:Panel>
                        <asp:Panel ID="part" runat="server"  Visible="false">
                        <a>&nbsp</a>
                            </asp:Panel>
                    </li>
                  

                </ul>
                <!-- 訂單tab 結束 -->


                <div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                    <!-- 會員資料的panel 開始 -->
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <div class="am-u-sm-12 am-cf member-info m-main-info">
                            <asp:HiddenField ID="hf_A01" runat="server" />
                            <div class="am-u-sm-12 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5><span class="txtRsc" data-id="m042">帳號</span> ： <asp:Literal ID="lit_A02" runat="server"></asp:Literal>
                                    <%--    <asp:LinkButton ID="lnk_verify_account" runat="server" OnClick="lnk_verify_account_OnClick">[Verify Account]</asp:LinkButton>
                                    --%>
                                    </h5>
                                </div>
                                <hr style="margin:0px;" />
                            </div>
                            <div class="am-u-sm-6 am-form am-form-horizontal">

                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="cart045">姓名</h5>
                                    <asp:TextBox ID="txt_A15" runat="server" MaxLength="30" placeholder="請輸入姓名"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m015">暱稱</h5>
                                    <asp:TextBox ID="txt_A21" runat="server" MaxLength="30" placeholder="請輸入暱稱"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5>E-mail</h5>
                                    <asp:TextBox ID="txt_A08" runat="server" placeholder="請輸入Email"></asp:TextBox>
                                      
                                    <!--驗證信-->                                                                                    
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
                                            <ContentTemplate>
                                                <%--<button id="btnSend" runat="server" class="am-btn fuchsia-btn" onserverclick="btnSend_ServerClick"><i class="am-icon-exclamation-triangle"></i>發驗證信</button>--%>                           
                                               <%--  <asp:Button ID="btnSend" runat="server" CssClass="am-btn fuchsia-btn" Text="發驗證信" OnClick="btnSend_Click" Width="87%" />--%>
                                            </ContentTemplate>
                                        <%--    <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnSend" EventName="ServerClick" />
                                            </Triggers>--%>
                                        </asp:UpdatePanel>

                                  </div>
                                <style>
                                    .am-form select {
                                        font-size: 1.4rem;
                                    }
                                </style>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m016">性別</h5>
                                    <div class="labelpadding">
                                        <asp:DropDownList ID="ddl_A16" runat="server">
                                            <asp:ListItem Text="尚未選擇" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="男性" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="女性" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="cart046">電話</h5>
                                    <asp:TextBox ID="txt_A10" runat="server" placeholder="請輸入聯絡電話" MaxLength="30"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="cart047">手機</h5> <asp:Literal ID="lit_verify_phone" runat="server"></asp:Literal>
                                    <asp:TextBox ID="txt_A09" runat="server" placeholder="請輸入手機號碼" MaxLength="30"></asp:TextBox>
                                  
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m017">地址</h5>
                                    <asp:TextBox ID="txt_A14" runat="server" placeholder="請輸入收件地址" MaxLength="500"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m041">生日</h5>
                                    <asp:TextBox ID="txt_A26" runat="server"  TextMode="date"></asp:TextBox>
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
                         <asp:Panel ID="partPW" runat="server">
                        <div class="am-u-sm-12 member-info m-modify">
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m018">舊密碼</h5>
                                        <asp:TextBox ID="txt_old_password" runat="server" placeholder="請輸入舊密碼" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="am-u-sm-6 am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m019">新密碼</h5>
                                        <asp:TextBox ID="txt_new_password" runat="server" placeholder="請輸入新密碼" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <h5 class="txtRsc" data-id="m020">確認新密碼</h5>
                                        <asp:TextBox ID="txt_chk_new_password" runat="server" placeholder="請再次輸入新密碼" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="am-fl am-text-right m-btn-wrapper">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:Button ID="btn_pw_save" runat="server" Text="Save" CssClass="am-btn am-btn-default fuchsia-o-btn" OnClick="btn_pw_save_Click" />
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btn_pw_save" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>                             
                            </div>
                        </div>
                               </asp:Panel>
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


        <%--function btnBlock() {
            $("#" + "<%= btnSend.ClientID %>").attr('disabled', 'disabled');
            setTimeout(function () { $("#" + "<%= btnSend.ClientID %>").removeAttr('disabled'); }, 30000);
        }--%>

</script>


</asp:Content>

