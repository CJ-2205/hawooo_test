<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="webevent.aspx.cs" Inherits="mobile_webevent" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- 最新商品 star -->
   
  
    <section class="am-container" id="pnews" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="am-u-sm-12 index-section-wrapper hot-sale">
                    <div class="index-section-title">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_event_msg" runat="server"></asp:Literal>
                    </div>
                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="rp_product_list" runat="server">
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
                            <div style="margin-left: auto; margin-right: auto; width: 100%; text-align: center">
                                <img src="ajax-loader.gif" alt="wait image" />
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>

                    <asp:LinkButton ID="lnk_more" runat="server" CssClass="index-seemore" ><i class="am-icon-heart-o"></i>更多商品</asp:LinkButton>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>
    <!-- 最新商品 end -->
</asp:Content>

