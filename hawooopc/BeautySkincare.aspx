<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="BeautySkincare.aspx.cs" Inherits="user_static_BeautySkincare" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/MidYearSale.min.css" rel="stylesheet" />


    <div>
        <div class="am-container">

            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/e_01.png" %>' style="width: 100%" />
                <!--<img src="https://www.hawooo.com/images/ftp/20190618/e_01.png" alt="" style="width: 100%;" />-->
            </div>
            <div>
                <ul class="copy-coupon am-avg-sm-3">
                    <li>
                        <a id="coupon1" data-clipboard-text="MID20" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/cp_04.png" %>' style="width: 100%" />
                            <!--<img src="https://www.hawooo.com/images/ftp/20190618/cp_04.png" alt="coupon1" style="width: 100%;" />-->
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="MID35" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/cp_05.png" %>' style="width: 100%" />
                            <!--<img src="https://www.hawooo.com/images/ftp/20190618/cp_05.png" alt="coupon2" style="width: 100%;" />-->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/cp_06.png" %>' style="width: 100%" />
                            <!--<img src="https://www.hawooo.com/images/ftp/20190618/cp_06.png" alt="coupon2" style="width: 100%;" />-->
                        </a>
                    </li>
                </ul>
            </div>

            <section style="background-color: #F5BBB0;">
                <div class="product-block" id="product-make31">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" ID="products" />
                    </ul>
                </div>
            </section>
            <%--======================= End=========================--%>
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

