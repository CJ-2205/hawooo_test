<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="brands.aspx.cs" Inherits="user_brands" %>

<%@ Register Src="~/user/control/brandclass.ascx" TagPrefix="uc1" TagName="brandclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .blogo {
            position: absolute;
            left: 50px;
            top: 120px;
            border: 5px solid #ffffff;
            width: 100px;
            height: 100px;
            opacity: 0.9;
        }

        .logo_text {
            position: absolute;
            left: 160px;
            top: 120px;
            /*border: 5px solid #ffffff;*/
            font-size: 28px;
            color: #403645;
            background: #fff6f7;
            opacity: 0.7;
            height: 100px;
            line-height: 90px;
        }


        .mid_ad_show {
            padding: 0px;
            border: 5px solid;
            border-color: #ffffff;
        }

            .mid_ad_show img {
                width: 100%;
            }
    </style>
    <div>
        <div class="am-container" style="max-width: 1180px;">
            <!--上方廣告與詢問購買BAR開始-->
            <div class="am-g" style="margin: 10px 0 0 0;">
                <div class="am-u-sm-8" style="margin: 0; padding: 0;">
                    <asp:Image ID="img_B01" runat="server" CssClass="am-img-thumbnail" />
                </div>
                <div class="am-u-sm-4" style="margin: 0; padding: 0;">
                    <div class="bandBox">
                        <div class="introdlogo">
                            <asp:Image ID="img_BA08" runat="server" Style="width: 180px; margin: 0 48px 0 48px;" />

                        </div>
                        <div class="introdText">
                            <asp:Literal ID="lit_BA03" runat="server"></asp:Literal>
                            <asp:Literal ID="lit_BA19" runat="server"></asp:Literal>
                        </div>

                    </div>
                </div>
            </div>
            <!--上方廣告與詢問購買BAR結束-->

            <!--上方三塊廣告區塊開始-->
            <asp:Literal ID="lit_Top_AD_List" runat="server"></asp:Literal>
            <!--上方三塊廣告區塊結束-->

            <%--<div class="am-g">
                <div class="am-u-sm-12">
                    <img src="../images/index/20160105/0105freeship.png" style="width: 100%" />
                </div>

            </div>--%>
            <div class="am-g " style="padding-bottom: 5px">
                
                    <!--Brand Class-->
                    <uc1:brandclass runat="server" ID="brandclass" />


                    <!--FB LINK-->
                  


                    <!--Brand AD-->
                    <%--<div class="am-g" style="margin-right: 0px">
                        <div class="right_AD_Panel">
                            <img src="../coimage/AD/tAD2.jpg" class="am-img-responsive" style="width: 100%" />

                        </div>
                        <div class="right_AD_Panel">
                            <img src="../coimage/AD/tAD1.gif" class="am-img-responsive" style="width: 100%" />

                        </div>
                    </div>--%>
                

                <div class="am-u-sm-9" style="padding-bottom: 20px; padding-right: 10px; padding-left: 0px">
                    <div class="am-u-sm-12" style="padding: 5px 5px 10px 5px; height: 50px;">
                        <div id="class_title" class="am-panel product_list_title boxshadow" style="height: 40px;">
                            <div class="am-u-md-6" style="height: 40px;">
                                <ol class="am-breadcrumb" style="font-size: 14px">
                                    <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <script>
                        $(function () {
                            var _BA16 = $("#hf_BA16").val();
                            $("#class_title").css("background-color", _BA16);
                        })

                    </script>
                    <div class="am-u-sm-12" style="padding: 0px">
                        <ul class="am-avg-sm-4 am-avg-sm-1 am-gallery-bordered product">
                            <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated" ClientIDMode="Static" OnItemDataBound="rp_product_list_ItemDataBound">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel am-panel-default pitem">
                                            <div class="imgContain">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + "&bid=" + Eval("B01") %>'>
                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# "../images/webimgs/" + Eval("WP08_1") %>' EnableViewState="true" />
                                                    <asp:HiddenField ID="hf_WP06" runat="server" Value='<%# Eval("WP06") %>' EnableViewState="false" />
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + "&bid=" + Eval("B01") %>'>
                                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                        <asp:Literal ID="lit_WP06" runat="server" EnableViewState="false" Text='<%# Eval("WP06") %>'></asp:Literal>
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style">RM
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal>
                                                    </span>
                                                    <span class="moneybtn">

                                                        <%--<asp:LinkButton ID="lnk_like" runat="server" CssClass="hw-btn am-btn-warning am-btn-sm" OnClick="lnk_like_Click"><i class="am-icon-heart  am-icon-sm"></i></asp:LinkButton>--%>
                                                        <%--    <asp:LinkButton ID="lnk_shopping" runat="server" CssClass="hw-btn am-btn-danger am-btn-sm"></asp:LinkButton>--%>
                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + "&bid=" + Eval("B01") %>'><i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i></a>

                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>

                        <div class="am-g" style="padding-bottom: 10px">
                            <ul class="am-pagination am-pagination-centered">
                                <asp:Literal ID="lit_page" runat="server"></asp:Literal>

                            </ul>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <div id="fb-root"></div>
    <script>
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.3&appId=284638981548324";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));

    </script>

    <script>
        $(function () {
            $("#navMenu > li").eq(1).addClass('selected');
        });
    </script>
</asp:Content>

