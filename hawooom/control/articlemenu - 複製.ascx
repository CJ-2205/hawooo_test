<%@ Control Language="C#" AutoEventWireup="true" CodeFile="articlemenu.ascx.cs" Inherits="mobile_control_articlemenu" %>
<nav data-am-widget="menu" class="am-menu  am-menu-dropdown1" data-am-menu-collapse>
    <a href="#" data-am-offcanvas="{target: '#menu'}" class="am-menu-toggle">
        <span class="am-menu-toggle-title">文章分類</span>
        <i class="am-menu-toggle-icon am-icon-reorder"></i>
    </a>
    <div id="menu" class="am-offcanvas">
        <div class="am-offcanvas-bar am-offcanvas-bar-flip">
            <div class="am-offcanvas-content">
                <ul class="am-menu-nav">
                    <li><a style="background-color: #FF8E95; color: #ffffff">文章分類</a> </li>
                    <asp:Literal ID="lit_class" runat="server" ViewStateMode="Disabled"></asp:Literal>

                    <li class="am-parent"><a href="#" class="">心得分享</a> </li>
                    <li><a style="background-color: #00D3E0; color: #ffffff">熱門文章</a> </li>
                    <asp:Literal ID="lit_hot_article" runat="server" ViewStateMode="Disabled"></asp:Literal>
                    <%--<li class="am-parent"><a href="##" class=""></a></li>--%>
                </ul>
            </div>
        </div>
    </div>
</nav>
