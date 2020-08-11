<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giftcontent.aspx.cs" Inherits="mobile_giftcontent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                <asp:Literal ID="lit_event_name" runat="server"></asp:Literal></h2>
        </div>
        <div>
            <h3>活動內容</h3>
            <asp:Literal ID="lit_event_content" runat="server"></asp:Literal>
            <hr />
        </div>
        <div>
            <h3>活動規則</h3>
            <asp:Literal ID="lit_event_rule" runat="server"></asp:Literal>
            <hr />
        </div>
        <div>
            <h3>商品圖片</h3>
            <asp:Literal ID="lit_event_img" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
