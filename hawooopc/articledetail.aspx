<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="articledetail.aspx.cs" Inherits="user_articledetail" %>

<%@ Register Src="~/user/control/articleright.ascx" TagPrefix="uc1" TagName="articleright" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta property="og:url" content="<%= Page.Request.Url.OriginalString.ToString() %>" />
    <meta property="og:image" content="http://test.hawoo.com/user/images/V2/logo2.svg">
    <meta property="og:type" content="website">
    <meta property="og:description" content="<%=hfATCB18.Value %>">
    <link href="css/article.css" rel="stylesheet" />
    <script src="../jquery-plus/masonry-docs/js/masonry-docs.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hfATCB18" runat="server" />
    <asp:HiddenField ID="hfATCB15" runat="server" />

    <div id="main">
        <div class="am-container">
            <div class="am-g am-g-collapse" style="margin: 10px 0 20px 0; background-color: #FFFFFF">
                <div class="am-u-sm-9" style="padding: 15px;">
                    <div class="am-g" style="margin: 20px 0 20px 0; text-align: center;">
                        <div class="am-u-sm-12 am-u-sm-centered">
                            <article class="am-article am-u-sm-11 am-u-md-8 am-u-sm-centered" style="padding: 20px; width: 100%; background-color: #fff;">
                                <div class="am-article-hd" style="text-align: left;">
                                    <h1 class="am-article-title">
                                        <asp:Literal ID="lit_ATCB03" runat="server"></asp:Literal>
                                    </h1>
                                    <p class="am-article-meta" style="margin: 10px 0 10px 10px;">
                                        <asp:Literal ID="lit_ATCB12" runat="server"></asp:Literal>
                                    </p>
                                </div>
                                <div class="am-article-bd am-u-sm-12 am-u-sm-center">
                                    <asp:Literal ID="lit_ATCB04" runat="server"></asp:Literal>
                                </div>
                            </article>
                        </div>
                        <div class="am-g" style="margin: 20px 0 0 10px;">
                            <div class="am-u-sm-12 am-u-sm-centered">
                                <p style="text-align: left; color: #959595;">分享此篇文章</p>
                                <ul class="shareBox am-u-sm-centered">
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
                                <ul class="am-pagination" style="margin-top: 20px; padding: 10px;">
                                    <asp:Literal ID="lit_pre" runat="server"></asp:Literal>
                                    <asp:Literal ID="lit_nxt" runat="server"></asp:Literal>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
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

                    <div data-am-widget="gotop" class="am-gotop am-gotop-default">
                        <a href="#top" title="回到頁首">
                            <span class="am-gotop-title">TOP</span>
                            <i class="am-gotop-icon am-icon-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="am-u-sm-3" style="margin: 0; padding: 15px; background-color: #fff; box-sizing: border-box;">
                    <uc1:articleright runat="server" ID="articleright" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

