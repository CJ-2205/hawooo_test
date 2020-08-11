<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20200325skin_care_flash_deals.aspx.cs" Inherits="mobile_static_20200325skin_care_flash_deals" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200325beauty_madness.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    '
        <div class="am-g  main-contain">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bbn_01m.png" %>' alt="bbn_01m" style="width: 100%;" />
            </div>
            <div class="am-u-sm-8 am-u-sm-centered am-margin-vertical">
                <a id="coupon1" data-clipboard-text="BEAUTY25" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/coupon.png" %>' alt="coupon" style="width: 100%;" />
                </a>
            </div>
            <div class="am-container">
                <section>
                    <div class="mb-shop-block bg1 goods-mb">
                        <ul class="am-avg-sm-2">
                            <uc1:products runat="server" id="products" />
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-4">
                <li>
                    <a href="20200325beauty_madness.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20200325cosmetic_flash_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20200325beauty_madness.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>

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

