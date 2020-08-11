<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="PiscesSale.aspx.cs" Inherits="user_static_PiscesSale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY3.min.css" rel="stylesheet" />
    <style>
        .main-contain {
            background: #001E3D;
        }

        .slider-block1 {
            background: #001E3D;
        }

        .activity-method {
            background: #001E3D;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-box">
        <a data-clipboard-text="PISCES17" id="coupon1" onclick="Clip('coupon1');">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200219/bn_01.png" %>' alt="bn_01" style="width: 100%;" />
        </a>
    </div>
    <div class="am-g main-contain">
        <section class="am-container shop-block-bg">
            <div class="am-padding-sm shop-block slider-block1" id="product">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
    </div>

    <footer class="activity-method am-padding-vertical-lg">
        <div class="am-container">
            Terms & Conditions:<br />
            Special Sale for Pisces<br />
            1. Promotion Date : 19th Feb 2020 12:00 - 28th Feb 2020 23:59<br />
            2. Promo Code: RM17 OFF (min spend 170), use code [ PISCES17 ]<br />
            3. Promo Code is applicable on selected Flagship Stores, including C’est Vrai, Dr. Morita, Grandma Therapy, Double Doctor, Dore Dore, Paradiso Garden, BaoMommy, Enjoy The Life, Check2Check(selected items), Laler, DV, Realwoman<br />
            4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Special Sale for Pisces’s terms from time to time, and in such manner as Hawooo deems appropriate.<br />
        </div>
    </footer>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        $(function () {
            $("#product li").attr("class", "am-fl  hvr-float");
        });

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

