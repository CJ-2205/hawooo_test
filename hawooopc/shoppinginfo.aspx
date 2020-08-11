<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="shoppinginfo.aspx.cs" Inherits="user_shoppinginfo" %>

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

                <div class="about-title">購物說明 <span style="font-size: 12px">Shopping Info </span></div>
                <hr />
                <div class="am-tabs" data-am-tabs style="padding: 0px 10px 10px 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">English</a></li>
                        <%--   <li><a href="javascript: void(0)">English</a></li>--%>
                    </ul>
                    <style>
                        .tbstyle td {
                            padding-left: 20px;
                        }
                    </style>
                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                            <table style="line-height: 50px; padding: 20px;" class="tbstyle">
                                <tr>
                                    <td><span class="about-content-title">Step 1</span>
                                        <br />
                                        Selecte the items you wish to purchase and simply add them to your shopping cart

                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="about-content-title">Step 2</span>
                                        <br />
                                        Log in or register for new HaWooo member
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="about-content-title">Step 3</span>
                                        <br />
                                        Confirm your order list
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="about-content-title">Step 4</span>
                                        <br />
                                        Select payment
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="about-content-title">Step 5</span>
                                        <br />
                                        Thank you for ordering on HaWooo.com!
                                        <hr />
                                    </td>
                                </tr>
                            </table>
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
            $("#a2").addClass("select");
        })
    </script>
</asp:Content>

