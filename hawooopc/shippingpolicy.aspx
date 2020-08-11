<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="shippingpolicy.aspx.cs" Inherits="user_shippingpolicy" %>

<%@ Register Src="~/user/control/aboutclass.ascx" TagPrefix="uc1" TagName="aboutclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:aboutclass runat="server" ID="aboutclass" />
        </div>
        <div class="am-u-md-10">
            <div class="am-panel boxshadow">

                <div class="about-title">貨運條款 <span style="font-size: 12px">Shipping policy</span></div>
                <hr />
                <div class="am-tabs" data-am-tabs style="padding: 0px 10px 10px 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">English</a></li>
                        <%--   <li><a href="javascript: void(0)">English</a></li>--%>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
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
                        <div class="am-tab-panel">
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#a3").addClass("select");
        })
    </script>
</asp:Content>

