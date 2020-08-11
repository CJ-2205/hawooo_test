<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="memberinfo.aspx.cs" Inherits="user_memberinfo" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Huploadify/Huploadify.css" rel="stylesheet" />
    <script src="../Huploadify/jquery.Huploadify.js"></script>

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
    <section class="am-container am-cf member-wrapper">


        <!--  左邊導覽 -->
        <div class="am-fl member-sidemenu">
            <uc1:memberleftclass runat="server" ID="memberleftclass" />
        </div>
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
                        <div class="am-form-group">
                            <h5>姓名 | Name</h5>
                    <asp:TextBox ID="txt_A15" runat="server" MaxLength="30" placeholder="請輸入姓名"></asp:TextBox>
                        </div>
                        <div class="am-form-group">
                            <h5>暱稱 | Nickname</h5>
                    <asp:TextBox ID="txt_A21" runat="server" MaxLength="30" placeholder="請輸入暱稱"></asp:TextBox>
                        </div>
                        <div class="am-form-group member-email">
                            <h5>電子信箱 | E-mail</h5>
                    <asp:TextBox ID="txt_A08" runat="server" placeholder="請輸入Email"></asp:TextBox>

                            <!--驗證信-->
                            <button class="am-btn fuchsia-btn" data-am-modal="{target: '#member-email-alert'}"><i class="am-icon-exclamation-triangle"></i>發驗證信</button>
                        </div>

                        <div class="am-form-group">
                            <h5>性別 | Gender</h5>
                            <span>
                                <input type="radio" name="member-gender" id="member-men"><label for="member-men">男性</label>
                                <input type="radio" name="member-gender" id="member-girl"><label for="member-girl">女性</label>
                            </span>
                        </div>
                    </div>
                    <div class="am-u-sm-6 am-form am-form-horizontal">
                        <div class="am-form-group">
                            <h5>聯絡電話 | Tel</h5>
                    <asp:TextBox ID="txt_A10" runat="server" placeholder="請輸入聯絡電話" MaxLength="30"></asp:TextBox>
                        </div>
                        <div class="am-form-group">
                            <h5>手機 | Mobile</h5>
                    <asp:TextBox ID="txt_A09" runat="server" placeholder="請輸入聯絡電話" MaxLength="30"></asp:TextBox>
                        </div>
                        <div class="am-form-group">
                            <h5>地址 | Address</h5>
                    <asp:TextBox ID="txt_A14" runat="server" placeholder="請輸入收件地址" MaxLength="500"></asp:TextBox>
                        </div>
                    </div>
                    <div class="am-fl am-text-right m-btn-wrapper">
                        <button class="am-btn am-btn-default fuchsia-o-btn">確認修改</button>
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
                            <input type="text" name="" placeholder="請輸入舊密碼">
                        </div>
                    </div>
                    <div class="am-u-sm-6 am-form am-form-horizontal">
                        <div class="am-form-group">
                            <h5>新密碼 | New password</h5>
                            <input type="text" name="" placeholder="請輸入新密碼">
                        </div>
                        <div class="am-form-group">
                            <h5>確認新密碼 | Confirm new password</h5>
                            <input type="text" name="" placeholder="請再次輸入新密碼">
                        </div>
                    </div>
                    <div class="am-fl am-text-right m-btn-wrapper">
                        <button class="am-btn am-btn-default fuchsia-o-btn">確認修改</button>
                    </div>
                </div>
            </div>
            <!-- 修改密碼的panel 結束 -->
        </div>
                
                  </div>
        </div>


    </section>

    <script>
        $(function () {
            $("#mc01").addClass("select");
        })
    </script>
</asp:Content>

