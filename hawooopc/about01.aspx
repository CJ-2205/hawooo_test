<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about01.aspx.cs" Inherits="user_about01" %>

<%@ Register Src="~/user/control/about_class.ascx" TagPrefix="uc1" TagName="about_class" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g">
            <!-- Slider Start-->
            <div class="am-margin-top" style="margin-top: 20px;">
                <img src="../images/aboutpc/images/about-us-banner.png" />
            </div>
            <!-- Slider End-->
        </div>
        <div class="am-g" style="background-color: #ffffff">

            <div class="am-u-md-3" style="margin-top: 20px;">
                <uc1:about_class runat="server" ID="about_class" />
            </div>

            <!--問題開始-->
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px;">
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <!--問題1 開始-->
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            如何加入會員？
                        </p>
                        <img src="../images/aboutpc/images/qa_title_1.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step1 </span>在首頁上方點選「註冊(Register)」。</h3>
                        <img src="../images/aboutpc/images/register_img_1.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step2 </span>填寫個人資料，然後按「加入會員」。<span style="font-size: 13px;">（如果您有Facebook帳號也可以直接登入）</span></h3>
                        <img src="../images/aboutpc/images/register_img_2.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step3 </span>成功註冊為Hawooo會員，建議您定期更換密碼，有助於資料安全保護。</h3>
                        <img src="../images/aboutpc/images/register_img_3.png" width="652" style="padding-left: 20px;" />
                    </div>
                </div>
                <!--問題1 結束-->
            </div>
        </div>
    </div>

</asp:Content>

