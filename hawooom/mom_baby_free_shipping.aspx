<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="mom_baby_free_shipping.aspx.cs" Inherits="mobile_static_mom_baby_free_shipping" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mom_baby_free_shipping.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/mb_01.png" %>' alt="首頁banner" style="width: 100%;" />
        </div>
        <%--======================free gift  Start===========================--%>
        <section class="free-gift-block wow bounceInUp am-margin-top">
            <div class="free-gift am-padding-top">
                <a href="#">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_free.png" %>' alt="coupon1" style="width: 100%;" />
                </a>
            </div>
        </section>
        <%--=====================free gift End==========================--%>

        <%--=====================shop-block-wrap1===Personal Care Start===============================--%>

        <section class="am-padding-top-md">
            <div class="banner-box  am-text-center">
                <a href="personal_care.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_b02.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block1" id="product-make1">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products1" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="personal_care.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_more1.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=======================shop-block-wrap1===Personal Care  End============================--%>


        <%--=======================shop-block-wrap2====Household Items  Start=============================--%>
        <section class="shop-block-wrap am-padding-top-md">
            <div class="banner-box">
                <a href="household_items.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_b03.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block2" id="product-make2">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products2" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="household_items.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_more2.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==========================shop-block-wrap2====Household Items  End  ===============================--%>

        <%--=========================shop-block-wrap3===Mom&Bady  Start===============================--%>
        <section class=" shop-block-wrap am-padding-top-md">
            <div class="banner-box">
                <a href="mom_bady.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_b04.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block3" id="product-make3">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products3" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="mom_bady.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_more3.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>
        <%--=============================shop-block-wrap3===Mom&Bady   End ===============================--%>
    </div>

    <script type="text/javascript">
        $(function () {
            var date3 = new Date("2019-10-11T00:00:00");
            var dateNow = new Date();
            if (dateNow > date3) {
                $('.free-gift').css("display", "none");
            };
        });
    </script>
    
</asp:Content>

