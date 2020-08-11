<%@ Control Language="C#" AutoEventWireup="true" CodeFile="blogright.ascx.cs" Inherits="user_control_blogright" %>




<!-- Hawooo Facebook (Start) -->
<div class="fb-page" data-href="https://www.facebook.com/hawooohawooo" data-tabs="timeline" data-width="" data-height="310" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
    <blockquote cite="https://www.facebook.com/hawooohawooo" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/hawooohawooo">Hawooo 好物飛行</a></blockquote>
</div>
<!-- Hawooo Facebook(End) -->
<div>
    <!-- Hot Articles (Start) -->
    <div class="my-3">
        <h6 class="p-2 mb-2 text-secondary border-bottom fs-2">Hot Articles</h6>
        <div>
            <ul class="fs--1 pl-3">

                <asp:Repeater ID="rp_hot_blog" runat="server">
                    <ItemTemplate>
                        <li class="hover-lighter">
                            <a href='<%# "blog_detail.aspx?id=" + Eval("ATCB01") %>' class="d-flex py-2 border-200" target="_blank">
                                <div class="w-50 mr-2">
                                    <img class="w-100" src='<%# "../images/atcimgs/" + Eval("ATCB17") %>' alt="" />
                                </div>
                                <div class="media-body">
                                    <h6 class="text-1000 mb-1"><%# Eval("ATCB03") %>
                                    </h3>
                                     <p class="text-600 text-overflow2"><%# Eval("ATCB18").ToString() %></p>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
    <!-- Hot Articles (End) -->

    <!-- Editor's Picks (Start) -->
    <div class="my-3">
        <h6 class="p-2 mb-2 text-secondary border-bottom fs-2">Editor's Picks</h6>
        <div>
            <ul class="fs--1 pl-3">

                <asp:Repeater ID="rp_pick_blog" runat="server">
                    <ItemTemplate>
                        <li class="hover-lighter">
                            <a href='<%# "blog_detail.aspx?id=" + Eval("ATCB01") %>' class="d-flex py-2 border-bottom border-200" target="_blank">
                                <div class="w-50 mr-2">
                                    <img class="w-100" src='<%# "../images/atcimgs/" + Eval("ATCB17") %>' alt="" />
                                </div>
                                <div class="media-body">
                                    <h6 class="text-1000 mb-1"><%# Eval("ATCB03") %>
                                    </h3>
                                     <p class="text-600 text-overflow2"><%# Eval("ATCB18").ToString() %></p>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>


            </ul>
        </div>
    </div>
    <!-- Editor's Picks (End) -->
</div>












