<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about11.aspx.cs" Inherits="user_about11" %>
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
                <uc1:about_class runat="server" id="about_class" />
            </div>
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px;">
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <!--問題1-->
                    <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                        <div class="am-u-sm-12" style="position: relative;">
                            <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                                請問訂單狀態代表什麼意思呢？
                            </p>
                            <img src="images/voucher_title_1.png">
                        </div>
                        <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                            <img src="images/new/return_img_3.jpg" style="width: 700px;">
                        </div>
                    </div>
                    <!--問題2-->
                    <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                        <div class="am-u-sm-12" style="position: relative;">
                            <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                                請問我可以取消訂單嗎？
                            </p>
                            <img src="images/voucher_title_2.png">
                        </div>
                        <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                            <img src="images/new/return_img_4.jpg" style="width: 700px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

