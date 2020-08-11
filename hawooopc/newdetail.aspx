<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="newdetail.aspx.cs" Inherits="user_newdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .style1 {
            margin: 10px 0px 10px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding: 10px 0px 10px 0px">
        <div class="am-u-sm-12 am-panel am-panel-default">
            <h1 class="style1"> <asp:Literal ID="lit_Title" runat="server"></asp:Literal></h1>
            <hr style="margin: 5px 0px 5px 0px" />
            <div class="style1">
                <asp:Literal ID="lit_Content" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</asp:Content>

