<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="membercode.aspx.cs" Inherits="user_membercode" %>

<%@ Register Src="~/user/control/memberclass.ascx" TagPrefix="uc1" TagName="memberclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">

            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-ticket"></i>&nbsp;推薦連結 - Member Recommend Url </legend>
                <div style="margin: 30px; font-size: 20px">
                    <asp:Literal ID="lit_link" runat="server"></asp:Literal>
                </div>
               
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#mc08").addClass("select");
        })
    </script>
</asp:Content>

