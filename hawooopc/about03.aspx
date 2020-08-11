<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about03.aspx.cs" Inherits="user_about03" %>

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
        <div class="am-g">
            <div class="am-u-md-3" style="margin-top: 20px;">
                <uc1:about_class runat="server" ID="about_class" />
            </div>
            <!--問題開始-->
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px;">
                <!--問題1 開始-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            如何線上付款？
                        </p>
                        <img src="images/qa_title_1.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step1 </span>訂單完成後，畫面會自動跳到填寫付款資料。</h3>
                        <img src="images/pay_img_2.png" width="652" style="padding-left: 20px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step2 </span>填寫資料完成後，按「Pay Online」。</h3>
                        <img src="images/pay_img_3.png" width="652" style="padding-left: 20px;">
                    </div>
                </div>
                <!--問題1 結束-->
                <!--問題2 開始-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            如果刷卡失敗，可以再次付款嗎？
                        </p>
                        <img src="images/qa_title_4.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step1 </span>訂單完成。</h3>
                        <img src="images/new/pay_img_4.png" width="652" style="padding-left: 20px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step2 </span>若是刷卡失敗，請點進訂單查詢，點下您未刷卡完成的訂單編號。</h3>
                        <img src="images/new/pay_img_5.png" width="652" style="padding-left: 20px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step3 </span>請點"重新付款"。</h3>
                        <img src="images/new/pay_img_6.png" width="652" style="padding-left: 20px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step4 </span>即可有第二次刷卡機會。請輸入相關資訊後，點"Pay Online" 即可完成二次刷卡。</h3>
                        <img src="images/new/pay_img_7.png" width="652" style="padding-left: 20px;">
                        <h3><span style="margin: 0 5px 0 0; font-size: 20px; color: #fff; background: #f49700;">Step5 </span>若二次刷卡還是未完成，此訂單需要麻煩您透過匯款方式付款</h3>
                        <p style="margin: 10px 0 0 70px;">
                            Bank: Public Ban
                                <br>
                            Account Name: Peoples Map Sdn Bhd
                                <br>
                            Account No: 3201174410
                                <br>
                            <br>
                            CIMB BANK
                                <br>
                            PEOPLES MAP SDN. BHD.
                                <br>
                            80-0327458-9
                        </p>
                        <p style="margin: 10px 0 0 70px; width: 580px;">若還是需求molapy刷卡付款，請再次成立訂單，並連繫線上客服協助取消訂單。(若訂單有使用折扣優惠即無法取消，請透過匯款方式付款)</p>

                    </div>
                </div>
                <!--問題2 結束-->
            </div>
        </div>
    </div>
</asp:Content>

