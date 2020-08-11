<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="memberhacoin2.aspx.cs" Inherits="user_memberhacoin2" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
    <!-- 會員專區專用 會員區的都寫在這裡面-->
    <link rel="stylesheet" type="text/css" href="assets/css/member2.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">

            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-gift"></i>&nbsp;Ha幣記錄 - Ha Coin Record </legend>
                <table class="am-table am-table-striped am-table-hover table-main" style="font-size: 16px; padding: 10px">
                    <thead>
                        <tr>
                            <th>獲得日</th>
                            <th>金額</th>
                            <th>使用/存入</th>
                            <th>到期/使用日</th>
                            <th style="width: 300px">顯示備註</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_list" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal ID="lit_CN05" runat="server" Text='<%# Convert.ToDateTime(Eval("CN05")).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_CN03" runat="server" Text='<%# Eval("CN03") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_CN04" runat="server" Text='<%# Eval("CN04").ToString().Equals("1") ? "存入" : "扣除" %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_CN10" runat="server" Text='<%# FieldCheck.isDateTime(Eval("CN10").ToString()) ? Convert.ToDateTime(Eval("CN10").ToString()).ToString("yyyy-MM-dd HH:MM") : "" %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_CN07" runat="server" Text='<%# Eval("CN07") %>'></asp:Literal>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" style="text-align: left">可用Ha幣：
                                <span style="color: #ff0000; font-weight: 800; font-size: 20px">
                                    <asp:Literal ID="lit_total" runat="server"></asp:Literal>
                                </span>
                            </td>
                        </tr>
                    </tfoot>
                </table>

            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#mc10").addClass("select");
        })
    </script>--%>

    <!-- 會員區 左邊導覽＋右邊顯示 -->
    <section class="am-container am-cf member-wrapper">
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
                                <asp:Literal ID="lit_total" runat="server"></asp:Literal></span><h4>可用Ha幣</h4>
                            </li>
                            <li class="habi-almost" id="haTimeOut">
                                <p>
                                    <asp:Literal ID="lit_timeout_coupon" runat="server"></asp:Literal>
                                </p>
                                <h4>Ha幣即將在<span><asp:Literal ID="lit_timeout_day" runat="server"></asp:Literal></span>過期</h4>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <!-- 哈幣可用標題 habi-left-title end -->
            <!-- 哈幣明細標題＆哈幣明細 habi-title & habi-list start -->
            <section class="member-list-wrapper">
                <div class="member-no-tab">
                    Ha幣明細
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
        }
    </script>
</asp:Content>

