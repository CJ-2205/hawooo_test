<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="shop22.aspx.cs" Inherits="mobile_shop22" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 最新商品 star -->
    <section>
        <ul class="am-breadcrumb" style="padding-bottom: 0px; padding-left: 10px; font-size: 14px; margin-bottom: 0px">
            <asp:literal id="lit_class" runat="server"></asp:literal>
            <%--<li><a href="#" class="productpage-uptitle">線上購物</a></li>
            <li class="am-active">Supplement</li>--%>
        </ul>
    </section>

    <section class="am-container" id="pnews">
        <asp:updatepanel id="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="am-u-sm-12 index-section-wrapper hot-sale">
                    <div class="index-section-title">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_class_name" runat="server"></asp:Literal>
                    </div>
                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="p_list" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <div class="index-items-pic">
                                        <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                            <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<span class=\"index-items-tag\" id=\"tag-chinese\">" + Eval("WP30").ToString() + "</span>" : "" %>'></asp:Literal>
                                            <img src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                        </a>
                                    </div>
                                    <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                        <div class="index-items-text">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                            <h4>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                            <%# WPFactory.DisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString())%>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
                        <ProgressTemplate>
                            <div style="margin: 10px auto 10px auto; width: 100%; text-align: center">
                                <img src="ajax-loader.gif" alt="wait image" />&nbsp;Loading...
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:HiddenField ID="hf_more" runat="server" />
                    <asp:LinkButton ID="lnk_more" runat="server" CssClass="index-seemore" OnClick="lnk_more_Click" Style="display: none"></asp:LinkButton>

                </div>
            </ContentTemplate>
        </asp:updatepanel>
    </section>

    <!-- 最新商品 end -->
    <script>
        var EventState = true;
        $(window).scroll(function () {
            var _height = $(window).height();
            var _scrollHeight = $(window).scrollTop() + 480;
            var _panelHeight = $("#pnews").height();
            if (_scrollHeight > _panelHeight) {
                //alert(_scrollHeight + "," + _panelHeight);
                if (EventState == true) {
                    MoveEventHandle();
                }
                EventState = false;
            }
            else if (_panelHeight > _scrollHeight) {
                EventState = true;
            }
        });
        function MoveEventHandle() {
            document.getElementById('<%= lnk_more.ClientID %>').click();
        }
    </script>
</asp:Content>

