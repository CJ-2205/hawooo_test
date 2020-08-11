<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="memberborder.aspx.cs" Inherits="user_memberborder" %>

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
                <div class="am-tabs" data-am-tabs style="padding: 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">尚未結帳代購單</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">

                            <table class="am-table am-table-bordered am-table-radius am-table-striped">
                                <thead>
                                    <tr>
                                        <th>代購日期</th>
                                        <th>代購單號</th>
                                        <th>總數量</th>
                                        <th>總金額</th>
                                        <th>最後付款日</th>
                                        <th>狀態</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rp_non_pay_border_list" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Convert.ToDateTime(Eval("BORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                                <td><a style="color: #32b9ff;" href='<%# "memberborderdetail.aspx?oid=" + Eval("BORM20").ToString() %>'><%# Eval("BORM20") %></a></td>
                                                <td>
                                                    <asp:Literal ID="lit_BORM14" runat="server" Text='<%# Eval("BORM14") %>'></asp:Literal></td>
                                                <td>RM<asp:Literal ID="lit_BORM16" runat="server" Text='<%# Eval("BORM16") %>'></asp:Literal>
                                                </td>
                                                <td>
                                                    <asp:Literal ID="lit_BORM21" runat="server" Text='<%# Eval("BORM21") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_BORM02" runat="server" Text='<%# hawooo.CFacade.GetFac.GetBFYORMFac.OrderStateStr(Convert.ToInt32(Eval("BORM02").ToString())) %>'></asp:Literal>
                                                    <a href='<%# "border.aspx?oid=" + Eval("BORM20") %>'><span style="color: #E75353">(前往付款)</span>
                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            <div style="padding-left: 20px; padding-bottom: 20px">
                                <asp:Literal ID="lit_m1" runat="server"></asp:Literal>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="am-panel boxshadow">
                <div class="am-tabs" data-am-tabs style="padding: 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">歷史代購單紀錄</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">

                            <table class="am-table am-table-bordered am-table-radius am-table-striped">
                                <thead>
                                    <tr>
                                        <th>代購日期</th>
                                        <th>代購單號</th>
                                        <th>總數量</th>
                                        <th>總金額</th>
                                        <th>最後付款日</th>
                                        <th>狀態</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rp_border_list" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Convert.ToDateTime(Eval("BORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                                <td><a style="color: #32b9ff;" href='<%# "memberborderdetail.aspx?oid=" + Eval("BORM20").ToString() %>'><%# Eval("BORM20") %></a></td>
                                                <td>
                                                    <asp:Literal ID="lit_BORM14" runat="server" Text='<%# Eval("BORM14") %>'></asp:Literal></td>
                                                <td>RM<asp:Literal ID="lit_BORM16" runat="server" Text='<%# Eval("BORM16") %>'></asp:Literal>
                                                </td>
                                                <td>
                                                    <asp:Literal ID="lit_BORM21" runat="server" Text='<%# Eval("BORM21") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_BORM02" runat="server" Text='<%# hawooo.CFacade.GetFac.GetBFYORMFac.OrderStateStr(Convert.ToInt32(Eval("BORM02").ToString())) %>'></asp:Literal>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            <div style="padding-left: 20px; padding-bottom: 20px">
                                <asp:Literal ID="lit_m2" runat="server"></asp:Literal>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


        </div>
    </div>
    <script>
        $(function () {
            $("#mc09").addClass("select");
        })
    </script>
</asp:Content>

