<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="recommend.aspx.cs" Inherits="user_recommand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../jquery-plus/masonry-docs/css/masonry-docs.css" rel="stylesheet" />
    <script src="../jquery-plus/masonry-docs/js/masonry-docs.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <!--上方廣告與詢問購買BAR開始-->
        <div class="am-g" style="padding-top: 15px;">

            <div class="am-u-sm-12">
                <div class="am-panel am-panel-default">
                    <p style="padding: 10px; background-color: #ff888e; color: #ffffff">您想買什麼，HaWooo幫您買，輸入台灣商品網址，我們幫您談到好價格。</p>
                    <asp:UpdatePanel ID="UP_SEND" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <table style="width: 100%; margin-bottom: 20px; margin-top: 20px">
                                <tr>
                                    <td style="padding-left: 20px">
                                        <asp:TextBox ID="txt_I03" runat="server" Width="100%" CssClass="am-form-field" placeholder="輸入台灣商品網址，我們幫你談到好價格，並且平價輸入給您"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btn_send" runat="server" Text="SEND" CssClass="btn btn-orange" OnClick="btn_send_Click" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger EventName="Click" ControlID="btn_send" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <!--上方廣告與詢問購買BAR結束-->
        <style>
            .featured_like_class {
                margin: 8px;
                font-size: 12px;
                color: #999;
            }

            .user-share-text {
                margin-top: 5px;
                background-color: #F6F6F6;
                border-top: 1px solid #E9E9E9;
                border-bottom: 1px solid #E9E9E9;
                padding: 3px;
            }

            .user-share-info {
                background-color: #F6F6F6;
                padding: 5px;
            }

            .user-share-info-text {
                padding: 0px;
                margin: 0px;
                font-size: 13px;
                vertical-align: middle;
                padding-top: 10px;
            }
        </style>


        <div class="am-g" style="padding-bottom: 5px">
            <div id="hero" style="margin: 0 auto">

                <asp:Repeater ID="rp_recommend_list" runat="server">
                    <ItemTemplate>
                        <div class="hero-item" style="width: 270px;">
                            <div class="am-panel am-panel-default pitem">
                                <div class="product_brand_bar">
                                    &nbsp;<img src='<%# Eval("B23") %>' class="am-img-thumbnail" />
                                    <span class="am-align-right featured_like_class">
                                        <i class="am-icon-heart-o"></i>
                                        <asp:Literal ID="lit_like_count" runat="server" Text='<%# Eval("PLIKE") %>'></asp:Literal>
                                    </span>
                                </div>
                                <div class="imgContain">
                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="#">
                                            <asp:Literal ID="lit_productname" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a>
                                    </div>
                                    <div class="user-share-text">
                                        <asp:Literal ID="lit_recommend_content" runat="server" Text='<%# Eval("AC04") %>'></asp:Literal>
                                    </div>
                                    <div class="user-share-info">
                                        <div class="am-g">
                                            <div class="am-u-sm-3">
                                                <img src='<%# Eval("A18") %>' alt="" class="am-circle am-img-responsive" width="40" />
                                            </div>
                                            <div class="am-u-sm-9 user-share-info-text">
                                                <asp:Literal ID="lit_account" runat="server" Text='<%# Eval("A02") %>'></asp:Literal>&nbsp;&nbsp;
                                                <asp:Literal ID="lit_time" runat="server" Text='<%# Convert.ToDateTime(Eval("AC02").ToString()).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <%--<div class="am-g" style="padding-bottom: 10px">
            <ul class="am-pagination am-pagination-centered">
                <li class="am-disabled"><a href="#">&laquo;</a></li>
                <li class="am-active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>--%>
        <!--瀑布JS-->
        <script>
            $(function () {
                var $hero = $('#hero');
                // initialize
                $hero.imagesLoaded(function () {
                    $hero.masonry({
                        itemSelector: '.hero-item',
                        animate: true
                    });
                })

            });
        </script>
        <script>
            $(function () {
                $("#navMenu > li").eq(2).addClass('selected');
            });
        </script>
    </div>
</asp:Content>

