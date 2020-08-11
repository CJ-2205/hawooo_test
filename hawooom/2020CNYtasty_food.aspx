<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020CNYtasty_food.aspx.cs" Inherits="mobile_static_2020CNYtasty_food" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/bbn_04m.png" %>' alt="bbn_04" style="width: 100%;" />
            </div>
            <div class="banner-box am-padding-lg">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/free_02m.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>
            <section>
                <div class="mb-shop-block shop-block-bg">
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
                    <a href="2020CNY.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY_hot_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY.aspx?#s2" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY_clean_up.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script>
        $(function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        });
    </script>
</asp:Content>

