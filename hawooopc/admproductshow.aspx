<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="admproductshow.aspx.cs" Inherits="user_admproductshow" %>
<%@ Register Src="~/user/control/shopclass.ascx" TagPrefix="uc1" TagName="shopclass" %>
<%@ Register Src="~/user/control/shoprecommed.ascx" TagPrefix="uc1" TagName="shoprecommed" %>
<%@ Register Src="~/user/control/recommend_product.ascx" TagPrefix="uc1" TagName="recommend_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
        .am-tabs-default .am-tabs-nav > .am-active a {
            color: #5F5F5F;
            background-color: #FFF;
        }

        .am-btn-default {
            background-color: #FFF;
        }
    </style>
    <link href="css/article.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="am-container" style="padding-bottom: 10px">

        <div class="am-g" style="padding-top: 10px">
            <!--類別列表開始-->

            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

            <%--<div class="am-panel boxshadow">
                    <uc1:shoprecommed runat="server" ID="shoprecommed" />
                </div>--%>
            <!--類別列表結束-->
            <div class="am-u-md-10" style="padding-bottom: 20px; background-color: #ffffff; padding: 5px;">

                <div class="am-panel product_list_title boxshadow">
                    <div class="am-u-md-9">
                        <ol class="am-breadcrumb">
                            <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                        </ol>
                    </div>
                </div>


                <div class="am-u-md-6">
                    <div class="am-u-md-12">
                        <asp:HiddenField ID="hf_WP08_1" runat="server" EnableViewState="false" />
                        <asp:Image ID="mimg" runat="server" CssClass="am-img-responsive" Width="400" ClientIDMode="Static" />
                        <%-- <img id="mimg" src="../coimage/product/p10.jpg" class="am-img-responsive" width="400" />--%>
                    </div>
                    <div class="am-u-md-12">
                        <ul id="img_list" class="am-avg-md-5 am-avg-sm-5 am-gallery-bordered product">
                            <asp:Literal ID="lit_img_group" runat="server"></asp:Literal>

                        </ul>
                    </div>
                    <!--圖片切換-->
                    <script>
                        $(function () {
                            $("#img_list li").each(function () {
                                $(this).click(function () {
                                    $("#mimg").attr("src", $(this).find('img').attr("src"));
                                })
                            });
                        })
                    </script>


                    <div class="am-u-md-12">
                        <asp:Repeater ID="rp_gift_event" runat="server">
                            <HeaderTemplate>
                                <div class="premiumsTitle">
                                    <p><span style="font-size: 16px; font-weight: bold;">滿額贈品如下：</span></p>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="premiumsBox" style="height: auto;">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                                <img src='<%# "../images/giftimgs/" + Eval("GP10") %>' style="height: 80px; width: 80px;">
                                            </td>
                                            <td>
                                                <p style="padding-top: 10px;">活動名稱：<a href="shop.aspx?gid=<%# Eval("GE01") %>"><asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal></a></p>
                                                <p>贈品：<asp:Literal ID="lit_GP02" runat="server" Text='<%# Eval("GP02") %>'></asp:Literal></p>
                                                <p>
                                                    滿額：<span style="color: #ff0000">RM<asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal></span>
                                                    <asp:Literal ID="lit_non_price" runat="server"></asp:Literal>
                                                </p>
                                                <p style="line-height: 20px; color: #5F5F5F; padding-bottom: 20px">活動說明：<asp:Literal ID="lit_GE11" runat="server" Text='<%# Eval("GE11") %>'></asp:Literal></p>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>


                <div class="am-u-md-6" style="padding: 0px 5px 15px 5px">
                    <asp:HiddenField ID="hf_WP01" runat="server" EnableViewState="false" />
                    <asp:HiddenField ID="hf_WP06" runat="server" EnableViewState="false" />
                    <asp:HiddenField ID="hf_WP28" runat="server" EnableViewState="false" />
                    <asp:HiddenField ID="hf_WP29" runat="server" EnableViewState="false" />
                    <div class="detail_title" style="color: #636363; padding-left: 10px; font-size: 20px; font-weight: 800">
                        <asp:Literal ID="lit_WP02" runat="server"></asp:Literal>
                    </div>
                    <div style="padding: 10px">
                        <asp:Literal ID="lit_WP21" runat="server"></asp:Literal>
                    </div>
                    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
                    <asp:UpdatePanel ID="up_type" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="detail_from_info">
                                <table style="color: #7c7c7c; font-size: 18px; color: #737373">
                                    <tr>
                                        <td>規格：
                                        </td>
                                        <td>
                                            <asp:HiddenField ID="hf_WPA04" runat="server" />
                                            <asp:DropDownList ID="ddl_WPA02" runat="server" Width="250px" Height="30px" AutoPostBack="true" OnSelectedIndexChanged="ddl_WPA02_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="padding-left: 15px">數量：
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddl_D10" runat="server" Width="70px" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                            <div class="detail_from_info" style="font-size: 14px; color: #ff0000">
                                <asp:Literal ID="lit_booking_info" runat="server"></asp:Literal>
                            </div>
                            <hr data-am-widget="divider" class="am-divider am-divider-default" />
                            <div class="detail_price" style="height: 30px">
                                <span class="am-u-sm-12">售價：<span style="font-size: 28px"> RM 
                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></span>
                                    <span style="text-decoration: line-through; color: #808080">
                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span><span style="color: #808080"></span>
                                </span>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddl_WPA02" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="UpOperating" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="detail_button" style="margin-top: 10px; margin-bottom: 20px">
                                <hr data-am-widget="divider" class="am-divider am-divider-default" />
                                <br />
                                <asp:LinkButton ID="lnk_buy_now" runat="server" CssClass="btn btn-red" Style="font-size: 18px; font-weight: 500; width: 180px"><i class="am-icon-bolt"></i>&nbsp;立即購買</asp:LinkButton>
                                <asp:LinkButton ID="lnk_add_cart" runat="server" CssClass="btn" Style="font-size: 18px; font-weight: 500; width: 180px"><i class="am-icon-cart-plus"></i>&nbsp;加入購物車</asp:LinkButton>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="lnk_buy_now" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="lnk_add_cart" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>


                    <div class="am-u-sm-12">
                        <div class="am-u-sm-12" style="padding: 0px">
                            <ul class="shareBox">
                                <li class="facebook_share">
                                    <a href="http://www.facebook.com/sharer.php?u=<%= Page.Request.Url.OriginalString.ToString() %>" onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;" rel="nofollow" target="_blank">
                                        <i class="fa fa-facebook"></i>
                                        <span>Facebook</span>
                                    </a>
                                </li>
                                <li class="twitter_share">
                                    <a class="twitter_share" href="http://twitter.com/share?url=<%= Page.Request.Url.OriginalString.ToString() %>" onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;" rel="nofollow" target="_blank">
                                        <i class="fa fa-twitter"></i>
                                        <span>Twitter</span>
                                    </a>
                                </li>
                                <li class="google_share">
                                    <a class="google_share" href="https://plus.google.com/share?url=<%= Page.Request.Url.OriginalString.ToString() %>" onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;" rel="nofollow" target="_blank"><i class="fa fa-google-plus"></i><span>Google+</span></a>
                                </li>
                                <li>
                                    <asp:UpdatePanel ID="up_track" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:LinkButton ID="lnk_add_track" runat="server" Style="font-size: 16px;" OnClick="lnk_add_track_Click">&nbsp;<i class="am-icon-heart"></i> 加入追蹤</asp:LinkButton>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="lnk_add_track" EventName="Click" />
                                            <%--  <asp:AsyncPostBackTrigger ControlID="lnk_push" EventName="Click" />--%>
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <%-- <span style="color: #808080">|</span>&nbsp;
                                <asp:LinkButton ID="lnk_bulletin" runat="server" Style="font-size: 14px;"><i class="am-icon-envelope-o"></i> 買貴通報</asp:LinkButton>--%>




                    <script type="text/javascript">
                        var sUrl = window.location;
                        document.getElementById('fb').setAttribute('href', sUrl);
                    </script>


                    <%--<div class="detail_event" style="background-color: #29ABB3; margin-top: 10px; padding-left: 20px; color: #FFF; font-size: 16px;">
                        消費三千元免運費
                    </div>--%>
                </div>

                <div class="am-u-md-12" style="padding: 0px; margin-top: 10px;">
                    <div data-am-widget="tabs" class="am-tabs am-tabs-default">
                        <ul class="am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active">
                                <a href="[data-tab-panel-0]">商品資訊(Product Info)</a>
                            </li>
                            <li class="">
                                <a href="[data-tab-panel-1]">運送/保固/退換貨(After sales)</a>
                            </li>
                            <%-- <li class="">
                                <a href="[data-tab-panel-2]">評價(Evaluation)</a>
                            </li>--%>
                        </ul>
                        <style>
                            #relatedInfo {
                                width: 800px;
                                padding-bottom: 50px;
                            }

                                #relatedInfo .line {
                                    line-height: 30px;
                                    clear: both;
                                }

                                    #relatedInfo .line .left {
                                        float: left;
                                        margin: 4px 4px 4px 0px;
                                        width: 205px;
                                        background-color: #AD969C;
                                        color: #FFF;
                                        text-align: center;
                                    }
                        </style>
                        <div class="am-tabs-bd" data-am-tabs="{noSwipe: 1}">
                            <div data-tab-panel-0 class="am-tab-panel am-active" style="text-align: center">
                                <asp:Literal ID="lit_product_detail" runat="server"></asp:Literal>
                            </div>
                            <div data-tab-panel-1 class="am-tab-panel">
                                <div style="margin-left: 50px">
                                    <table style="line-height: 50px; font-size: 16px;">
                                        <tr>
                                            <td style="width: 120px">送貨範圍：
                                            </td>
                                            <td>HaWooo.com 商品配送區域限馬來西亞。
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top">到貨天數：
                                            </td>
                                            <td>好物市集：商品訂單成立後約 5-10 個工作天送達。
                                                <br />
                                                跨國快送：商品訂單成立後約 3-5個工作天送達。
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top">換貨說明：
                                            </td>
                                            <td>若您收到的商品有瑕疵、破損等問題，請於收到貨後7天內，至「會員中心 > 訂單管理 > 退換貨申請」填寫表單，或們會盡快幫您處理。換貨標準請參照&nbsp;<a href="returnpolicy.aspx" target="_blank">退貨條款</a>。
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>退貨說明：
                                            </td>
                                            <td>至「會員中心 > 訂單管理 > 退換貨申請」填寫表單，退貨標準請參照&nbsp;<a href="returnpolicy.aspx" target="_blank">退貨條款</a>。當我們收到您退回的商品時，退款將存入您HaWooo.com的帳戶(如運費需買方負責，將直接於退款扣除)，您可於下次消費使用。
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <%--   <div data-tab-panel-2 class="am-tab-panel ">
                                <div style="text-align: center; padding-top: 20px">
                                    <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                                </div>
                                <div style="padding-left: 50px">
                                    <ul class="am-comments-list am-comments-list-flip">
                                        <asp:Repeater ID="rp_comment_list" runat="server" OnItemDataBound="rp_comment_list_ItemDataBound">
                                            <ItemTemplate>
                                                <li class="am-comment">
                                                    <a href="#">
                                                        <asp:Image ID="img_A18" runat="server" CssClass="am-comment-avatar" Width="50" Height="50" ImageUrl='<%# Eval("A18") %>' />
                                                    </a>

                                                    <div class="am-comment-main">
                                                        <header class="am-comment-hd">

                                                            <div class="am-comment-meta">
                                                                <a href="#link-to-user" class="am-comment-author">
                                                                    <asp:Literal ID="lit_A02" runat="server" Text='<%# Eval("A02") %>'></asp:Literal>
                                                                </a>
                                                                <time>
                                                                    <asp:Literal ID="lit_ORC04" runat="server" Text='<%# Eval("ORC04") %>'></asp:Literal></time>
                                                                <span style="text-align: right; position: absolute; right: 10px">
                                                                    <asp:HiddenField ID="hf_ORC02" runat="server" Value='<%# Eval("ORC02") %>' />
                                                                    <asp:Literal ID="lit_start" runat="server"></asp:Literal>
                                                                </span>
                                                            </div>
                                                        </header>

                                                        <div class="am-comment-bd">
                                                            <asp:Literal ID="lit_ORC03" runat="server" Text='<%# Eval("ORC03") %>'></asp:Literal>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>

                            </div>--%>
                        </div>
                    </div>
                </div>
                <uc1:recommend_product runat="server" ID="recommend_product" />
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#navMenu > li").eq(0).addClass('selected');
        });

        function BlockMsg() {
            $.blockUI({
                css: {
                    border: 'none',
                    padding: '15px',
                    backgroundColor: '#000',
                    '-webkit-border-radius': '10px',
                    '-moz-border-radius': '10px',
                    opacity: .5,
                    color: '#fff'
                },
                message: '<p> <img src="../images/cartimgs/ok.png" /><h2>加入成功</h2></p>'
            });
            setTimeout($.unblockUI, 1000);
        }

        function AddOK() {
            $.blockUI({
                message: $('div.growlUI'),
                fadeIn: 700,
                fadeOut: 700,
                timeout: 2000,
                showOverlay: false,
                centerY: false,
                css: {
                    width: '350px',
                    top: '10px',
                    left: '',
                    right: '10px',
                    border: 'none',
                    padding: '5px',
                    backgroundColor: '#000',
                    '-webkit-border-radius': '10px',
                    '-moz-border-radius': '10px',
                    opacity: .6,
                    color: '#fff'
                }
            });
        }
    </script>
    <div id="fb-root"></div>
    <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.4&appId=915312548542698";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    <script language="javascript">
        function fbshareCurrentPage()
        { window.open("https://www.facebook.com/sharer/sharer.php?u=" + escape(window.location.href) + "&t=" + document.title, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600'); return false; }
    </script>
    <div class="growlUI" style="cursor: default; display: none;">
        <h1>加入成功</h1>
    </div>

    <div class="am-modal am-modal-no-btn" tabindex="-1" id="pmodal">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                推薦內容
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <div class="am-modal-bd" style="background-color: #ffffff">
                <div style="height: 10px">
                </div>

                <table>
                    <tr>
                        <td>
                            <asp:UpdatePanel ID="up_content" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_AC04" runat="server" TextMode="MultiLine" Width="380px" Height="150px"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>

                    <tr style="height: 50px">

                        <td style="text-align: right">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Button ID="btn_recommnet" runat="server" Text="Send" CssClass="btn" OnClick="btn_recommnet_Click" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_recommnet" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
    <script>
        function openPMODAL() {
            $("#pmodal").modal().width(400);
        }
        function closePMODAL() {
            $("#pmodal").modal('close');
        }
    </script>

</asp:Content>

