<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="returnpolicy.aspx.cs" Inherits="user_returnpolicy" %>

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
                                <img src="img/about/return.jpg" class="am-img-thumbnail" />
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
            $("#a4").addClass("select");
        })
    </script>
</asp:Content>

