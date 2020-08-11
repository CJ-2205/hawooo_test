<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2019collection2.aspx.cs" Inherits="user_2019collection2" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .plist {
            /*background: #054425;
            background: -moz-linear-gradient(-45deg, #054425 0%, #022915 100%);
            background: -webkit-linear-gradient(-45deg, #054425 0%,#022915 100%);
            background: linear-gradient(135deg, #054425 0%,#022915 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#054425', endColorstr='#022915',GradientType=1 );*/
            background: #FBDCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">

        <div class="am-g">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/collections/2bn_01.png" %>' style="width: 100%" />
        </div>

        <div class="am-g">
            <div class="am-u-sm-12" style="padding: 0px">
                <a id="coupon1" data-clipboard-text="supplements60" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/collections/2coupon_01.png" %>' style="width: 100%" id="copon1" data-clipboard-text="RAYA20" />
                </a>
            </div>
        </div>

        <div class="am-g plist">
            <div style="max-width: 1180px; margin: auto;">
                <ul class="am-avg-md-4 am-gallery-bordered product" style="padding: 2px">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
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

