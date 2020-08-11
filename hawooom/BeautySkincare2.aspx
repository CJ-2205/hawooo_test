<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="BeautySkincare2.aspx.cs" Inherits="mobile_static_BeautySkincare2" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="assets/css/MidYearSale.min.css" rel="stylesheet" />
        <style>
        .am-fl {
            padding: 5px;
        }

        .product_item_pic {
            padding: 0;
        }

        .product_item_text {
            margin: 0;
            height: 125px;
        }
    </style>
    <div class="am-g">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/e_01m.png" %>' style="width: 100%" />
        <!--<img src="https://www.hawooo.com/images/ftp/20190625/e_01m.png" alt="首頁banner" style="width: 100%;" />-->
    </div>

    <div>
        <ul class="copy-coupon am-avg-sm-3">
            <li>
                <a id="coupon1" data-clipboard-text="MID20" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/cp_01m.png" %>' style="width: 100%" />
                    <!--<img src="https://www.hawooo.com/images/ftp/20190625/cp_01m.png" alt="coupon1" style="width: 100%;" />-->
                </a>
            </li>
            <li>
                    <a id="coupon2" data-clipboard-text="MID35" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/cp_02m.png" %>' style="width: 100%" />
                        <!--<img src="https://www.hawooo.com/images/ftp/20190625/cp_02m.png" alt="coupon2" style="width: 100%;" />-->
                    </a></li>
            <li>
                <a href="#">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/cp_03m.png" %>' style="width: 100%" />
                    <!--<img src="https://www.hawooo.com/images/ftp/20190625/cp_03m.png" alt="coupon2" style="width: 100%;" />-->
                </a>
            </li>
        </ul>
    </div>

    <div class="am-g" style="background-color: #FDB6A8;">
        <section>
            <div class="product-block" id="product-make31">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
        </section>
    </div>


<%--    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 31; i++) {
                duplicate('product-make31');
            }
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }
    </script>--%>
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

