<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="fast.aspx.cs" Inherits="user_fast" %>

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
        <div class="am-g" style="padding-top: 10px; line-height: 25px;">
            <div class="am-u-sm-12" style="width: 100%; padding: 0px; margin: 0px">
                <img src="images/new/fastbanner.png" class=" am-img-responsive" />
            </div>
        </div>
        <div class="am-g" style="margin-top: 30px; height: 30px;">
            <img src="img/fast/hr.png" style="width: 100%; text-align: center" />
        </div>
        <div class="am-g">
            <div class="am-g">
                <uc1:fastclass runat="server" ID="fastclass" />
                <div class="am-u-sm-10">
                    <ul class="am-avg-sm-5 da-thumbs fastproduct" style="margin-top: 20px;">
                        <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated">
                            <ItemTemplate>
                                <li>
                                    <div class="am-panel am-panel-default pitem">
                                        <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<div class=\"ptag\">" + Eval("WP30").ToString()　+ "</div>" : "" %>'></asp:Literal>
                                        <div class="imgContain">
                                            <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                <img data-sizes="auto" src="http://img1.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                            </a>
                                        </div>
                                        <div class="am-panel-bd">
                                            <div class="gallery-title">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                    <img src="../images/icon/ficon.png" />
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a>
                                            </div>
                                            <div class="gallery-detail">
                                                <span class="money_txt_style">RM&nbsp;
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                                <span class="moneybtn">
                                                    <%--      <asp:LinkButton ID="lnk_like" runat="server" CssClass="hw-btn am-btn-warning am-btn-sm" OnClick="lnk_like_Click"><i class="am-icon-heart  am-icon-sm"></i></asp:LinkButton>--%>
                                                    <%--    <asp:LinkButton ID="lnk_shopping" runat="server" CssClass="hw-btn am-btn-danger am-btn-sm"></asp:LinkButton>--%>
                                                    <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'><i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm">
                                                    </i></a></span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li>
                            <div class="am-panel am-panel-default pitem" style="box-shadow: 1px 2px 1px (#cccccc 0);">
                                <div class="imgContain">
                                    <a href="">
                                        <img class="am-img-responsive" src="images/n20160218063046013.jpg">
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="productdetail.aspx?id=1774">
                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_beauty_list$ctl00$hf_WP01" id="ContentPlaceHolder1_rp_beauty_list_hf_WP01_0" value="1774">
                                            FEAZAC 舒科 全效隔離舒緩精華10mL（6/盒）
                                        </a>
                                    </div>
                                    <div class="gallery-detail">
                                        <span class="money_txt_style">RM&nbsp;
                                                    118.00
                                        </span>
                                        <span class="moneybtn">
                                            <a href="productdetail.aspx?id=1774">
                                                <i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="am-panel am-panel-default pitem" style="box-shadow: 1px 2px 1px (#cccccc 0);">
                                <div class="imgContain">
                                    <a href="">
                                        <img class="am-img-responsive" src="images/n20160218063046013.jpg">
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="productdetail.aspx?id=1774">
                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_beauty_list$ctl00$hf_WP01" id="ContentPlaceHolder1_rp_beauty_list_hf_WP01_0" value="1774">
                                            FEAZAC 舒科 全效隔離舒緩精華10mL（6/盒）
                                        </a>
                                    </div>
                                    <div class="gallery-detail">
                                        <span class="money_txt_style">RM&nbsp;
                                                    118.00
                                        </span>
                                        <span class="moneybtn">
                                            <a href="productdetail.aspx?id=1774">
                                                <i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="am-panel am-panel-default pitem" style="box-shadow: 1px 2px 1px (#cccccc 0);">
                                <div class="imgContain">
                                    <a href="">
                                        <img class="am-img-responsive" src="images/n20160218063046013.jpg">
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="productdetail.aspx?id=1774">
                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_beauty_list$ctl00$hf_WP01" id="ContentPlaceHolder1_rp_beauty_list_hf_WP01_0" value="1774">
                                            FEAZAC 舒科 全效隔離舒緩精華10mL（6/盒）
                                        </a>
                                    </div>
                                    <div class="gallery-detail">
                                        <span class="money_txt_style">RM&nbsp;
                                                    118.00
                                        </span>
                                        <span class="moneybtn">
                                            <a href="productdetail.aspx?id=1774">
                                                <i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="am-panel am-panel-default pitem" style="box-shadow: 1px 2px 1px (#cccccc 0);">
                                <div class="imgContain">
                                    <a href="">
                                        <img class="am-img-responsive" src="images/n20160218063046013.jpg">
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="productdetail.aspx?id=1774">
                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_beauty_list$ctl00$hf_WP01" id="ContentPlaceHolder1_rp_beauty_list_hf_WP01_0" value="1774">
                                            FEAZAC 舒科 全效隔離舒緩精華10mL（6/盒）
                                        </a>
                                    </div>
                                    <div class="gallery-detail">
                                        <span class="money_txt_style">RM&nbsp;
                                                    118.00
                                        </span>
                                        <span class="moneybtn">
                                            <a href="productdetail.aspx?id=1774">
                                                <i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="am-panel am-panel-default pitem" style="box-shadow: 1px 2px 1px (#cccccc 0);">
                                <div class="imgContain">
                                    <a href="">
                                        <img class="am-img-responsive" src="images/n20160218063046013.jpg">
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="productdetail.aspx?id=1774">
                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_beauty_list$ctl00$hf_WP01" id="ContentPlaceHolder1_rp_beauty_list_hf_WP01_0" value="1774">
                                            FEAZAC 舒科 全效隔離舒緩精華10mL（6/盒）
                                        </a>
                                    </div>
                                    <div class="gallery-detail">
                                        <span class="money_txt_style">RM&nbsp;
                                                    118.00
                                        </span>
                                        <span class="moneybtn">
                                            <a href="productdetail.aspx?id=1774">
                                                <i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="am-panel am-panel-default pitem" style="box-shadow: 1px 2px 1px (#cccccc 0);">
                                <div class="imgContain">
                                    <a href="">
                                        <img class="am-img-responsive" src="images/n20160218063046013.jpg">
                                    </a>
                                </div>
                                <div class="am-panel-bd">
                                    <div class="gallery-title">
                                        <a href="productdetail.aspx?id=1774">
                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_beauty_list$ctl00$hf_WP01" id="ContentPlaceHolder1_rp_beauty_list_hf_WP01_0" value="1774">
                                            FEAZAC 舒科 全效隔離舒緩精華10mL（6/盒）
                                        </a>
                                    </div>
                                    <div class="gallery-detail">
                                        <span class="money_txt_style">RM&nbsp;
                                                    118.00
                                        </span>
                                        <span class="moneybtn">
                                            <a href="productdetail.aspx?id=1774">
                                                <i class="am-icon-shopping-cart  am-icon-sm hw-btn am-btn-danger am-btn-sm"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>--%>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
