<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="member_center.aspx.cs" Inherits="user_member_center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .fade
        {
            color: #000000;
            opacity: 1;
            transition: opacity .25s ease-in-out;
            -moz-transition: opacity .25s ease-in-out;
            -webkit-transition: opacity .25s ease-in-out;
        }
        
        .fade:hover
        {
            opacity: 0.4;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="margin-top: 140px">
        <div class="am-u-sm-9">
            <div class="am-g">
                <table class="am-table am-table-radius am-table-striped" style="color: #8e8e8e;">
                    <thead>
                        <tr style="background-color: #F2C3C3; font-size: 16px">
                            <th colspan="6">
                                尚未付款代購單
                            </th>
                        </tr>
                        <tr style="height: 20px;">
                            <th>
                                代購日期
                            </th>
                            <th>
                                代購單號
                            </th>
                            <th>
                                總數量
                            </th>
                            <th>
                                總金額
                            </th>
                            <th>
                                最後付款日
                            </th>
                            <th>
                                狀態
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_non_pay_border_list" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# Convert.ToDateTime(Eval("BORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %>
                                    </td>
                                    <td>
                                        <a style="color: #32b9ff;" href='<%# "memberborderdetail.aspx?oid=" + Eval("BORM20").ToString() %>'>
                                            <%# Eval("BORM20") %></a>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_BORM14" runat="server" Text='<%# Eval("BORM14") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        RM<asp:Literal ID="lit_BORM16" runat="server" Text='<%# Eval("BORM16") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_BORM21" runat="server" Text='<%# Eval("BORM21") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_BORM02" runat="server" Text='<%# hawooo.CFacade.GetFac.GetBFYORMFac.OrderStateStr(Convert.ToInt32(Eval("BORM02").ToString())) %>'></asp:Literal>
                                        <a href='<%# "border.aspx?oid=" + Eval("BORM20") %>'><span style="color: #E75353">(前往付款)</span>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Literal ID="lit_border_msg" runat="server"></asp:Literal>
                    </tbody>
                </table>
            </div>
            <div class="am-g">
                <table class="am-table am-table-radius am-table-striped" style="color: #8e8e8e;">
                    <thead>
                        <tr style="background-color: #B3DEE3; font-size: 16px">
                            <th colspan="7">
                                訂購記錄
                            </th>
                        </tr>
                        <tr style="height: 20px;">
                            <th>
                                訂購日期
                            </th>
                            <th>
                                訂單編號
                            </th>
                            <th>
                                付款方式
                            </th>
                            <th>
                                訂單金額
                            </th>
                            <th>
                                出貨單號
                            </th>
                            <th>
                                付款狀態
                            </th>
                            <th>
                                訂單狀態
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_order_list" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# Convert.ToDateTime(Eval("ORM03")).ToString("yyyy-MM-dd HH:mm:ss") %>
                                    </td>
                                    <td>
                                        <a href="memberorderdetail.aspx?oid=<%# Eval("ORM01") %>">
                                            <%# Eval("ORM02") %></a>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <span style="font-size: 12px">RM</span>
                                        <%# Eval("ORM08") %>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Literal ID="lit_order_msg" runat="server"></asp:Literal>
                    </tbody>
                </table>
            </div>
            <hr />
            <div class="am-g" style="padding-bottom: 50px">
                <ul class="am-avg-sm-4 am-text-center" style="font-size: 16px; font-weight: 900;">
                    <li style="height: 180px"><a href="memberinfo.aspx">
                        <img src="../images/member/images/資料管理.png" class="fade" /><br />
                        <span>資料管理</span> </a></li>
                    <li><a href="memberorder.aspx">
                        <img src="../images/member/images/訂單管理.png" class="fade" /><br />
                        <span>訂單管理</span> </a></li>
                    <li><a href="memberborder.aspx">
                        <img src="../images/member/images/代購單管理.png" class="fade" /><br />
                        <span>代購單管理</span> </a></li>
                    <li><a href="membergold.aspx">
                        <img src="../images/member/images/購物金管理.png" class="fade" /><br />
                        <span>購物金管理</span> </a></li>
                    <li><a href="membercoupon.aspx">
                        <img src="../images/member/images/折扣卷管理.png" class="fade" /><br />
                        <span>折扣卷管理</span> </a></li>
                    <li><a href="membertrack.aspx">
                        <img src="../images/member/images/追蹤商品.png" class="fade" /><br />
                        <span>追蹤商品</span> </a></li>
                    <li><a href="membercommend.aspx">
                        <img src="../images/member/images/推薦紀錄.png" class="fade" /><br />
                        <span>推薦記錄</span> </a></li>
                    <li><a href="membercode.aspx">
                        <img src="../images/member/images/推薦連結.png" class="fade" /><br />
                        <span>推薦連結</span> </a></li>
                </ul>
            </div>
            <div class="am-g" style="margin: 10px 0px 10px 0px">
                <div class="am-u-sm-6">
                    <a href="calander.aspx">
                        <asp:Literal ID="lit_month1" runat="server"></asp:Literal></a>
                </div>
                <div class="am-u-sm-6">
                    <a href="calander.aspx">
                        <asp:Literal ID="lit_month2" runat="server"></asp:Literal></a>
                </div>
            </div>
        </div>
        <div class="am-u-sm-3">
            <asp:Literal ID="lit_AD_LIST" runat="server"></asp:Literal>
            <%--<img src="../images/member/images/b1.png" />
            <hr />
            <img src="../images/member/images/b2.png" />
            <hr />
            <img src="../images/member/images/b3.png" />
            <hr />--%>
        </div>
    </div>
</asp:Content>
