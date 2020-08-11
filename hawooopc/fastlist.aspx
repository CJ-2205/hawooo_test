<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="fastlist.aspx.cs" Inherits="user_fastlist" %>

<%@ Register Src="~/user/control/fastclass.ascx" TagPrefix="uc1" TagName="fastclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $('body').css('background', '#ffffff');
        })
    </script>
    <div class="am-container">
        <div class="am-g" style="padding-top: 25px; line-height: 25px;">
            <div class="am-u-sm-12" style="width: 100%">
                <table>
                    <tr>
                        <td>
                            <img src="images/new/F01.png" />
                        </td>
                        <td>
                            <img src="images/new/F02.png" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="am-g" style="margin-top: 30px; height: 30px;">
            <img src="images/hr.png" style="width: 100%; text-align: center">
        </div>
        <div class="am-g" style="padding-top: 20px">
            <uc1:fastclass runat="server" ID="fastclass" />
            <div class="am-u-sm-10">
                <asp:UpdatePanel ID="up_fast" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Repeater ID="rp_event_list" runat="server" OnItemDataBound="rp_event_list_ItemDataBound">
                            <ItemTemplate>
                                <div class="am-g" style="margin-left: 0px">
                                    <asp:HiddenField ID="hf_SPM01" runat="server" Value='<%# Eval("SPM01") %>' />
                                    <div class="am-u-sm-12" style="padding: 0px; margin: 0px">
                                        <asp:Literal ID="lit_D01" runat="server"></asp:Literal>
                                        <%--  <img src="../images/adimgs/<%#Eval("SPM10") %>" style="max-width: 950px" />--%>
                                    </div>
                                </div>
                                <div class="am-g" style="margin-left: 0px">
                                    <div class="am-u-sm-3" style="padding-top: 5px; padding-left: 0px; margin: 0px">
                                        <asp:Literal ID="lit_D02" runat="server"></asp:Literal>
                                        <%-- <img src="../images/adimgs/<%#Eval("SPM11") %>" />--%>
                                    </div>
                                    <div class="am-u-sm-9" style="padding: 0px; padding-left: 5px">
                                        <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                                            <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="am-panel am-panel-default pitem">
                                                            <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<div class=\"ptag\">" + Eval("WP30").ToString()　+ "</div>" : "" %>'></asp:Literal>
                                                            <div class="imgContain">
                                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                    <img data-sizes="auto"
                                                                        src="http://img1.hawooo.com/noimg.png"
                                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                                </a>
                                                            </div>
                                                            <div class="am-panel-bd">
                                                                <div class="gallery-title">
                                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' EnableViewState="false" />
                                                                        <asp:Literal ID="lit_WP02" EnableViewState="false" runat="server" Text='<%# Eval("WP02").ToString().Length > 30 ? Eval("WP02").ToString().Substring(0,30) + "..." : Eval("WP02").ToString() %>'></asp:Literal></a>
                                                                </div>
                                                                <div class="gallery-detail">
                                                                    <span class="money_txt_style">RM&nbsp;
                                                        <asp:Literal ID="lit_WPA06" runat="server" EnableViewState="false" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                                                    <span class="moneybtn">
                                                                        <asp:LinkButton ID="lnk_like" runat="server" CssClass="hw-btn am-btn-warning am-btn-sm" OnClick="lnk_like_Click"><i class="am-icon-heart  am-icon-sm"></i></asp:LinkButton>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
        </div>
    </div>
</asp:Content>

