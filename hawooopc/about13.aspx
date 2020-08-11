<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about13.aspx.cs" Inherits="user_about13" %>

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
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px; margin-top: 20px">
                <div class="am-tabs" data-am-tabs>
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">貨運條款</a></li>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div class="hw-font-size-18px" style="line-height: 50px">
                                Hawooo.com only provide shipping to Malaysia at the moment。
                                <br />

                                All orders will be shipped after the confirmation of Hawooo.com。
                                
                                <br />
                                Be prepared to receive your parcel in approximately 5-10 business days！
                                <br />

                                Please contact us at：service@hawooo.com
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

