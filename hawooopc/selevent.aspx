<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="selevent.aspx.cs" Inherits="user_selevent" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/coupon.css?v=20171128-1" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 140px; display: block;">
        <!-- 優惠券活動主要圖片 coupon main pic start-->
        <asp:UpdatePanel ID="up_header" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="am-container coupon-b-pic">
                    <asp:Literal ID="lit_event_img" runat="server"></asp:Literal>
                   
                    <!-- <div class="coupon-check"></div> -->
                   
                </section>
                <!-- 優惠券活動主要圖片 coupon main pic end-->
            </ContentTemplate>
        </asp:UpdatePanel>
        <section class="am-container">
            <!-- 品牌折扣券 start -->
            <asp:UpdatePanel ID="up_product_coupon" runat="server">
                <ContentTemplate>
                    <div class="coupon-section brand-coupon" style="width: 100%">
                        <h4 class="coupon-catalog-title">商品折扣券</h4>
                        <ul class="am-avg-sm-2">
                            <asp:Repeater ID="rp_product_coupon_list" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <asp:LinkButton ID="lnk_get_coupon" runat="server" OnClick="lnk_get_coupon_Click" ClientIDMode="AutoID">
                                            <div class="coupon-wrapper">
                                                <h5 class="coupon-title">
                                                    <asp:HiddenField ID="hf_PC01" runat="server" Value='<%# Eval("PC01") %>' />
                                                    <asp:Literal ID="lit_PC02" runat="server" Text='<%# Eval("PC02") %>'></asp:Literal></h5>
                                                <p class="coupon-price">
                                                    <asp:Literal ID="lit_PC09" runat="server" Text='<%# Eval("PC08").ToString().Equals("0") ?  Eval("PC09").ToString() + "% off" : "RM " + Eval("PC09").ToString() %>'></asp:Literal>
                                                </p>
                                                <div class="coupon-bottom">
                                                    <p class="coupon-time">
                                                        活動期間：
                                                        <asp:Literal ID="lit_PC04_PC05" runat="server" Text='<%# Convert.ToDateTime(Eval("PC04").ToString()).ToString("yyyy/MM/dd")+ "~" + Convert.ToDateTime(Eval("PC05").ToString()).ToString("yyyy/MM/dd") %>'></asp:Literal>
                                                    </p>
                                                    <asp:Literal ID="lit_PC19" runat="server" Text='<%# Eval("PC19") %>'></asp:Literal>
                                                </div>
                                                <span class="phone-take">點擊領取</span>
                                            </div>
                                        </asp:LinkButton>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <!-- 品牌折扣券 end -->
            <div>
                <ul class="am-avg-md-4 am-gallery-bordered product" style="padding: 2px">
                    <asp:Repeater ID="rp_product_list" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </a>

                                    </div>
                                    <div class="p-style-text">
                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <span class="p-style-line"></span>
                                            <div class="am-cf price-discount">
                                                <h5 class="am-fl">
                                                    <p>
                                                        RM 
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
    </div>
    <script type="text/javascript">
        function mouseoverCoupon(e) {
            $(e).find(".coupon-hover").addClass("show");
        }

        function mouseOutCoupon(e) {
            $(e).find(".coupon-hover").removeClass("show");
        }

    </script>
</asp:Content>
