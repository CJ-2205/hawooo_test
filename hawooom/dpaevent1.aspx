<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="dpaevent1.aspx.cs" Inherits="mobile_dpaevnet1" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getCoupon {
            display: inline-block;
            position: absolute;
            width: 31.5%;
            height: 100%;
            top: 0px;
            right: 0px;
            cursor: pointer;
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
                font-size: 12px;
                margin: 0px auto;
                /* position: relative; */
                display: table;
                padding-bottom: 5px;
                font-weight: 700;
            }

            .style1 li a {
                cursor: pointer;
                color: #a3a3a3;
            }

            .style1 li img {
                width: 90%;
                display: block;
                margin: 0px auto;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: #ffffff;">
        <div class="am-g" style="position: relative">
            <img src="../images/events/20180531/保健活動頁-手機版.png" width="100%" />
            <div class="getCoupon" onclick="RedeemCoupon();">
            </div>
        </div>
        <script>
            function RedeemCoupon() {
                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    location.href='login.aspx?rurl=dpaevent1.aspx';
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
            <section class="am-container" id="pnews" runat="server">
                <div class="am-u-sm-12 index-section-wrapper hot-sale am-margin-top-0">
                    <div class="index-section-title" style="padding: 5px 0px; font-size: 14px">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_title" runat="server"></asp:Literal>
                    </div>
                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="rp_product_list" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <div class="product_item_pic">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                        <div class="product_item_text">
                                            <div class="product_item_block">
                                                <h3><%# Eval("WP02").ToString() %></h3>
                                            </div>
                                            <div class="product_item_block am-cf">

                                                <h4 class="am-fl">RM <%# PbClass.CashRate(Eval("WPA06").ToString() ,Application["mycashrate"].ToString())%></h4>

                                                <span class="product_item_dis"><%# decimal.Parse(Eval("WPA10").ToString()) > decimal.Parse(Eval("WPA06").ToString()) ? "省" + PbClass.CashRate((decimal.Parse(Eval("WPA10").ToString()) - decimal.Parse(Eval("WPA06").ToString())).ToString(),Application["mycashrate"].ToString()) : ""  %></span>
                                            </div>
                                            <div class="product_item_block am-cf">
                                                <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>

                </div>
            </section>
        </div>
    </div>
</asp:Content>

