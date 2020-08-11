<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2017newyeardetail.aspx.cs" Inherits="mobile_2017newyeardetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../2017year/assets/css/amazeui.min.css" rel="stylesheet" />
    <link href="../2017year/assets/css/app.css" rel="stylesheet" />
    <link href="../2017year/assets/css/newyear.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="am-u-sm-12" style="margin-top: 120px">
            <asp:PlaceHolder ID="p_header" runat="server"></asp:PlaceHolder>
            <div class="pageBox">
                <div class="am-container" style="padding: 2px; max-width: 650px">
                    <asp:Repeater ID="rp_product_list" runat="server" EnableViewState="true">
                        <ItemTemplate>
                            <div class="am-u-sm-6 product" style="margin: 0px">
                                <div class="am-panel am-panel-default pitem" style="margin-top: 10px">
                                    <div class="imgContain">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                            <%--<img data-sizes="auto"
                                            src="http://img1.hawooo.com/noimg.png"
                                            data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />--%>
                                        </a>
                                    </div>
                                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                        <div class="gallery-title" style="padding: 2px;">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </a>
                                        </div>
                                        <div class="gallery-detail" style="padding: 5px;">
                                            <span class="money_txt_style">RM&nbsp; 
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                            <span class="moneybtn"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <asp:PlaceHolder ID="p_footer" runat="server"></asp:PlaceHolder>
        </div>
    </div>

    <script>

        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    location.href = "login.aspx?rurl=2017newyear.aspx";
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>
</asp:Content>

