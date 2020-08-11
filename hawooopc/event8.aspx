<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="event8.aspx.cs" Inherits="user_event8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div style="padding: 20px 0px 50px 0px; width: 1180px; font-size: 0;">
            <ul style="padding: 0; width: 1180px; list-style-type: none; margin:0px">
                <li>
                    <img src="../images/events/event8/images/xmas_1.png" width="1180" /></li>
                <li>
                    <img src="../images/events/event8/images/xmas_2.png" width="1180" /></li>
            </ul>
            <div style="float: left; margin: 0; padding: 0; width: 1180px; background: url(../images/events/event8/images/xmas_bg.png) no-repeat; font-size: 0;">
                <ul style="margin: 27px 0 91px 21px; padding: 0; list-style-type: none;">
                    <asp:Repeater ID="pLiist" runat="server" OnItemDataBound="pLiist_ItemDataBound">
                        <ItemTemplate>
                            <asp:Panel ID="p1" runat="server" Visible="false">
                                <li style="float: left; display: block; margin: 0 11px 22px 0; width: 217px; height: 377px; border: 1px #ceccd0 solid;">
                                    <img src="../images/events/event8/images/lock.png" style="margin: 0 8px 0 9px; padding: 0; width: 215px; height: 375px;" />
                                </li>
                            </asp:Panel>
                            <asp:Panel ID="p2" runat="server" Visible="false">
                                <li style="float: left; display: block; margin: 0 11px 22px 0; width: 217px; height: 377px; background: url(../images/events/event8/images/<%# Eval("color") %>) no-repeat;">
                                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=<%# Eval("id") %>" style="color: #000000; text-decoration: none;">
                                        <p style="margin: 0 0 9px 0; padding: 0; width: 217px; height: 35px; line-height: 35px; text-align: center; font-size: 18px; color: #fff;">
                                            <asp:Literal ID="lit_day" runat="server" Text='<%# Eval("day") %>'></asp:Literal>
                                        </p>
                                        <img src="http://www.hawooo.com/images/webimgs/<%# Eval("img") %>" style="margin: 0 8px 0 9px; padding: 0; width: 200px; height: 200px;" />
                                        <p style="margin: 10px 5px 0 5px; padding: 0; font-size: 13px; width: 207px; height: 43px; color: #fff; line-height: 15px; text-align: center;"><%# Eval("info") %></p>
                                        <p style="margin: 0 8px 0 9px; padding: 5px; font-size: 15px; line-height: 20px; text-align: center;"><%# Eval("name") %></p>
                                    </a>
                                </li>
                            </asp:Panel>

                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>
    </div>

</asp:Content>

