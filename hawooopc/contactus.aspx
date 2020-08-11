<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="user_contactus" %>

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

                <div class="about-title">聯絡我們 <span style="font-size: 12px">Contact Us</span></div>
                <hr />
                <div class="am-tabs" data-am-tabs style="padding: 0px 10px 10px 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">English</a></li>
                        <%--   <li><a href="javascript: void(0)">English</a></li>--%>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                            <div style="line-height: 40px">
                                <table style="line-height: 50px; padding: 20px;">
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com would like you to purchase everything you want from us in an easiest way.
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;Contact us if you have any questions.
                                        <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/about/e-mail.png" style="width: 90px" />
                                            <span style="font-size: 22px; font-weight: 800">&nbsp;By EMAIL:</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;service@hawooo.com<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp; Please allow some time for us to reply your inquiry. We will get back to you ASAP!
                                    <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/about/phone.png" style="width: 90px" />
                                            <span style="font-size: 22px; font-weight: 800">&nbsp;By Phone:</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;+603-23866096<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;Monday to Friday 9AM to 6PM<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;(Except for Malaysia public holidays)

                                         <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/about/findus.png" style="width: 90px" />
                                            <span style="font-size: 22px; font-weight: 800">&nbsp;Find us:</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;Peoples MAP Sdn. Bhd. (969081-V)<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;  D-09-05, Menara Mitraland,Jalan PJU 5/1, Kota Damansara,<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp; 47810 Petaling Jaya, Selangor, Malaysia.<br />
                                        </td>
                                    </tr>
                                </table>


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
            $("#a7").addClass("select");
        })
    </script>
</asp:Content>

