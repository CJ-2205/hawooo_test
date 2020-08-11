<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="borderok.aspx.cs" Inherits="user_borderok" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">

        <asp:Literal ID="lit_ck_txt" runat="server"></asp:Literal>
        <div class="am-panel boxshadow" style="margin-top: 20px">
          
            <script>
                function PrintDiv(myDiv) {
                    var contents = document.getElementById(myDiv).innerHTML;
                    var frame1 = document.createElement('iframe');
                    frame1.name = "frame1";
                    frame1.style.position = "absolute";
                    frame1.style.top = "-1000000px";
                    document.body.appendChild(frame1);
                    var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
                    frameDoc.document.open();
                    frameDoc.document.write('<html><head><link rel="stylesheet" href="../assets/css/amazeui.min.css" /><link rel="stylesheet" href="../assets/css/admin.css" /><title>訂單資訊</title>');
                    frameDoc.document.write('</head><body>');
                    frameDoc.document.write(contents);
                    frameDoc.document.write('</body></html>');
                    frameDoc.document.close();
                    setTimeout(function () {
                        window.frames["frame1"].focus();
                        window.frames["frame1"].print();
                        document.body.removeChild(frame1);
                    }, 500);
                    return false;
                }
            </script>
            <div class="am-g">

                <div class="am-u-sm-12 am-text-center" style="min-height: 500px; padding-top: 70px">
                    <input id="Button1" type="button" value="列印帳單" class="am-btn am-btn-primary" style="width: 200px" onclick="PrintDiv('pdiv');" />
                    <br />

                    <div id="pdiv">
                        <div style="vertical-align: middle; font-size: 20px; text-align: center;">
                            <i class="am-icon-check-circle-o am-icon-lg"></i>
                            代購單編號<span style="font-size: 20px">(Order number)</span> ：
                            <asp:Literal ID="lit_BORM20" runat="server"></asp:Literal>
                            <hr />
                            感謝您的訂購<br />
                            可進入<a href="memberborder.aspx">代購管理</a>查詢處理進度
                            <hr />
                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                                <div class="am-panel boxshadow" style="width: 400px; margin: 0 auto">

                                    <div class="am-panel-bd" style="text-align: left;">
                                        付款資訊[Pay info]<br />
                                        <hr />
                                        <table>
                                            <tr>
                                                <td>付款金額：</td>
                                                <td>
                                                    <span style="color: #ff0000">RM 
                                                     <asp:Literal ID="lit_BORM16" runat="server"></asp:Literal></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>付款期限：
                                                </td>
                                                <td>
                                                    <span style="color: #ff0000">
                                                        <asp:Literal ID="lit_BORM21" runat="server"></asp:Literal></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Bank：</td>
                                                <td>CIMB BANK</td>
                                            </tr>
                                            <tr>
                                                <td>Name：</td>
                                                <td>PEOPLES MAP SDN. BHD.</td>
                                            </tr>
                                            <tr>
                                                <td>Account：</td>
                                                <td>80-0327458-9</td>
                                            </tr>
                                        </table>
                                    </div>

                                </div>
                                <br />

                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" Visible="false">
                                <div class="am-panel boxshadow" style="width: 600px; margin: 0 auto">
                                    <asp:Literal ID="lit_crad_info" runat="server"></asp:Literal>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
   
</asp:Content>

