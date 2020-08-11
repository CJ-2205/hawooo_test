<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="memberhacoin.aspx.cs" Inherits="user_memberhacoin" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
    <!-- 會員專區專用 會員區的都寫在這裡面-->
    <link rel="stylesheet" type="text/css" href="assets/css/member2.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- 會員區 左邊導覽＋右邊顯示 -->
    <section class="am-container am-cf member-wrapper" style="padding-top: 10px">
        <!--  左邊導覽 -->
        <uc1:memberleftclass runat="server" ID="memberleftclass" />
        <!--  右邊導覽 -->
        <div class="am-fl member-rightmenu">
            <!-- 哈幣可用標題 habi-left-title start -->
            <section class="member-left-title">
                <ul class="am-cf">
                    <li class="am-fl habi-left-img">
                        <img src="icon/habi_icon.png">
                    </li>
                    <li class="am-fl habi-left-text">
                        <ul>
                            <li id="liPanel"><span>
                                <asp:Literal ID="lit_total" runat="server"></asp:Literal></span><h4 class="txtRsc" data-id="m023">可用Ha幣</h4>
                            </li>
                            <li class="habi-almost" id="haTimeOut">
                                <p>
                                    <asp:Literal ID="lit_timeout_coupon" runat="server"></asp:Literal>
                                </p>
                                <h4><span>
                                    <asp:Literal ID="lit_timeout_day" runat="server"></asp:Literal></span></h4>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <!-- 哈幣可用標題 habi-left-title end -->
            <!-- 哈幣明細標題＆哈幣明細 habi-title & habi-list start -->
            <section class="member-list-wrapper">
                <div class="member-no-tab">
                    <span class="txtRsc" data-id="m024">Ha幣明細</span>
                </div>
                <!-- 哈幣獲得紀錄 開始 -->
                <div class="am-u-sm-12 am-cf member-info m-habi">
                    <!-- 一筆tr是一筆哈幣 -->
                    <table class="member-table habi-table">
                        <asp:Repeater ID="rp_list" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="habiget-pic">
                                        <%--<img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("ORD07") %>'  />--%>
                                    </td>
                                    <td class="habiget-content">
                                        <h4><%# Eval("ORD02").ToString().Equals("")?Eval("CN07").ToString(): Eval("ORD02").ToString()+Eval("ORD04").ToString() %></h4>
                                        <p><%#Convert.ToDateTime(Eval("CN05")).ToString("yyyy/MM/dd") %>~<%#Convert.ToDateTime(Eval("CN10")).ToString("yyyy/MM/dd") %></p>
                                    </td>
                                    <td class="habiget-price"><%#Eval("CN04").ToString().Equals("1")?"+"+Convert.ToInt32(Eval("CN03")).ToString("D"):"-"+Convert.ToInt32(Eval("CN03")).ToString("D") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>
                <!-- 哈幣獲得紀錄 結束 -->
            </section>
            <!-- 哈幣明細標題＆哈幣明細 habi-title & habi-list end -->
        </div>
        <!--  右邊導覽 結束 -->
    </section>
    <!-- 會員區 左邊導覽＋右邊顯示 結束 -->
    <script>

        function removeTimeoutPanel() {
            $("#haTimeOut").remove();
            $("#liPanel").attr("style", "padding-top: 35px;");
        };
    </script>
</asp:Content>

