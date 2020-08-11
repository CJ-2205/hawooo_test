<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="0302womens_day_buy1free1.aspx.cs" Inherits="mobile_static_0302womens_day_buy1free1" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/0302womens_day.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bbn_03m.png" %>' alt="bbn_03m" style="width: 100%;" />
        </div>
        <section>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products" />

                </ul>
            </div>
        </section>

    </div>

    <section class="footer-bar">
        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a href="0302womens_day.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_02m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>

        <div>
            <ul class="am-avg-sm-3">
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </section>
</asp:Content>

