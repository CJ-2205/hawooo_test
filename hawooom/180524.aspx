<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180524.aspx.cs" Inherits="_180524" MasterPageFile="~/mobile/mobile.master" %>


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
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
        }

        .btnn {
        }
    </style>



</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180524/edmm_01.png" alt="新品排行" style="width: 100%">

        <img src="https://www.hawooo.com/images/ftp/20180524/edmm_02.png" alt="點我複製may20" style="width: 50%; float: left;" class="btnn" data-clipboard-text="may20">
        <img src="https://www.hawooo.com/images/ftp/20180524/edmm_03.png" alt="點我複製may30" style="width: 50%" class="btnn" data-clipboard-text="may30">
    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #c5e7e6">
        <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #1E2C59">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                <div style="width: 100%; position: relative; z-index: 1; margin: 0 auto">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                                        <img src="https://www.hawooo.com/images/ftp/20180521/hot.gif" style="position: absolute; top: 0; margin: auto; width: 50%; left: 0;" />
                                    </div>
                                </div>
                                <h4 class="pnamem">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                </p>
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
