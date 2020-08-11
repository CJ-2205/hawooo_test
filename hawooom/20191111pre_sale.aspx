<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191111pre_sale.aspx.cs" Inherits="mobile_static_20191111pre_sale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bbn_01m.png" %>' alt="" style="width: 100%;" />
            </div>
            <section class="shop-block-wrap">
                <div class="mb-shop-block mb-shop-bg goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-5">
                <li>
                    <a href="20191111pre_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!" id="ss03">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20191111.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="value_package.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20191111.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06m.png" %>' alt="ss_06m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script>
        $(function hrefChange() {

            var date1 = new Date("2019-11-06T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss03').attr({
                    "href": "20191111preorder.aspx",
                    "target": "_black"
                });
            }
            
        });

    </script>
</asp:Content>

