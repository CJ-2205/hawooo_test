<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about08.aspx.cs" Inherits="user_about08" %>
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
                <!--問題1 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 35px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            代購費用怎麼算?
                       
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-1.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <h3>費用分成四個部分：</h3>
                        <img src="../images/aboutpc/images/rule-img-1.png" width="690" style="padding-left: 20px;" />
                        <img src="../images/aboutpc/images/rule-img-2.png" width="690" style="padding-left: 20px;" />
                    </div>
                </div>
                <!--問題1 End-->

                <!--問題2 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 100px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            西馬跟東馬運費一樣嗎?
                       
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-2.png" />
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #5dbca3 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <h3>東馬國際運費需多加RM10， 所以運費是RM39。</h3>
                    </div>
                </div>
                <!--問題2 End-->
            </div>
        </div>
    </div>
</asp:Content>

