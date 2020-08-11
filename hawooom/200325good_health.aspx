<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200325good_health.aspx.cs" Inherits="mobile_static_200325good_health" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200325supplement_mega.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bnn_04m.png" %>'alt="bnn_04m" style="width: 100%;" />
        </div>
        <div class="am-u-sm-centered am-margin-vertical">
            <a id="coupon1" data-clipboard-text="SUPP8" onclick="Clip('coupon1');">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/cp_01m.png" %>'alt="coupon" style="width: 100%;" />
            </a>
        </div>
        <div class="am-container">
            <section>
                <div class="mb-shop-block bg2 goods-mb">
                    <ul class="am-avg-sm-2">
                                               <uc1:products runat="server" id="products" />

                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-3">
                <li>
                    <a href="200325supplement_mega.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_01m.png" %>'alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="200325beauty_care.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_02m.png" %>'alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_03m.png" %>'alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="200325supplement_mega.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_04m.png" %>'alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="200325whats_new.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_05m.png" %>'alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="200325supplement_mega.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_06m.png" %>'alt="ss_06m" style="width: 100%;" />
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

