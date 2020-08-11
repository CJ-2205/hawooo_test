<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="articledetail.aspx.cs" Inherits="mobile_articledetail" %>

<%@ Register Src="~/mobile/control/articlemenu.ascx" TagPrefix="uc1" TagName="articlemenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/article.css">
    <link href="assets/css/brand.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc1:articlemenu runat="server" ID="articlemenu" />
    <div class="am-g">
        <div class="am-u-sm-12 am-u-sm-centered" style="width: 100%">
            <article class="am-article" style="padding-top: 10px; width: 100%; background-color: #fff;">
                <div class="am-article-hd" style="text-align: left;">
                    <h1 class="am-article-title" style="font-size: 20px;">
                        <asp:Literal ID="lit_ATCB03" runat="server"></asp:Literal>
                    </h1>
                    <p class="am-article-meta" style="margin: 10px 0 10px 10px;">發佈日期：<asp:Literal ID="lit_ATCB12" runat="server"></asp:Literal></p>
                </div>
                <div class="am-article-bd am-u-sm-center" style="padding: 0px">
                    <asp:Literal ID="lit_ATCB04" runat="server"></asp:Literal>
                </div>
            </article>
            <div class="am-g">
                <div class="am-u-sm-12 am-u-sm-centered">
                    <ul class="shareBox am-u-sm-centered">
                        <p style="font-size: 13px; color: #666;">《分享此篇文章》</p>
                        <li class="am-u-sm-3 facebook_share">
                            <a href="http://www.facebook.com/sharer.php?u=<%= Page.Request.Url.OriginalString.ToString() %>" onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;" rel="nofollow" target="_blank">
                                <i class="fa fa-facebook"></i>
                                <span>Facebook</span>
                            </a>

                        </li>
                        <li class="twitter_share">
                            <a href="http://twitter.com/share?url=<%= Page.Request.Url.OriginalString.ToString() %>" onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;" rel="nofollow" target="_blank">
                                <i class="fa fa-twitter"></i>
                                <span>Twitter</span>
                            </a>
                        </li>
                        <li class="google_share">
                            <a href="https://plus.google.com/share?url=<%= Page.Request.Url.OriginalString.ToString() %>" onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;" rel="nofollow" target="_blank"><i class="fa fa-google-plus"></i><span>Google+</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="am-g">
                <div class="am-u-sm-12 am-u-sm-centered">
                    <ul class="am-pagination" style="padding: 10px;">
                        <asp:Literal ID="lit_pre" runat="server"></asp:Literal>
                        <asp:Literal ID="lit_nxt" runat="server"></asp:Literal>
                    </ul>
                </div>
            </div>
            <div class="am-g">
                <div class="am-u-sm-12 am-u-sm-centered">
                    <div data-am-widget="list_news" class="am-list-news am-list-news-default">
                        <!--列表标题-->
                        <div class="am-list-news-hd am-cf">
                            <!--带更多链接-->

                            <h2>相關文章</h2>

                        </div>
                        <div class="am-list-news-bd">
                            <ul class="am-list">
                                <asp:Repeater ID="rp_same_article" runat="server">
                                    <ItemTemplate>
                                        <li class="am-g">
                                            <a href='<%# "articledetail.aspx?id=" + Eval("ATCB01") %>' class="am-list-item-hd" style="font-size: 13px;"><%# Eval("ATCB03") %></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div>
                            <asp:Literal ID="lit_no_same" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

