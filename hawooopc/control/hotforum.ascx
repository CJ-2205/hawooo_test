<%@ Control Language="C#" AutoEventWireup="true" CodeFile="hotforum.ascx.cs" Inherits="usercode_control_hotforum" %>
<div class="am-panel">
    <div style="padding-left: 10px; background: #ff888e; color: #ffffff; height: 30px; padding-top: 5px">
        <i class="am-icon-thumbs-o-up"></i>&nbsp; 熱門討論
    </div>
    <div class="am-g">
        <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
        <ul class="am-list am-list-static">
            <asp:Repeater ID="rp_hot_list" runat="server">
                <ItemTemplate>

                    <li><a style="display: inline; color: #6F6957" href='<%# "forumdetail.aspx?fid=" + Eval("FM01") %>'>&nbsp;<i class="am-icon-chevron-right"></i>&nbsp; <%# Eval("FM02") %>   </a></li>

                </ItemTemplate>
            </asp:Repeater>
        </ul>

    </div>
</div>
