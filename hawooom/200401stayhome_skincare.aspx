<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200401stayhome_skincare.aspx.cs" Inherits="mobile_static_200401stayhome_skincare" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200401stay_home_shop.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="am-container">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bnn_02m.png" %>' alt="bnn_02m" style="width: 100%;" />
            </div>
            <%--========================Coupon Start===============================--%>
            <div>
                <ul class="am-avg-sm-2">
                    <li>
                        <a id="coupon1" data-clipboard-text="STAYHOME8" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ccp_01m.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ccp_02m.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                </ul>
            </div>

            <%--========================Coupon End===============================--%>
            <section class="bg-1">
                <div class="am-margin-vertical mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products" />

                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <ul class="am-avg-sm-4">
            <li>
                <a href="200401stay_home_shop.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_01m.png" %>' alt="ss_00m" style="width: 100%;" />
                </a>
            </li>
            <li>
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_02m.png" %>' alt="ss_01m" style="width: 100%;" />
                </a>
            </li>
            <li>
                <a href="200401stayhome_supplement.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_03m.png" %>' alt="ss_02m" style="width: 100%;" />
                </a>
            </li>
            <li>
                <a href="200401stayhome_lifestyle.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_04m.png" %>' alt="ss_03m" style="width: 100%;" />
                </a>
            </li>
        </ul>
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

