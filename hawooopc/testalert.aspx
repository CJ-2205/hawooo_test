<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="testalert.aspx.cs" Inherits="user_testalert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
   
</asp:Content>

