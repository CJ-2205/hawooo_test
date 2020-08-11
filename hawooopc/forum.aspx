<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="forum.aspx.cs" Inherits="user_forum" %>

<%@ Register Src="~/user/control/hotforum.ascx" TagPrefix="uc1" TagName="hotforum" %>
<%@ Register Src="~/user/control/forumad.ascx" TagName="forumad" TagPrefix="forumad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../css-plus/cssmenu/script.js"></script>
    <link href="../css-plus/cssmenu/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .topic_table thead {
            font-size: 16px;
            background: #29ABB3;
            color: #ffffff;
        }

            .topic_table thead tr a {
                color: #ffffff;
            }

        .topic_table tbody tr td {
            vertical-align: middle;
            color: #6F6957;
        }

        .topic_table tbody tr a {
            color: #6F6957;
        }

        .hot_title {
            /*background-color:#29ABB3;*/
            color: #29ABB3;
        }
    </style>
    <div class="am-container" style="padding-top: 20px">

        <div class="am-u-md-9" style="padding-right: 0px">
            <style>
                .btn_class1 {
                    background-color: #ff6a00;
                    color: #ffffff;
                }

                    .btn_class1 a:hover {
                        color: #ffffff;
                    }
            </style>
            <div class="am-g">
                <div class="am-form-inline am-align-left" role="form">
                    <div class="am-form-group">
                        <input type="text" class="am-form-field" placeholder="標題關鍵字">
                    </div>
                    <button type="submit" class="am-btn am-btn-danger">Search</button>

                </div>
                <div class="am-align-right">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:LinkButton ID="lnk_news" runat="server" CssClass="btn btn-orange" OnClick="lnk_news_Click"><i class="am-icon-volume-down am-icon-md"></i>&nbsp; 發新討論</asp:LinkButton>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="lnk_news" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>

            </div>
            <div class="am-g">
                <div id='cssmenu'>
                    <ul>
                        <asp:Literal ID="lit_class" runat="server"></asp:Literal>

                    </ul>
                </div>
            </div>
            <table class="am-table topic_table">
                <thead>
                    <tr>
                        <th width="50%">主題
                        </th>
                        <th width="10%">討論數</th>
                        <th width="20%">發表時間</th>
                        <th width="20%">最新回應</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rp_list" runat="server">
                        <ItemTemplate>
                            <tr class="hot_title">
                                <td><a href='<%# "forumdetail.aspx?fid=" + Eval("FM01") %>'>
                                    <asp:Literal ID="lit_FM03" runat="server" Text='<%# Eval("FM02") %>'></asp:Literal></a></td>
                                <td>
                                    <asp:Literal ID="lit_RCOUNT" runat="server" Text='<%# Eval("RCOUNT") %>'></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="lit_FM06" runat="server" Text='<%# Convert.ToDateTime( Eval("FM06").ToString()).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                    <br />
                                    <asp:Literal ID="lit_A02" runat="server" Text='<%# Eval("A02") %>'></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("RFM06").ToString().Equals("無回覆") ? "無回覆" : Convert.ToDateTime( Eval("RFM06").ToString()).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                    <br />
                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("RA02") %>'></asp:Literal>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </tbody>
            </table>
            <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
            <hr />
            <ul class="am-pagination am-pagination-right">
                <asp:Literal ID="lit_page" runat="server"></asp:Literal>
                <%-- <li class="am-disabled"><a href="#">&laquo;</a></li>
                <li class="am-active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>--%>
            </ul>
        </div>
        <style>
          
        </style>
        <div class="am-u-md-3">
            <uc1:hotforum runat="server" ID="hotforum" />
            <forumad:forumad runat="server" ID="forumad" />
        </div>
    </div>
    <script>
        $(function () {
            $("#navMenu > li").eq(3).addClass('selected');
        });
    </script>
</asp:Content>


