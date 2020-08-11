<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="forumdetail.aspx.cs" Inherits="user_forumdetail" %>

<%@ Register Src="~/user/control/hotforum.ascx" TagPrefix="uc1" TagName="hotforum" %>
<%@ Register Src="~/user/control/forumad.ascx" TagPrefix="uc1" TagName="forumad" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <style>
            .forumimg {
                position: absolute;
                width: 100px;
                height: 100px;
                float: left;
                border: 1px solid #ececec;
                left: 15px;
                background-color: #fff;
            }

            .forumname {
                position: absolute;
                float: left;
                left: 120px;
                font-size: 16px;
                color: #29ABB3;
                font-weight: bold;
                padding-top: 10px;
            }

            .forumdate {
                position: absolute;
                float: left;
                left: 120px;
                font-size: 14px;
                color: #6F6957;
                padding-top: 40px;
            }

            .forumtextpanel {
                min-height: 200px;
            }

            .forumtext {
                padding: 25px 10px 20px 10px;
            }

            .forumedit {
                position: absolute;
                padding-top: 10px;
                right: 30px;
            }
        </style>
        <div class="am-u-md-9" style="padding-right: 0px">
            <div class="am-g" style="padding-bottom: 15px">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:LinkButton ID="lnk_news" runat="server" CssClass="btn btn-orange" OnClick="lnk_news_Click"><i class="am-icon-volume-down am-icon-md"></i>&nbsp; 發新討論</asp:LinkButton>
                        <asp:LinkButton ID="lnk_return" runat="server" CssClass="btn btn-blue" OnClick="lnk_return_Click"><i class="am-icon-mail-forward am-icon-md"></i>&nbsp; 回應討論</asp:LinkButton>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="lnk_news" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="lnk_return" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>

            </div>
            <div class="am-g" style="height: 60px">
                <div class="am-panel" style="min-height: 50px;">

                    <o style="font-size: 20px; vertical-align: middle; padding-left: 10px; padding-top: 20px;">
                        <a href="forum.aspx"><i class="am-icon-backward"></i></a>&nbsp;主題: 
                        <asp:Literal ID="mFM02" runat="server"></asp:Literal>
                    </o>
                </div>
            </div>

            <div class="am-g">
                <div class="am-panel">
                    <asp:Panel ID="mpanel" runat="server">
                        <div>
                            <div style="height: 80px; background-color: #EEEEEF;" class="boxshadow">
                                <div class="forumimg ">
                                    <asp:Image ID="mA18" runat="server" Width="100" />
                                    <asp:HiddenField ID="A01" runat="server" />
                                    <asp:HiddenField ID="mFM01" runat="server" />
                                </div>
                                <div class="forumname">
                                    <asp:Literal ID="mA02" runat="server"></asp:Literal>
                                </div>
                                <div class="forumdate">
                                    <asp:Literal ID="mFM06" runat="server"></asp:Literal>
                                </div>
                                <div class="forumedit">
                                    <asp:LinkButton ID="lnk_edit" runat="server" OnClick="lnk_edit_Click">[編輯]</asp:LinkButton>
                                    <%--<asp:LinkButton ID="lnk_del" runat="server" OnClientClick="if (!confirm('是否確認刪除?')) return false;">[刪除]</asp:LinkButton>--%>
                                </div>
                            </div>
                            <div class="forumtextpanel boxshadow">
                                <div class="forumtext ">
                                    <asp:Literal ID="mFM03" runat="server"></asp:Literal>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>

                    <asp:UpdatePanel ID="up_forum_list" runat="server">
                        <ContentTemplate>
                            <asp:Repeater ID="rp_list" runat="server" OnItemDataBound="rp_list_ItemDataBound">
                                <ItemTemplate>
                                    <div>
                                        <div style="height: 80px; background-color: #EEEEEF;" class="boxshadow">
                                            <div class="forumimg">
                                                <asp:HiddenField ID="cFM01" runat="server" Value='<%# Eval("FM01") %>' />
                                                <asp:HiddenField ID="cA01" runat="server" Value='<%# Eval("A01") %>' />
                                                <asp:Image ID="cA18" runat="server" Width="100" ImageUrl='<%# Eval("A18") %>' />
                                            </div>
                                            <div class="forumname">
                                                <asp:Literal ID="cA02" runat="server" Text='<%# Server.HtmlDecode(Eval("A02").ToString()) %>'></asp:Literal>
                                            </div>
                                            <div class="forumdate">
                                                <asp:Literal ID="cFM06" runat="server" Text='<%# Convert.ToDateTime(Eval("FM06").ToString()).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                            </div>
                                            <div class="forumedit">
                                                <asp:LinkButton ID="lnk_edit" runat="server" OnClick="lnk_edit_Click1">[編輯]</asp:LinkButton>
                                                <%--<asp:LinkButton ID="lnk_del" runat="server" OnClientClick="if (!confirm('是否確認刪除?')) return false;">[刪除]</asp:LinkButton>--%>
                                            </div>
                                        </div>
                                        <div class="forumtextpanel boxshadow">
                                            <div class="forumtext">
                                                <asp:Literal ID="cFM03" runat="server" Text='<%# Server.HtmlDecode(Eval("FM03").ToString()) %>'></asp:Literal>
                                            </div>
                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>
            <ul class="am-pagination am-pagination-centered">
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
            <uc1:forumad runat="server" ID="forumad" />
        </div>
    </div>
    <script>
        $(function () {

            $("#navMenu > li").eq(3).addClass('selected');
        });
    </script>
</asp:Content>

