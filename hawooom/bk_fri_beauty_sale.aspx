<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="bk_fri_beauty_sale.aspx.cs" Inherits="mobile_static_bk_fri_beauty_sale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="assets/css/black_friday.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bnn_03m.png"%>' alt="" style="width: 100%;" />
            </div>
            <section>
                <div class="mb-shop-block goods-mb">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <div class="footer-bar-block">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/ss_01m.png"%>' alt="ss_01m" style="width: 100%;" />
            </div>
            <div class="footer-bar-point">
                <ul class="am-avg-sm-3">
                    <li><a href="black_friday.aspx" target="_blank"></a></li>
                    <li><a href="bk_fri_most_popular.aspx" target="_blank"></a></li>
                    <li><a href="#!"></a></li>
                    <li><a href="bk_fri_life_sale.aspx" target="_blank"></a></li>
                    <li><a href="black_friday.aspx?#s5" target="_blank"></a></li>
                    <li><a href="black_friday.aspx?#s6" target="_blank"></a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

