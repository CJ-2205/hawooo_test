<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateorder.aspx.cs" Inherits="Webform_updateorder" %>

<%@ Register TagPrefix="aut" TagName="wuc1" Src="~/Webform/Author.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../assets/js/app.js"></script>
    <script src="../assets/js/amazeui.min.js"></script>
    <script src="../assets/js/amazeui.js"></script>
    <script src="../assets/js/jquery.min.js"></script>
    <link href="../assets/css/amazeui.css" rel="stylesheet" />
    <link href="../assets/css/amazeui.min.css" rel="stylesheet" />
    <link href="../assets/css/app.css" rel="stylesheet" />
    <link href="../assets/css/admin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </form>
</body>
</html>
