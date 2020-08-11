<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newhotrank2.aspx.cs" Inherits="_newhotrank" MasterPageFile="~/mobile/mobile.master" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
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
            position: absolute;
            top: 7%;
            margin: auto;
            width: 44%;
            height: 30%;
            left: 104%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/nhr-week2/edmm_01.png" alt="新品排行" style="width: 100%">
        <asp:UpdatePanel ID="up_product_coupon" runat="server">
            <ContentTemplate>
                <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="btnn" ImageUrl="https://www.hawooo.com/images/ftp/20180514/new99.gif" OnClick="CpnBtn_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img id="gosale1" alt="新品排行" src="https://www.hawooo.com/images/ftp/nhr-week2/edmm_02.png" style="float: left; display: block; width: 100%;" />
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffd4d5">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #1E2C59">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                        <%--<div id="<%#"imgdivHot"+ Container.ItemIndex  %>" style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">--%>
                                        <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                    </div>
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

    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img id="gosale2" alt="更多新品" src="https://www.hawooo.com/images/ftp/nhr-week2/edmm_03.png" style="float: left; display: block; width: 100%;" />
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #c5e7e6">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
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
    <!--footer-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>


    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>

    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 100 }, 500);
        }
    </script>

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
    <script>
        for (var i = 1; i <= 10; i++) {
            var j = i - 1;
            $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 40%; left: 0;" />')
        }
    </script>
    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 80 }, 500);
        }
    </script>
</asp:Content>
