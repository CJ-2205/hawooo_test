<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="article.aspx.cs" Inherits="mobile_article" %>

<%@ Register Src="~/mobile/control/articlemenu.ascx" TagPrefix="uc1" TagName="articlemenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <div class="am-g">
                <div class="page-menu-Box" data-am-sticky="{top:95}">
                    <p class="pagelink">
                        <a href="article.aspx">網友推薦 </a>> 首頁
                    </p>
                    <uc1:articlemenu runat="server" ID="articlemenu" />
                </div>
                <div class="am-u-sm-12" style="margin: 10px 0px 0px 0px; padding: 0px; width: 100%">
                    <div class="am-slider am-slider-default" data-am-flexslider id="demo-slider-0">
                        <ul class="am-slides">
                            <asp:Repeater ID="rp_ad_list" runat="server" ViewStateMode="Disabled">
                                <ItemTemplate>
                                    <li>
                                        <a href='<%# Eval("ATCC03") %>'>
                                            <img src='<%# "../images/adimgs/" + Eval("ATCC04") %>' style="width: 100%;" /></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Repeater ID="rp_List" runat="server" ViewStateMode="Disabled">
                                <ItemTemplate>
                                    <a href='<%# "articledetail.aspx?id=" +  Eval("ATCB01") %>'>
                                        <div class="am-thumbnail" style="padding: 0;">
                                            <img data-sizes="auto"
                                                src="http://img1.hawooo.com/anoimg.png"
                                                data-src='<%# "../images/atcimgs/" + Eval("ATCB17") %>' class="lazyload am-img-responsive" />
                                            <%-- <img src='<%# "../images/atcimgs/" + Eval("ATCB17") %>' style="width: 100%;" />--%>
                                            <div class="am-thumbnail-caption" style="padding: 10px; font-size: 14px; line-height: 18px;">
                                                <h3 style="margin-bottom: 10px; font-size: 16px;">
                                                    <asp:Literal ID="lit_ATCB03" runat="server" Text='<%# Eval("ATCB03") %>'></asp:Literal>
                                                </h3>
                                                <p>
                                                    <asp:Literal ID="lit_ATCB18" runat="server" Text='<%# Eval("ATCB18") %>'></asp:Literal>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:Literal ID="lit_no_msg" runat="server"></asp:Literal>
                            <div style="text-align: center; margin-bottom: 10px">
                                <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
                                    <ProgressTemplate>
                                        <div style="padding-top: 20px; padding-bottom: 20px">
                                            <img src="ajax-loader.gif" alt="wait image" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                                <asp:LinkButton ID="lnk_more" runat="server" OnClick="lnk_more_Click"><span style="color: #ffffff; background-color: #FF8E95; padding: 5px 10px 5px 10px;">Load more</span></asp:LinkButton>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

