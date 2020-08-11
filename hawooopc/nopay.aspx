<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="nopay.aspx.cs" Inherits="user_nopay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .btnn {
            position: absolute;
            display: block;
            top: 1%;
            width: 100%;
            margin: 0 auto;
            clear: both;
            float: left;
        }

        .imgstyle1 {
            display: block;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: white;">
        <div style="text-align: center; width: 100%; max-width: 850px; z-index: 1; margin: 0 auto; clear: both; position: relative">
            <img id="gotop" src="https://www.hawooo.com/images/ftp/20180515/515-pay1.png" alt="付款失敗" style="width: 100%" class="imgstyle1">
            <div class="btnn">
                <input type="image" src="https://www.hawooo.com/images/ftp/20180515/515-paybutton.png" style="width: 70%" onclick="go2order(); return false;">
            </div>

            <div class="qa-content">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay2.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay3.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay4.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay5.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay6.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay7.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay8.png" width="100%" class="imgstyle1">
                <img src="https://www.hawooo.com/images/ftp/20180515/515-pay9.png" width="100%" class="imgstyle1">
            </div>
        </div>
    </div>
    <script>
        function go2order() {
            var u = '<%= Session["A01"]!=null ? Session["A01"].ToString() : "null" %>';
            if (u != "null")
                location.href = 'memberorder.aspx';
            else
                doLogin('memberorder.aspx');
        }
    </script>
</asp:Content>

