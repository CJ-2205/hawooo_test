<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about14.aspx.cs" Inherits="user_about14" %>

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
                <div class="am-panel boxshadow">

                <div class="about-title">退貨條款 <span style="font-size: 12px">Return policy</span></div>
                <hr />
                <div class="am-tabs" data-am-tabs style="padding: 0px 10px 10px 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">English</a></li>
                        <%--   <li><a href="javascript: void(0)">English</a></li>--%>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                            <div class="hw-font-size-18px">
                                <img src="img/about/退貨條款.jpg" class="am-img-thumbnail" />
                            </div>

                        </div>
                        <div class="am-tab-panel">
                        </div>
                    </div>
                </div>

            </div>
            </div>
        </div>
    </div>
</asp:Content>

