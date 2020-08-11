<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="dpaevent4.aspx.cs" Inherits="dpaevent4" %>
<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getCoupon {
            display: inline-block;
            position: absolute;
            width: 50%;
            height: 100%;
            top: 0px;
            right: 50px;
            cursor: pointer;
        }

        .style1 li {
            /*border-right: 1px solid #ececec;*/
            /*border-bottom: 1px solid #ececec;*/
        }

            .style1 li:last-child {
                /*border-right: 0px;*/
                /*padding-right: 1px;*/
            }

            .style1 li span {
                font-size: 12px;
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
                width: 100%;
                display: block;
                /*margin: 0px auto;*/
            }

        .select {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            background-color: #F0F0F0;
            opacity: 0.3;
            border-bottom: 2px solid #EE5984 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        function RedeemCoupon() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u != null)
                $("#<%= button1.ClientID %>").click();
            else
                location.href='login.aspx?rurl=dpaevent4.aspx';
        }
        
        function SetSelClass(id) {
            $("#d" + id).addClass('select');
        }
    </script>


    <div class="am-container" style="background-color: #ffffff;">
        <div class="am-g" style="position: relative">
            <img src="../images/ftp/dpa4/edmm_01.png" width="100%" />
            <div class="getCoupon" onclick="RedeemCoupon();">
            </div>
        </div>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="am-g">
            <ul class="am-avg-sm-6 style1">
                <li>
                    <a href="dpaevent4.aspx?did=1">
                        <div style="position: relative;">

                            <img id="_1" src="../images/ftp/dpa4/dpa01.gif" width="100%" />
                            <div id="d1">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent4.aspx?did=2">
                        <div style="position: relative;">

                            <img id="_2" src="../images/ftp/dpa4/dpa02.png" width="100%" />
                            <div id="d2">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent4.aspx?did=3">
                        <div style="position: relative;">

                            <img id="_3" src="../images/ftp/dpa4/dpa03.png" width="100%" />
                            <div id="d3">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent4.aspx?did=4">
                        <div style="position: relative;">

                            <img id="_4" src="../images/ftp/dpa4/dpa04.png" width="100%" />
                            <div id="d4">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent4.aspx?did=5">
                        <div style="position: relative;">

                            <img id="_5" src="../images/ftp/dpa4/dpa05.png" width="100%" />
                            <div id="d5">
                            </div>
                        </div>
                    </a>
                </li>

                   <li>
                    <a href="dpaevent4.aspx?did=6">
                        <div style="position: relative;">

                            <img id="_6" src="../images/ftp/dpa4/dpa06.png" width="100%" />
                            <div id="d6">
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="am-g">
            <section class="am-container" id="pnews" runat="server">
                <div class="am-u-sm-12 index-section-wrapper hot-sale am-margin-top-0">
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

