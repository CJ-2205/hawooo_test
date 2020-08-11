<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="memberforuminfo.aspx.cs" Inherits="usercode_memberforuminfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%@ Register Src="~/user/control/memberclass.ascx" TagPrefix="uc1" TagName="memberclass" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">

            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-gift"></i>&nbsp;討論區紀錄 - Forum Record </legend>
                <table class="am-table am-table-striped am-table-hover table-main" style="font-size: 16px; padding: 10px">
                    <thead>
                        <tr>
                            <th>主題</th>
                            <th>討論數</th>
                            <th>發表時間</th>
                            <th>作者</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_list" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a href='<%# "forumdetail.aspx?fid=" + Eval("FM01") %>'>
                                            <asp:Literal ID="lit_FM03" runat="server" Text='<%# Eval("FM02") %>'></asp:Literal></a>
                                    </td>
                                    <td>

                                       <asp:Literal ID="lit_RCOUNT" runat="server" Text='<%# Eval("RCOUNT") %>'></asp:Literal>

                                    </td>
                                    <td>
                                          <asp:Literal ID="lit_FM06" runat="server" Text='<%# Convert.ToDateTime( Eval("FM06").ToString()).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_A02" runat="server" Text='<%# Eval("A02") %>'></asp:Literal>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" style="text-align: left">餘額：
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
            $("#mc03").addClass("select");
        })
    </script>
</asp:Content>

