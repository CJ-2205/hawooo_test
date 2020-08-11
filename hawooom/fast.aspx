<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="fast.aspx.cs" Inherits="mobile_fast" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="page-main">
            <div class="am-g">
                <div class="page-menu-Box" data-am-sticky="{top:122}">
                    <style>
                        .pagelink a {
                            color: #fd6b73;
                        }
                    </style>
                    <p class="pagelink">
                        <a href="fast.aspx">跨國快送</a> >
                        <asp:Literal ID="lit_class_name" runat="server"></asp:Literal>
                    </p>
                    <nav data-am-widget="menu" class="am-menu  am-menu-dropdown1" data-am-menu-collapse>
                        <a href="#" data-am-offcanvas="{target: '#menu'}" class="am-menu-toggle">
                            <span class="am-menu-toggle-title">選擇類別</span>
                            <i class="am-menu-toggle-icon am-icon-reorder"></i>
                        </a>
                        <div id="menu" class="am-offcanvas">
                            <div class="am-offcanvas-bar am-offcanvas-bar-flip">
                                <div class="am-offcanvas-content">
                                    <ul class="am-menu-nav">
                                        <li>
                                            <a style="background-color: #FF8E95; color: #ffffff">精選分類</a>
                                        </li>
                                        <asp:Literal ID="lit_Hawooo_Class" runat="server"></asp:Literal>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </nav>

                </div>

            </div>
            <div class="am-panel" id="my-scrollspy" style="margin-top: 5px; margin-bottom: 5px">
                <%--<img src="../images/message/fastmsg.png" class="am-img-responsive" />--%>
                <img src="images/top/top1.png" class="am-img-responsive" style="width: 100%" />
            </div>
            <script>
                $(function () {
                    //openScrollSpy();
                    //setTimeout(closeScrollSpy, 10000);
                });
                function openScrollSpy() {
                    $('#my-scrollspy').scrollspy({
                        animation: 'slide-left',
                        delay: 500,
                        repeat: false
                    })
                }
                function closeScrollSpy() {
                    $('#my-scrollspy').hide(500);
                }
            </script>
            <div class="am-g">
                <asp:Literal ID="lit_event_img" runat="server"></asp:Literal>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <ul class="index-hotBox" id="plist">
                            <asp:Repeater ID="p_list" runat="server" EnableViewState="false">
                                <ItemTemplate>

                                    <li><a href='<%# "product.aspx?id=" + Eval("WP01") %>' style="display: block; height: 160px">
                                        <div>
                                            <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<div class=\"ptag\">" + Eval("WP30").ToString()　+ "</div>" : "" %>'></asp:Literal>
                                            <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("WP08_1").ToString() %>'
                                                style="height: 160px; width: 160px" />
                                            <div class="productInfor">
                                                <p class="hotTitle">

                                                    <%# Eval("WP02").ToString().Length > 30 ? Eval("WP02").ToString().Substring(0,30) +"..." : Eval("WP02").ToString() %>
                                                </p>
                                                <p class="hotText">
                                                    <%# Eval("WP24").ToString() %>
                                                    <img src="../images/icon/ficon.png" style="width: 60px" />
                                                </p>
                                                <p class="hotLeft">
                                                    <span class="hotPrcieS">
                                                        <%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())) %></span>
                                                    <span class="hotPrcieB">RM
                                                        <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                </p>
                                            </div>
                                        </div>
                                    </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <asp:Literal ID="lit_message" runat="server"></asp:Literal>
                        <div style="text-align: center; margin-bottom: 10px">
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
                                <ProgressTemplate>
                                    <div style="padding-top: 20px; padding-bottom: 20px">
                                        <img src="ajax-loader.gif" alt="wait image" />
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:LinkButton ID="lnk_more" runat="server" OnClick="lnk_more_Click"><span style="color: #ffffff; background-color: #FF8E95; padding: 5px 10px 5px 10px;">Load more</span></asp:LinkButton>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>

