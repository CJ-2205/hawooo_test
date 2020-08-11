<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="dpaevent1.aspx.cs" Inherits="user_dpaevent1" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getCoupon {
            display: inline-block;
            position: absolute;
            width: 300px;
            height: 333px;
            top: 0px;
            right: 0px;
            cursor: pointer
        }

        .style1 li {
            border-right: 1px solid #ececec;
            border-bottom: 1px solid #ececec;
        }

            .style1 li:last-child {
                border-right: 0px;
                padding-right: 1px;
            }

            .style1 li span {
                font-size: 18px;
                margin: 0px auto;
                /* position: relative; */
                display: table;
                padding-bottom: 10px;
                font-weight: 700;
            }

            .style1 li a {
                cursor: pointer;
            }

            .style1 li img {
                width: 50%;
                display: block;
                margin: 0px auto;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: #ffffff; width: 1000px">
        <div class="am-g" style="position: relative">

            <img src="../images/events/20180531/保健活動頁-PC版.png" width="100%" />
            <div class="getCoupon" onclick="RedeemCoupon();">
            </div>
        </div>
        <script>
            function RedeemCoupon() {
                debugger;
                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('dpaevent1.aspx');
            }
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>

        <div class="am-g">
            <ul class="am-avg-sm-6 style1">
                <li>
                    <a href="dpaevent1.aspx?did=1">
                        <img src="../images/events/20180531/class/熱銷商品.png" width="100%" />
                        <span>熱銷商品</span>
                    </a>
                </li>
                <li>
                    <a href="dpaevent1.aspx?did=2">
                        <img src="../images/events/20180531/class/皮膚保養.png" width="100%" />
                        <span>皮膚保養</span>
                    </a>
                </li>
                <li>
                    <a href="dpaevent1.aspx?did=3">
                        <img src="../images/events/20180531/class/豐胸產品.png" width="100%" />
                        <span>豐胸產品</span>
                    </a>
                </li>
                <li>
                    <a href="dpaevent1.aspx?did=4">
                        <img src="../images/events/20180531/class/減肥產品.png" width="100%" />
                        <span>減肥產品</span>
                    </a>
                </li>
                <li>
                    <a href="dpaevent1.aspx?did=5">
                        <img src="../images/events/20180531/class/私密呵護.png" width="100%" />
                        <span>私密呵護</span>
                    </a>
                </li>
                <li>
                    <a href="dpaevent1.aspx?did=6">
                        <img src="../images/events/20180531/class/孕媽保養.png" width="100%" />
                        <span>孕媽保養</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="am-g">
            <ul class="am-avg-sm-5 am-gallery-bordered product" style="padding: 2px">
                <asp:Repeater ID="rp_product_list" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                            class="lazyload am-img-responsive" />
                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                    </div>
                                    <div class="p-style-text">

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

                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
            <ul class="am-pagination am-pagination-right">
                <asp:Literal ID="lit_page" runat="server"></asp:Literal>
            </ul>
        </div>
    </div>
</asp:Content>

