<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="privacystatement.aspx.cs" Inherits="user_privacystatement" %>

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

                <div class="about-title">隱私權條款 <span style="font-size: 12px">Privacy Statement</span></div>
                <hr />
                <div class="am-tabs" data-am-tabs style="padding: 0px 10px 10px 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">English</a></li>
                        <%--   <li><a href="javascript: void(0)">English</a></li>--%>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                            <div style="line-height: 40px">
                                 &nbsp;&nbsp;&nbsp;&nbsp; At HaWooo.com, we take your privacy seriously. Please read this Statement of Privacy to be more aware about our policy on collecting, using and disclosing personal information. HaWooo.com occasionally update this Statement of Privacy to reflect company and user feedback. We encourage you to review this Statement periodically to be informed of how we are protecting your personal information.
                             
                             <br />
                                <br />
                                <div class="about-content-title">
                                    Privacy policy
                                </div>
                                  &nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com treats personal information, such as your name, email address or telephone number as important privacy. We promise your personal information will not be disclosed to third party. We will not use or sell your personal information to third party unless:<br />
                                1.	 Users agreed to share with third party;<br />
                                2.	 Users make known to public of their personal information in selves-willingness in in order to enjoy products or services;<br />
                                3.	Violations of HaWooo.com 's Terms of Use, or as otherwise required by the law.
                            <br />
                                <br />
                                <div class="about-content-title">
                                    Instructions for use
                                </div>
                                  &nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com is committed to protect the security of your personal information. We use password setting up by user to help protect your personal information from unauthorized access, use, or disclosure. Users are fully responsible for protecting their password. If users are using public computer, please logout before leaving to prevent disclosure of personal information.
                            <br />
                                <br />
                                <div class="about-content-title">
                                    Terms
                                </div>
                                By using this site and providing information as a registered user, you are in agreement with our privacy policy. We are not responsible for the breach of our privacy statements or other content on websites outside the HaWooo.com domain name.
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
            $("#a6").addClass("select");
        })
    </script>
</asp:Content>

