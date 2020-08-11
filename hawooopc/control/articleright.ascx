<%@ Control Language="C#" AutoEventWireup="true" CodeFile="articleright.ascx.cs" Inherits="user_control_articleright" %>
<div class="am-g">
    <div class="am-u-sm-12">
       
            <asp:Literal ID="lit_AD_A02" runat="server"></asp:Literal>
           <%-- <a href="http://www.hawooo.com/user/20160218.aspx"> <img src="../images/events/20160217/S3.png" /></a>--%>
        <div class="articleList">
            <a href="###" class="">
                <h2>文章分類</h2>
            </a>
            <ul class="am-list admin-sidebar-list" id="collapase-nav-1">
                <asp:Literal ID="lit_class" runat="server" ViewStateMode="Disabled"></asp:Literal>

            </ul>
        </div>
        <div data-am-widget="list_news" class="am-list-news am-list-news-default">
            <!--列表标题-->
            <div class="am-list-news-hd am-cf">
                <!--带更多链接-->
                <a href="###" class="">
                    <h2>熱門文章</h2>
                    <%-- <span class="am-list-news-more am-fr">更多 &raquo;</span>--%>
                </a>
            </div>
            <div class="am-list-news-bd">
                <ul class="am-list">
                    <!--缩图在标题左边-->
                    <asp:Repeater ID="rp_hot_article" runat="server">
                        <ItemTemplate>
                            <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
                                <a href='<%# "articledetail.aspx?id=" + Eval("ATCB01") %>' class="">
                                    <div class="am-u-sm-4 am-list-thumb">
                                        <img class="articleImg" src='<%# "../images/atcimgs/" + Eval("ATCB17") %>' alt="" />
                                    </div>
                                    <div class=" am-u-sm-8 am-list-main">
                                        <h3 class="am-list-item-hd"><%# Eval("ATCB03") %></h3>
                                        <div class="am-list-item-text"><%# Eval("ATCB18").ToString() %></div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                    <%--  <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
                        <div class="am-u-sm-4 am-list-thumb">
                            <a href="">
                                <img class="articleImg" src="http://farm4.static.flickr.com/3842/15060265448_b52c129756_c.jpg" alt="" />
                            </a>
                        </div>
                        <div class=" am-u-sm-8 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11614662/" class="">Coffee Brings The Taste</a></h3>
                            <div class="am-list-item-text">木酢達人/木酢原液、酚多精除臭抗菌液、木酢丸</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
                        <div class="am-u-sm-4 am-list-thumb">
                            <a href="">
                                <img class="articleImg" src="http://farm4.static.flickr.com/3842/15060265448_b52c129756_c.jpg" alt="" />
                            </a>
                        </div>
                        <div class=" am-u-sm-8 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11614662/" class="">Coffee Brings The Taste</a></h3>
                            <div class="am-list-item-text">木酢達人/木酢原液、酚多精除臭抗菌液、木酢丸</div>
                        </div>
                    </li>--%>
                </ul>
            </div>
        </div>
    </div>
</div>
