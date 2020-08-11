<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about02.aspx.cs" Inherits="user_about02" %>

<%@ Register Src="~/user/control/about_class.ascx" TagPrefix="uc1" TagName="about_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" >
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
                <!--問題1 開始-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            如何訂購商品？
                        </p>
                        <img src="../images/aboutpc/images/qa_title_1.png" />
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step1 </span>在首頁上方點選「登入(Login)」。</h3>
                        <img src="../images/aboutpc/images/buy_img_1.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step2 </span>填寫資料，按「LOGIN」。<span style="font-size: 13px;">（如果您有Facebook帳號也可以直接登入）</span></h3>
                        <img src="../images/aboutpc/images/buy_img_2.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step3 </span>挑選您喜歡的商品放入購物車。</h3>
                        <img src="../images/aboutpc/images/buy_img_3.png" width="652" style="padding-left: 20px;" />
                        <h3>
                            <span style="font-size: 20px; color: #fff; background: #f49700;">Step4 </span>
                            <span>(1)查看並確認購物明細，是您選擇的商品款式、付款金額。</span><br />
                            <span style="padding-left: 65px;">(2)確認您要的商品，選擇結帳。</span>
                        </h3>
                        <img src="../images/aboutpc/images/buy_img_4.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step5 </span>填寫訂購資訊，然後按「下一步」。</h3>
                        <img src="../images/aboutpc/images/buy_img_5.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step6 </span>確認訂單，確認無誤，按「確認送出」→ 訂單完成。</h3>
                        <img src="../images/aboutpc/images/buy_img_6.png" width="652" style="padding-left: 20px;" />
                    </div>
                </div>
                <!--問題1 結束-->
            </div>
        </div>
    </div>
</asp:Content>

