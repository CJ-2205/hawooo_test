<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2019MIT.aspx.cs" Inherits="mobile_2019MIT" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <link href="assets/css/MoonFestivalSale.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="am-g">
            <a id="coupon1" data-clipboard-text="MIT30" onclick="Clip('coupon1');">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190906/MIT_bn-01m.png" %>' style="width: 100%" />
            </a>
        </div>
        <%--<div class="am-g">
            <div class="am-u-sm-12" style="padding: 0px">
                <a id="coupon1" data-clipboard-text="supplements60" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/collections/2coupon_01m.png" %>' style="width: 100%" id="copon1" data-clipboard-text="RAYA20" />
                </a>
            </div>


        </div>--%>
        <div class="mb-shop-block mb-shop-block5" style="background-color: #ECC540">
            <ul class="am-avg-sm-2">
                <uc1:products runat="server" ID="products" />
            </ul>
        </div>
    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>

