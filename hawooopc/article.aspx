<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="article.aspx.cs" Inherits="user_article" %>

<%@ Register Src="~/user/control/articleright.ascx" TagPrefix="uc1" TagName="articleright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/article.css" rel="stylesheet" />
    <script src="../jquery-plus/masonry-docs/js/masonry-docs.min.js"></script>
    <script>
        $(function () {
            $('#grid').imagesLoaded(function () {
                $('#grid').masonry({
                    itemSelector: '.grid-item',
                    columnWidth: 420,
                    singleMode: false,
                    animate: true
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g " style="margin: 10px 0 20px 0">
            <div class="am-u-sm-9">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-12">
                        <div class="am-slider am-slider-default" data-am-flexslider id="demo-slider-0">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_ad_list" runat="server" ViewStateMode="Disabled">
                                    <ItemTemplate>
                                        <li><a href='<%# Eval("F04") %>'>
                                            <img src='<%# "../images/adimgs/" + Eval("F14") %>' class="am-img-thumbnail" /></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="am-u-sm-12">
                        <div id="grid" style="width: 858px;">
                            <asp:Repeater ID="rp_List" runat="server" ViewStateMode="Disabled">
                                <ItemTemplate>
                                    <div class="grid-item">
                                        <a href='<%# "articledetail.aspx?id=" + Eval("ATCB01") %>'>
                                            <div class="am-thumbnail" style="padding: 0;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/anoimg.png" data-src='<%# "../images/atcimgs/" + Eval("ATCB17") %>'
                                                    class="lazyload am-img-responsive" />
                                                <div class="am-thumbnail-caption" style="padding: 20px;">
                                                    <h3 style="margin-bottom: 10px;">
                                                        <asp:Literal ID="lit_ATCB03" runat="server" Text='<%# Eval("ATCB03") %>'></asp:Literal></h3>
                                                    <p>
                                                        <asp:Literal ID="lit_ATCB18" runat="server" Text='<%# Eval("ATCB18") %>'></asp:Literal>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <div>
                    <asp:Literal ID="lit_no_msg" runat="server"></asp:Literal>
                </div>
                <ul class="am-pagination am-pagination-centered">
                    <asp:Literal ID="lit_page" runat="server"></asp:Literal>
                </ul>
            </div>
            <div class="am-u-sm-3" style="margin: 0; padding: 15px; background-color: #fff; box-sizing: border-box;">
                <uc1:articleright runat="server" ID="articleright" />
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#navMenu > li").eq(3).addClass('selected');
        });
    </script>
</asp:Content>
