<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="dpaevent2.aspx.cs" Inherits="mobile_dpaevent2" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getCoupon {
            display: inline-block;
            position: absolute;
            width: 50%;
            height: 28%;
            bottom: 12%;
            left: 0px;
            cursor: pointer;
        }

        .getSpend {
            display: inline-block;
            position: absolute;
            width: 50%;
            height: 28%;
            bottom: 12%;
            right: 0px;
            cursor: pointer;
        }

        .style1 li {
            padding-top: 10px;
            border-right: 1px solid #ececec;
            border-bottom: 2px solid #ececec;
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

        .select {
            background-color: rgba(243,243,243,.85);
            border-bottom: 2px solid #EE5984 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: #ffffff;">
        <div class="am-g" style="position: relative">
            <img src="../images/events/20180604/m.png" width="100%" />
            <div class="getCoupon" onclick="RedeemCoupon();">
            </div>
            <div class="getSpend" onclick="GetSpend();">
            </div>
        </div>
        <script>
            function RedeemCoupon() {
                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    location.href = 'login.aspx?rurl=dpaevent1.aspx';
            }
            function GetSpend() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('dpaevent2.aspx');
            }
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button2" OnClick="button2_Click"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="am-g">
            <ul class="am-avg-sm-4 style1">
                <li class="select" id="_1" name="select">
                    <a href="dpaevent2.aspx?did=1">
                        <img src="../images/events/20180604/限量超值組合.png" width="100%" />
                        <span>限量超值組合</span>
                    </a>
                </li>
                <li id="_2" name="select">
                    <a href="dpaevent2.aspx?did=2">
                        <img src="../images/events/20180604/帶美妝旅行去.png" width="100%" />
                        <span>帶美妝旅行去</span>
                    </a>
                </li>
                <li id="_3" name="select">
                    <a href="dpaevent2.aspx?did=3">
                        <img src="../images/events/20180604/帶禮物回家去.png" width="100%" />
                        <span>帶禮物回家去</span>
                    </a>
                </li>
                <li id="_4" name="select">
                    <a href="180601midsale.aspx">
                        <img src="../images/events/20180604/年中慶有更多.png" width="100%" />
                        <span>年中慶有更多</span>
                    </a>
                </li>
            </ul>

        </div>
        <script>
            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
            }
        </script>
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

