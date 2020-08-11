<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ttm15.aspx.cs" Inherits="_180601tt" MasterPageFile="~/mobile/mobile.master" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 1%;
            margin: 5px;
            height: calc(100% - 20px);
        }

        .btnn {
            width: 50%;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180601/ttm_edmm_01.png" alt="ttm15-bn" style="width: 100%">


        <img src="https://www.hawooo.com/images/ftp/20180601/ttm_edmm_02.png" alt="活動辦法" style="width: 50%; float: left;">
        <asp:UpdatePanel ID="up_product_coupon" runat="server">
            <ContentTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="btnn" ImageUrl="https://www.hawooo.com/images/ftp/20180601/coupon-ttm15-mb.png" OnClick="CpnBtn_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #222328">
        <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #1E2C59">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
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
    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });

    </script>
</asp:Content>
